-- debug
local function print(mes)
	DEFAULT_CHAT_FRAME:AddMessage(mes)
end

local function OnEvent()
	if event == 'ADDON_LOADED' then
		print('Hello, world! - doItInYourPants')
	end
end
doItInYourPants = CreateFrame('Frame', 'doItInYourPants', UIParent)
doItInYourPants:RegisterEvent('ADDON_LOADED')
doItInYourPants:SetScript('OnEvent', OnEvent)

