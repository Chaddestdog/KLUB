local aimbot = {};

local user_input_service:  UserInputService = game:GetService("UserInputService");

rawset(aimbot, "aim_at", newcclosure(function(pos: Vector3)
    local aim_pos = to_view_point(pos);
    local mouse_sen = (user_input_service.MouseDeltaSensitivity * 2);
    print(mouse_sen)
    mousemoverel(aim_pos.X / mouse_sen, aim_pos.Y / mouse_sen);
end));


aimbot.init = function()
    --user_input_service = get_service("UserInputService");

end;

return aimbot;
