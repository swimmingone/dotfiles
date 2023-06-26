require('modules.enter_normal_mode_with_eng')
require('modules.inputsource_aurora')

hs.hotkey.bind({'option', 'cmd'}, 'r',  hs.reload)

hs.hotkey.bind({'shift', 'option'}, 'N', function()
    hs.application.launchOrFocus('Notes')
end)

hs.hotkey.bind({'shift', 'option'}, 'C', function()
    hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind({'shift', 'option'}, 'T', function()
    hs.application.launchOrFocus('iTerm')
end)

hs.hotkey.bind({'shift', 'option'}, 'S', function()
    hs.application.launchOrFocus('Slack')
end)

hs.hotkey.bind({'shift', 'option'}, 'K', function()
    hs.application.launchOrFocus('KakaoTalk')
end)

hs.hotkey.bind({'shift', 'option'}, 'O', function()
    hs.application.launchOrFocus('Obsidian')
end)

hs.hotkey.bind({'shift', 'option'}, 'W', function()
    hs.application.launchOrFocus('WorkFlowy')
end)
