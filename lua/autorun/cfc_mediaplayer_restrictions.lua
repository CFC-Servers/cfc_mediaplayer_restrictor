local log = function( ... )
    print( "[CFC_MediaPlayerRestrictions] ", ... )
end

local allowedServices = {
    base    = true,
    browser = true,
    gd      = true, -- Google Drive
    sc      = true, -- Soundcloud
    shc     = true, -- SHOUTcast
    twl     = true, -- Twitch Stream
    twv     = true, -- Twitch VoDs
    vm      = true, -- Vimeo
    yt      = true, -- YouTube
}

hook.Add( "Initialize", "CFC_MediaPlayerRestrictions", function()
    for service in pairs( MediaPlayer.Services ) do
        if not allowedServices[services] then
            log( "Removing: ", service )
            MediaPlayer.Services[service] = nil
        end
    end
end )
