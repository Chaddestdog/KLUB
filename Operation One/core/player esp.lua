local player_esp = {};

local has_esp = {};
local esp_ran = {};
local players: Players;
local run_service: RunService;
local camera = cloneref(workspace.CurrentCamera);

rawset(player_esp, "set_player_esp", newcclosure(function(character: Model)
    if (not (character:IsA("Model") and character:FindFirstChild("EnemyHighlight")) and has_esp[character]) then return end;
    local name:      string = character.Name:gsub("Viewmodels/", "");
    local humanoid:  Humanoid = players[name].Character:FindFirstChildOfClass("Humanoid");
    local torso:     Part = character:FindFirstChild("torso");

    local c1, c2;

    has_esp[character] = {
        ["name"] = name,
        ["humanoid"] = humanoid,
        ["self"] = character
    };

    local health_bar_inner = Drawing.new("Square") do
        health_bar_inner.Visible = false;
        health_bar_inner.Thickness = 0;
        health_bar_inner.Filled = true;
        health_bar_inner.ZIndex = 5;
    end;

    local health_bar_outer = Drawing.new("Square") do
        health_bar_outer.Visible = false;
        health_bar_outer.Color = Color3.new(0.152941, 0.152941, 0.152941);
        health_bar_outer.Transparency = 0.6;
        health_bar_outer.Thickness = 0;
        health_bar_outer.Filled = true;
        health_bar_outer.ZIndex = 1;
    end;

    c1 = run_service.RenderStepped:Connect(function(delta: number)
        local point, on = to_view_point(torso.CFrame.Position);
        if (on) then
            for i, v in next, (esp_ran) do v(has_esp[character]) end;
            health_bar_inner.Visible = true;
            health_bar_outer.Visible = true;

            local cf_mid, size = character:GetBoundingBox();
            local bottom_right = to_view_point((CFrame.new(cf_mid.Position, camera.CFrame.Position) * CFrame.new(-size.X / 2, -size.Y / 2, 0)).Position);
            local bottom_left = to_view_point((CFrame.new(cf_mid.Position, camera.CFrame.Position) * CFrame.new(size.X / 2, -size.Y / 2, 0)).Position);
            local health = math.clamp((humanoid.Health / humanoid.MaxHealth), 0, 1);
                    
            health_bar_outer.Size = Vector2.new(bottom_left.X - bottom_right.X, 3);
            health_bar_outer.Position = Vector2.new(bottom_right.X, bottom_left.Y);

            health_bar_inner.Size = Vector2.new((((bottom_left.X - bottom_right.X) + 2) * health), 1);
            health_bar_inner.Position = Vector2.new(health_bar_outer.Position.X - 1, bottom_left.Y + 1);
            health_bar_inner.Color =  Color3.new(1, 0, 0):Lerp(Color3.new(0, 1, 0), health);

            size, cf_mid, bottom_right, bottom_left, health = nil, nil, nil, nil, nil;
        else
            health_bar_inner.Visible = false;
            health_bar_outer.Visible = false;
        end;
        point = nil;
    end);

    c2 = character.AncestryChanged:Connect(function(child: Instance, parent: Instance)
        if (parent ~= nil) then return end;
        c1:Disconnect();
        has_esp[character] = nil;
        health_bar_inner:Destroy();
        health_bar_outer:Destroy();
        c2:Disconnect();
        c1, c2, health_bar_inner, health_bar_outer = nil, nil, nil, nil;
    end);
end));

rawset(player_esp, "on_esp_ran", newcclosure(function(func: (has_esp: table) -> ())
    table.insert(esp_ran, func);
    return {remove = function()
        for i, v in next, (esp_ran) do
            if (v ~= func) then continue end;
            rawset(esp_ran, i, nil);
        end;
    end};
end));

rawset(player_esp, "get_player_from_has_esp", newcclosure(function(character: Model)
    return has_esp[character];
end));

player_esp.init = function()
    players = get_service("Players");
    run_service = get_service("RunService");
end;

return player_esp;
