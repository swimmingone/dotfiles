local pasteboard = require("hs.pasteboard")

hs.hotkey.bind({"cmd", "option", "shift"}, "n", function ()
	hs.timer.doAfter(0.1, function()
		local saved = pasteboard.getContents()
		local splitted = convert(saved, '\n')
		hs.pasteboard.setContents(splitted)
		hs.alert.show("converted new line to comma")
	end)
end)

function convert (inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t= ""
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		local spaceRemovedStr = str:gsub("%s+", "")
		t = t .. spaceRemovedStr .. ', '
	end
	return t:sub(1, -3)
end
