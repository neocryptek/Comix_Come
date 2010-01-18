local frame = CreateFrame("FRAME", "ComixComeAddonFrame");
frame:RegisterEvent("UNIT_SPELLCAST_SENT");

local name = "Comix_Come"
local path = "Interface\\AddOns\\"..name

local spell = "Death Grip"

local function eventHandler(self, event, ...)
	if strfind(arg2, spell) then

		local sound = true

		--disable if user has comix/sound disabled
		local comix = (not (Comix_Hugs == nil))
		if comix and (not Comix_AddOnEnabled or not Comix_SoundEnabled) then
			sound = false
		end

		if sound then
			PlaySoundFile(path.."\\Sounds\\Come.wav")
		end
	end
end

frame:SetScript("OnEvent", eventHandler);
