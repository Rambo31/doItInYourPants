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
		elseif DoItInYourPantsCharVault == 1 then 
			print('Welcome stranger! You died once!')
		else
			print('Welcome stranger! You died ' .. DoItInYourPantsCharVault .. ' times!')
		end
	elseif event == 'PLAYER_DEAD' then
			DoItInYourPantsCharVault = DoItInYourPantsCharVault + 1
			print("We've got sad news! You have died for the " .. DoItInYourPantsCharVault .. " time!")
	end
end
doItInYourPants = CreateFrame('Frame')
doItInYourPants:RegisterEvent('ADDON_LOADED')
doItInYourPants:RegisterEvent('PLAYER_DEAD')
doItInYourPants:SetScript('OnEvent', OnEvent)

