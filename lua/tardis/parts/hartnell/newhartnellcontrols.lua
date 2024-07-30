local PART={}
PART.ID = "newhartnellthirdperson"
PART.Name = "thirdperson"
PART.Model = "models/torrent/monk/thirdperson.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/monk/thirdperson.ogg"
PART.SoundOff = "torrent/monk/thirdperson.ogg"


if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelldestselect"
PART.Name = "destselect"
PART.Model = "models/torrent/monk/destselect.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

PART.SoundOn = "torrent/monk/telepathic_on.ogg"
PART.SoundOff = "torrent/monk/telepathic_off.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    function PART:Use(ply)
        local last_d_exit = ply:GetTardisData("destination_last_exit")
        if last_d_exit and self.Control == "destination" and CurTime() - last_d_exit < 1 then return end
        if CLIENT then
            self:SetData("default_telepathic_activation", RealTime() + 1)
        end

        if SERVER then
            ply:ScreenFade(SCREENFADE.OUT, Color(255,255,255,30), 1.2, 0)
        end

        self.interior:Timer("default_telepathic", 1, function()
            if SERVER then
                TARDIS:Control(self.Control, ply, self)
                ply:ScreenFade(SCREENFADE.IN, Color(255,255,255,30), 0.5, 0)
            else
                self:SetData("default_telepathic_activation", nil)
            end
        end)
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbiglever1"
PART.Name = "biglever1"
PART.Model = "models/torrent/monk/biglever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 3.75

PART.SoundOn = "torrent/monk/lever_down.ogg"
PART.SoundOff = "torrent/monk/lever_up.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.4, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbiglever2"
PART.Name = "biglever2"
PART.Model = "models/torrent/monk/biglever2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 3.75

PART.SoundOn = "torrent/monk/lever_down.ogg"
PART.SoundOff = "torrent/monk/lever_up.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.4, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellbiglever3"
PART.Name = "biglever3"
PART.Model = "models/torrent/monk/biglever2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 3.75
PART.Delayed = true

PART.SoundOn = "torrent/monk/lever_down.ogg"
PART.SoundOff = "torrent/monk/lever_up.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.4, function()
                TARDIS:Control(self.Control, ply, self)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch1"
PART.Name = "switch1"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

local controldelay = 0

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    controldelay = 0.1
end

if SERVER then

    local firsttime = 0
    local index

        function PART:Use(activator)
            self.interior:Timer("", controldelay, function()


                if firsttime == 0 then             -- apparently i have to do it like this because i cant fucking get 'self.exterior' outside of this function
                    index = self.exterior:GetSkin()
                end

                index = index + 1  -- cycle ext skins

                if index >= self.exterior:SkinCount() then
                    index = 0
                end

                firsttime = 1

                self.exterior:SetSkin(index)
                TARDIS:Message(activator, "Exterior appearance reconfigured to #".. tostring(index))

            end)

        end
end




TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch2"
PART.Name = "switch2"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"


if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch3"
PART.Name = "switch3"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"


if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch4"
PART.Name = "switch4"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch5"
PART.Name = "switch5"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch6"
PART.Name = "switch6"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch7"
PART.Name = "switch7"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch8"
PART.Name = "switch8"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch9"
PART.Name = "switch9"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch10"
PART.Name = "switch10"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch11"
PART.Name = "switch11"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch12"
PART.Name = "switch12"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch13"
PART.Name = "switch13"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch14"
PART.Name = "switch14"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch15"
PART.Name = "switch15"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellswitch16"
PART.Name = "switch16"
PART.Model = "models/torrent/monk/switch1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/monk/switch.ogg"
PART.SoundOff = "torrent/monk/switch.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial1"
PART.Name = "tinydial1"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8
PART.ModelSize = 10

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial2"
PART.Name = "tinydial2"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial3"
PART.Name = "tinydial3"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial4"
PART.Name = "tinydial4"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial5"
PART.Name = "tinydial5"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellcoordinates"
PART.Name = "coordinates"
PART.Model = "models/torrent/monk/coordinates.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

PART.Sound = "torrent/monk/coordinates.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellvirtualconsole"
PART.Name = "virtualconsole"
PART.Model = "models/torrent/monk/virtualconsole.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

PART.Sound = "torrent/monk/virtualconsole.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellvortexflight"
PART.Name = "vortexflight"
PART.Model = "models/torrent/monk/vortexflight.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/vortexflight_on.ogg"
PART.SoundOff = "torrent/monk/vortexflight_off.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever1"
PART.Name = "metallever1"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever2"
PART.Name = "metallever2"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever3"
PART.Name = "metallever3"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever4"
PART.Name = "metallever4"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever5"
PART.Name = "metallever5"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever6"
PART.Name = "metallever6"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever7"
PART.Name = "metallever7"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever8"
PART.Name = "metallever8"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellmetallever9"
PART.Name = "metallever9"
PART.Model = "models/torrent/monk/metallever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/metallever.ogg"
PART.SoundOff = "torrent/monk/metallever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial6"
PART.Name = "tinydial6"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial7"
PART.Name = "tinydial7"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial8"
PART.Name = "tinydial8"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnelltinydial9"
PART.Name = "tinydial9"
PART.Model = "models/torrent/monk/tinydial.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellhads"
PART.Name = "hads"
PART.Model = "models/torrent/monk/hads.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/tinydial.ogg"
PART.SoundOff = "torrent/monk/tinydial.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch1"
PART.Name = "miniswitch1"
PART.Model = "models/torrent/hartnell/miniswitchdoor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 4

PART.SoundOn = "torrent/hartnell/main/miniswitch_door.ogg"
PART.SoundOff = "torrent/hartnell/main/miniswitch_door.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.1, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch2"
PART.Name = "miniswitch2"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch3"
PART.Name = "miniswitch3"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch4"
PART.Name = "miniswitch4"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch5"
PART.Name = "miniswitch5"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch6"
PART.Name = "miniswitch6"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch7"
PART.Name = "miniswitch7"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch8"
PART.Name = "miniswitch8"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch9"
PART.Name = "miniswitch9"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch10"
PART.Name = "miniswitch10"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch11"
PART.Name = "miniswitch11"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch12"
PART.Name = "miniswitch12"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellminiswitch13"
PART.Name = "miniswitch13"
PART.Model = "models/torrent/monk/miniswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true
PART.AnimateSpeed = 8

PART.SoundOn = "torrent/monk/miniswitch.ogg"
PART.SoundOff = "torrent/monk/miniswitch.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellfastreturn"
PART.Name = "fastreturn"
PART.Model = "models/torrent/monk/fastreturn.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= false

PART.SoundOn = "torrent/monk/fastreturn.ogg"
PART.SoundOff = "torrent/monk/fastreturn.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellboggle"
PART.Name = "boggle"
PART.Model = "models/torrent/monk/boggle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate= true

PART.SoundOn = "torrent/monk/boggle.ogg"
PART.SoundOff = "torrent/monk/boggle.ogg"

TARDIS:AddPart(PART)