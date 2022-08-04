/*
CDMystery
1 - told of upgrade
2 - upgrade in progress
3 - upgrade finished

CDMysteryTimer
4 hours for completion of upgrade

CDYoung
1 - told of upgrade
2 - start upgrade - edion path
3 - cutscene finished, start dialogue - edion path
4 - post-cutscene dialogue with tiernon done, go see edion - edion path
5 - edion want money
6 - start cutscene - nonedion path
7 - end cutscene, start dialogue - nonedion path
8 - upgrade complete, either via edion or party necro
*/


EXTEND_BOTTOM DEDION 16
  IF ~PartyHasItem("mystery")
      Global("Know_Edion_Wizard","GLOBAL",1)
      Global("CDMystery","MYAREA",0)~ THEN REPLY @770010 DO ~SetGlobal("CDMystery","MYAREA",1)~ GOTO UnlockMystery
  IF ~PartyHasItem("mystery")
      Global("Know_Edion_Wizard","GLOBAL",1)
      Global("CDMystery","MYAREA",1)
      NumItemsPartyGT("misc58",2)~ THEN REPLY @770019 DO ~TakePartyItem("misc58")
                                                          TakePartyItem("misc58")
                                                          TakePartyItem("misc58")
                                                          TakePartyItem("mystery")
                                                          DestroyItem("mystery")
                                                          SetGlobalTimer("CDMysteryTimer","MYAREA",1200) // four hours
                                                          SetGlobal("CDMystery","MYAREA",2)~ GOTO Upgrading
  IF ~PartyHasItem("young")
      PartyHasItem("cdyoungn")
      Global("CDYoung","GLOBAL",4)~ THEN REPLY @7700128 DO ~SetGlobal("CDYoung","GLOBAL",5)~ GOTO YoungRage
  IF ~PartyHasItem("young")
      Global("CDYoung","GLOBAL",5)~ THEN REPLY @7700135 GOTO YR3
END

EXTEND_BOTTOM DTIERNON 33
  IF ~PartyHasItem("young")
      Global("CDYoung","GLOBAL",0)~ THEN REPLY @7700112 DO ~SetGlobal("CDYoung","GLOBAL",1)~ GOTO YoungRage
  IF ~PartyHasItem("young")
      Global("CDYoung","GLOBAL",1)~ THEN REPLY @7700125 GOTO YoungRage2
  IF ~PartyHasItem("young")
      Global("CDYoung","GLOBAL",4)~ THEN REPLY @7700126 GOTO GoSeeEdionAlready
END

APPEND DEDION

  IF WEIGHT #-1 ~!Global("SPRITE_IS_DEADYoungNed","GLOBAL",1)
                 Global("CDMystery","MYAREA",2)
                 GlobalTimerExpired("CDMysteryTimer","MYAREA")~ THEN BEGIN HeresJohnny SAY @7700110 = @7700111
    IF ~~ THEN DO ~GiveItemCreate("cdmyst",LastTalkedToBy,1,1,1)
                   SetGlobal("CDMystery","MYAREA",3)~ GOTO EdionReset
  END
  
  IF ~~ THEN BEGIN YoungRage SAY @7700134
    IF ~~ THEN REPLY @7700130 DO ~TakePartyItem("cdyoungn")
                                  DestroyItem("cdyoungn")~ GOTO YR2
  END

  IF ~~ THEN BEGIN YR2 SAY @7700131 = @7700132
    IF ~PartyGoldGT(299)~ THEN REPLY @770015 DO ~TakePartyGold(300)  
                                                 TakePartyItem("young")
                                                 DestroyItem("young")
                                                 GiveItemCreate("cdyoung",LastTalkedToBy,0,0,0)
                                                 SetGlobal("CDYoung","GLOBAL",8)~ GOTO EdionReset
    IF ~~ THEN REPLY @7700133 GOTO EdionReset
  END

  IF ~~ THEN BEGIN YR3 SAY @7700135
    IF ~PartyGoldGT(299)~ THEN REPLY @770015 DO ~TakePartyGold(300)  
                                                 TakePartyItem("young")
                                                 DestroyItem("young")
                                                 GiveItemCreate("cdyoung",LastTalkedToBy,0,0,0)
                                                 SetGlobal("CDYoung","GLOBAL",8)~ GOTO EdionReset
    IF ~~ THEN REPLY @7700133 GOTO EdionReset
  END

  IF ~~ THEN BEGIN UnlockMystery SAY @770011 = @770012 = @770013 = @770014
    IF ~NumItemsPartyGT("misc58",2)~ THEN REPLY @770015 DO ~TakePartyItem("misc58")
                                                            TakePartyItem("misc58")
                                                            TakePartyItem("misc58")
                                                            TakePartyItem("mystery")
                                                            DestroyItem("mystery")
                                                            SetGlobalTimer("CDMysteryTimer","MYAREA",1200) // four hours
                                                            SetGlobal("CDMystery","MYAREA",2)~ GOTO Upgrading
    IF ~~ THEN REPLY @770016 GOTO EdionReset
  END
  
  IF ~~ THEN BEGIN Upgrading SAY @770017
    IF ~~ THEN GOTO EdionReset
  END
  
  IF ~~ THEN BEGIN EdionReset SAY @770018
    COPY_TRANS DEDION 16
  END

END

APPEND DTIERNON

  IF WEIGHT #-1 ~Global("CDYoung","GLOBAL",7)~ THEN BEGIN PostCutscene SAY @7700122
    IF ~~ THEN DO ~TakePartyItem("young")
                   DestroyItem("young")
                   GiveItemCreate("cdyoung",LastTalkedToBy,0,0,0)
                   SetGlobal("CDYoung","GLOBAL",8)~ GOTO TiernonReset
  END
  
  IF WEIGHT #-1 ~Global("CDYoung","GLOBAL",3)~ THEN BEGIN GoSeeEdion SAY @7700123 = @7700124
    IF ~~ THEN DO ~GiveItemCreate("cdyoungn",LastTalkedToBy,0,0,0)
                   SetGlobal("CDYoung","GLOBAL",4)~ GOTO TiernonReset
  END
  
  IF ~~ THEN BEGIN YoungRage SAY @7700113
    IF ~~ THEN GOTO YoungRage2
  END
  
  IF ~~ THEN BEGIN GoSeeEdionAlready SAY @7700127
    IF ~~ THEN GOTO TiernonReset
  END
  
  IF ~~ THEN BEGIN YoungRage2 SAY @7700114 = @7700115
    IF ~Global("Know_Edion_Wizard","GLOBAL",1)
        !Dead("edion")~ THEN REPLY @7700116  DO ~SetGlobal("CDYoung","GLOBAL",2)~ GOTO Edion
    IF ~OR(6)
          Kit(Player1,MAGESCHOOL_NECROMANCER)
          Kit(Player2,MAGESCHOOL_NECROMANCER)
          Kit(Player3,MAGESCHOOL_NECROMANCER)
          Kit(Player4,MAGESCHOOL_NECROMANCER)
          Kit(Player5,MAGESCHOOL_NECROMANCER)
          Kit(Player6,MAGESCHOOL_NECROMANCER)~ THEN REPLY @7700117  DO ~SetGlobal("CDYoung","GLOBAL",6)~ GOTO MakeIt
    IF ~~ THEN REPLY @7700118 GOTO TiernonReset
  END
  
  IF ~~ THEN BEGIN Edion SAY @7700120 = @7700121
    IF ~~ THEN DO ~StartCutSceneMode()
                   StartCutScene("cdyoung")~ EXIT
  END
  
  IF ~~ THEN BEGIN MakeIt SAY @770012212
    IF ~~ THEN DO ~StartCutSceneMode()
                   StartCutScene("cdyoung")~ EXIT
  END
  
  IF ~~ THEN BEGIN TiernonReset SAY @7700119
    COPY_TRANS DTIERNON 33
  END

END