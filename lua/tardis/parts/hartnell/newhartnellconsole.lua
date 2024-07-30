local PART={}
PART.ID = "newhartnellconsole"
PART.Name = "console"
PART.Model = "models/torrent/hartnell/console.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellconsole_hatch"
PART.Name = "console_hatch"
PART.Model = "models/torrent/hartnell/console_hatch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "torrent/hartnell/main/hatch_open.ogg"
PART.SoundOff = "torrent/hartnell/main/hatch_close.ogg"
PART.SoundPos = Vector(10.751, 7.601, 27.657)

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellunderswitch"
PART.Name = "underswitch"
PART.Model = "models/torrent/hartnell/underswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/hartnell/main/rotor_click.ogg"
PART.SoundOff = "torrent/hartnell/main/rotor_click.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellblack"
PART.Name = "black"
PART.Model = "models/torrent/monk/black.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetal"
PART.Name = "metal"
PART.Model = "models/torrent/monk/metal.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellvents"
PART.Name = "vents"
PART.Model = "models/torrent/monk/vents.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellvents2"
PART.Name = "vents2"
PART.Model = "models/torrent/monk/vents2.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitchbase"
PART.Name = "switchbase"
PART.Model = "models/torrent/monk/switchbase.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)