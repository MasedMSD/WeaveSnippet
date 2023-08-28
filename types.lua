--- @class g_anti_aim
--- @field can_work fun(): boolean;
--- @field get_at_target_yaw fun(): number
anti_aim = {};

--- @class g_convar
--- @field find fun(convar_name: string): convar | nil
convar = {};

--- @class g_entity
--- @field get fun(index: number): entity | nil
--- Returns local player index
--- @field get_local_player fun(): number;
entity = {};

--- @class g_global_vars
--- Returns the time in seconds since CS:GO was started
--- @field realtime fun(): number
--- @field framecount fun(): number
--- Returns the current time of the server
--- @field curtime fun(): number
--- Returns the time the last frame took to render
--- @field frametime fun(): number
--- @field max_clients fun(): number
--- Returns the current tick
--- @field tickcount fun(): number
--- Returns the delay between each tick
--- @field interval_per_tick fun(): number
--- @field interpolation_amount	 fun(): number
--- @field simticks_this_frame	 fun(): number
global_vars = {}

--- @class g_logs
--- @field info fun(message: string)
--- @field error fun(message: string)
--- @field hit fun(message: string)
--- @field buy fun(message: string)
--- @field miss fun(message: string)
logs = {}

--- @class g_math
--- @field random_float fun(min: number, max: number): number;
--- @field random_int fun(min: number, max: number): number;
math = {}

--- @class g_vars
--- @field find fun(reference: string): cheat_var | nil
vars = {}

--- @class g_render
--- @field text fun(font: any, text: string, position: vector, color?: color, flags?: number, wrap_width?: number)
--- @field filled_rect fun(position: vector, size: vector, color: color, rounding?: number, rounding_flags?: number)
--- @field create_font fun(path: string, size: number, flags?: number): any | nil
--- @field world_to_screen fun(world_position: vector): vector | { x: number, y: number, z: number }
--- @field get_screen_size fun(): vector | { x: number, y: number, z: number }
render = {}

--- @class g_ui
--- @field tab fun(label: string): UITab | nil
--- @field group fun(label: string): UIContainer | nil
--- @field checkbox fun(label: string): UICheckbox | nil
--- @field slider fun(label: string, min: number, max: number): UISlider | nil
--- @field dropbox fun(label: string, multiselect: boolean, ...): UIDropbox | nil
--- @field color_picker fun(label: string, alpha?: boolean): UIColorpicker | nil
--- @field register_tab fun(tab: UITab)
--- @field update fun()
ui = {}

--- @class g_cheat
--- @field username fun(): string
--- @field build_date fun(): string
--- @field print fun(...)
cheat = {}

--- @class g_client
--- @field choked_commands fun(): number
client = {}

--- @class g_script
--- @field save fun(name: string, ...)
--- @field save_all fun(name: string)
--- @field dump_base64 fun(...): string | nil
--- @field dump_all_base64 fun(): string | nil
--- @field load fun(name: string, ...)
--- @field load_all fun(name: string)
--- @field load_base64 fun(text: string, ...)
--- @field load_all_base64 fun(text: string)
--- @field set_name fun(name: string)
--- @field set_version fun(version: string)
script = {}

--- @class g_hotkeys
--- @field find fun(key: hotkey_keys): hotkey
hotkeys = {}

--- @class g_callbacks
--- @field new fun(callback_name: callback_name, fun: fun(event: event | anti_aim_settings | cmd))
callback = {}

--- @class color
--- @param r number
--- @param g number
--- @param b number
--- @param a? number
--- @return { r: number, g: number, b: number, a: number }
color = function(r, g, b, a)
    return { r, g, b, a }
end;

--- @class convar
--- @field get_int fun(): number;
--- @field set_int fun(value: number);
--- @field get_float fun(): number;
--- @field set_float fun(value: number);
--- @field get_string fun(): string;
--- @field set_string fun(value: string);

--- @class entity
--- @field get_prop fun(table: string, prop: string): any

--- @class event
--- @field get_name fun(): string;
--- @field get_int fun(key: string): number;
--- @field set_int fun(key: string, value: number);
--- @field get_float fun(key: string): number;
--- @field set_float fun(key: string, value: number);
--- @field get_string fun(key: string): string;
--- @field set_string fun(key: string, value: number): string;

--- @class anti_aim_settings
--- @field force_off boolean
--- @field pitch number
--- @field ignore_freestand boolean
--- @field ignore_manuals boolean
--- @field yaw_add number
--- @field spin boolean
--- @field spin_speed number
--- @field spin_range number
--- @field jitter_angle number
--- @field align_desync boolean
--- @field randomize_jitter	 boolean
--- @field desync_amount number
--- @field desync_jitter boolean
--- @field desync_direction number
--- @field align_by_target number
--- @field inverter boolean

--- @class cmd
--- @field command_number number
--- @field tick_count number
--- @field view_angles number
--- @field aim_direction number
--- @field move number
--- @field buttons number
--- @field send_packet number

--- @class font

--- @class hotkey
--- @field state fun(): boolean

--- @class cheat_var
--- @field get fun(): any
--- @field set fun(value: any);

--- @class vector
--- @param x number
--- @param y number
--- @param z? number
--- @return { x: number, y: number, z: number }
vector = function(x, y, z)
    return { x, y, z }
end;

--- @class UITab
--- @field set_icon fun(path: string)
--- @field set_color fun(color1: color, color2?: color)
--- @field register fun()

--- @class UINode
--- @field add fun(item: UINode)

--- @class UIControl: UINode
--- @field set_key fun(key: string)
--- @field get_key fun(): string

--- @class UIContainer: UINode

--- @class UICheckbox: UIControl
--- @field get fun(): boolean
--- @field set fun(value: boolean)

--- @class UISlider: UIControl
--- @field get fun(): boolean
--- @field set fun(value: boolean)

--- @class UIDropbox: UIControl
--- @field get fun(): boolean
--- @field set fun(value: boolean)

--- @class UIColorpicker: UIControl
--- @field get fun(): color
--- @field set fun(value: color)

--- @class UIButton: UIControl
--- @field callback fun()

--- @alias hotkey_keys
--- | "hotkey.thirdperson"
--- | "hotkey.doubletap"
--- | "hotkey.peek_assist"
--- | "hotkey.override_damage"
--- | "hotkey.manual_right"
--- | "hotkey.manual_left"
--- | "hotkey.manual_back"
--- | "hotkey.manual_forward"
--- | "hotkey.desync_inverter"
--- | "hotkey.slow_walk"
--- | "hotkey.fake_duck"
--- | "hotkey.freestand"
--- | "hotkey.hide_shot"

--- @alias callback_name
--- Weave callbacks
--- | "render"
--- | "pre_move"
--- | "create_move"
--- | "post_move"
--- | "antiaim_setup"
--- | "unload"
--- CS:GO callbacks
--- | "player_death"
--- | "other_death"
--- | "player_hurt"
--- | "item_purchase"
--- | "bomb_beginplant"
--- | "bomb_abortplant"
--- | "bomb_planted"
--- | "bomb_defused"
--- | "bomb_exploded"
--- | "bomb_dropped"
--- | "bomb_pickup"
--- | "defuser_dropped"
--- | "defuser_pickup"
--- | "announce_phase_end"
--- | "cs_intermission"
--- | "bomb_begindefuse"
--- | "bomb_abortdefuse"
--- | "hostage_follows"
--- | "hostage_hurt"
--- | "hostage_killed"
--- | "hostage_rescued"
--- | "hostage_stops_following"
--- | "hostage_rescued_all"
--- | "hostage_call_for_help"
--- | "vip_escaped"
--- | "vip_killed"
--- | "player_radio"
--- | "bomb_beep"
--- | "weapon_fire"
--- | "weapon_fire_on_empty"
--- | "grenade_thrown"
--- | "weapon_outofammo"
--- | "weapon_reload"
--- | "weapon_zoom"
--- | "silencer_detach"
--- | "inspect_weapon"
--- | "weapon_zoom_rifle"
--- | "player_spawned"
--- | "item_pickup"
--- | "item_pickup_slerp"
--- | "item_pickup_failed"
--- | "item_remove"
--- | "ammo_pickup"
--- | "item_equip"
--- | "enter_buyzone"
--- | "exit_buyzone"
--- | "buytime_ended"
--- | "enter_bombzone"
--- | "exit_bombzone"
--- | "enter_rescue_zone"
--- | "exit_rescue_zone"
--- | "silencer_off"
--- | "silencer_on"
--- | "buymenu_open"
--- | "buymenu_close"
--- | "round_prestart"
--- | "round_poststart"
--- | "round_start"
--- | "round_end"
--- | "grenade_bounce"
--- | "hegrenade_detonate"
--- | "flashbang_detonate"
--- | "smokegrenade_detonate"
--- | "smokegrenade_expired"
--- | "molotov_detonate"
--- | "decoy_detonate"
--- | "decoy_started"
--- | "tagrenade_detonate"
--- | "inferno_startburn"
--- | "inferno_expire"
--- | "inferno_extinguish"
--- | "decoy_firing"
--- | "bullet_impact"
--- | "player_footstep"
--- | "player_jump"
--- | "player_blind"
--- | "player_falldamage"
--- | "door_moving"
--- | "round_freeze_end"
--- | "mb_input_lock_success"
--- | "mb_input_lock_cancel"
--- | "nav_blocked"
--- | "nav_generate"
--- | "player_stats_updated"
--- | "achievement_info_loaded"
--- | "spec_target_updated"
--- | "spec_mode_updated"
--- | "hltv_changed_mode"
--- | "cs_game_disconnected"
--- | "cs_win_panel_round"
--- | "cs_win_panel_match"
--- | "cs_match_end_restart"
--- | "cs_pre_restart"
--- | "show_freezepanel"
--- | "hide_freezepanel"
--- | "freezecam_started"
--- | "player_avenged_teammate"
--- | "achievement_earned"
--- | "achievement_earned_local"
--- | "item_found"
--- | "items_gifted"
--- | "repost_xbox_achievements"
--- | "match_end_conditions"
--- | "round_mvp"
--- | "player_decal"
--- | "teamplay_round_start"
--- | "show_survival_respawn_status"
--- | "client_disconnect"
--- | "gg_player_levelup"
--- | "ggtr_player_levelup"
--- | "assassination_target_killed"
--- | "ggprogressive_player_levelup"
--- | "gg_killed_enemy"
--- | "gg_final_weapon_achieved"
--- | "gg_bonus_grenade_achieved"
--- | "switch_team"
--- | "gg_leader"
--- | "gg_team_leader"
--- | "gg_player_impending_upgrade"
--- | "write_profile_data"
--- | "trial_time_expired"
--- | "update_matchmaking_stats"
--- | "player_reset_vote"
--- | "enable_restart_voting"
--- | "sfuievent"
--- | "start_vote"
--- | "player_given_c4"
--- | "player_become_ghost"
--- | "gg_reset_round_start_sounds"
--- | "tr_player_flashbanged"
--- | "tr_mark_complete"
--- | "tr_mark_best_time"
--- | "tr_exit_hint_trigger"
--- | "bot_takeover"
--- | "tr_show_finish_msgbox"
--- | "tr_show_exit_msgbox"
--- | "reset_player_controls"
--- | "jointeam_failed"
--- | "teamchange_pending"
--- | "material_default_complete"
--- | "cs_prev_next_spectator"
--- | "cs_handle_ime_event"
--- | "nextlevel_changed"
--- | "seasoncoin_levelup"
--- | "tournament_reward"
--- | "start_halftime"
--- | "ammo_refill"
--- | "parachute_pickup"
--- | "parachute_deploy"
--- | "dronegun_attack"
--- | "drone_dispatched"
--- | "loot_crate_visible"
--- | "loot_crate_opened"
--- | "open_crate_instr"
--- | "smoke_beacon_paradrop"
--- | "survival_paradrop_spawn"
--- | "survival_paradrop_break"
--- | "drone_cargo_detached"
--- | "drone_above_roof"
--- | "choppers_incoming_warning"
--- | "firstbombs_incoming_warning"
--- | "dz_item_interaction"
--- | "snowball_hit_player_face"
--- | "survival_teammate_respawn"
--- | "survival_no_respawns_warning"
--- | "survival_no_respawns_final"
--- | "player_ping"
--- | "player_ping_stop"
--- | "guardian_wave_restart"
