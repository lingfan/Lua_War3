globals
//globals from YDWEPolledWaitNull:
constant boolean LIBRARY_YDWEPolledWaitNull=true
//endglobals from YDWEPolledWaitNull
    // Generated
trigger gg_trg_obj= null
trigger gg_trg____________________006= null
trigger gg_trg____________________001= null
trigger gg_trg_start= null
trigger gg_trg_start_______u= null
trigger gg_trg_import= null
trigger gg_trg____________________002= null
trigger gg_trg____________________003= null
trigger gg_trg____________________004= null
trigger gg_trg____________________005= null


//JASSHelper struct globals:

endglobals


//library YDWEPolledWaitNull:
function YDWEPolledWaitNull takes real duration returns nothing
    local timer t
    local real timeRemaining
    if ( duration > 0 ) then
        set t=CreateTimer()
        call TimerStart(t, duration, false, null)
        loop
            set timeRemaining=TimerGetRemaining(t)
            exitwhen timeRemaining <= 0
            // If we have a bit of time left, skip past 10% of the remaining
            // duration instead of checking every interval, to minimize the
            // polling on long waits.
            if ( timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD ) then
                call TriggerSleepAction(0.1 * timeRemaining)
            else
                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            endif
        endloop
        call DestroyTimer(t)
    endif
    set t=null
endfunction

//library YDWEPolledWaitNull ends
//===========================================================================
// 
// Lua-导入外部脚本
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Mon May 04 00:19:57 2020
//   Map Author: 
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'hsz1', 94.8, 1086.5, 191.344)
endfunction
//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'hsz1', - 590.2, 1069.6, 261.911)
endfunction
//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'n000', - 256.0, 1088.0, 270.000)
    call SetUnitColor(u, ConvertPlayerColor(0))
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: 未命名触发器 006
//===========================================================================
function Trig____________________006Conditions takes nothing returns boolean
    return ( ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) )
endfunction
function Trig____________________006Actions takes nothing returns nothing
    call YDWEPolledWaitNull(5.00)
    call ReviveHeroLoc(GetTriggerUnit(), GetRectCenter(GetPlayableMapRect()), false)
endfunction
//===========================================================================
function InitTrig____________________006 takes nothing returns nothing
    set gg_trg____________________006=CreateTrigger()
    call DoNothing()
    call TriggerRegisterAnyUnitEventBJ(gg_trg____________________006, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg____________________006, Condition(function Trig____________________006Conditions))
    call TriggerAddAction(gg_trg____________________006, function Trig____________________006Actions)
endfunction
//===========================================================================
// Trigger: 未命名触发器 001
//===========================================================================
function Trig____________________001Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'Hpal', Player(1), GetRectCenter(GetPlayableMapRect()), bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, 'Ulic', Player(0), GetRectCenter(GetPlayableMapRect()), bj_UNIT_FACING)
endfunction
//===========================================================================
function InitTrig____________________001 takes nothing returns nothing
    set gg_trg____________________001=CreateTrigger()
    call DoNothing()
    call TriggerRegisterPlayerChatEvent(gg_trg____________________001, Player(0), "1", true)
    call TriggerAddAction(gg_trg____________________001, function Trig____________________001Actions)
endfunction
//===========================================================================
// Trigger: start 复制
//===========================================================================
function Trig_start_______uActions takes nothing returns nothing
    call Cheat("exec-lua: \"runtime_init\"")
    call Cheat("exec-lua: \"Initialization\"")
    call Cheat("exec-lua: \"War3\\AnyDamagedSystem\"")
    call Cheat("exec-lua: \"War3\\DamagedSystemTrigger\"")
    call Cheat("exec-lua: \"War3\\ChoiceHero\"")
    call Cheat("exec-lua: \"test\\test\"")
    call Cheat("exec-lua: \"War3\\ManyHeroItemSystem\"")
    call Cheat("exec-lua: \"War3\\equipsystem\"")
    call Cheat("exec-lua: \"War3\\RemoveEquipment\"")
    call Cheat("exec-lua: \"War3\\Update\"")
endfunction
//===========================================================================
function InitTrig_start_______u takes nothing returns nothing
    set gg_trg_start_______u=CreateTrigger()
    call DoNothing()
    call TriggerAddAction(gg_trg_start_______u, function Trig_start_______uActions)
endfunction
//===========================================================================
// Trigger: 未命名触发器 003
//===========================================================================
function Trig____________________003Actions takes nothing returns nothing
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_SECRET, "TRIGSTR_3103")
    call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_ALWAYSHINT, "TRIGSTR_3102")
endfunction
//===========================================================================
function InitTrig____________________003 takes nothing returns nothing
    set gg_trg____________________003=CreateTrigger()
    call DoNothing()
    call TriggerAddAction(gg_trg____________________003, function Trig____________________003Actions)
endfunction
//===========================================================================
// Trigger: 未命名触发器 004
//===========================================================================
function Trig____________________004Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_3104")
endfunction
//===========================================================================
function InitTrig____________________004 takes nothing returns nothing
    set gg_trg____________________004=CreateTrigger()
    call DoNothing()
    call TriggerAddAction(gg_trg____________________004, function Trig____________________004Actions)
endfunction
//===========================================================================
// Trigger: 未命名触发器 005
//===========================================================================
function Trig____________________005Actions takes nothing returns nothing
endfunction
//===========================================================================
function InitTrig____________________005 takes nothing returns nothing
    set gg_trg____________________005=CreateTrigger()
    call DoNothing()
    call TriggerAddAction(gg_trg____________________005, function Trig____________________005Actions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig____________________006()
    call InitTrig____________________001()
    call InitTrig_start_______u()
    call InitTrig____________________003()
    call InitTrig____________________004()
    call InitTrig____________________005()
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_start_______u)
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_003
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    // Force: TRIGSTR_004
    call SetPlayerTeam(Player(1), 1)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("Lua-导入外部脚本")
    call SetMapDescription("没有说明")
    call SetPlayers(2)
    call SetTeams(2)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, - 704.0, - 960.0)
    call DefineStartLocation(1, 320.0, 2240.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

