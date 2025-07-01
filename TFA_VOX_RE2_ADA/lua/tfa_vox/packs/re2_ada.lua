-- Click "Raw" then save the whole file (the last line is important!)
-- Then rename and put to lua/tfa_vox/packs in your addon folder

-- Path to your player model. Use forward slashes.
-- You can get the path for your current player model in Q -> Utilities -> TFA-VOX -> Debug/Development
local model = "models/szynszyl/RE2_Ada.mdl"
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
			['delay'] = 5, -- delay (nil to autocalc, doesn't work with ogg)
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "heal", { "snd1", "snd2", "snd3" } ) -- sound path(s)
		},
		['healmax'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "healmax", { "snd1", "snd2", "snd3" } )
		},
		['crithit'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithit", { "Pain.ogg", "Pain2.ogg", "Pain3.ogg", "Pain4.ogg", "Pain5.ogg",
						"Pain6.ogg", "Pain7.ogg", "Pain8.ogg", "Pain9.ogg", "Pain10.ogg", "Pain11.ogg", "Pain12.ogg" } )
		},
		['crithealth'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "crithealth", { "Pain_long.ogg", "Pain_long2.ogg", "Pain_long3.ogg" } )
		},
		['death'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "death", { "Death1.ogg" } )
		},
		['spawn'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spawn", { "Come_on_ada.ogg", "God_only_knows.ogg", "Here_we_are.ogg", 
						"I_got_plenty_to_live_for.ogg", "I_gotta_see_this_through.ogg", "Lets_get_out_of_here.ogg", "What_a_mess.ogg" } )
		},
		['pickup'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "pickup", { "Borrowed_it.ogg", "Candy_from_a_baby.ogg", "Good_luck_getting_that.ogg", 
						"Secret_weapon_time.ogg", "You_gonna_need_this.ogg" } )
		},
		['reload'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "reload", { "" } )
		},
		['noammo'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "noammo", { "" } )
		},
		['fall'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "fall", { "snd1", "snd2", "snd3" } )
		},
		['jump'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "jump", { "snd1", "snd2", "snd3" } )
		},
		['step'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "step", { "snd1", "snd2", "snd3" } )
		}
	},
	['murder'] = {
		['combine'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcomb", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['cp'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcp", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['zombie'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdzomb", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg",
						"We_need_to_terminate_her.ogg" } )
		},
		['headcrab'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdhc", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg",
						"We_need_to_terminate_her.ogg" } )
		},
		['antlion'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdant", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['barnacle'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdbarn", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['manhack'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdmh", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['scanner'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsca", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['sniper'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsni", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['turret'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdtur", { "Got_you_now.ogg", "Im_just_doing_my_job.ogg", "Nothing_dies_down_here.ogg" } )
		},
		['ally'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdally", { "I_really_hoped.ogg", "No.ogg", "Oh_shit.ogg", "That_only_makes_me_feel_worse.ogg",
						"Unfortuneatly.ogg" } )
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
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "Got_you_now.ogg" } )
		}
	},
	['spot'] = {
		['combine'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcomb", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['cp'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcp", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['zombie'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotzom", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['headcrab'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spothc", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['antlion'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotant", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['barnacle'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotbarn", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['manhack'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotmh", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['scanner'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsca", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['sniper'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsni", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['turret'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spottur", { "Enough_of_this_game.ogg", "Gonna_burn_me_alive.ogg", "Persistent_bastard.ogg",
						"This_is_getting_old.ogg" } )
		},
		['ally'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotally", { "I_dont_wanna_hurt_you.ogg", "I_was_getting_worried.ogg", 
						"If_you_dont_cooperate.ogg", "Im_impressed_you_made_it_in_one_piece.ogg", "Name_is_ada.ogg", "Suprised_you_made_it_this_far.ogg",
						"That_makes_two_of_us.ogg", "Trying_to_save_the_world.ogg", "What_a_pair.ogg", "You_are_the_last_hope.ogg", "You_have_a_key_card.ogg",
						"You_up_for_this.ogg" } )
		},
		-- ['npc_crow'] = { -- classname overrides category entry
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcrow", { "snd1", "snd2", "snd3" } )
		-- },
		['generic'] = {
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotgener", { "Enough_of_this_game.ogg" } )
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
		['Agree'] = { -- callout id/classname in these quotes
			['name'] = "I agree",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_agree", { "I_agree.ogg", "I_hope_so.ogg", "I_thought_I_may_need_your_help.ogg",
						"I_will_give_you_that.ogg", "This_is_it.ogg", "Well_said.ogg" } ),
			['order'] = nil,
		},
		['After_you'] = { -- callout id/classname in these quotes
			['name'] = "After you",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_after", { "After_you.ogg" } ),
			['order'] = nil,
		},
		['Annette'] = { -- callout id/classname in these quotes
			['name'] = "Talk about A.Birkin",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_annette", { "Always_been_good_at_running.ogg", "And_thats_why_I_look_for_birkin.ogg",
						"Annete_makes_viruses.ogg", "Didnt_expect_that.ogg", "If_its_not_on_her.ogg", "Im_going_to_bring_her_down.ogg",
						"Im_warning_you_doctor.ogg", "In_pursuit.ogg", "Is_your_husband_still_alive.ogg", "She_is_the_one_responsible.ogg", 
						"That_bitch.ogg", "This_is_how_we_get_to_annete.ogg", "We_are_here_for_the_virus.ogg", "You_can_run_annete.ogg" } ),
			['order'] = nil,
		},
		['Ben'] = { -- callout id/classname in these quotes
			['name'] = "Talk about Ben",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_ben", { "Ben_didnt_come_through.ogg", "He_was_an_informant.ogg", "I_told_you_to_get_out.ogg",
						"Maybe.ogg" } ),
			['order'] = nil,
		},
		['Injured'] = { -- callout id/classname in these quotes
			['name'] = "Injured",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_injured", { "Both_one_foot_in_grave.ogg", "Damn_leg.ogg", "Hows_the_shoulder.ogg",
						"I_cant_get_it_out.ogg", "Just_do_it.ogg", "Look_at_me.ogg", "Over_here.ogg", "We_may_not_make_it_out.ogg" } ),
			['order'] = nil,
		},
		['Bravo'] = { -- callout id/classname in these quotes
			['name'] = "Bravo",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_bravo", { "Bravo.ogg", "We_were_keeping_score.ogg" } ),
			['order'] = nil,
		},
		['Warn'] = { -- callout id/classname in these quotes
			['name'] = "Can't say I didn't warn you",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_warn", { "Cant_say_I_didnt_warn_you.ogg", "Look_this_isnt_a_game.ogg", 
						"One_way_ride.ogg", "Saving_you_ass_thats_twice.ogg", "Step_aside.ogg", "You_dont_understand.ogg" } ),
			['order'] = nil,
		},
		['Get_out'] = { -- callout id/classname in these quotes
			['name'] = "Get out of here",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_out", { "Do_yourself_a_favor.ogg", "Get_out_of_there.ogg",
						"Get_yourself_out_of_here.ogg" } ),
			['order'] = nil,
		},
		['Dont_push'] = { -- callout id/classname in these quotes
			['name'] = "Don't push it",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_push", { "Dont_push_it.ogg", "I_can_do_it_myself.ogg", "I_will_be_fine.ogg",
						"Not_gonna_happen.ogg", "Unfortuneatly_no.ogg" } ),
			['order'] = nil,
		},
		['Drop_it'] = { -- callout id/classname in these quotes
			['name'] = "Drop your gun",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_push", { "Drop_it.ogg", "Its_just_me.ogg", "Lower_it_fbi.ogg", "Stop.ogg" } ),
			['order'] = nil,
		},
		['Leon'] = { -- callout id/classname in these quotes
			['name'] = "Talk about Leon",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_leon", { "Find_a_way_out.ogg", "Hand_over_the_sample.ogg", "Its_not_worth_it.ogg",
						"Leon.ogg", "Leon_get_out_of_there.ogg", "Leon_im_counting_on_you.ogg", "Leon_up_here.ogg", "Leon_you_trust_me.ogg",
						"Leon2.ogg", "Not_too_late_to_turn_back_leon.ogg", "Oh_leon.ogg", "Where_is_leon.ogg" } ),
			['order'] = nil,
		},
		['Go'] = { -- callout id/classname in these quotes
			['name'] = "Go!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_go", { "Go.ogg", "Going_through_that_gun_shop.ogg", "Roads_out.ogg" } ),
			['order'] = nil,
		},
		['Umbrella'] = { -- callout id/classname in these quotes
			['name'] = "Talk about Umbrella",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_umbrella", { "Heard_of_umbrella.ogg", "Going_through_that_gun_shop.ogg",
						"Im_right_outside.ogg", "More_info.ogg", "My_mission.ogg", "Our_ticket_to_ride", "That_cablecar.ogg",
						"They_are_making_bioweapons.ogg", "They_dont_sell_the_monsters.ogg", "This_leads_to_umbrela_facility.ogg",
						"Umbrella_controlled_city.ogg", "You_wanna_help.ogg" } ),
			['order'] = nil,
		},
		['Virus'] = { -- callout id/classname in these quotes
			['name'] = "Talk about G-Virus",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_virus", { "If_you_can_secure_the_virus.ogg", "Going_through_that_gun_shop.ogg",
						"Im_not_the_only_one_after_it.ogg", "Let_me_verify_sample.ogg", "Once_its_in_hand.ogg", "Once_we_get_virus.ogg",
						"Tell_me_you_got_it.ogg", "Thats_where_samples_are.ogg", "They_have_a_virus.ogg" } ),
			['order'] = nil,
		},
		['Follow_me'] = { -- callout id/classname in these quotes
			['name'] = "Follow me",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_follow", { "Just_get_up_here.ogg", "That_should_take_us.ogg", "Trust_me.ogg",
						"Ways_clear.ogg", "We_are_almost_there.ogg", "We_dont_have_much_time.ogg", "We_got_work_to_do.ogg" } ),
			['order'] = nil,
		},
		['Open'] = { -- callout id/classname in these quotes
			['name'] = "Open damn shutter!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_open", { "Open_damn_shutter.ogg", "We_might_wanna_open_shutter.ogg" } ),
			['order'] = nil,
		},
		['Sorry'] = { -- callout id/classname in these quotes
			['name'] = "Sorry that information is classified!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_sorry", { "Sorry_thats_classified.ogg", "This_is_a_federal_case.ogg" } ),
			['order'] = nil,
		},
		['Stay_sharp'] = { -- callout id/classname in these quotes
			['name'] = "Stay sharp!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_sharp", { "Stay_sharp.ogg", "Stay_sharp2.ogg" } ),
			['order'] = nil,
		},
		['Welcome_to_america'] = { -- callout id/classname in these quotes
			['name'] = "Welcome to america",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 5,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_welcome", { "Welcome_to_america.ogg" } ),
			['order'] = nil,
		},
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