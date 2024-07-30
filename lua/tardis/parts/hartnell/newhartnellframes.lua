local PART={}
PART.ID = "newhartnellmainframe"
PART.Name = "mainframe"
PART.Model = "models/torrent/hartnell/mainframe.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellpilotframe"
PART.Name = "mainframe"
PART.Model = "models/torrent/hartnell/pilotframe.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

if SERVER then
	hook.Add("SkinChanged", "newhartnell-pilotframe", function(ent,i)
		if ent.TardisExterior then
			local newhartnellpilotframe=ent:GetPart("newhartnellpilotframe")
			if IsValid(newhartnellpilotframe) then
				newhartnellpilotframe:SetSkin(i)
			end
			if IsValid(ent.interior) then
				local newhartnellpilotframe=ent.interior:GetPart("newhartnellpilotframe")
				if IsValid(newhartnellpilotframe) then
					newhartnellpilotframe:SetSkin(i)
				end
			end
		end
	end)
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellaltframe"
PART.Name = "altframe"
PART.Model = "models/torrent/hartnell/altframe.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)