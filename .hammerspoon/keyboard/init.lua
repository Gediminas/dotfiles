hyper  = {"cmd","alt","ctrl"}
shyper = {"cmd","alt","ctrl","shift"}

-- local log = hs.logger.new('init.lua', 'debug')


-- -- Subscribe to the necessary events on the given window filter such that the
-- -- given hotkey is enabled for windows that match the window filter and disabled
-- -- for windows that don't match the window filter.
-- --
-- -- windowFilter - An hs.window.filter object describing the windows for which
-- --                the hotkey should be enabled.
-- -- hotkey       - The hs.hotkey object to enable/disable.
-- --
-- -- Returns nothing.
-- enableHotkeyForWindowsMatchingFilter = function(windowFilter, hotkey)
--   windowFilter:subscribe(hs.window.filter.windowFocused, function()
--     hotkey:enable()
--   end)

--   windowFilter:subscribe(hs.window.filter.windowUnfocused, function()
--     hotkey:disable()
--   end)
-- end

require('keyboard.hyper')
require('keyboard.winmng')

-- --require('keyboard.control-escape')
-- require('keyboard.delete-words')
-- --require('keyboard.markdown')
-- --require('keyboard.microphone')
-- require('keyboard.panes')
-- require('keyboard.super')
-- require('keyboard.windows')
-- require('keyboard.pomodoor')

