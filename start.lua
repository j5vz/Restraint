-- Hi, this was entirely coded by me- AKA j5vz. Please don't tamper or steal my code. If i decide to make it Open-Source, feel free to use it.

local run = game:GetService("RunService")
local players = game:GetService("Players")
local content = game:GetService("ContentProvider")

run:Run()

local player = players:CreateLocalPlayer(0)
player.CharacterAppearance = "rbxasset://fonts/charactermesh.xml"

game:Load("rbxasset://maps/Baseplate.rbxl")

workspace:InsertContent("rbxasset://Config/DefaultLib.rbxmx")
