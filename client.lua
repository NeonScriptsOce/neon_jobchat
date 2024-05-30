RegisterCommand('jobc', function(source, args, rawCommand)
    local message = table.concat(args, " ")
    TriggerServerEvent('neon_jobchat:sendMessage', message)
end, false)

RegisterCommand('gangc', function(source, args, rawCommand)
    local message = table.concat(args, " ")
    TriggerServerEvent('neon_gangchat:sendMessage', message)
end, false)

-- Add suggestions for the commands
TriggerEvent('chat:addSuggestion', '/jobc', 'Send a message to your job members', {
    { name="message", help="The message you want to send" }
})

TriggerEvent('chat:addSuggestion', '/gangc', 'Send a message to your gang members', {
    { name="message", help="The message you want to send" }
})
