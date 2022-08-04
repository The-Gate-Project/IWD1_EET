BEGIN ~DFLOZEM~

IF ~NumTimesTalkedTo(0)
    !Global("Flozem_Gone","GLOBAL",1)~ THEN BEGIN 0
  SAY @7941
  IF ~~ THEN REPLY @1428 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @19343
  IF ~~ THEN REPLY @19352 GOTO 2
  IF ~~ THEN REPLY @19373 GOTO 3
  IF ~Global("Flozem_Portrait","GLOBAL",1)~ THEN REPLY @19374 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @19375
  IF ~~ THEN REPLY @19376 GOTO 5
  IF ~~ THEN REPLY @19378 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @19379
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY @9796 GOTO 5
  IF ~~ THEN REPLY @19378 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @19382
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @19383 DO ~AddXP2DA("ID1EX10E")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@19342)
                                                         SetGlobal("Flozem_Gone","GLOBAL",1)~ GOTO 7
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @19384 DO ~AddXP2DA("ID1EX10E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@19342)
                                                           SetGlobal("Flozem_Gone","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @19387 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @19385
  IF ~~ THEN REPLY @283 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @19388
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @19389
  IF ~~ THEN DO ~DropInventory()
                 SmallWait(10)
                 EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19390
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY @9796 GOTO 5
  IF ~~ THEN REPLY @19378 GOTO 6
END

IF ~NumTimesTalkedToGT(0)
    !Global("Flozem_Gone","GLOBAL",1)~ THEN BEGIN 9
  SAY @19538
  IF ~Global("Flozem_Portrait","GLOBAL",1)~ THEN REPLY @19539 GOTO 4
  IF ~~ THEN REPLY @19540 EXIT
END
