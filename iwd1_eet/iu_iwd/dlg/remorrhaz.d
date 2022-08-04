/*
cdrem
1 - upgrade in progress
2 - upgrade finished, helm given to party

CDRemTimer
timer until completion
*/

EXTEND_BOTTOM DDIRTYLL 0
  IF ~PartyHasItem("cdrem")
      Global("CDRem","MYAREA",0)~ THEN REPLY @770050 GOTO RemMale
  IF ~Global("CDRem","MYAREA",1)
      GlobalTimerExpired("CDRemTimer","MYAREA")~ THEN REPLY @770056 DO ~SetGlobal("CDRem","MYAREA",2)
                                                                        GiveItemCreate("cdrelm",LastTalkedToBy,0,0,0)~ GOTO HelmReady
END

EXTEND_BOTTOM DDIRTYLL 1
  IF ~PartyHasItem("cdrem")
      Global("CDRem","MYAREA",0)~ THEN REPLY @770050 GOTO RemFemale
  IF ~Global("CDRem","MYAREA",1)
      GlobalTimerExpired("CDRemTimer","MYAREA")~ THEN REPLY @770056 DO ~SetGlobal("CDRem","MYAREA",2)
                                                                   GiveItemCreate("cdrelm",LastTalkedToBy,0,0,0)~ GOTO HelmReady
END

EXTEND_BOTTOM DDIRTYLL 2
  IF ~PartyHasItem("cdrem")
      Global("CDRem","MYAREA",0)~ THEN REPLY @770050 GOTO RemHotFemale
  IF ~Global("CDRem","MYAREA",1)
      GlobalTimerExpired("CDRemTimer","MYAREA")~ THEN REPLY @770056 DO ~SetGlobal("CDRem","MYAREA",2)
                                                                   GiveItemCreate("cdrelm",LastTalkedToBy,0,0,0)~ GOTO HelmReady
END

APPEND DDIRTYLL

  IF ~~ THEN BEGIN RemMale SAY @770051
    IF ~PartyGoldGT(7999)~ THEN REPLY @10098 DO ~TakePartyGold(8000)
                                                 TakePartyItem("cdrem")
                                                 DestroyItem("cdrem")
                                                 SetGlobal("CDRem","MYAREA",1)
                                                 SetGlobalTimer("CDRemTimer","MYAREA",THREE_DAYS)~ GOTO GoForIt
    IF ~~ THEN REPLY @770052 GOTO LlewResetMale
    IF ~~ THEN REPLY @770053 GOTO LlewResetMale
  END
  
  IF ~~ THEN BEGIN RemFemale SAY @770058
    IF ~PartyGoldGT(6999)~ THEN REPLY @10098 DO ~TakePartyGold(7000)
                                                 TakePartyItem("cdrem")
                                                 DestroyItem("cdrem")
                                                 SetGlobal("CDRem","MYAREA",1)
                                                 SetGlobalTimer("CDRemTimer","MYAREA",THREE_DAYS)~ GOTO GoForIt
    IF ~~ THEN REPLY @770052 GOTO LlewResetFemale
    IF ~~ THEN REPLY @770053 GOTO LlewResetFemale
  END
  
  IF ~~ THEN BEGIN RemHotFemale SAY @770059
    IF ~PartyGoldGT(4999)~ THEN REPLY @10098 DO ~TakePartyGold(5000)
                                                 TakePartyItem("cdrem")
                                                 DestroyItem("cdrem")
                                                 SetGlobal("CDRem","MYAREA",1)
                                                 SetGlobalTimer("CDRemTimer","MYAREA",THREE_DAYS)~ GOTO GoForIt
    IF ~~ THEN REPLY @770052 GOTO LlewResetHotFemale
    IF ~~ THEN REPLY @770053 GOTO LlewResetHotFemale
  END
  
  IF ~~ THEN BEGIN GoForIt SAY @770054
    IF ~Gender(LastTalkedToBy,MALE)~ THEN GOTO LlewResetMale
    IF ~Gender(LastTalkedToBy,FEMALE)
        CheckStatLT(LastTalkedToBy,16,CHR)~ THEN GOTO LlewResetFemale
    IF ~Gender(LastTalkedToBy,FEMALE)
        CheckStatGT(LastTalkedToBy,15,CHR)~ THEN GOTO LlewResetHotFemale
  END
  
  IF ~~ THEN BEGIN LlewResetMale SAY @770055
    COPY_TRANS DDIRTYLL 0
  END
  
  IF ~~ THEN BEGIN LlewResetFemale SAY @770055
    COPY_TRANS DDIRTYLL 1
  END
  
  IF ~~ THEN BEGIN LlewResetHotFemale SAY @770055
    COPY_TRANS DDIRTYLL 2
  END
  
  IF ~~ THEN BEGIN HelmReady SAY @770057
    IF ~Gender(LastTalkedToBy,MALE)~ THEN GOTO LlewResetMale
    IF ~Gender(LastTalkedToBy,FEMALE)
        CheckStatLT(LastTalkedToBy,16,CHR)~ THEN GOTO LlewResetFemale
    IF ~Gender(LastTalkedToBy,FEMALE)
        CheckStatGT(LastTalkedToBy,15,CHR)~ THEN GOTO LlewResetHotFemale
  END

END