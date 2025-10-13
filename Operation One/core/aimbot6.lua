local aimbot = {};
local user_input_service:  UserInputService;
local run_service:         RunService;
local players:             Players;
local camera:              Camera = cloneref(workspace.CurrentCamera);


local settings = {
    circle = Drawing.new("Circle"),
    screen_middle = (camera.ViewportSize / 2),
    target = "head",
    smoothing = 0
};

local screen_middle = settings.screen_middle;
local circle = settings.circle do
    circle.Visible = true;
    circle.Radius = 120;
    circle.Filled = false;
    circle.Thickness = 1;
    circle.Color = Color3.new(1, 1, 1);
    circle.Position = screen_middle;
end;

local aim_at = newcclosure(function(pos: Vector3)
    if (user_input_service.MouseBehavior == Enum.MouseBehavior.Default) then return end;
    local goal_cframe = CFrame.lookAt(camera.CFrame.Position, pos, Vector3.new(0, 1, 0));
    local start = 0;
    local rot = Vector2.new();
    local c1; c1 = run_service.RenderStepped:Connect(function(delta: number)
        start += (delta * 1000);
        local lerp = math.clamp(start / settings.smoothing, 0, 1);
        local base_cfrmae = camera.CFrame:Lerp(goal_cframe, (1 - (1 - lerp) ^ 2));
        rot += (user_input_service:GetMouseDelta() * settings.smoothing)

        camera.CFrame = base_cfrmae * CFrame.Angles(0, -rot.X, 0) * CFrame.Angles(-rot.Y, 0, 0)

        if (lerp >= 1) then
            c1:Disconnect();
        end;
    end);
end);

local find_closest = function()
    local PlayerAmt, Closest, Player, Distance, SPos, Aimpart = players:GetPlayers(), nil, nil, math.huge, Vector2.new(), nil;
    for _ = 2, #PlayerAmt do 
        local i: Player = PlayerAmt[_];
        local v: Model = workspace.Viewmodels.FindFirstChild(workspace.Viewmodels, "Viewmodels/" .. i.Name);
        if (not v) then continue end;
        local Torso: Part = v.WaitForChild(v, settings.target);
        if (not Torso) then continue end;
        if (not v:FindFirstChild("EnemyHighlight")) then continue end;
        local Point, On = to_view_point(Torso.Position);
        if (not On) then continue end;
        local ScreenDistance = (Point - screen_middle).Magnitude
        if (ScreenDistance >= Distance or (circle.Visible and ScreenDistance > circle.Radius)) then continue end;
        Distance = ScreenDistance;
        Closest = v;
        Player = i;
        SPos = Point;
        Aimpart = Torso
    end;
    return Player, Closest, SPos, Aimpart;
end;

aimbot.init = function()
    user_input_service = get_service("UserInputService");
    run_service = get_service("RunService");
    players = get_service("Players");
    on_esp_ran(function(has_esp: table, point: Vector2)
        local player, closest, screen_pos, aim_part = find_closest();
        if (not (player and closest)) then return end;
        aim_at(aim_part.CFrame.Position);
    end);
end;

return aimbot;
