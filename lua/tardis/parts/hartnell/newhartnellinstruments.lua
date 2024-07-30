local PART={}
PART.ID = "newhartnelllightboxes"
PART.Name = "lightboxes"
PART.Model = "models/torrent/hartnell/lightboxes.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellrearlights"
PART.Name = "rearlights"
PART.Model = "models/torrent/hartnell/rearlights.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellscanner"
PART.Name = "scanner"
PART.Model = "models/torrent/hartnell/scanner.mdl"
PART.AutoSetup = true

if SERVER then
	function PART:Think()
		local exterior=self.exterior
		if exterior:GetData("vortex") then
			self:SetMaterial("models/hartnell/hartnellscannerflight")
		else

		self:SetMaterial("models/hartnell/hartnellscanner")
		end
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellscreenwalls"
PART.Name = "screenwalls"
PART.Model = "models/torrent/hartnell/screenwalls.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.UseTransparencyFix = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellsideroomcontrols"
PART.Name = "sideroomcontrols"
PART.Model = "models/torrent/hartnell/sideroomcontrols.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltimespacevisualizer"
PART.Name = "timespacevisualizer"
PART.Model = "models/torrent/hartnell/timespacevisualizer.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)