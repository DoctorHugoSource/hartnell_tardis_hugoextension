local PART={}
PART.ID = "newhartnellsidedoor"
PART.Name = "sidedoor"
PART.Model = "models/torrent/hartnell/sidedoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1.5
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/main/sidedoor_open.ogg"
PART.SoundOff = "torrent/hartnell/main/sidedoor_close.ogg"
PART.SoundPos = Vector(-139.443, -181.013, 9.394)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellgokudoors"
PART.Name = "gokudoors"
PART.Model = "models/torrent/hartnell/gokudoors.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1.5
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/main/gokudoor_open.ogg"
PART.SoundOff = "torrent/hartnell/main/gokudoor_close.ogg"
PART.SoundPos = Vector(-317.648, -430.228, 53.348)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)