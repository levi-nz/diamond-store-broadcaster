Hooks:PostHook(BaseInteractionExt, "interact", "diamond_store_broadcast_interact", function(self)
    -- for some reason Diamond Store's level id is "family", regardless of the other maps having
    -- sane names (ie Jewelry Store = jewelry_store, Ukrainian Job = ukrainian_job)
    if not Global.game_settings.level_id == "family" then
        -- not Diamond Store. don't do anything.
        return
    end
    
    if self.tweak_data and self.tweak_data == "numpad_keycard" then
      managers.chat:send_message(ChatManager.GAME, managers.network.account:username() or "Offline", "Glass Alarm is off")
    end
end)
