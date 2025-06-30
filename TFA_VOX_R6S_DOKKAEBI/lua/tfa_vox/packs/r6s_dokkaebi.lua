-- Click "Raw" then save the whole file (the last line is important!)
-- Then rename and put to lua/tfa_vox/packs in your addon folder

-- Path to your player model. Use forward slashes.
-- You can get the path for your current player model in Q -> Utilities -> TFA-VOX -> Debug/Development
local model = "models/szynszyl/R6S_DOKKAEBI.mdl"
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
		['spawn'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spawn", { "Action_time.ogg", "Dont_tell_you_anything.ogg", "I_got_this.ogg", "I_got_this2.ogg",
						"I_will_take_it_from_here.ogg", "Im_in_your_welcome.ogg", "Im_in_your_welcome2.ogg", "Im_so_cheating_myself.ogg",
						"Is_this_going_to_be_long.ogg", "Lets_go.ogg", "Lets_go2.ogg", "No_risk_no_reward.ogg", "Ready_to_go.ogg", "Ready_to_go2.ogg",
						 } )
		},
		['pickup'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "pickup", { "Whats_yours_is_mine.ogg", "Whats_yours_is_mine2.ogg", "Whats_yours_is_mine3.ogg",
						"Whats_yours_is_mine3.ogg", "Whats_yours_is_mine4.ogg", "Whats_yours_is_mine5.ogg", "Whats_yours_is_mine6.ogg",
						"Whats_yours_is_mine7.ogg", "Whats_yours_is_mine8.ogg", "Whats_yours_is_mine9.ogg", "Whats_yours_is_mine10.ogg" } )
		},
	},
	['murder'] = {
		['combine'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcomb", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['cp'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdcp", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['zombie'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdzomb", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['headcrab'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdhc", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['antlion'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdant", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['barnacle'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdbarn", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['manhack'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdmh", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['scanner'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsca", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['sniper'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdsni", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['turret'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdtur", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		['ally'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdally", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		},
		-- ['npc_pigeon'] = { -- classname overrides category entry
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdpigeon", {  } )
		-- },
		-- [HITGROUP_HEAD] = { -- last hit bodypart override; chanced (configurable); accepts enum https://wiki.facepunch.com/gmod/Enums/HITGROUP
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdheadshot", {  } )
		-- },
		['generic'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "murdgener", { "Boring.ogg", "Bye.ogg", "I_got_you.ogg", "Nice_knowing_you.ogg" } )
		}
	},
	['spot'] = {
		['combine'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcomb", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['cp'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcp", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['zombie'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotzom", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['headcrab'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spothc", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['antlion'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotant", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['barnacle'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotbarn", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['manhack'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotmh", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['scanner'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsca", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['sniper'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotsni", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['turret'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spottur", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		['ally'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotally", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		},
		-- ['npc_crow'] = { -- classname overrides category entry
			-- ['delay'] = nil,
			-- ['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotcrow", {  } )
		-- },
		['generic'] = {
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "spotgener", { "Enemy_spotted.ogg", "Enemy_spotted2.ogg" } )
		}
	},
	['callouts'] = {
		['I_am_hungry'] = { -- callout id/classname in these quotes
			['name'] = "I am hungry",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_hungry", { "I_am_hungry.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Accessing_cams'] = { -- callout id/classname in these quotes
			['name'] = "Gained access to cameras",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 2,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_cams", { "Acessing_cams.ogg", "Acessing_cams2.ogg",
						"Acessing_cams3.ogg", "Acessing_cams4.ogg", "Broke_into_their_feed.ogg", "Broke_into_their_feed.ogg", "Enjoy_extra_feeds.ogg",
						"Enjoy_extra_feeds2.ogg", "Enjoy_extra_feeds3.ogg", "Enjoy_extra_feeds4.ogg", "Enjoy_extra_feeds5.ogg", "Enjoy_their_cams.ogg",
						"Extra_cams_for_you.ogg", "Extra_cams_for_you2.ogg", "Extra_cams_for_you3.ogg", "Extra_cams_for_you4.ogg", "Extra_cams_for_you5.ogg",
						"Feeds_are_ours.ogg", "Feeds_are_ours2.ogg", "Feeds_are_ours3.ogg", "Feeds_are_ours4.ogg", "Feeds_are_ours5.ogg", "Gaining_acess.ogg",
						"Gaining_acess_to_feed.ogg", "Gaining_acess_to_feed2.ogg", "Going_after_cams.ogg", "Going_after_feed.ogg", "Going_after_feed2.ogg",
						"Going_after_their_cams.ogg", "Got_acces_to_cams.ogg", "Got_acces_to_cams2.ogg", "Got_acces_to_cams3.ogg", "Got_acces_to_cams4.ogg",
						"Got_acces_to_cams5.ogg", "Got_acces_to_cams6.ogg", "Got_acces_to_cams7.ogg", "Got_an_inside_look.ogg", "Got_inside_look.ogg",
						"Got_their_feeds.ogg", "Got_their_feeds2.ogg", "Got_their_feeds3.ogg", "Got_their_feeds4.ogg", "Got_their_feeds8.ogg",
					 	"Got_their_feeds.ogg", "I_see_what_your_up_to.ogg", "I_see_what_your_up_to2.ogg", "I_see_what_your_up_to3.ogg",
						"I_see_what_your_up_to4.ogg", "I_see_what_your_up_to5.ogg", "I_see_what_your_up_to6.ogg", "I_see_what_your_up_to7.ogg",
						"I_see_what_your_up_to8.ogg", "I_see_what_your_up_to9.ogg", "I_see_what_your_up_to10.ogg", "Infiltrating_cams.ogg",
						"Infiltrating_cams2.ogg", "Infiltrating_cams3.ogg", "Infiltrating_cams3.ogg", "Infiltrating_cams4.ogg", "Infiltrating_cams5.ogg",
						"Lets_see_what_they_are_up_to.ogg", "Lets_see_what_they_are_up_to2.ogg", "Lets_see_what_they_are_up_to3.ogg",
						"Lets_see_what_they_are_up_to4.ogg", "Lets_see_whos_nearby.ogg", "Lets_see_whos_nearby2.ogg", "Lets_see_whos_nearby3.ogg",
						"Lets_see_whos_nearby4.ogg", "Lets_see_whos_nearby5.ogg", "Loving_extra_cams.ogg", "Loving_extra_cams2.ogg",
						"Loving_extra_cams3.ogg", "Loving_extra_cams4.ogg", "Loving_extra_cams5.ogg", "Loving_extra_cams6.ogg", "Loving_extra_feeds.ogg",
						"Loving_extra_feeds2.ogg", "Loving_extra_feeds3.ogg", "Loving_extra_feeds4.ogg", "Loving_extra_feeds5.ogg",
						"Loving_your_cams.ogg", "Loving_your_cams2.ogg", "Loving_your_cams3.ogg", "Loving_your_cams4.ogg", "Loving_your_cams5.ogg",
						"Loving_your_cams6.ogg", "Loving_your_feeds.ogg", "Loving_your_feeds2.ogg", "Nice_feeds.ogg", "Nice_feeds2.ogg", "Nice_feeds3.ogg",
						"Nice_feeds4.ogg", "Nice_feeds5.ogg", "Nice_feeds6.ogg", "Nice_feeds7.ogg", "Nice_feeds8.ogg", "Nice_feeds9.ogg",
						"Now_we_are_watching_you.ogg", "Screening.ogg", "Smile_for_camera.ogg", "Smile_for_camera2.ogg", "Smile_for_camera3.ogg",
						"Smile_for_camera3.ogg", "Smile_for_camera4.ogg", "Smile_for_camera5.ogg", "Smile_for_camera6.ogg", "So_thats_what_your_up_to.ogg",
						"So_thats_what_your_up_to2.ogg", "So_thats_what_your_up_to3.ogg", "So_thats_what_your_up_to4.ogg", "So_thats_what_your_up_to5.ogg",
						"So_thats_what_your_up_to5.ogg", "So_thats_what_your_up_to7.ogg", "So_thats_what_your_up_to8.ogg", "So_thats_what_your_up_to9.ogg",
						"Thanks_for_the_feeds.ogg", "Thanks_for_the_feeds2.ogg", "Thanks_for_the_feeds3.ogg", "Thanks_for_the_feeds4.ogg",
						"Thanks_for_the_feeds.5ogg", "Their_cams_are_ours.ogg", "Their_cams_are_ours2.ogg", "Their_cams_are_ours3.ogg", 
						"Their_cams_are_ours4.ogg", "We_are_watching_you.ogg", "We_are_watching_you2.ogg", "We_are_watching_you3.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Hacking'] = { -- callout id/classname in these quotes
			['name'] = "Hacking",-- Callout friendly name ( what you see in the wheel )
			['delay'] = 2,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_hacking", { "Acessing_circuit.ogg", "Acessing_circuit2.ogg",
						"Acessing_circuit3.ogg", "Acessing_circuit4.ogg", "Acessing_sockets.ogg", "Activating_code.ogg", "Activating_code2.ogg",
						"Activating_code3.ogg", "Activating_code4.ogg", "Activating_code5.ogg", "Activating_override.ogg", "Activating_override2.ogg",
						"Activating_override3.ogg", "Activating_override4.ogg", "Activating_override5.ogg", "Breaching_firewall.ogg",
						"Breaching_firewall2.ogg", "Breaking_into_network.ogg", "Breaking_into_network2.ogg", "Breaking_into_network3.ogg",
						"Breaking_into_network4.ogg", "Breaking_into_network5.ogg", "Deploying_code.ogg", "Deploying_code2.ogg", "Deploying_code3.ogg",
						"Deploying_code4.ogg", "Got_their_circuit.ogg", "Got_their_circuit2.ogg", "Got_their_circuit3.ogg", "Hack_initiated.ogg",
						"Hack_initiated2.ogg", "Hack_initiated3.ogg", "Hack_initiated4.ogg", "Hacking.ogg", "Hacking2.ogg", "Hacking3.ogg",
						"Hacking4.ogg", "Hacking5.ogg", "Initiating_hack.ogg", "Initiating_hack2.ogg", "Initiating_hack3.ogg", "Initiating_hack4.ogg",
						"Initiating_hack5.ogg", "Inserting_code.ogg", "Inserting_code2.ogg", "Launching_code.ogg", "Launching_code2.ogg",
						"Launching_override.ogg", "Launching_override2.ogg",  } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Aid'] = { -- callout id/classname in these quotes
			['name'] = "Aiding friendly",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_aid", { "Administering_aid.ogg", "Administering_aid2.ogg",
						"Aiding_friendly.ogg", "Aiding_friendly2.ogg", "I_will_help_you.ogg", "Im_here_for_you.ogg", "Stay_still.ogg",
						"Stay_still2.ogg", "Stay_with_me.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Calling'] = { -- callout id/classname in these quotes
			['name'] = "Calling enemies",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_call", { "Calling_a_meeting.ogg", "Calling_a_meeting2.ogg", "Calling_a_meeting3.ogg",
						"Calling_them_up.ogg", "Calling_them_up2.ogg", "Calling_them_up3.ogg", "I_will_give_them_a_call.ogg", "I_will_give_them_a_call2.ogg",
						"I_will_give_them_a_call3.ogg", "I_will_give_them_a_call4.ogg", "Time_for_a_call.ogg", "Time_for_a_call2.ogg", "Time_for_a_call3.ogg",
						"Time_for_a_call4.ogg", "Time_for_a_call5.ogg", "Time_for_a_call.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Cease_fire'] = { -- callout id/classname in these quotes
			['name'] = "Cease fire!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_cease", { "Cease_fire.ogg", "Friendly.ogg", "Hold_your_fire.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Dont_look'] = { -- callout id/classname in these quotes
			['name'] = "Don't look!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_look", { "Dont_look.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Friendly_down'] = { -- callout id/classname in these quotes
			['name'] = "Friendly down!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_down", { "Friendly_down.ogg", "Friendly_down2.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Friendly_injured'] = { -- callout id/classname in these quotes
			['name'] = "Friendly injured!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_injured", { "Friendly_injured.ogg", "Friendly_injured2.ogg", "Friendly_injured3.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Got_something'] = { -- callout id/classname in these quotes
			['name'] = "Got something between your teeth",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_something", { "Got_something_between_your_teeth.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Got_intel'] = { -- callout id/classname in these quotes
			['name'] = "Got enemy intel!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_intel", { "Got_their_intel.ogg", "Got_their_intel2.ogg", "Got_your_intel.ogg",
						"Got_your_intel2.ogg", "Got_your_intel3.ogg", "Got_your_intel4.ogg", "Got_your_intel5.ogg", "Got_your_intel6.ogg",
						"Their_intel_is_ours.ogg", "Your_intel_is_ours.ogg", "Your_intel_is_ours2.ogg", "Your_intel_is_ours3.ogg",
						"Your_intel_is_ours4.ogg", "Your_intel_is_ours5.ogg", "Your_intel_is_ours6.ogg", "Your_intel_is_ours7.ogg",
						"Your_intel_is_ours8.ogg", "Your_intel_is_ours9.ogg", "Your_intel_is_ours10.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Hostage_secured'] = { -- callout id/classname in these quotes
			['name'] = "Hostage secured!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_hostage", { "Hostage_secured.ogg", "Hostage_secured2.ogg", "Hostage_secured3.ogg",
						"Hostage_secured4.ogg", "Hostage_secured5.ogg", "Hostage_secured6.ogg", "Hostage_secured7.ogg", "Hostage_secured8.ogg",
						"Hostage_secured9.ogg", "Hostage_secured10.ogg", "Hostage_secured11.ogg", "Hostage_secured12.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Korean'] = { -- callout id/classname in these quotes
			['name'] = "Say something in korean",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_korean", { "Korean.ogg", "Korean2.ogg", "Korean3.ogg", "Korean4.ogg", "Korean5.ogg",
						"Korean6.ogg", "Korean7.ogg", "Korean8.ogg", "Korean9.ogg", "Korean10.ogg", "Korean11.ogg", "Korean12.ogg", "Korean13.ogg",
						"Korean14.ogg", "Korean15.ogg", "Korean16.ogg", "Korean17.ogg", "Korean18.ogg", "Korean19.ogg", "Korean20.ogg", "Korean21.ogg",
						"Korean22.ogg", "Korean23.ogg", "Korean24.ogg", "Korean25.ogg", "Korean26.ogg", "Korean27.ogg", "Korean28.ogg", "Korean29.ogg",
						"Korean30.ogg", "Korean31.ogg", "Korean32.ogg", "Korean33.ogg", "Korean34.ogg", "Korean36.ogg", "Korean37.ogg", "Korean38.ogg",
						"Korean39.ogg", "Korean40.ogg", "Korean41.ogg", "Korean42.ogg", "Korean43.ogg", "Korean44.ogg", "Korean45.ogg", "Korean46.ogg",
						"Korean47.ogg", "Korean48.ogg", "Korean49.ogg", "Korean50.ogg", "Korean51.ogg", "Korean52.ogg", "Korean53.ogg", "Korean54.ogg",
						"Korean55.ogg", "Korean56.ogg", "Korean57.ogg", "Korean58.ogg", "Korean59.ogg", "Korean60.ogg", "Korean61.ogg", "Korean62.ogg",
						"Korean63.ogg", "Korean64.ogg", "Korean65.ogg", "Korean66.ogg", "Korean67.ogg", "Korean68.ogg", "Korean69.ogg", "Korean70.ogg",
						"Korean71.ogg", "Korean72.ogg", "Korean73.ogg", "Korean74.ogg", "Korean75.ogg", "Korean76.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Move_it'] = { -- callout id/classname in these quotes
			['name'] = "Move it!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_move_it", { "Move_it.ogg", "This_way.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Move_out'] = { -- callout id/classname in these quotes
			['name'] = "Move away!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_move_out", { "Move_out.ogg", "Run.ogg", "Take_cover.ogg", "Take_cover2.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Nice_firewalls'] = { -- callout id/classname in these quotes
			['name'] = "Mock firewall",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_move_out", { "Nice_firewalls.ogg", "Nice_firewalls2.ogg", "Nice_firewalls3.ogg",
						"Nice_firewalls4.ogg", "Nice_firewalls5.ogg", "Nice_firewalls6.ogg", "Nice_firewalls7.ogg", "Nice_firewalls8.ogg",
						"Nice_firewalls9.ogg", "Nice_firewalls10.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Wait_for_it'] = { -- callout id/classname in these quotes
			['name'] = "Wait for it",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_wait", { "Wait_for_it.ogg", "Wait_for_it2.ogg", "Wait_for_it3.ogg", "Wait_for_it4.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
		['Yes'] = { -- callout id/classname in these quotes
			['name'] = "Yessss!",-- Callout friendly name ( what you see in the wheel )
			['delay'] = nil,
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Wheel_wait", { "Yes.ogg", "Yes2.ogg", "Yes3.ogg", "Yes4.ogg" } ),
			['order'] = nil, -- Sorting order index number (incremental, any entries with index will be put above others)
		},
	},
	['external'] = { --Completely optional, allows you to integrate with external mods
		['bash'] = { -- Used by TFA Base
			['sound'] = TFAVOX_GenerateSound( mdlprefix, "Bash", {  } )
		}
	}
}

TFAVOX_RegisterPack(model, VOXPackTable)

-- Manual registration for additional models with same pack:
-- TFAVOX_RegisterPack("models/player/player.mdl", VOXPackTable)