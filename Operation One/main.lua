loadstring(game:HttpGet("https://raw.githubusercontent.com/mainstreamed/amongus-hook/refs/heads/main/drawingfix.lua",true))();
if (not (game:IsLoaded() and getgenv().drawingLoaded)) then repeat task.wait() until (game:IsLoaded() and getgenv().drawingLoaded) end do
    if (getgenv().loaded) then return end;

    do -- includes

        local inculdes = {
            "sdk/memory.lua",
            "sdk/misc.lua",
            "core/aimbot.lua",
            "core/player esp.lua"
        };

        local inits = {};

        for _, file in next, (inculdes) do
            for i, v in next, (loadstring(game:HttpGet("https://raw.githubusercontent.com/Chaddestdog/KLUB/refs/heads/main/Operation%20One/" .. file, true))()) do
                if (i == "init") then
                    table.insert(inits, v);
                    continue;
                end;
                rawset(getfenv(1), i, v);
            end;
        end;

        for i, v in next, (inits) do
            v();
        end;

    end;

    local camera:               Camera = cloneref(workspace.CurrentCamera);
    local screen_middle:        Vector2 = (camera.ViewportSize / 2);
    local players:              Players = get_service("Players");
    local local_player:         Player = cloneref(players.LocalPlayer);
    local replicated_storage:   ReplicatedStorage = get_service("ReplicatedStorage");
    local run_service:          RunService = get_service("RunService");
    local rbx_env:              table = getrenv();
    local viewmodels:           Folder = workspace:FindFirstChild("Viewmodels");


    do --// esp
        for i, v in next, (viewmodels:GetChildren()) do
            set_player_esp(v);
        end;

        viewmodels.ChildAdded:Connect(function(child: Instance)
            set_player_esp(child)
        end);
    end;

    do --// ui stuff
        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
        local theme_manager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/ThemeManager.lua"))()
        local save_manager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua"))()
        
        local window = library:CreateWindow({Title = "KLUB | Pid: " .. game.PlaceVersion, Center = true, AutoShow = true, TabPadding = 8, MenuFadeTime = 0.2});
        
        local combat = window:AddTab("Combat") do

            local aimbot_groupbox = combat:AddLeftGroupbox("Aimbot") do
                
                aimbot_groupbox:AddToggle('aimbot_enable', {Text = "Enable", Default = false, Callback = function(value: boolean)
                    aimbot_settings.enabled = value;
                end});
                
                aimbot_groupbox:AddDropdown('aimbot_pressed', {Values = {"None", "shooting", "aiming", "any"} , Default = 3, Multi = false, Text = 'Key', Callback = function(Value)
                    aimbot_settings.pressed = Value;
                end});

                aimbot_groupbox:AddDropdown('aimbot_target', {Values = {"head", "torso"} , Default = 1, Multi = false, Text = 'Key', Callback = function(Value)
                    aimbot_settings.target = Value;
                end});

                aimbot_groupbox:AddSlider('aimbot_smoothing', {Text = 'Smoothing', Default = 1, Min = 1, Max = 1000, Rounding = 0, Compact = false, Callback = function(Value)
                    aimbot_settings.smoothing = Value;
                end});

                local aimbot_fov_enable = aimbot_groupbox:AddToggle('aimbot_fov_enable', {Text = "Fov", Default = false, Callback = function(value: boolean)
                    aimbot_settings.circle.Visible = value;
                end});

                aimbot_fov_enable:AddColorPicker('aimbot_fov_color', {Default = Color3.fromRGB(255, 255, 255), Title = "Fov Color", Callback = function(value: boolean)
                    aimbot_settings.circle.Color = value;
                end});

                aimbot_groupbox:AddSlider('aimbot_fov_size', {Text = 'Fov Size', Default = 1, Min = 1, Max = 1000, Rounding = 0, Compact = false, Callback = function(Value)
                    aimbot_settings.circle.Radius = Value;
                end});

            end;

        end;

        local esp = window:AddTab("ESP") do

            local player_esp_groupbox = esp:AddLeftGroupbox("Player") do

                local player_esp_skelton = player_esp_groupbox:AddToggle('player_esp_skelton', {Text = "Skelton", Default = false, Callback = function(value: boolean)
                    esp_player_settings.skelton = value;
                end});

                player_esp_skelton:AddColorPicker('player_esp_skelton_color', {Default = Color3.fromRGB(255, 255, 255), Title = "Skelton Color", Callback = function(value: boolean)
                    esp_player_settings.skelton_color = value;
                end});

                
                player_esp_groupbox:AddToggle('player_esp_health_bar', {Text = "Health Bar", Default = false, Callback = function(value: boolean)
                    esp_player_settings.health_bar = value;
                end});

            end;

        end;

        local ui_settings = window:AddTab("UI Settings") do
            theme_manager:SetLibrary(library);
            save_manager:SetLibrary(library);
            save_manager:IgnoreThemeSettings();
            theme_manager:SetFolder("KLUB");
            save_manager:SetFolder("KLUB/Operation One");
            save_manager:BuildConfigSection(ui_settings);
            theme_manager:ApplyToTab(ui_settings);
            save_manager:LoadAutoloadConfig();
        end;
    end;

    getgenv().loaded = true;
end;
