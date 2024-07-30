local PART={}
PART.ID = "newhartnellbigdoormain"
PART.Name = "bigdoormain"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.218
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/main/bigdoor.ogg"
PART.SoundOff = "torrent/hartnell/main/bigdoor.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbigdoordeadline"
PART.Name = "bigdoordeadline"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.218
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/deadline/bigdoor.ogg"
PART.SoundOff = "torrent/hartnell/deadline/bigdoor.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbigdooreod"
PART.Name = "bigdooreod"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.218
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/etc/eod_bigdoor.ogg"
PART.SoundOff = "torrent/hartnell/etc/eod_bigdoor.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbigdoorpog"
PART.Name = "bigdoorpog"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.218
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/etc/pog_bigdoor.ogg"
PART.SoundOff = "torrent/hartnell/etc/pog_bigdoor.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbigdoorpilot"
PART.Name = "bigdoorpilot"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.218
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/pilot/bigdoor_open.ogg"
PART.SoundOff = "torrent/hartnell/pilot/bigdoor_close.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbigdoortuat"
PART.Name = "bigdoortuat"
PART.Model = "models/torrent/hartnell/bigdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.3
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/hartnell/tuat/bigdoor.ogg"
PART.SoundOff = "torrent/hartnell/tuat/bigdoor.ogg"
PART.SoundPos = Vector(-246.723, 140.205, 39.294)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)