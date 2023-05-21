-- debug
local function print(mes)
	DEFAULT_CHAT_FRAME:AddMessage(mes)
end

local function OnEvent()
	if event == 'ADDON_LOADED' and arg1 == 'doItInYourPants' then
		if DoItInYourPantsCharVault == nil then
			DoItInYourPantsCharVault = 0
			print('Greetings traveler! doItInYourPants addon has been activated!')
		elseif DoItInYourPantsCharVault == 0 then
			print('Greetings traveler! You have never been dead, congratulations!')
			DoItInYourPantsCharVault = DoItInYourPantsCharVault + 1
		elseif DoItInYourPantsCharVault == 1 then 
			print('Welcome stranger! You died once!')
			DoItInYourPantsCharVault = DoItInYourPantsCharVault + 1
		else
			print('Welcome stranger! You died ' .. DoItInYourPantsCharVault .. ' times!')
			DoItInYourPantsCharVault = DoItInYourPantsCharVault + 1
		end
	end
end
doItInYourPants = CreateFrame('Frame', 'doItInYourPants', UIParent)
doItInYourPants:RegisterEvent('ADDON_LOADED')
doItInYourPants:SetScript('OnEvent', OnEvent)

