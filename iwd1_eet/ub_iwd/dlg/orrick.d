/*
cdorrickshield
1 - learned of upgrade
2 - upgrade accepted, in progress
3 - upgrade complete

CDOrrickShieldTimer - three day timer for completion
*/

EXTEND_BOTTOM DORRICK 0 2 18 19
  IF ~PartyHasItem("beetshld")
      Global("CDOrrickShield","MYAREA",1)~ THEN REPLY @300000513 GOTO WhatUpgrade
END

APPEND DORRICK

  IF WEIGHT #0 ~Global("CDOrrickShield","MYAREA",0)
                PartyHasItem("beetshld")~ THEN BEGIN ShieldOffer SAY @300000501 = @300000502
    IF ~~ THEN REPLY @300000503 DO ~SetGlobal("CDOrrickShield","MYAREA",1)~ GOTO WhatUpgrade
    IF ~~ THEN REPLY @300000504 DO ~SetGlobal("CDOrrickShield","MYAREA",1)~ GOTO NoThanks
  END

  IF WEIGHT #0 ~Global("CDOrrickShield","MYAREA",2)
                GlobalTimerExpired("CDOrrickShieldTimer","MYAREA")~ THEN BEGIN ShieldReady SAY @300000511
    IF ~~ THEN DO ~GiveItemCreate("orrshld",LastTalkedToBy,0,0,0)
                   SetGlobal("CDOrrickShield","MYAREA",3)~ GOTO ShieldReady2
  END

  IF ~~ THEN BEGIN ShieldReady2 SAY @300000512
    COPY_TRANS DORRICK 18
  END

  IF ~~ THEN BEGIN NoThanks SAY @300000505
    COPY_TRANS DORRICK 18
  END
  
  IF ~~ THEN BEGIN WhatUpgrade SAY @300000506
    IF ~Global("Orrick_Quest","GLOBAL",4)~ THEN GOTO Cheap
    IF ~!Global("Orrick_Quest","GLOBAL",4)~ THEN GOTO NotCheap
  END

  IF ~~ THEN BEGIN Cheap SAY @300000507
        IF ~PartyGoldGT(14999)~ REPLY @300000509 DO ~TakePartyGold(15000)
                                               TakePartyItem("beetshld")
                                               DestroyItem("beetshld")
                                               SetGlobal("CDOrrickShield","MYAREA",2)
                                               SetGlobalTimer("CDOrrickShieldTimer","MYAREA",THREE_DAYS)~ GOTO MakeShield
    IF ~~ REPLY @300000504 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NotCheap SAY @300000508
        IF ~PartyGoldGT(29999)~ REPLY @300000509 DO ~TakePartyGold(30000)
                                               TakePartyItem("beetshld")
                                               DestroyItem("beetshld")
                                               SetGlobal("CDOrrickShield","MYAREA",2)
                                               SetGlobalTimer("CDOrrickShieldTimer","MYAREA",THREE_DAYS)~ GOTO MakeShield
    IF ~~ REPLY @300000504 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN MakeShield SAY @300000510
    COPY_TRANS DORRICK 18
  END

END