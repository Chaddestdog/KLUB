local misc = {};


rawset(misc, "get_service", newcclosure(function(service: string)
    return cloneref(UserSettings().GetService(game, service));
end));


return misc;
