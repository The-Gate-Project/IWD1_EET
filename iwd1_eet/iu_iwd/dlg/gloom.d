/*
cdgloom
1 - learned it can be upgraded
2 - upgrade accepted, start cutscene
3 - script trips cutscene
4 - cutscene over, item upgraded
*/

EXTEND_BOTTOM DKIERAN2 20 // also 22, 24
  IF ~PartyHasItem("cynicis")
      Global("CDGloom","MYAREA",0)
      Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @770040 DO ~SetGlobal("CDGloom","MYAREA",1)~ GOTO CynicismUpgrade
  IF ~PartyHasItem("cynicis")
      PartyHasItem("SCRL5H")
      Global("CDGloom","MYAREA",1)
      Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @7700410 DO ~TakePartyItem("SCRL5H")
                                                                     DestroyItem("SCRL5H")
                                                                     TakePartyItem("cynicis")
                                                                     DestroyItem("cynicis")~ GOTO StartCut
END

APPEND DKIERAN2

  IF WEIGHT #-1 ~Global("CDGloom","MYAREA",5)~ THEN BEGIN GloomReady SAY @770049
    IF ~~ THEN DO ~GiveItemCreate("cdgloom",LastTalkedToBy,1,2,2)
                   SetGlobal("CDGloom","MYAREA",6)~ GOTO KieranReset
  END
  
  IF ~~ THEN BEGIN CynicismUpgrade SAY @770041 = @770042 = @770043 = @770044
    IF ~PartyHasItem("SCRL5H")~ THEN REPLY @770045 DO ~TakePartyItem("SCRL5H")
                                                       DestroyItem("SCRL5H")
                                                       TakePartyItem("cynicis")
                                                       DestroyItem("cynicis")~ GOTO StartCut
    IF ~~ THEN REPLY @770046 GOTO KieranReset
  END
  
  IF ~~ THEN BEGIN StartCut SAY @770047
    IF ~~ THEN DO ~SetGlobal("CDGloom","MYAREA",2)~ EXIT
  END
  
  IF ~~ THEN BEGIN KieranReset SAY @770048
    COPY_TRANS DKIERAN2 20
  END

END
