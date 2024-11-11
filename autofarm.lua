-- Optimized Pet Simulator Script with Rayfield UI integration

-- Checking the game PlaceId once
if game.PlaceId == 8737899170 then

    -- Load Rayfield UI library
    local Rayfield = loadstring(game:HttpGet('https://[Log in to view URL]'))()

    -- Create the window for the UI
    local Window = Rayfield:CreateWindow({
        Name = "Pet Simulator Script",
        LoadingTitle = "Tnga hub",
        LoadingSubtitle = "by Siwous",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, -- Custom folder name for the hub
            FileName = "Big Hub"
        },
        Discord = {
            Enabled = false,
            Invite = "noinvitelink", -- Optional Discord invite link
            RememberJoins = true -- Keep users joined once
        },
        KeySystem = false, -- Disable key system for now (set to true if needed)
        KeySettings = {
            Title = "Pet Simulator Dupe And Script",
            Subtitle = "Link in disc",
            Note = "Join Server From Misc Tab",
            FileName = "Key", -- Unique key file name
            SaveKey = false, -- Don't save keys by default
            GrabKeyFromSite = true, -- Enable if pulling key from external URL
            Key = {"https://[Log in to view URL]"} -- Example key URL
        }
    })

    -- Create MainTab and Sections for buttons
    local MainTab = Window:CreateTab("Home", nil)
    local Section = MainTab:CreateSection("Main")

    -- Notify user that the script has been executed
    Rayfield:Notify({
        Title = "You executed the script",
        Content = "You can now use the features!",
        Duration = 5,
        Image = nil,
        Actions = {
            Ignore = {
                Name = "Okay!",
                Callback = function()
                    print("User acknowledged the notification.")
                end
            }
        },
    })

    -- Auto Farm Button
    MainTab:CreateButton({
        Name = "Auto Farm",
        Callback = function()
            print("Auto Farm started!")
            -- Implement auto-farming logic here
            while true do
                -- Example: Find farmable objects and automatically interact with them
                print("Farming...")
                task.wait(1)  -- Adjust timing to control speed of the farming
            end
        end,
    })

    -- Auto Hatch Button
    MainTab:CreateButton({
        Name = "Auto Hatch",
        Callback = function()
            print("Auto Hatch started!")
            -- Implement auto-hatching logic here
            while true do
                -- Example: Automatically click and hatch eggs
                print("Hatching...")
                task.wait(1)
            end
        end,
    })

    -- Dupe Gems Button
    MainTab:CreateButton({
        Name = "Dupe Gems",
        Callback = function()
            print("Dupe Gems started!")
            -- Implement gem duplication logic here
            while true do
                -- Trigger gem duplication
                print("Duping Gems...")
                task.wait(1)
            end
        end,
    })

    -- Dupe Huge Button
    MainTab:CreateButton({
        Name = "Dupe Huge",
        Callback = function()
            print("Dupe Huge started!")
            -- Implement duplication for Huge pets
            while true do
                print("Duping Huge Pet...")
                task.wait(1)
            end
        end,
    })

    -- Dupe Exclusive Button
    MainTab:CreateButton({
        Name = "Dupe Exclusive",
        Callback = function()
            print("Dupe Exclusive started!")
            -- Implement duplication for Exclusive pets
            while true do
                print("Duping Exclusive Pet...")
                task.wait(1)
            end
        end,
    })

    -- Toggle for Dupe Huge Exclusive
    MainTab:CreateToggle({
        Name = "Dupe Huge Exclusive",
        CurrentValue = false,
        Flag = "Toggle1", -- Flag for saving the toggle state
        Callback = function(Value)
            if Value then
                print("Dupe Huge Exclusive is now enabled.")
            else
                print("Dupe Huge Exclusive is now disabled.")
            end
        end,
    })

    -- Simulating "Mail to Jacek10" functionality
    local Button = MainTab:CreateButton({
        Name = "Mail to jdjdkx865",
        Callback = function()
            print("Sending data to jdjdkx865...")  -- Simulate sending data to Jacek10
            -- You can add the actual data you want to send (such as inventory or specific data)
            -- For example, if you want to "send" the user's inventory or other data:
            local userInventory = {}  -- Example of an inventory list
            -- Assuming you can get the user's inventory in some way:
            -- userInventory = game.Players.LocalPlayer.Backpack:GetChildren()
            
            -- Print out the data being sent (or handle it however you want)
            print("User Inventory: ", userInventory)
            -- This is where you would integrate with a service to actually "send" the data, like an API or a Discord bot
        end
    })

else
    
end