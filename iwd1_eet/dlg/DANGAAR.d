BEGIN ~DANGAAR~

IF WEIGHT #7
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23685
  IF ~~ THEN REPLY @23686 DO ~StartCutSceneMode()
                              SetGlobal("Angaar_First","GLOBAL",1)
                              SetGlobal("ANGAAR_NODE_2","GLOBAL",1)
                              StartCutScene("bcPtyEnt")~ EXIT
  IF ~~ THEN REPLY @1502 DO ~SetGlobal("Angaar_First","GLOBAL",1)
                             StartCutScene("gnClrAct")~ EXIT
END

IF WEIGHT #5
~Global("ANGAAR_NODE_2","GLOBAL",1)~ THEN BEGIN 1
  SAY @23688
  IF ~~ THEN REPLY @23689 DO ~SetGlobal("ANGAAR_NODE_2","GLOBAL",0)~ GOTO 2
  IF ~~ THEN REPLY @23278 DO ~SetGlobal("ANGAAR_NODE_2","GLOBAL",0)~ GOTO 3
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            SetGlobal("ANGAAR_NODE_2","GLOBAL",0)
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23694
  IF ~~ THEN REPLY @23278 GOTO 3
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23697
  IF ~~ THEN REPLY @23698 GOTO 4
  IF ~~ THEN REPLY @23699 GOTO 7
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23701
  IF ~~ THEN REPLY @23702 GOTO 5
  IF ~~ THEN REPLY @23703 GOTO 6
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23705
  IF ~~ THEN REPLY @23708 GOTO 6
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23713
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("bcGoToWy")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @23715
  IF ~~ THEN REPLY @23703 GOTO 6
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF WEIGHT #6
~GlobalGT("Angaar_First","GLOBAL",0)~ THEN BEGIN 8
  SAY @23727
  IF ~Global("DID_GATE_CUTSCENE","MYAREA",0)~ THEN REPLY @16884 DO ~StartCutSceneMode()
                                                                    SetGlobal("ANGAAR_NODE_2","GLOBAL",1)
                                                                    StartCutScene("bcPtyEnt")~ EXIT
  IF ~GlobalGT("DID_GATE_CUTSCENE","MYAREA",0)~ THEN REPLY @16884 DO ~StartCutSceneMode()
                                                                      SetGlobal("ANGAAR_NODE_2","GLOBAL",1)
                                                                      StartCutScene("bcGatJmp")~ EXIT
  IF ~~ THEN REPLY @9220 DO ~StartCutScene("gnClrAct")~ EXIT
END

IF WEIGHT #4
~Global("Ordered_Death","GLOBAL",1)~ THEN BEGIN 9
  SAY @23753
  IF ~~ THEN REPLY @23758 GOTO 10
  IF ~~ THEN REPLY @23759 GOTO 22
END

IF ~~ THEN BEGIN 10
  SAY @23761
  IF ~~ THEN REPLY @23759 GOTO 22
END

IF ~~ THEN BEGIN 11
  SAY @23764
  IF ~~ THEN REPLY @1428 GOTO 12
  IF ~GlobalGT("Know_Assassin","GLOBAL",1)
      !Global("Angaar_2","GLOBAL",1)~ THEN REPLY @23767 DO ~SetGlobal("Angaar_2","GLOBAL",1)
                                                            AddXP2DA("ID1EX9E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@26707)
                                                            AddJournalEntry(@23550,QUEST)~ GOTO 16
  IF ~!Global("Angaar_3","GLOBAL",1)~ THEN REPLY @23770 DO ~SetGlobal("Angaar_3","GLOBAL",1)
                                                            AddXP2DA("ID1EX9E")
                                                            DisplayStringNoNameDlg(LastTalkedToBy,@26708)
                                                            AddJournalEntry(@23549,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @23772
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @23777
  IF ~~ THEN REPLY @23778 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23785
  IF ~~ THEN REPLY @23786 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @23789
  IF ~~ THEN REPLY @24027 GOTO 23
END

IF ~~ THEN BEGIN 16
  SAY @24003
  IF ~~ THEN REPLY @24004 GOTO 17
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @24007
  IF ~~ THEN REPLY @24008 DO ~SetGlobal("Know_Plot","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @24011
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @24014
  IF ~~ THEN REPLY @24016 GOTO 20
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @24019
  IF ~~ THEN REPLY @1447 GOTO 21
  IF ~~ THEN REPLY @23771 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @24022
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @24026
  IF ~~ THEN REPLY @23766 DO ~AddXP2DA("ID1EX9E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26706)~ GOTO 13
END

IF ~~ THEN BEGIN 23
  SAY @24028
  IF ~~ THEN REPLY @24029 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @24030
  IF ~CheckStatLT(LastTalkedToBy,14,CHR)~ THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 26
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)~ THEN REPLY @24031 DO ~SetGlobal("Passed_Test","GLOBAL",1)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @24041
  IF ~~ THEN REPLY @24042 DO ~StartCutSceneMode()
                              AddXP2DA("ID1EX9E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18521)
                              StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @24043
  IF ~~ THEN REPLY @2643 DO ~StartCutSceneMode()
                             StartCutScene("bcEntBtl")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @24045
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~Global("Passed_Test","GLOBAL",1)~ THEN BEGIN 28
  SAY @24051
  IF ~~ THEN REPLY @9250 GOTO 11
  IF ~~ THEN REPLY @1502 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @24049
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~PartyHasItem("Mirror")
 GlobalGT("Found_Seer","GLOBAL",0)~ THEN BEGIN 30
  SAY @24051
  IF ~~ THEN REPLY @24052 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @24054
  IF ~Global("Passed_Test","GLOBAL",1)~ THEN REPLY @24056 GOTO 33
  IF ~PartyHasItem("Wylfins")~ THEN REPLY @24058 DO ~TakePartyItem("Wylfins")
                                                     DestroyItem("Wylfins")~ GOTO 35
  IF ~~ THEN REPLY @376 DO ~StartCutSceneMode()
                            StartCutScene("bcPtyLve")~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @24060
  IF ~~ THEN REPLY @24061 DO ~StartCutSceneMode()
                              StartCutScene("bcGoToWy")~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @24062
  IF ~~ THEN REPLY @24061 DO ~StartCutSceneMode()
                              StartCutScene("bcLuaWyl")~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @24064
  IF ~~ THEN REPLY @24061 DO ~StartCutSceneMode()
                              StartCutScene("bcGoToWy")~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @24066
  IF ~~ THEN REPLY @24061 DO ~StartCutSceneMode()
                              StartCutScene("bcLuaWyl")~ EXIT
END

IF WEIGHT #0
~GlobalGT("Hjollder_Quest","GLOBAL",10)~ THEN BEGIN 36
  SAY @24068
  IF ~~ THEN REPLY @24069 GOTO 37
  IF ~~ THEN REPLY @9220 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @24071
  IF ~~ THEN REPLY @1502 EXIT
END

IF WEIGHT #2
~PartyHasItem("Mirror2")
 GlobalGT("Found_Seer","GLOBAL",0)~ THEN BEGIN 38
  SAY @24051
  IF ~~ THEN REPLY @24052 GOTO 31
END
