local aimbot = {};
local user_input_service:  UserInputService;
local run_service:         RunService;
local players:             Players;
local camera:              Camera = cloneref(workspace.CurrentCamera);
local start = 0;
local rot = Vector2.new();

local settings = {
    enabled = false,
    silent = false,
    circle = Drawing.new("Circle"),
    screen_middle = (camera.ViewportSize / 2),
    target = "head",
    smoothing = 200,
    pressed = "aiming"
};

local screen_middle = settings.screen_middle;

local circle = settings.circle do
    circle.Visible = false;
    circle.Radius = 120;
    circle.Filled = false;
    circle.Thickness = 1;
    circle.Color = Color3.new(1, 1, 1);
    circle.Position = screen_middle;
end;

local get_useable = function()
    return (
       settings.pressed == "None"     and true
    or settings.pressed == "shooting" and user_input_service:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and true
    or settings.pressed == "aiming"   and user_input_service:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and true
    or settings.pressed == "any"      and (user_input_service:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or user_input_service:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) and true) or false;
end;

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

rawset(aimbot, "aimbot_settings", settings);

aimbot.init = function()
    user_input_service = get_service("UserInputService");
    run_service = get_service("RunService");
    players = get_service("Players");

    on_esp_ran(function(has_esp: table, point: Vector2)
        local player, closest, screen_pos, aim_part = find_closest();
        if (not (player and closest)) then return end;

        if (user_input_service.MouseBehavior == Enum.MouseBehavior.Default or not get_useable() or not settings.enabled or settings.silent) then
            start = 0;
            rot = Vector2.new();
            return;
        end;

        start += (run_service.RenderStepped:Wait() * 1000);
        local lerp = math.clamp(start / settings.smoothing, 0, 1);
        local base_cfrmae = camera.CFrame:Lerp(CFrame.lookAt(camera.CFrame.Position, aim_part.CFrame.Position, Vector3.new(0, 1, 0)), (1 - (1 - lerp) ^ 2));
        rot += (user_input_service:GetMouseDelta() * 0.0005);

        camera.CFrame = base_cfrmae * CFrame.Angles(0, -rot.X, 0) * CFrame.Angles(-rot.Y, 0, 0);

        if (lerp >= 1) then
            start = 0;
            rot = Vector2.new();
            return;
        end;
    end);

    local old_cframe_new = clonefunction(CFrame.new);
    hook_function(CFrame.new, function(...)
        if (debug.info(3, 'n') == "send_shoot" and settings.enabled and settings.silent and get_useable()) then
            local player, closest, screen_pos, aim_part = find_closest();
            if (player and closest) then
                debug.setstack(3, 6, CFrame.lookAt(debug.getstack(3, 3).Position, aim_part.Position));
            end;
        end;
        return old_cframe_new(...);
    end);

end;

return aimbot;
