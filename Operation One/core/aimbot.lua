local aimbot = {};
local user_input_service:  UserInputService;

rawset(aimbot, "aim_at", newcclosure(function(pos: Vector3)
    if (user_input_service.MouseBehavior == Enum.MouseBehavior.Default) then return end;
    local mouse_sen = (user_input_service.MouseDeltaSensitivity);
    local mouse_pos = user_input_service:GetMouseLocation();
    local aim_pos = to_view_point(pos);
    mousemoverel((aim_pos.X - mouse_pos.X) / mouse_sen, (aim_pos.Y - mouse_pos.Y) / mouse_sen);
end));

aimbot.init = function()
    user_input_service = get_service("UserInputService");
end;

return aimbot;
