/*
CDStoutInGame 
1 - set in ar2004 if stoutward is randomly spawned
2 - adds mithril hammer to dorn's deep if stout is in game (ar6003)

CDStoutUpgrade
1 - learned it can be upgraded
2 - upgrade in progress
3 - upgrade finished

CDStoutUpgradeTimer
timer until upgrade ready

CDScales
1 - learned it can be upgraded
2 - upgrade in progress
3 - upgrade finished

CDScalesTimer
timer until upgrade ready
*/

EXTEND_BOTTOM DCONLAN 0
  IF ~Global("CDStoutUpgrade","MYAREA",0)
      PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
  IF ~Global("CDStoutUpgrade","MYAREA",1)
      PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
  IF ~Global("CDScales","MYAREA",0)
      PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
  IF ~Global("CDScales","MYAREA",1)
      PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
END

EXTEND_BOTTOM DCONLAN 1
  IF ~Global("CDStoutUpgrade","MYAREA",0)
      PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
  IF ~Global("CDStoutUpgrade","MYAREA",1)
      PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
  IF ~Global("CDScales","MYAREA",0)
      PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
  IF ~Global("CDScales","MYAREA",1)
      PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
END

EXTEND_BOTTOM DCONLAN 13
  IF ~Global("CDStoutUpgrade","MYAREA",0)
      PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
  IF ~Global("CDStoutUpgrade","MYAREA",1)
      PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
  IF ~Global("CDScales","MYAREA",0)
      PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
  IF ~Global("CDScales","MYAREA",1)
      PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
END

EXTEND_BOTTOM DCONLAN 14
  IF ~Global("CDStoutUpgrade","MYAREA",0)
      PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
  IF ~Global("CDStoutUpgrade","MYAREA",1)
      PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
  IF ~Global("CDScales","MYAREA",0)
      PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
  IF ~Global("CDScales","MYAREA",1)
      PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
END

EXTEND_BOTTOM DCONLAN 17
  IF ~Global("CDStoutUpgrade","MYAREA",0)
      PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
  IF ~Global("CDStoutUpgrade","MYAREA",1)
      PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
  IF ~Global("CDScales","MYAREA",0)
      PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
  IF ~Global("CDScales","MYAREA",1)
      PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
END

APPEND DCONLAN 

  IF WEIGHT #0 ~Global("CDStoutUpgrade","MYAREA",2)
                GlobalTimerExpired("CDStoutUpgradeTimer","MYAREA")
                Global("Kuldahar_Murder","GLOBAL",0)
                OR(2)
                  !GlobalGT("Sheemish_Escape","GLOBAL",1)
                  !Global("Conlan_Thanked","GLOBAL",0)~ THEN BEGIN StoutReady SAY @7700726 = @7700727 = @7700728
    IF ~~ THEN DO ~SetGlobal("CDStoutUpgrade","MYAREA",3)
                   GiveItemCreate("cdstout",Protagonist,0,0,0)~ GOTO ConlanReset
  END

  IF WEIGHT #0 ~Global("CDScales","MYAREA",2)
                GlobalTimerExpired("CDScalesTimer","MYAREA")
                Global("Kuldahar_Murder","GLOBAL",0)
                OR(2)
                  !GlobalGT("Sheemish_Escape","GLOBAL",1)
                  !Global("Conlan_Thanked","GLOBAL",0)~ THEN BEGIN ScalesReady SAY @7700738 = @7700739 = @7700740
    IF ~~ THEN DO ~SetGlobal("CDScales","MYAREA",3)
                   GiveItemCreate("cdscale",Protagonist,0,0,0)~ GOTO ConlanReset
  END
  
  
  IF ~~ THEN BEGIN StoutUpgrade SAY @770071 = @770072
    IF ~~ THEN REPLY @770073 GOTO Focus
    IF ~~ THEN REPLY @770074 GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN Focus SAY @770075
    IF ~~ THEN REPLY @770076 GOTO MoreFocus
    IF ~~ THEN REPLY @770074 GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN MoreFocus SAY @770077 = @770078
    IF ~PartyHasItem("stout")~ THEN REPLY @770079 GOTO OfferStout
    IF ~~ THEN REPLY @770074 GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN OfferStout SAY @7700710 = @7700711 = @7700712
    IF ~~ THEN REPLY @7700713 GOTO Process
    IF ~~ THEN REPLY @7700714 GOTO Declined
  END
  
  IF ~~ THEN BEGIN Process SAY @7700715 = @7700716
    IF ~~ GOTO Expenso
    IF ~Global("Conlan_Thanked","GLOBAL",1)~ GOTO Cheapo
  END
  
  IF ~~ THEN BEGIN Cheapo SAY @7700717
    IF ~PartyGoldGT(999)~ THEN REPLY @7700720 DO ~TakePartyItem("stout")
                                                  DestroyItem("stout")
                                                  TakePartyItem("cdmitham")
                                                  DestroyItem("cdmitham")
                                                  TakePartyGold(1000)
                                                  SetGlobal("CDStoutUpgrade","MYAREA",2)
                                                  SetGlobalTimer("CDStoutUpgradeTimer","MYAREA",ONE_DAY)~ GOTO MakeIt
    IF ~~ THEN REPLY @7700722 GOTO NoMoola
    IF ~~ THEN REPLY @7700714 GOTO Declined
  END
  
  IF ~~ THEN BEGIN Expenso SAY @7700721
    IF ~PartyGoldGT(4499)~ THEN REPLY @7700720 DO ~TakePartyItem("stout")
                                                   DestroyItem("stout")
                                                   TakePartyItem("cdmitham")
                                                   DestroyItem("cdmitham")
                                                   TakePartyGold(4500)
                                                   SetGlobal("CDStoutUpgrade","MYAREA",2)
                                                   SetGlobalTimer("CDStoutUpgradeTimer","MYAREA",ONE_DAY)~ GOTO MakeIt
    IF ~~ THEN REPLY @7700722 GOTO NoMoola
    IF ~~ THEN REPLY @7700714 GOTO Declined
  END
  
  IF ~~ THEN BEGIN MakeIt SAY @7700724
    IF ~~ THEN GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN NoMoola SAY @7700723
    IF ~~ THEN GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN Declined SAY @7700718
    IF ~~ THEN GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN ScaleUpgrade SAY @7700730 = @7700731
    IF ~~ THEN GOTO AskScalesAgain
  END
  
  IF ~~ THEN BEGIN AskScalesAgain SAY @7700732 = @7700733
    IF ~PartyGoldGT(4999)~ THEN REPLY @7700734 DO ~TakePartyItem("cdscales")
                                                   DestroyItem("cdscales")
                                                   TakePartyGold(5000)
                                                   SetGlobal("CDScales","MYAREA",2)
                                                   SetGlobalTimer("CDScalesTimer","MYAREA",THREE_DAYS)~ GOTO MakeScales
    IF ~~ THEN REPLY @7700722 GOTO NoMoola
    IF ~~ THEN REPLY @7700736 GOTO Declined
  END
  
  IF ~~ THEN BEGIN MakeScales SAY @7700735
    IF ~~ THEN GOTO ConlanReset
  END
  
  IF ~~ THEN BEGIN ConlanReset SAY @7700719
    COPY_TRANS DCONLAN 14
    IF ~Global("CDStoutUpgrade","MYAREA",0)
        PartyHasItem("cdmitham")~ THEN REPLY @770070 DO ~SetGlobal("CDStoutUpgrade","MYAREA",1)~ GOTO StoutUpgrade
    IF ~Global("CDStoutUpgrade","MYAREA",1)
        PartyHasItem("cdmitham")~ THEN REPLY @7700725 GOTO Focus
    IF ~Global("CDScales","MYAREA",0)
        PartyHasItem("cdscales")~ THEN REPLY @7700729 DO ~SetGlobal("CDScales","MYAREA",1)~ GOTO ScaleUpgrade
    IF ~Global("CDScales","MYAREA",1)
        PartyHasItem("cdscales")~ THEN REPLY @7700737 GOTO AskScalesAgain
  END

END


