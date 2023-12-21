	object_const_def
	const ROUTE18_YOUNGSTER1
	const ROUTE18_YOUNGSTER2
	const ROUTE18_POKEFAN_M

Route18_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperBoris:
	trainer BIRD_KEEPER, BORIS, EVENT_BEAT_BIRD_KEEPER_BORIS, BirdKeeperBorisSeenText, BirdKeeperBorisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBorisAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperBob:
	trainer BIRD_KEEPER, BOB, EVENT_BEAT_BIRD_KEEPER_BOB, BirdKeeperBobSeenText, BirdKeeperBobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBobAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPokefanmPierre:
	trainer POKEFANM, PIERRE, EVENT_BEAT_POKEFANM_PIERRE, PokefanmPierreSeenText, PokefanmPierreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmPierreAfterBattleText
	waitbutton
	closetext
	end

Route18Sign:
	jumptext Route18SignText

BirdKeeperBorisSeenText:
	text "If you're looking"
	line "for #MON, you"

	para "have to look in"
	line "the tall grass."
	done

BirdKeeperBorisBeatenText:
	text "Ayieee!"
	done

BirdKeeperBorisAfterBattleText:
	text "Since you're so"
	line "strong, it must be"
	cont "fun to battle."
	done

BirdKeeperBobSeenText:
	text "CYCLING ROAD is a"
	line "quick shortcut to"
	cont "CELADON."
	done

BirdKeeperBobBeatenText:
	text "…Whew!"
	done

BirdKeeperBobAfterBattleText:
	text "If you don't have"
	line "a BICYCLE, you're"

	para "not allowed to use"
	line "the shortcut."
	done
	
PokefanmPierreSeenText:
	text "Kinda bummed, but"
	line "I'll battle…"
	done

PokefanmPierreBeatenText:
	text "…Aww, man!"
	done

PokefanmPierreAfterBattleText:
	text "I came all this"
	line "way to FUSCHIA"

	para "to find out the"
	line "SAFARI ZONE is"
	cont "closed."
	done

Route18SignText:
	text "ROUTE 18"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  6, ROUTE_17_ROUTE_18_GATE, 3
	warp_event  2,  7, ROUTE_17_ROUTE_18_GATE, 4

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, Route18Sign

	def_object_events
	object_event  9, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBoris, -1
	object_event 13,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBob, -1
	object_event 15,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmPierre, -1
