local Player = game:GetService("Players").LocalPlayer -- Gets Local Player
local serverUrl = "https://link_here/check.php?userId="..Player.UserId -- Gets The Server URL
stuff = game:HttpGet(serverUrl, true) -- Sends A Get Function To The Server
local i = 0
while i < 10 do -- Loops Through Ten Times
    setclipboard("https://"..math.random(os.time()).."/check1.php?userId="..Player.UserId) -- Creates A Fake Link
    i += 1 -- Adds A Count
    wait(0.1) -- Waits .10 Seconds
end
yes = game:GetService("HttpService"):JSONDecode(stuff) -- Decodes The JSON Response
local name = yes.discordName -- Gets Their Discord Name

local Check = false

if game.CoreGui:FindFirstChild("DevConsoleMaster") then
    Check = true -- Returns True If The Console Exists
else
    Check = false -- Returns False If The Console Does Not Exist
end

if Check == true then -- If It Is True It Tries To Delete The Console
    local Console = game.CoreGui.DevConsoleMaster
    local Log = Console.DevConsoleWindow.DevConsoleUI.MainView.ClientLog

    for i,v in pairs(Log:GetChildren()) do
        if v:IsA("Frame") then
            if v.Name == "WindowingPadding" then

            else
                v:Destroy()
            end
        end
    end
end

if yes.whitelised == "true" then -- Checks If They Are Whitelisted
    print("Whitelisted")
    print("Welcome, "..name)
else
    print("No")
end