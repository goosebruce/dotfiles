local wezterm = require("wezterm")
local mux = wezterm.mux

-- wezterm.on("gui-startup", function()
--     local _, _, window = mux.spawn_window({})
--     window:gui_window():maximize_window()
-- end)

wezterm.on('gui-startup', function(cmd)
    local screen = wezterm.gui.screens().main
    local x_ratio = 0.5
    local y_ratio = 0.7
    local width, height = screen.width * x_ratio, screen.height * y_ratio
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {
        position = { x = (screen.width - width - 10), y = (screen.height - height) / 2 },
    })
    -- window:gui_window():maximize()
    window:gui_window():set_inner_size(width, height)
end)

wezterm.on('window-config-reloaded', function(window, pane)
    window:toast_notification('wezterm', 'configuration reloaded!', nil, 4000)
end)

-- Readjust font size on window resize to get rid of the padding at the bottom
function readjust_font_size(window, pane)
    local window_dims = window:get_dimensions()
    local pane_dims = pane:get_dimensions()

    local config_overrides = {}
    local initial_font_size = 13 -- Set to your desired font size
    config_overrides.font_size = initial_font_size

    local max_iterations = 5
    local iteration_count = 0
    local tolerance = 3

    -- Calculate the initial difference between window and pane heights
    local current_diff = window_dims.pixel_height - pane_dims.pixel_height
    local min_diff = math.abs(current_diff)
    local best_font_size = initial_font_size

    -- Loop to adjust font size until the difference is within tolerance or max iterations reached
    while current_diff > tolerance and iteration_count < max_iterations do
        -- wezterm.log_info(window_dims, pane_dims, config_overrides.font_size)
        wezterm.log_info(
            string.format(
                "Win Height: %d, Pane Height: %d, Height Diff: %d, Curr Font Size: %.2f, Cells: %d, Cell Height: %.2f",
                window_dims.pixel_height,
                pane_dims.pixel_height,
                window_dims.pixel_height - pane_dims.pixel_height,
                config_overrides.font_size,
                pane_dims.viewport_rows,
                pane_dims.pixel_height / pane_dims.viewport_rows
            )
        )

        -- Increment the font size slightly
        config_overrides.font_size = config_overrides.font_size + 0.5
        window:set_config_overrides(config_overrides)

        -- Update dimensions after changing font size
        window_dims = window:get_dimensions()
        pane_dims = pane:get_dimensions()
        current_diff = window_dims.pixel_height - pane_dims.pixel_height

        -- Check if the current difference is the smallest seen so far
        local abs_diff = math.abs(current_diff)
        if abs_diff < min_diff then
            min_diff = abs_diff
            best_font_size = config_overrides.font_size
        end

        iteration_count = iteration_count + 1
    end

    -- If no acceptable difference was found, set the font size to the best one encountered
    if current_diff > tolerance then
        config_overrides.font_size = best_font_size
        window:set_config_overrides(config_overrides)
    end
end
