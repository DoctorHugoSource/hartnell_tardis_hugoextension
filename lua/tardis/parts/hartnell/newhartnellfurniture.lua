local PART={}
PART.ID = "newhartnellfurniture1"
PART.Name = "furniture1"
PART.Model = "models/torrent/hartnell/furniture1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfurniture2"
PART.Name = "furniture2"
PART.Model = "models/torrent/hartnell/furniture2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfurniture3"
PART.Name = "furniture3"
PART.Model = "models/torrent/hartnell/furniture3.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfurniture4"
PART.Name = "furniture4"
PART.Model = "models/torrent/hartnell/furniture4.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfurniture5"
PART.Name = "furniture5"
PART.Model = "models/torrent/hartnell/furniture5.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfurniture6"
PART.Name = "furniture6"
PART.Model = "models/torrent/hartnell/furniture6.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellcloset_door"
PART.Name = "closet_door"
PART.Model = "models/torrent/hartnell/closet_door.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "torrent/hartnell/main/closet_open.ogg"
PART.SoundOff = "torrent/hartnell/main/closet_close.ogg"
PART.SoundPos = Vector(-101.821, 303.292, 9.27)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)