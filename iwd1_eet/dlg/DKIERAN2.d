BEGIN ~DKIERAN2~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26336
  IF ~~ THEN REPLY @25908 DO ~SetGlobal("Know_Kieran","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @513 DO ~SetGlobal("Know_Kieran","GLOBAL",1)
                            StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @24107 DO ~SetGlobal("Know_Kieran","GLOBAL",1)
                              StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @15239 DO ~SetGlobal("Know_Kieran","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @26338
  IF ~Global("Know_Mirror_Door","GLOBAL",1)~ THEN REPLY @24104 GOTO 2
  IF ~Global("Emmerich_Quest","GLOBAL",2)
      Global("Kieran_Cure","GLOBAL",0)
      Global("SPRITE_IS_DEADEmmerich","GLOBAL",0)~ THEN REPLY @26621 DO ~SetGlobal("Kieran_Cure","GLOBAL",1)~ GOTO 25
  IF ~Global("Know_Doogal_Weapon","GLOBAL",1)~ THEN REPLY @26374 DO ~SetGlobal("Know_Doogal_Weapon","GLOBAL",2)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,13,INT)
      Global("Know_Foreigner","GLOBAL",0)~ THEN REPLY @34569 DO ~SetGlobal("Know_Foreigner","GLOBAL",1)~ GOTO 9
  IF ~Global("Body_Count","GLOBAL",1)
      Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @25916 GOTO 10
  IF ~GlobalGT("Body_Count","GLOBAL",1)
      GlobalLT("Emmerich_Quest","GLOBAL",2)
      Global("Know_Dolan_Dead","GLOBAL",1)~ THEN REPLY @25559 GOTO 12
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @25704 GOTO 13
  IF ~Global("Know_Gallows","GLOBAL",0)~ THEN REPLY @26379 DO ~SetGlobal("Know_Gallows","GLOBAL",1)~ GOTO 17
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26380 DO ~StartStore("Kieran2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26381 DO ~StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26382 DO ~StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @26339
  IF ~~ THEN REPLY @24115 GOTO 3
  IF ~~ THEN REPLY @24116 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @26340
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @26341
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @24129
  IF ~~ THEN REPLY @24130 DO ~SetGlobal("Know_Mirror_Door","GLOBAL",2)
                              AddJournalEntry(@23548,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @24131 DO ~SetGlobal("Know_Mirror_Door","GLOBAL",2)
                              AddJournalEntry(@23548,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @24132
  IF ~~ THEN REPLY @26390 GOTO 1
  IF ~~ THEN REPLY @24133 DO ~StartStore("Kieran2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @24134 DO ~StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26394 DO ~StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26396 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @26346
  IF ~~ THEN REPLY @26399 DO ~SetGlobal("Know_Werewolf","GLOBAL",1)
                              AddJournalEntry(@26323,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @26348
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26349
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @262 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @26350
  IF ~~ THEN EXTERN ~DMURDAUG~ 35
END

IF ~~ THEN BEGIN 11
  SAY @26351
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @26352
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @24109
  IF ~~ THEN REPLY @25711 GOTO 14
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @26354
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @26355
  IF ~~ THEN EXTERN ~DMURDAUG~ 2
END

IF ~~ THEN BEGIN 16
  SAY @26358
  IF ~~ THEN EXTERN ~DMURDAUG~ 11
END

IF ~~ THEN BEGIN 17
  SAY @26359
  IF ~~ THEN EXTERN ~DMURDAUG~ 36
END

IF ~~ THEN BEGIN 18
  SAY @26360
  IF ~~ THEN EXTERN ~DMURDAUG~ 37
END

IF ~~ THEN BEGIN 19
  SAY @26361
  IF ~~ THEN REPLY @18672 GOTO 1
  IF ~~ THEN REPLY @4743 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 20
  SAY @24150
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26410 DO ~StartStore("Kieran2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @513 DO ~StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @24107 DO ~StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25908 GOTO 1
  IF ~~ THEN REPLY @15239 EXIT
END

IF WEIGHT #0
~Global("Kieran_Betrayed","GLOBAL",1)~ THEN BEGIN 21
  SAY @26364
  IF ~~ THEN REPLY @26415 DO ~SetGlobal("Kieran_Betrayed","GLOBAL",2)~ GOTO 23
  IF ~~ THEN REPLY @26416 DO ~SetGlobal("Kieran_Betrayed","GLOBAL",2)~ GOTO 23
END

IF WEIGHT #1
~Global("Kieran_Protected","GLOBAL",1)~ THEN BEGIN 22
  SAY @26365
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26417 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
                                                                   AddXP2DA("ID1EX12V")
                                                                   DisplayStringNoNameDlg(LastTalkedToBy,@26585)
                                                                   StartStore("Kieran2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26418 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26585)
                              StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26419 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26585)
                              StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26420 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26585)~ GOTO 1
  IF ~~ THEN REPLY @26421 DO ~SetGlobal("Kieran_Protected","GLOBAL",2)
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26585)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @26366
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @26367
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @24152 DO ~StartStore("Kieran2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @513 DO ~StartStore("Kieran1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @24107 DO ~StartStore("Kieran3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25908 GOTO 1
  IF ~~ THEN REPLY @25679 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @26617
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @26618
  IF ~~ THEN REPLY @26619 DO ~GiveItemCreate("Wereamul",LastTalkedToBy,1,0,0)
                              AddJournalEntry(@26327,QUEST)~ EXIT
END
