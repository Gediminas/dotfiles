-- -- require('keyboard') -- https://github.com/jasonrudolph/keyboard
-- hs.notify.new({title='Hammerspoon', informativeText='🤘 Ready to rock'}):send()

require('auto.mute-on-wake')
require('auto.reload-hs')

hyper       = {"cmd","alt","ctrl"}
shyper      = {"cmd","alt","ctrl","shift"}
shift_hyper = {"cmd","alt","ctrl","shift"}

hs.logger.defaultLogLevel="info"
col = hs.drawing.color.x11
swisscom_logo = hs.image.imageFromPath(hs.configdir .. "/files/swisscom_logo_2x.png")


hs.loadSpoon("SpoonInstall")
spoon.SpoonInstall.repos.zzspoons = {
  url = "https://github.com/zzamboni/zzSpoons",
  desc = "zzamboni's spoon repository",
}
spoon.SpoonInstall.use_syncinstall = true
Install=spoon.SpoonInstall


Install:andUse("WindowHalfsAndThirds",
               {
                 config = {
                   use_frame_correctness = true
                 },
                 hotkeys = {
                   left_half    = { hyper, "h" },
                   right_half   = { hyper, "l" },
                   top_half     = { hyper, "k" },
                   bottom_half  = { hyper, "j" },
                   third_left   = { hyper, "y" },
                   third_right  = { hyper, "p" },
                   third_up     = { hyper, "7" },
                   third_down   = { hyper, "8" },
                   top_left     = { hyper, "u" },
                   top_right    = { hyper, "i" },
                   bottom_left  = { hyper, "m" },
                   bottom_right = { hyper, "," },
                   max_toggle   = { hyper, "space" },
                   max          = { hyper, "-" },
                   undo         = { hyper, "delete" },
                   center       = { hyper, "b" },
                   larger       = { hyper, "." },
                   smaller      = { hyper, "n" },
                 }
               }
)

Install:andUse("WindowScreenLeftAndRight",
               {
                 hotkeys = {
                   screen_left = { hyper, "[" },
                   screen_right= { hyper, "]" },
                 }

               }
)

Install:andUse("WindowGrid",
               {
                 config = { gridGeometries = { { "6x4" } } },
                 hotkeys = {show_grid = {hyper, "g"}},
                 start = true
               }
)


-- Install:andUse("BetterTouchTool", { loglevel = 'debug' })
-- BTT = spoon.BetterTouchTool

-- Install:andUse("URLDispatcher",
--                {
--                  config = {
--                    url_patterns = {
--                      { "https?://issue.swisscom.ch",                       "org.epichrome.app.SwisscomJira" },
--                      { "https?://issue.swisscom.com",                      "org.epichrome.app.SwisscomJira" },
--                      { "https?://jira.swisscom.com",                       "org.epichrome.app.SwisscomJira" },
--                      { "https?://wiki.swisscom.com",                       "org.epichrome.app.SwisscomW408" },
--                      { "https?://collaboration.swisscom.com",              "org.epichrome.app.SwisscomCollab" },
--                      { "https?://smca.swisscom.com",                       "org.epichrome.app.SwisscomTWP" },
--                      { "https?://portal.corproot.net",                     "com.apple.Safari" },
--                      { "https?://app.opsgenie.com",                        "org.epichrome.app.OpsGenie" },
--                      { "https?://app.eu.opsgenie.com",                     "org.epichrome.app.OpsGenie" },
--                      { "https?://fiori.swisscom.com",                      "com.apple.Safari" },
--                      { "https?://pmpgwd.apps.swisscom.com/fiori",  "com.apple.Safari" },
--                      { "https?://.*webex.com",  "com.google.Chrome" },
--                    },
--                    -- default_handler = "com.google.Chrome"
--                    -- default_handler = "com.electron.brave"
--                    default_handler = "com.brave.Browser.dev"
--                  },
--                  start = true
--                }
-- )

-- Install:andUse("ToggleScreenRotation",
--                {
--                  hotkeys = { first = {hyper, "f15"} }
--                }
-- )

-- Install:andUse("UniversalArchive",
--                {
--                  config = {
--                    evernote_archive_notebook = ".Archive",
--                    outlook_archive_folder = "Archive (diego.zamboni@swisscom.com)",
--                    archive_notifications = false
--                  },
--                  hotkeys = { archive = { { "ctrl", "cmd" }, "a" } }
--                }
-- )

-- Install:andUse("SendToOmniFocus",
--                {
--                  config = {
--                    quickentrydialog = false,
--                    notifications = false
--                  },
--                  hotkeys = {
--                    send_to_omnifocus = { hyper, "t" }
--                  },
--                  fn = function(s)
--                    s:registerApplication("Swisscom Collab", { apptype = "chromeapp", itemname = "tab" })
--                    s:registerApplication("Swisscom Wiki", { apptype = "chromeapp", itemname = "wiki page" })
--                    s:registerApplication("Swisscom Jira", { apptype = "chromeapp", itemname = "issue" })
--                    s:registerApplication("Brave Browser Dev", { apptype = "chromeapp", itemname = "page" })
--                  end
--                }
-- )

-- Install:andUse("EvernoteOpenAndTag",
--                {
--                  hotkeys = {
--                    open_note = { hyper, "o" },
--                    ["open_and_tag-+work,+swisscom"] = { hyper, "w" },
--                    ["open_and_tag-+personal"] = { hyper, "p" },
--                    ["tag-@zzdone"] = { hyper, "z" }
--                  }
--                }
-- )

-- Install:andUse("TextClipboardHistory",
--                {
--                  disable = true,
--                  config = {
--                    show_in_menubar = false,
--                  },
--                  hotkeys = {
--                    toggle_clipboard = { { "cmd", "shift" }, "v" } },
--                  start = true,
--                }
-- )

-- Install:andUse("Hammer",
--                {
--                  repo = 'zzspoons',
--                  config = { auto_reload_config = false },
--                  hotkeys = {
--                    config_reload = {hyper, "r"},
--                    toggle_console = {hyper, "y"}
--                  },
--                  fn = function(s)
--                    BTT:bindSpoonActions(s,
--                                         { config_reload = {
--                                             kind = 'touchbarButton',
--                                             uuid = "FF8DA717-737F-4C42-BF91-E8826E586FA1",
--                                             name = "Restart",
--                                             icon = hs.image.imageFromName(hs.image.systemImageNames.ApplicationIcon),
--                                             color = hs.drawing.color.x11.orange,
--                                         }
--                    })
--                  end,
--                  start = true
--                }
-- )

-- Install:andUse("Caffeine", {
--                  start = true,
--                  hotkeys = {
--                    toggle = { hyper, "1" }
--                  },
--                  fn = function(s)
--                    BTT:bindSpoonActions(s, {
--                                           toggle = {
--                                             kind = 'touchbarWidget',
--                                             uuid = '72A96332-E908-4872-A6B4-8A6ED2E3586F',
--                                             name = 'Caffeine',
--                                             widget_code = [[
-- do
--   title = " "
--   icon = hs.image.imageFromPath(spoon.Caffeine.spoonPath.."/caffeine-off.pdf")
--   if (hs.caffeinate.get('displayIdle')) then
--     icon = hs.image.imageFromPath(spoon.Caffeine.spoonPath.."/caffeine-on.pdf")
--   end
--   print(hs.json.encode({ text = title, icon_data = BTT:hsimageToBTTIconData(icon) }))
-- end
--   ]],
--                                             code = "spoon.Caffeine.clicked()",
--                                             widget_interval = 1,
--                                             color = hs.drawing.color.x11.black,
--                                             icon_only = true,
--                                             icon_size = hs.geometry.size(15,15),
--                                             BTTTriggerConfig = {
--                                               BTTTouchBarFreeSpaceAfterButton = 0,
--                                               BTTTouchBarItemPadding = -6,
--                                             },
--                                           }
--                    })
--                  end
-- })

-- Install:andUse("MenubarFlag",
--                {
--                  config = {
--                    colors = {
--                      ["U.S."] = { },
--                      Spanish = {col.green, col.white, col.red},
--                      German = {col.black, col.red, col.yellow},
--                    }
--                  },
--                  start = true
--                }
-- )

-- Install:andUse("MouseCircle",
--                {
--                  disable = true,
--                  config = {
--                    color = hs.drawing.color.x11.rebeccapurple
--                  },
--                  hotkeys = {
--                    show = { hyper, "m" }
--                  }
--                }
-- )

-- Install:andUse("ColorPicker",
--                {
--                  disable = true,
--                  hotkeys = {
--                    show = { shift_hyper, "c" }
--                  },
--                  config = {
--                    show_in_menubar = false,
--                  },
--                  start = true,
--                }
-- )

-- Install:andUse("BrewInfo",
--                {
--                  config = {
--                    brew_info_style = {
--                      textFont = "Inconsolata",
--                      textSize = 14,
--                      radius = 10 }
--                  },
--                  hotkeys = {
--                    -- brew info
--                    show_brew_info = {hyper, "b"},
--                    open_brew_url = {shift_hyper, "b"},
--                    -- brew cask info
--                    show_brew_cask_info = {hyper, "c"},
--                    open_brew_cask_url = {shift_hyper, "c"},
--                  }
--                }
-- )

-- Install:andUse("TimeMachineProgress",
--                {
--                  start = true
--                }
-- )

-- Install:andUse("ToggleSkypeMute",
--                {
--                  hotkeys = {
--                    toggle_skype = { shift_hyper, "v" },
--                    toggle_skype_for_business = { shift_hyper, "f" }
--                  }
--                }
-- )

-- Install:andUse("Seal",
--                {
--                  hotkeys = { show = { {"cmd"}, "space" } },
--                  fn = function(s)
--                    s:loadPlugins({"apps", "calc", "safari_bookmarks", "screencapture", "useractions"})
--                    s.plugins.safari_bookmarks.always_open_with_safari = false
--                    s.plugins.useractions.actions =
--                      {
--                          ["Hammerspoon docs webpage"] = {
--                            url = "https://hammerspoon.org/docs/",
--                            icon = hs.image.imageFromName(hs.image.systemImageNames.ApplicationIcon),
--                          },
--                          ["Leave corpnet"] = {
--                            fn = function()
--                              spoon.WiFiTransitions:processTransition('foo', 'corpnet01')
--                            end,
--                            icon = swisscom_logo,
--                          },
--                          ["Arrive in corpnet"] = {
--                            fn = function()
--                              spoon.WiFiTransitions:processTransition('corpnet01', 'foo')
--                            end,
--                            icon = swisscom_logo,
--                          },
--                          ["Translate using Leo"] = {
--                            url = "http://dict.leo.org/englisch-deutsch/${query}",
--                            icon = 'favicon',
--                            keyword = "leo",
--                          }
--                      }
--                    s:refreshAllCommands()
--                  end,
--                  start = true,
--                }
-- )

Install:andUse("WiFiTransitions",
               {
                 config = {
                   actions = {
                     { -- Test action just to see the SSID transitions
                        fn = function(_, _, prev_ssid, new_ssid)
                           hs.notify.show("SSID change", string.format("From '%s' to '%s'", prev_ssid, new_ssid), "")
                        end
                     },
                     -- { -- Enable proxy in Spotify and Adium config when joining corp network
                     --   to = "corpnet01",
                     --   fn = {hs.fnutils.partial(reconfigSpotifyProxy, true),
                     --         hs.fnutils.partial(reconfigAdiumProxy, true),
                     --   }
                     -- },
                     -- { -- Disable proxy in Spotify and Adium config when leaving corp network
                     --   from = "corpnet01",
                     --   fn = {hs.fnutils.partial(reconfigSpotifyProxy, false),
                     --         hs.fnutils.partial(reconfigAdiumProxy, false),
                     --   }
                     -- },
                   }
                 },
                 start = true,
               }
)

local wm=hs.webview.windowMasks
Install:andUse("PopupTranslateSelection",
               {
                 disable = true,
                 config = {
                   popup_style = wm.utility|wm.HUD|wm.titled|wm.closable|wm.resizable,
                 },
                 hotkeys = {
                   translate_to_en = { hyper, "e" },
                   translate_to_ru = { hyper, "r" },
                   translate_to_lt = { hyper, "t" },
                   translate_lt_en = { shyper, "e" },
                   translate_en_lt = { shyper, "r" },
                   translate_en_lt = { shyper, "t" },
                 }
               }
)

Install:andUse("DeepLTranslate",
               {
                 config = {
                   popup_style = wm.utility|wm.HUD|wm.titled|wm.closable|wm.resizable,
                 },
                 hotkeys = {
                   translate = { hyper, "w" },
                 }
               }
)

-- Install:andUse("Leanpub",
--                {
--                  config = {
--                    watch_books = {
--                      -- api_key gets set in init-local.lua like this:
--                      -- spoon.Leanpub.api_key = "my-api-key"
--                      { slug = "learning-hammerspoon" },
--                      { slug = "learning-cfengine" },
--                      { slug = "zztestbook" },
--                    }
--                  },
--                  start = true,
--                  loglevel = 'info'
-- })

-- local localfile = hs.configdir .. "/init-local.lua"
-- if hs.fs.attributes(localfile) then
--   dofile(localfile)
-- end

-- Install:andUse("FadeLogo",
--                {
--                  config = {
--                    default_run = 1.0,
--                  },
--                  start = true
--                }
-- )

-- hs.notify.show("Welcome to Hammerspoon", "Have fun!", "")
hs.notify.new({title='Hammerspoon', informativeText='🤘 Ready to rock'}):send()
