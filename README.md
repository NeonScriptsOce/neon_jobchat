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

-- Jobs and Gangs Without Chat Access
Config.JobsWithoutChat = {
    "unemployed",
    -- Add other jobs that should not have chat access
}

Config.GangsWithoutChat = {
    "nogang",
    -- Add other gangs that should not have chat access
}

-- Job Chat Colors
Config.JobColors = {
    ["police"] = {r = 0, g = 0, b = 255},
    ["ambulance"] = {r = 255, g = 0, b = 0},
    -- Add other job colors
}

-- Gang Chat Colors
Config.GangColors = {
    ["ballas"] = {r = 75, g = 0, b = 130},
    ["vagos"] = {r = 255, g = 255, b = 0},
    -- Add other gang colors
}
