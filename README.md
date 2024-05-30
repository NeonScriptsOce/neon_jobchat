# Job & Gang Chat for QBCore

This script enables dedicated chat channels for jobs and gangs within the QBCore framework. Players can communicate with their job or gang members through custom chat commands, with configurable colors and access restrictions.

## Features

- **Job Chat:**
  - Send messages to other players with the same job.
  - Color-coded messages based on job configurations.
  - Displays the sender's name in white.
  - Configurable list of jobs without chat access.

- **Gang Chat:**
  - Send messages to other players in the same gang.
  - Color-coded messages based on gang configurations.
  - Displays the sender's name in white.
  - Configurable list of gangs without chat access.

- **Configuration:**
  - Customizable chat colors for each job and gang.
  - Specify jobs and gangs that do not have access to the chat functionality.

## Installation

1. **Download and Extract:**
   - Download the script from the repository.
   - Extract the contents to your resources folder.

2. **Add to Server Configuration:**
   - Add `ensure neon_jobchat` to your `server.cfg`.

3. **Configure:**
   - Open the `config.lua` file and customize the settings according to your server's needs.

## Configuration

The `config.lua` file allows you to customize various aspects of the script.

```lua
Config = {}

-- Job chat colors
Config.JobColors = {
    police = {0, 0, 255},   -- Blue for police
    ambulance = {255, 0, 0}, -- Red for ambulance
    mechanic = {0, 255, 0}  -- Green for mechanic
    -- Add more jobs and their colors here
}

-- Gang chat colors
Config.GangColors = {
    ballas = {75, 0, 130}, -- Indigo for Ballas
    vagos = {255, 255, 0}, -- Yellow for Vagos
    families = {0, 128, 0} -- Green for Families
    -- Add more gangs and their colors here
}

-- Jobs without chat
Config.JobsWithoutChat = {
    unemployed = true
    -- Add more jobs that don't have chat here
}

-- Gangs without chat
Config.GangsWithoutChat = {
    none = true
    -- Add more gangs that don't have chat here
}
```
