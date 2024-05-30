QBCore = exports['qb-core']:GetCoreObject()

-- Load the configuration
Config = Config or {}
Config.JobColors = Config.JobColors or {}
Config.GangColors = Config.GangColors or {}
Config.JobsWithoutChat = Config.JobsWithoutChat or {}
Config.GangsWithoutChat = Config.GangsWithoutChat or {}

-- Function to handle job chat messages
RegisterNetEvent('neon_jobchat:sendMessage', function(message)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local job = Player.PlayerData.job.name
        
        -- Check if the job is in the list of jobs without chat
        if not Config.JobsWithoutChat[job] then
            local playerName = Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
            local jobLabel = Player.PlayerData.job.label
            local color = Config.JobColors[job] or {255, 255, 255} -- Default to white if not found
            local players = QBCore.Functions.GetPlayers()
            
            for _, playerId in ipairs(players) do
                local TargetPlayer = QBCore.Functions.GetPlayer(playerId)
                if TargetPlayer and TargetPlayer.PlayerData.job.name == job then
                    TriggerClientEvent('chat:addMessage', playerId, {
                        color = color,
                        multiline = true,
                        args = {string.format("[%s Chat] ^7%s: ", jobLabel, playerName), message}
                    })
                end
            end
        else
            -- Optionally notify the player that their job does not have chat
            TriggerClientEvent('chat:addMessage', src, {
                color = {255, 0, 0},
                multiline = true,
                args = {"System", "Your job does not have access to job chat."}
            })
        end
    end
end)

-- Function to handle gang chat messages
RegisterNetEvent('neon_gangchat:sendMessage', function(message)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local gang = Player.PlayerData.gang.name
        
        -- Check if the gang is in the list of gangs without chat
        if not Config.GangsWithoutChat[gang] then
            local playerName = Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
            local gangLabel = Player.PlayerData.gang.label
            local color = Config.GangColors[gang] or {255, 255, 255} -- Default to white if not found
            local players = QBCore.Functions.GetPlayers()
            
            for _, playerId in ipairs(players) do
                local TargetPlayer = QBCore.Functions.GetPlayer(playerId)
                if TargetPlayer and TargetPlayer.PlayerData.gang.name == gang then
                    TriggerClientEvent('chat:addMessage', playerId, {
                        color = color,
                        multiline = true,
                        args = {string.format("[%s Chat] ^7%s: ", gangLabel, playerName), message}
                    })
                end
            end
        else
            -- Optionally notify the player that their gang does not have chat
            TriggerClientEvent('chat:addMessage', src, {
                color = {255, 0, 0},
                multiline = true,
                args = {"System", "Your gang does not have access to gang chat."}
            })
        end
    end
end)
