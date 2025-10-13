local aimbot = {};
local user_input_service:  UserInputService;
local players:             Players
local camera:              Camera = cloneref(workspace.CurrentCamera);


local settings = {
    circle = Drawing.new("Circle"),
    screen_middle = (camera.ViewportSize / 2),
    target = "head"
};

local screen_middle = settings.screen_middle;
local circle = settings.circle do
    circle.Visible = true;
    circle.Radius = 120;
    circle.Filled = false;
    circle.Thickness = 1;
    circle.Color = Color3.new(1, 1, 1);
end;

local aim_at = newcclosure(function(pos: Vector2)
    if (user_input_service.MouseBehavior == Enum.MouseBehavior.Default) then return end;
    local mouse_sen = (user_input_service.MouseDeltaSensitivity / 2);
    local mouse_pos = user_input_service:GetMouseLocation();
    mousemoverel((pos.X - mouse_pos.X) / mouse_sen, (pos.Y - mouse_pos.Y) / mouse_sen);
end);

local find_closest = function()
    local PlayerAmt, Closest, Player, Distance, SPos = players:GetPlayers(), nil, nil, math.huge, Vector2.new();
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
    end;
    return Player, Closest, SPos;
end;

aimbot.init = function()
    user_input_service = get_service("UserInputService");
    players = get_service("Players");
    on_esp_ran(function(has_esp: table, point: Vector2)
        local player, closest, screen_pos = find_closest();
        if (not (player and closest)) then return end;
        aim_at(screen_pos);
    end);
end;

return aimbot;
