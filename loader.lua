-- loader.lua
local scriptUrl = "https://raw.githubusercontent.com/roblox-mainscript/roblox-scripts/refs/heads/main/myscript.lua"
local key = "1"  -- Key xác thực nếu bạn cần bảo mật
local inputKey = game:GetService("UserInputService"):GetUserInput()

if inputKey ~= key then
   game.Players.LocalPlayer:Kick("Key không hợp lệ.")
   return
end

-- Nếu đúng key thì tải và thực thi script từ GitHub
loadstring(game:HttpGet(scriptUrl))()
