/*
CDDaen
 1 - summoned by bard with insufficent CHR, no sword
 2 - summoned by bard with insufficent CHR, sword
 3 - Summoned by bard with sufficient CHR, no sword
 4 - summoned by bard with sufficient CHR, sword
 5 - summoned by murdaugh, initiate dialogue
 6 - summoned by telanis, initiate dialogue
99 - daen should destroyself()

CDMurduaghDaen, CDTelanisDaen
1 - sang, trip script block to...
2 - start dialogue post-cutscene
3 - post-cutscene dialogue completed
4 - upgrade complete
*/

BEGIN CDDAEN

  IF ~GlobalGT("CDDaen","GLOBAL",0)
      GlobalLT("CDDaen","GLOBAL",9)~ THEN BEGIN Appears SAY @770000
    IF ~Global("CDDaen","GLOBAL",1)~ THEN GOTO NoChrNoSword
    IF ~Global("CDDaen","GLOBAL",2)~ THEN GOTO NoChrSword
    IF ~Global("CDDaen","GLOBAL",3)~ THEN GOTO ChrNoSword
    IF ~OR(3)
          Global("CDDaen","GLOBAL",4)
          Global("CDDaen","GLOBAL",5)
          Global("CDDaen","GLOBAL",6)~ THEN GOTO ChrSword
    IF ~Global("CDDaen","GLOBAL",5)
        !PartyHasItem("myrloch")~ THEN GOTO SummonedByMurdaughNoSword
    IF ~Global("CDDaen","GLOBAL",6)
        !PartyHasItem("myrloch")~ THEN GOTO SummonedByTelanisNoSword
  END
  
  IF ~~ THEN BEGIN FadeAway SAY @770001
    IF ~~ THEN DO ~SetGlobal("CDDaen","GLOBAL",99)~ EXIT
  END
  
  IF ~~ THEN BEGIN NoChrNoSword SAY @770002
    IF ~~ THEN GOTO FadeAway
  END
  
  IF ~~ THEN BEGIN NoChrSword SAY @770003
    IF ~~ THEN GOTO FadeAway
  END
  
  IF ~~ THEN BEGIN ChrNoSword SAY @770004
    IF ~~ THEN GOTO FadeAway
  END
  
  IF ~~ THEN BEGIN ChrSword SAY @770005 = @770006
    IF ~~ THEN GOTO GiveSword
    IF ~Global("CDDaen","GLOBAL",5)~ THEN EXTERN DMURDAUG SpiritInterject
    IF ~Global("CDDaen","GLOBAL",6)~ THEN EXTERN DTEALNIS SpiritInterject
  END
  
  IF ~~ THEN BEGIN GiveSword SAY @7700015 = @770007 = @770008
    IF ~~ THEN DO ~TakePartyItem("myrloch")
                   TakePartyItem("cddaen")
                   GiveItemCreate("cdmyr",LastTalkedToBy,0,0,0)
                   GiveItemCreate("cddaen2",LastTalkedToBy,1000,1,1)
                   SetGlobal("CDDaen","GLOBAL",99)~ EXIT
  END

EXTEND_BOTTOM DMURDAUG 31
  IF ~Global("Know_Murdaugh","GLOBAL",1)
      Global("CDMurduaghDaen","MYAREA",0)
      PartyHasItem("cddaen")~ THEN REPLY @770009 GOTO MurdaughDaen
  IF ~Global("Know_Murdaugh","GLOBAL",1)
      Global("CDMurduaghDaen","MYAREA",3)
      PartyHasItem("cddaen")
      PartyHasItem("myrloch")~ THEN REPLY @7700017 GOTO Repeat
END

EXTEND_BOTTOM DTEALNIS 13
  IF ~Global("CDTelanisDaen","MYAREA",0)
      PartyHasItem("cddaen")~ THEN REPLY @7700019 GOTO TelanisDaen
  IF ~Global("CDTelanisDaen","MYAREA",3)
      PartyHasItem("cddaen")
      PartyHasItem("myrloch")~ THEN REPLY @7700028 GOTO Repeat
END

APPEND DMURDAUG

  IF WEIGHT #-1 ~Global("CDMurduaghDaen","MYAREA",2)
                 Global("CDDaen","GLOBAL",0)~ THEN BEGIN PostCutsceneNoSword SAY @7700013 = @7700014
    IF ~~ THEN DO ~DestroyItem("cddaen")
                   GiveItemCreate("cddaen",LastTalkedToBy,1000,0,0)
                   SetGlobal("CDMurduaghDaen","MYAREA",3)~ EXIT
  END

  IF ~~ THEN BEGIN Repeat SAY @7700018
    IF ~~ THEN DO ~SetGlobal("CDDaen","GLOBAL",5)
                   TakePartyItem("cddaen")
                   UseItem("cddaen",Myself)~ EXIT
  END

  IF ~~ THEN BEGIN SpiritInterject SAY @7700016
    IF ~~ THEN DO ~DestroyItem("cddaen")~ EXTERN CDDAEN GiveSword
  END

  IF ~~ THEN BEGIN MurdaughDaen SAY @7700010
    IF ~~ THEN DO ~SetGlobal("CDDaen","GLOBAL",5)
                   TakePartyItem("cddaen")
                   UseItem("cddaen",Myself)~ EXIT
  END

END

APPEND DTEALNIS

  IF WEIGHT #-1 ~Global("CDTelanisDaen","MYAREA",2)
                 Global("CDDaen","GLOBAL",0)~ THEN BEGIN PostCutsceneNoSword SAY @7700026 = @7700027
    IF ~~ THEN DO ~DestroyItem("cddaen")
                   GiveItemCreate("cddaen",LastTalkedToBy,1000,0,0)
                   SetGlobal("CDTelanisDaen","MYAREA",3)~ EXIT
  END

  IF ~~ THEN BEGIN Repeat SAY @7700029
      IF ~~ THEN DO ~SetGlobal("CDDaen","GLOBAL",6)
                     TakePartyItem("cddaen")
                     UseItem("cddaen",Myself)~ EXIT
  END

  IF ~~ THEN BEGIN SpiritInterject SAY @7700021 = @7700022
    IF ~~ THEN DO ~DestroyItem("cddaen")~ EXTERN CDDAEN GiveSword
  END

  IF ~~ THEN BEGIN TelanisDaen SAY @7700020
      IF ~~ THEN DO ~SetGlobal("CDDaen","GLOBAL",6)
                     TakePartyItem("cddaen")
                     UseItem("cddaen",Myself)~ EXIT
  END                     

END

CHAIN IF ~~ THEN CDDAEN SummonedByMurdaughNoSword @770004
DO ~SetGlobal("CDMurduaghDaen","MYAREA",1)~
== DMURDAUG @7700011
== CDDAEN @7700012
END CDDAEN FadeAway

CHAIN IF ~~ THEN CDDAEN SummonedByTelanisNoSword @770004
DO ~SetGlobal("CDTelanisDaen","MYAREA",1)~
== DTEALNIS @7700023 = @7700024
== CDDAEN @7700012
== DTEALNIS @7700025
END CDDAEN FadeAway