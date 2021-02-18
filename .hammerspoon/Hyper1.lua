-- if you want to use a different keyboard combo, define it here.
local hyper       = {"shift", "ctrl", "alt"}
local hyper_shift = {"shift", "ctrl", "alt", "cmd"}

-- define your own shortcut list here
local windows = {

  -- Q
	A = "nvALT",
	Z = "Mail",

	W = "", -- "Code",
	E = "", -- "XCode",
	R = "Messenger",
	T = "Microsoft Remote Desktop",
	G = "Messenger",

	D = "Emacs",
	F = "Safari",
	V = "Google Chrome",

	X = "Double Commander",
	C = "iTerm2",

	-- B = "B not assigned",           -- B

	-- M = "Messenger",
	-- N = "nvALT",
	['\\'] = "Hammerspoon", -- opens the Hammerspoon console. useful
}

-- if the app has to be launched by a different name
-- than the one the windows are found by, this list
-- will take precedence when opening the app.
local windowLaunchNames = {
	-- currently just VS Code
	-- V = "Visual Studio Code",
}

local prevApp = nil
local currAppWindowIndex = 1
local currAppWindows = nil

-- set up the binding for each key combo
for key, appName in pairs(windows) do
  hs.hotkey.bind(hyper, key, function()
    local frontApp = hs.application.frontmostApplication();
    local frontName = frontApp:name()
    -- hs.alert.show(" AA.  " .. frontName .. " => " .. appName, hs.alert.defaultStyle, hs.screen.mainScreen(), 60)
    if frontName == appName then
      if prevApp then
        prevApp:activate()
      end
    else
      local app = hs.application.get(appName)
      if app then
        app:activate()
        prevApp = frontApp
        currAppWindows = nil
        currAppWindowIndex = 1
      else
        local launchName = windowLaunchNames[key] or appName
        hs.alert.show("'" .. launchName .. "' not launched")
      end
    end
  end)

  hs.hotkey.bind(hyper_shift, key, function()
    --prevApp = hs.application.frontmostApplication()
    local launchName = windowLaunchNames[key] or appName
    hs.alert.show("Launching " .. launchName)
    hs.application.open(launchName)

    currAppWindows = nil
    currAppWindowIndex = 1
  end)
end
-- END

hs.hotkey.bind(hyper, "S", function()

    frontAppName = hs.application.frontmostApplication()
    if currAppWindows == nil then
      local app = hs.application.find(frontAppName)
      if app then
        currAppWindows = hs.fnutils.filter(app:allWindows(), function(w)
            return w:isStandard()
        end)
      end
    end

    hs.alert.show(#currAppWindows)

    if currAppWindows and #currAppWindows > 0 then
      currAppWindowIndex = currAppWindowIndex % #currAppWindows + 1
      currAppWindows[currAppWindowIndex]:focus()
    end
end)
