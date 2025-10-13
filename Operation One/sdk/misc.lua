local misc = {};
local camera: Camera = cloneref(workspace.CurrentCamera);

rawset(misc, "get_service", newcclosure(function(service: string)
    return cloneref(UserSettings().GetService(game, service));
end));

rawset(misc, "to_view_point", newcclosure(function(pos: Vector3)
    local point, on = camera:WorldToViewportPoint(pos);
    return Vector2.new(point.X, point.Y), on;
end));

return misc;
