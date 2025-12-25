-- Defines the Entity's type, base, printable name, and author for shared access (both server and client)
ENT.Type = "anim" -- Sets the Entity type to 'anim', indicating it's an animated Entity.
ENT.Base = "base_gmodentity" -- Specifies that this Entity is based on the 'base_gmodentity', inheriting its functionality.
ENT.PrintName = "RTS Table" -- The name that will appear in the spawn menu.
ENT.Author = "CyberCafe" -- The author's name for this Entity.
ENT.Category = "Fun + Games" -- The category for this Entity in the spawn menu.
ENT.Contact = "STEAM_0:1:501166155" -- The contact details for the author of this Entity.
ENT.Purpose = "RTS Game Table" -- The purpose of this Entity.
ENT.Spawnable = true -- Specifies whether this Entity can be spawned by players in the spawn menu.

local gameStarted = false
local playerSlot1 = nil
local playerSlot2 = nil
local playerSlot3 = nil

function ENT:Use(targetPlr, caller, useType, value)
    if gameStarted == false then
        -- Remake this code to appear less repetitive
        -- Write the players and "ready" and "exit" button on top of the table

        if playerSlot1 == targetPlr then return
        elseif playerSlot2 == targetPlr then return
        elseif playerSlot3 == targetPlr then return
        end

        if playerSlot1 == nil then playerSlot1 = targetPlr targetPlr:ChatPrint("You're on first slot")
        elseif playerSlot2 == nil then playerSlot2 = targetPlr targetPlr:ChatPrint("You're on second slot")
        elseif playerSlot3 == nil then playerSlot3 = targetPlr targetPlr:ChatPrint("You're on third slot")
        else targetPlr:ChatPrint("No player slot empty for you, try spawning another table...") return end
    end
end
