-- this runs inside the client
local game = game
local network = game:GetService("NetworkClient")

-- this is the old way to manually load a data model
-- usually you would point this to an online asset but older clients could sometimes read from the local content folder
game:Load("rbxasset://maps/Baseplate.rbxl") 

-- setup basic character/lighting so that its not a shitty black screen (nightmare for me)
game:GetService("Visit"):SetUploadUrl("")

-- Inshallah this works 🙏
