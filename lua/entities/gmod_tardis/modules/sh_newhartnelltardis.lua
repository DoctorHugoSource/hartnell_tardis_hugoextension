if SERVER then

    local targetSteamIDs = {
        "",
    }

    local entityClass = "gmod_tardis"

    hook.Add("PlayerSpawnedSENT", "RemoveTardisBySteamID", function(ply, ent)
        if IsValid(ent) and ent:GetClass() == entityClass then
            if ent.metadataID then
                if table.HasValue(targetSteamIDs, ply:SteamID64()) then
                    if ent.metadataID == "hartnelltardis" then
                        ent:Remove()
                    end
                end
            end
        end
    end)

    local function StopMusic(self, ply)
        if ply and IsValid(ply) then
            if ply.NEWHARTNELLMusic then
                ply.NEWHARTNELLMusic:Stop()
                ply.NEWHARTNELLMusic = nil
            end
        else
            for _, v in ipairs(self.occupants) do
                if IsValid(v) and v.NEWHARTNELLMusic then
                    v.NEWHARTNELLMusic:Stop()
                    v.NEWHARTNELLMusic = nil
                end
            end
        end
    end

    local function PlayMusic(self, ply)
        if IsValid(ply) and not ply.NEWHARTNELLMusic and not ply.NEWHARTNELLPlayedMusic then
            ply.NEWHARTNELLMusic = CreateSound(ply, "torrent/hartnell/main/entrance.ogg")
            ply.NEWHARTNELLMusic:Play()

            ply.NEWHARTNELLPlayedMusic = true
        end
    end

    ENT:AddHook("PlayerEnter", "NEWHARTNELL.PlayMusicOnEnter", function(self, ply)
        if self.metadataID ~= "hartnelltardis" then return end
        local convar = GetConVar("newhartnell_play_music_on_enter")
        if not convar:GetBool() then return end
        
        PlayMusic(self, ply)
    end)

    ENT:AddHook("PlayerExit", "NEWHARTNELL.StopMusicOnExit", function(self, ply)
        if self.metadataID ~= "hartnelltardis" then return end
        StopMusic(self, ply)
    end)

    ENT:AddHook("OnRemove", "NEWHARTNELL.StopMusicOnRemove", function(self)
        if self.metadataID ~= "hartnelltardis" then return end
        StopMusic(self)
    end)


else
    CreateClientConVar("newhartnell_play_music_on_enter", "1", true, false, "Whether to play the New Hartnell music when entering the TARDIS for first time.")
end