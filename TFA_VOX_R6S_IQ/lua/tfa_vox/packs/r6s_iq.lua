-- Click "Raw" then save the whole file (the last line is important!)
-- Then rename and put to lua/tfa_vox/packs in your addon folder

-- Path to your player model. Use forward slashes.
-- You can get the path for your current player model in Q -> Utilities -> TFA-VOX -> Debug/Development
local model = "models/szynszyl/R6S_IQ.mdl"
-- If you wish to use this pack with more than one playermodel, please look at the bottom of this file.

--[[ CONVENIENCE FUNCTIONS, DO NOT EDIT FROM THIS POINT UNTIL CLEAR ]]--

-- Automated prefix extraction from player name (for sound generation)
local tmptbl = string.Split(model, "/")
local mdlprefix = string.Replace(tmptbl[#tmptbl] or model, ".mdl", "")
-- OR! you can specify the prefix manually, like this:
-- local mdlprefix = "SHORT_MODEL_NAME" -- uncomment this line and comment two lines above

if model == "models/player/player.mdl" then return end
--[[ CLEAR ]]--

--[[
-- To give VOX sound paths, I recommend TFAVOX_GenerateSound.
-- TFAVOX_GenerateSound( mdlprefix, "sound_event_here", { "path/to/sound1.wav", "path/to/sound2.wav", "path/to/sound3.wav" }
-- You may have as many sounds as you want in the GenerateSound table ^^
-- Please have at least one.

-- Sound paths are relative to "sound" folder of your addon.
-- For example from above, the sounds should be placed there:
-- - garrysmod/addons/<YOUR ADDON>/sound/path/to/sound1.wav
-- - garrysmod/addons/<YOUR ADDON>/sound/path/to/sound2.wav
-- - garrysmod/addons/<YOUR ADDON>/sound/path/to/sound3.wav
-- and so on.
-- Allowed file types are: WAV, MP3 and OGG (without proper delay autocalculation.)

-- If you insist on doing things manually, ['sound'] can be a TABLE | { "sound1.wav", "sound2.wav", "sound3.wav" } | or a STRING  | "snd" |
-- Manual sounds require soundscripts.

-- TFA VOX will now automatically calculate delays.
-- If you need to manually override, feed ['delay'] with a TABLE | {min,max} | or a NUMBER | 999 |
]]--

local VOXPackTable = {
	['main'] = { -- subtable id
		['heal'] = { -- event id
			['delay'] = nil, -- delay (nil to autocalc, doesn't work with ogg)
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "heal", { "snd1", "snd2", "snd3" } ) -- sound path(s)
		},
		['healmax'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "healmax", { "snd1", "snd2", "snd3" } )
		},
		['crithit'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithit", { "snd1", "snd2", "snd3" } )
		},
		['crithealth'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithealth", { "snd1", "snd2", "snd3" } )
		},
		['death'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "death", { "snd1", "snd2", "snd3" } )
		},
		['spawn'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spawn", { "Ready_1.ogg", "Ready_2.ogg", "Ready_3.ogg", "Ready_4.ogg", "Ready_5.ogg",
						"Ready_6.ogg", "Ready_7.ogg", "Its_up_to_me.ogg", "My_training_and_equipment.ogg", "Lets_not_waste_time.ogg",
						"Dont_waste_time.ogg", "Ready_8.ogg", "Ready_9.ogg", "Ready_10.ogg", "Ready_11.ogg", "Ready_12.ogg", "Ready_13.ogg",
						"Ready_14.ogg" } )
		},
		['pickup'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "pickup", { "snd1", "snd2", "snd3" } )
		},
		['reload'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "reload", { "Reload_1.ogg", "Reload_2.ogg", "Reload_3.ogg", "Reload_4.ogg", "Reload_5.ogg",
						"Reload_6.ogg", "Reload_7.ogg", "Reload_8.ogg", "Reload_9.ogg", "Reload_10.ogg", "Reload_11.ogg", "Reload_12.ogg",
						"Reload_13.ogg", "Reload_14.ogg", "Reload_15.ogg", "Reload_16.ogg", "Reload_17.ogg", "Reload_18.ogg", "Reload_19.ogg",
						"Reload_20.ogg" } )
		},
		['noammo'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "noammo", { "No_ammo_1.ogg", "No_ammo_2.ogg", "No_ammo_3.ogg", "No_ammo_4.ogg",
						"No_ammo_5.ogg", "No_ammo_6.ogg", "No_ammo_7.ogg", "No_ammo_8.ogg", "No_ammo_9.ogg", "No_ammo_10.ogg", "No_ammo_11.ogg",
						"No_ammo_12.ogg", "No_ammo_13.ogg", "No_ammo_14.ogg", "No_ammo_15.ogg" } )
		},
		['fall'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "fall", { "snd1", "snd2", "snd3" } )
		},
		['jump'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "jump", { "snd1", "snd2", "snd3" } )
		},
		['step'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "step", { "snd1", "snd2", "snd3" } )
		}
	},
	['murder'] = {
		['combine'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcomb", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['cp'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcp", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['zombie'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdzomb", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['headcrab'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdhc", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['antlion'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdant", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['barnacle'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdbarn", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['manhack'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdmh", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['scanner'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsca", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['sniper'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsni", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['turret'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdtur", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		['ally'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdally", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		},
		-- ['npc_pigeon'] = { -- classname overrides category entry
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdpigeon", { "snd1", "snd2", "snd3" } )
		-- },
		-- [HITGROUP_HEAD] = { -- last hit bodypart override; chanced (configurable); accepts enum https://wiki.facepunch.com/gmod/Enums/HITGROUP
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdheadshot", { "snd1", "snd2", "snd3" } )
		-- },
		['generic'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "Enemy_death.ogg", "Enemy_death_2.ogg", "Enemy_death_3.ogg", "Enemy_death_4.ogg" } )
		}
	},
	['spot'] = {
		['combine'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcomb", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['cp'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcp", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['zombie'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotzom", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['headcrab'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spothc", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['antlion'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotant", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['barnacle'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotbarn", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['manhack'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotmh", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['scanner'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsca", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['sniper'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsni", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['turret'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spottur", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		['ally'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotally", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		},
		-- ['npc_crow'] = { -- classname overrides category entry
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcrow", { "snd1", "snd2", "snd3" } )
		-- },
		['generic'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotgener", { "Enemy_detected_1.ogg", "Enemy_detected_2.ogg", "Enemy_detected_3.ogg",
						"Enemy_detected_4.ogg", "Enemy_detected_5.ogg", "Enemy_detected_6.ogg", "Enemy_detected_7.ogg", "Enemy_detected_8.ogg",
						"Enemy_detected_9.ogg", "Enemy_detected_10.ogg", "Enemy_detected_11.ogg", "Enemy_detected_12.ogg", "Enemy_detected_13.ogg",
						"Enemy_detected_14.ogg", "Enemy_detected_15.ogg", "Enemy_detected_16.ogg" } )
		}
	},
	['taunt'] = {
		[ACT_GMOD_GESTURE_AGREE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_AGREE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_GESTURE_BECON] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_BECON", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_GESTURE_BOW] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_BOW", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_GESTURE_DISAGREE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_DISAGREE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_TAUNT_SALUTE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_SALUTE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_GESTURE_WAVE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_WAVE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_TAUNT_PERSISTENCE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_PERSISTENCE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_TAUNT_MUSCLE] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_MUSCLE", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_TAUNT_LAUGH] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_LAUGH", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_GESTURE_POINT] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_GESTURE_POINT", { "snd1", "snd2", "snd3" } )
		},
		[ACT_GMOD_TAUNT_CHEER] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_GMOD_TAUNT_CHEER", { "snd1", "snd2", "snd3" } )
		},
		[ACT_SIGNAL_FORWARD] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_FORWARD", { "snd1", "snd2", "snd3" } )
		},
		[ACT_SIGNAL_GROUP] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_GROUP", { "snd1", "snd2", "snd3" } )
		},
		[ACT_SIGNAL_HALT] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "ACT_SIGNAL_HALT", { "snd1", "snd2", "snd3" } )
		}
	},
	['damage'] = {
		[HITGROUP_GENERIC] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_GENERIC", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_HEAD] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_HEAD", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_CHEST] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_CHEST", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_STOMACH] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_STOMACH", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_LEFTARM] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_LEFTARM", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_RIGHTARM] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_RIGHTARM", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_LEFTLEG] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_LEFTLEG", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_RIGHTLEG] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_RIGHTLEG", { "snd1", "snd2", "snd3" } )
		},
		[HITGROUP_GEAR] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "HITGROUP_GEAR", { "snd1", "snd2", "snd3" } )
		}
	},
	['callouts'] = {
		['bomb_detected'] = { -- callout id/classname in these quotes
			['name'] = "Bomb detected!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_bomb", { "Bomb_detected_1.ogg", "Bomb_detected_2.ogg",
						"Bomb_detected_3.ogg", "Bomb_detected_4.ogg", "Bomb_detected_5.ogg", "Bomb_detected_6.ogg",
						"Bomb_detected_7.ogg", "Bomb_detected_8.ogg", "Bomb_detected_9.ogg", "Bomb_detected_10.ogg",
						"Bomb_detected_11.ogg", "Bomb_detected_12.ogg", "Bomb_detected_13.ogg", "Bomb_detected_14.ogg",
						"Bomb_detected_15.ogg", "Bomb_detected_16.ogg", "Bomb_detected_17.ogg", "Bomb_detected_18.ogg",
						"Bomb_detected_19.ogg", "Bomb_detected_20.ogg", "Bomb_detected_21.ogg", "Bomb_detected_21.ogg",
						"Bomb_detected_22.ogg", "Bomb_detected_23.ogg", "Bomb_detected_24.ogg", "Bomb_detected_25.ogg",
						"Bomb_detected_26.ogg", "Bomb_detected_27.ogg", "Bomb_detected_28.ogg", "Bomb_detected_29.ogg",
						"Bomb_detected_30.ogg", "Bomb_detected_31.ogg", "Bomb_detected_32.ogg", "Bomb_detected_33.ogg",
						"Bomb_detected_34.ogg", "Bomb_detected_35.ogg", "Bomb_detected_36.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Agree'] = { -- callout id/classname in these quotes
			['name'] = "Agree",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_agree", { "Agree_1.ogg", "Agree_2.ogg" } ),
			['order'] = nil,
		},
		['Breaching'] = { -- callout id/classname in these quotes
			['name'] = "Breaching",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_breaching", { "Breaching_1.ogg", "Breaching_2.ogg", "Breaching_3.ogg", 
						"Breaching_4.ogg", "Breaching_5.ogg", "Breaching_6.ogg", "Breaching_7.ogg", "Breaching_8.ogg", "Breaching_9.ogg",
						"Breaching_10.ogg", "Breaching_11.ogg", "Breaching_12.ogg" } ),
			['order'] = nil,
		},
		['Cease_fire'] = { -- callout id/classname in these quotes
			['name'] = "Cease Fire!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_cease_fire", { "Cease_fire_1.ogg", "Cease_fire_2.ogg", "Cease_fire_3.ogg" } ),
			['order'] = nil,
		},
		['Claymore'] = { -- callout id/classname in these quotes
			['name'] = "Claymore",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_claymore", { "Claymore_1.ogg", "Claymore_2.ogg", "Claymore_3.ogg",
						"Claymore_4.ogg", "Claymore_5.ogg", "Claymore_6.ogg", "Claymore_7.ogg", "Claymore_8.ogg", "Claymore_9.ogg",
						"Claymore_10.ogg", "Claymore_11.ogg", "Claymore_12.ogg", "Claymore_13.ogg", "Claymore_14.ogg", "Claymore_15.ogg",
						"Claymore_16.ogg", "Claymore_17.ogg", "Claymore_18.ogg", "Claymore_19.ogg", "Claymore_20.ogg", "Claymore_21.ogg" } ),
			['order'] = nil,
		},
		['Defuser_located'] = { -- callout id/classname in these quotes
			['name'] = "Defuser located",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_defuser_located", { "Defuser_located_1.ogg", "Defuser_located_2.ogg", 
						"Defuser_located_3.ogg", "Defuser_located_4.ogg", "Defuser_located_5.ogg", "Defuser_located_6.ogg", "Defuser_located_7.ogg",
						"Defuser_located_8.ogg", "Defuser_located_9.ogg", "Defuser_located_10.ogg", "Defuser_located_11.ogg", "Defuser_located_12.ogg",
						"Defuser_located_13.ogg", "Defuser_located_14.ogg", "Defuser_located_15.ogg", "Defuser_located_18.ogg" } ),
			['order'] = nil,
		},
		['Drone_activated'] = { -- callout id/classname in these quotes
			['name'] = "Drone activated",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_agree", { "Drone_activated_1.ogg", "Drone_activated_2.ogg", "Drone_activated_3.ogg",
						"Drone_activated_4.ogg", "Drone_activated_5.ogg", "Drone_activated_6.ogg", "Drone_activated_7.ogg", "Drone_activated_8.ogg",
						"Drone_activated_9.ogg", "Drone_activated_10.ogg", "Drone_activated_11.ogg", "Drone_activated_12.ogg" } ),
			['order'] = nil,
		},
		['Fall_back'] = { -- callout id/classname in these quotes
			['name'] = "Fall back!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_fall_back", { "Fall_back_1.ogg", "Fall_back_2.ogg", "Fall_back_3.ogg", "Fall_back_4.ogg",
						"Run.ogg" } ),
			['order'] = nil,
		},
		['Flash'] = { -- callout id/classname in these quotes
			['name'] = "Flashbang!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_flash", { "Flash_1.ogg", "Flash_2.ogg", "Flash_3.ogg", "Flash_4.ogg", "Flash_5.ogg",
						"Flash_6.ogg", "Flash_7.ogg", "Flash_8.ogg", "Flash_9.ogg", "Flash_10.ogg", "Flash_11.ogg", "Flash_12.ogg", "Flash_13.ogg"  } ),
			['order'] = nil,
		},
		['Follow_me'] = { -- callout id/classname in these quotes
			['name'] = "Follow me",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_follow_me", { "Follow_me_1.ogg", "Follow_me_2.ogg", "Follow_me_3.ogg", 
						"Follow_me_4.ogg", "Follow_me_5.ogg", "Follow_me_6.ogg", "Follow_me_7.ogg", "Follow_me_8.ogg", "Follow_me_9.ogg",
						"Follow_me_10.ogg", "Follow_me_11.ogg", "Follow_me_12.ogg", "Follow_me_13.ogg", "Follow_me_14.ogg", "Follow_me_15.ogg",
						"Follow_me_16.ogg", "Follow_me_17.ogg", "Hurry.ogg", "Move_faster.ogg" } ),
			['order'] = nil,
		},
		['Frag'] = { -- callout id/classname in these quotes
			['name'] = "Frag out!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_agree", { "Frag_1.ogg", "Frag_2.ogg", "Frag_3.ogg", "Frag_4.ogg", "Frag_5.ogg",
						"Frag_6.ogg", "Frag_7.ogg", "Frag_8.ogg", "Frag_9.ogg", "Frag_10.ogg", "Frag_11.ogg", "Frag_12.ogg", "Frag_13.ogg",
						"Frag_14.ogg", "Frag_15.ogg", "Frag_16.ogg", "Frag_17.ogg", "Frag_18.ogg", "Frag_19.ogg", "Frag_20.ogg", "Frag_21.ogg",
						"Frag_22.ogg", "Frag_23.ogg", "Frag_24.ogg", "Frag_25.ogg", "Frag_26.ogg", "Frag_27.ogg", "Frag_29.ogg", "Frag_30.ogg",
						"Frag_31.ogg" } ),
			['order'] = nil,
		},
		['I_will_fix_you'] = { -- callout id/classname in these quotes
			['name'] = "I will fix you!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_i_will_fix_you", { "I_will_fix_you_1.ogg", "I_will_fix_you_2.ogg", 
						"Applying_first_aid_1.ogg", "Applying_first_aid_2.ogg" } ),
			['order'] = nil,
		},
		['Need_help'] = { -- callout id/classname in these quotes
			['name'] = "Need help!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_need_help", { "Need_help_1.ogg", "Watch_my_back.ogg" } ),
			['order'] = nil,
		},
		['Ready_to_breach'] = { -- callout id/classname in these quotes
			['name'] = "Ready to breach",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_ready_to_breach", { "Ready_to_breach_1.ogg", "Ready_to_breach_2.ogg", 
						"Ready_to_breach_3.ogg", "Ready_to_breach_4.ogg", "Ready_to_breach_5.ogg", "Ready_to_breach_6.ogg",
						"Ready_to_breach_7.ogg", "Ready_to_breach_8.ogg", "Ready_to_breach_9.ogg", "Ready_to_breach_10.ogg",
						"Ready_to_breach_11.ogg", "Ready_to_breach_12.ogg", "Ready_to_breach_13.ogg", "Ready_to_breach_14.ogg",
						"Ready_to_breach_15.ogg" } ),
			['order'] = nil,
		},
		['Scanning'] = { -- callout id/classname in these quotes
			['name'] = "Scanning",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_scanning", { "Scanning_1.ogg", "Scanning_2.ogg", "Scanning_3.ogg", "Scanning_4.ogg",
						"Scanning_5.ogg", "Scanning_6.ogg", "Scanning_7.ogg", "Scanning_8.ogg", "Scanning_9.ogg", "Scanning_10.ogg", "Scanning_11.ogg",
						"Scanning_12.ogg", "Scanning_13.ogg", "Scanning_14.ogg", "Scanning_15.ogg", "Scanning_16.ogg", "Scanning_17.ogg", "Scanning_18.ogg",
						"Scanning_19.ogg", "Scanning_20.ogg", "Scanning_21.ogg", "Scanning_22.ogg", "Scanning_23.ogg", "Scanning_24.ogg", "Scanning_25.ogg",
						"Scanning_26.ogg", "Scanning_27.ogg", "Scanning_28.ogg" } ),
			['order'] = nil,
		},
		['Securing_hostage'] = { -- callout id/classname in these quotes
			['name'] = "Securing hostage",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_securing_hostage", { "Securing_hostage_1.ogg", "Securing_hostage_2.ogg", 
						"Securing_hostage_3.ogg", "Securing_hostage_4.ogg", "Securing_hostage_5.ogg", "Securing_hostage_6.ogg",
						"Securing_hostage_7.ogg", "Securing_hostage_8.ogg", "Securing_hostage_9.ogg", "Securing_hostage_10.ogg",
						"Securing_hostage_11.ogg", "Securing_hostage_12.ogg", "Securing_hostage_13.ogg", "Securing_hostage_14.ogg",
						"Securing_hostage_15.ogg", "Securing_hostage_16.ogg", "Securing_hostage_17.ogg", "Securing_hostage_18.ogg",
						"Securing_hostage_19.ogg", "Securing_hostage_20.ogg" } ),
			['order'] = nil,
		},
		['Smoke'] = { -- callout id/classname in these quotes
			['name'] = "Smoke",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_smoke", { "Smoke_1.ogg", "Smoke_2.ogg", "Smoke_3.ogg", "Smoke_4.ogg", "Smoke_5.ogg",
						"Smoke_6.ogg", "Smoke_7.ogg", "Smoke_8.ogg", "Smoke_9.ogg", "Smoke_10.ogg" } ),
			['order'] = nil,
		},
		['Stay'] = { -- callout id/classname in these quotes
			['name'] = "Stay",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_stay", { "Stay_1.ogg", "Stay_2.ogg", "Stay_3.ogg", "Stay_4.ogg", "Stay_5.ogg",
						"Stay_6.ogg", "Stay_7.ogg", "Stay_8.ogg", "Stay_9.ogg", "Stay_10.ogg", "Stay_11.ogg", "Stay_12.ogg", "Stay_13.ogg",
						"Stay_14.ogg", "Stay_15.ogg", "Stay_16.ogg" } ),
			['order'] = nil,
		},
		['Stay_calm'] = { -- callout id/classname in these quotes
			['name'] = "Stay calm",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_stay_calm", { "Stay_calm_1.ogg", "Stay_calm_2.ogg", "Stay_calm_3.ogg",
						"Stay_on_top.ogg" } ),
			['order'] = nil,
		},
		['Stun'] = { -- callout id/classname in these quotes
			['name'] = "Stun",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_stun", { "Stun_1.ogg", "Stun_2.ogg", "Stun_3.ogg", "Stun_4.ogg", "Stun_5.ogg",
						"Stun_6.ogg", "Stun_7.ogg", "Stun_8.ogg", "Stun_9.ogg", "Stun_10.ogg", "Stun_11.ogg", "Stun_12.ogg", "Stun_13.ogg",
						"Stun_14.ogg", "Stun_15.ogg", "Stun_16.ogg" } ),
			['order'] = nil,
		},
		['Wait'] = { -- callout id/classname in these quotes
			['name'] = "Wait here",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_wait", { "Wait_1.ogg", "Wait_2.ogg" } ),
			['order'] = nil,
		},
		['Watch_out'] = { -- callout id/classname in these quotes
			['name'] = "Watch out!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_watch_out", { "Watch_out_1.ogg", "Watch_out_2.ogg", "Watch_out_3.ogg", 
						"Watch_out_4.ogg", "Watch_out_5.ogg", "Watch_out_6.ogg", "Watch_out_7.ogg", "Granade_1.ogg", "Granade_2.ogg",
						"Granade_3.ogg", "Head_down.ogg", "Watch_out_8.ogg", "Watch_out_9.ogg", "Watch_out_10.ogg", "Watch_out_11.ogg" } ),
			['order'] = nil,
		},
		['We_are_not_going_in_blind'] = { -- callout id/classname in these quotes
			['name'] = "We are not going in blind",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_we_are_not_going_in_blind", { "We_are_not_going_in_blind.ogg" } ),
			['order'] = nil,
		},
		['Enemy_reloading'] = { -- callout id/classname in these quotes
			['name'] = "Enemy is reloading",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_enemy_reloading", { "Enemy_reloading_1.ogg", "Enemy_reloading_2.ogg",
						"Enemy_reloading_3.ogg", "Enemy_reloading_4.ogg" } ),
			['order'] = nil,
		},
		['Focus'] = { -- callout id/classname in these quotes
			['name'] = "Focus",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_focus", { "Focus_1.ogg", "Focus_2.ogg" } ),
			['order'] = nil,
		},
		['Brace_yourself'] = { -- callout id/classname in these quotes
			['name'] = "Brace yourself!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_brace_yourself", { "Brace_yourself.ogg", "Brace_yourself_2.ogg" } ),
			['order'] = nil,
		}

	},
	['external'] = { --Completely optional, allows you to integrate with external mods
		['bash'] = { -- Used by TFA Base
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Bash", { "snd1", "snd2", "snd3" } )
		}
	}
}

TFAVOX_RegisterPack(model, VOXPackTable)

-- Manual registration for additional models with same pack:
-- TFAVOX_RegisterPack("models/player/player.mdl", VOXPackTable)