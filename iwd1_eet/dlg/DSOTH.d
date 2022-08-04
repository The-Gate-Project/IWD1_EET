BEGIN ~DSOTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @3995
  IF ~~ THEN REPLY @9250 GOTO 2
  IF ~~ THEN REPLY @9251 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @9252
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~Global("Slaves_Free_1","GLOBAL",0)
      Global("Bridge_Broken","GLOBAL",1)
      Global("Got_BookEng","GLOBAL",0)~ THEN REPLY @9318 DO ~AddXP2DA("ID1EX11E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@9240)
                                                             GiveItem("BookEng",LastTalkedToBy)
                                                             SetGlobal("Got_BookEng","GLOBAL",1)~ GOTO 16
  IF ~Global("Slaves_Free_1","GLOBAL",1)
      Global("Bridge_Broken","GLOBAL",1)
      Global("Got_BookEng","GLOBAL",0)~ THEN REPLY @9318 DO ~AddXP2DA("ID1EX11E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@9240)
                                                             SetGlobal("Got_BookEng","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @8958 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9257
  IF ~~ THEN REPLY @9085 GOTO 3
  IF ~~ THEN REPLY @8587 GOTO 6
  IF ~~ THEN REPLY @9264 GOTO 13
  IF ~~ THEN REPLY @9265 DO ~AddJournalEntry(@34301,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9267
  IF ~~ THEN REPLY @9268 GOTO 4
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9271
  IF ~~ THEN REPLY @9272 GOTO 5
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9275
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9278
  IF ~~ THEN REPLY @9279 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9280
  IF ~~ THEN REPLY @9281 DO ~AddJournalEntry(@34307,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9299
  IF ~~ THEN REPLY @9300 GOTO 9
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @9301 GOTO 10
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Race(LastTalkedToBy,DWARF)~ THEN REPLY @9302 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @9303
  IF ~~ THEN REPLY @9304 GOTO 11
  IF ~~ THEN REPLY @1447 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @9306
  IF ~~ THEN REPLY @9304 GOTO 11
  IF ~~ THEN REPLY @1447 GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY @9308
  IF ~~ THEN REPLY @9309 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @9310
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9311 GOTO 17
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @9313
  IF ~~ THEN REPLY @9314 GOTO 14
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @9317
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9321
  IF ~Global("Slaves_Free_1","GLOBAL",0)
      Global("Bridge_Broken","GLOBAL",1)
      Global("Got_BookEng","GLOBAL",0)~ THEN REPLY @9318 DO ~AddXP2DA("ID1EX11E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@9240)
                                                             GiveItem("BookEng",LastTalkedToBy)
                                                             SetGlobal("Got_BookEng","GLOBAL",1)
                                                             AddJournalEntry(@34311,QUEST)~ GOTO 16
  IF ~Global("Slaves_Free_1","GLOBAL",1)
      Global("Bridge_Broken","GLOBAL",1)
      Global("Got_BookEng","GLOBAL",0)~ THEN REPLY @9318 DO ~AddXP2DA("ID1EX11E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@9240)
                                                             SetGlobal("Got_BookEng","GLOBAL",1)
                                                             AddJournalEntry(@34311,QUEST)~ GOTO 18
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9324
  IF ~~ THEN REPLY @9325 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9327
  IF ~~ THEN REPLY @9328 GOTO 2
  IF ~~ THEN REPLY @9266 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @19324
  IF ~~ THEN REPLY @9266 EXIT
END
