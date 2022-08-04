BEGIN ~DVAARGLN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @26463
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @26478 GOTO 1
  IF ~~ THEN REPLY @26480 GOTO 2
  IF ~~ THEN REPLY @26481 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @26464
  IF ~~ THEN REPLY @26482 DO ~StartCutSceneMode()
                              StartCutScene("WizWar2")~ EXIT
  IF ~~ THEN REPLY @26483 GOTO 2
  IF ~~ THEN REPLY @26484 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @26466
  IF ~~ THEN REPLY @26485 GOTO 3
  IF ~~ THEN REPLY @26486 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @26467
  IF ~~ THEN REPLY @26487 DO ~SetGlobal("Kieran_Protected","GLOBAL",1)
                              StartCutSceneMode()
                              StartCutScene("WizWar2")~ EXIT
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26488 DO ~SetGlobal("Kieran_Betrayed","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @26468
  IF ~~ THEN DO ~SetGlobal("Hosttower_Encounter","GLOBAL",2)
                 StartCutSceneMode()
                 StartCutScene("WizWar1")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @26469
  IF ~~ THEN REPLY @26489 GOTO 3
  IF ~~ THEN REPLY @26490 DO ~StartCutSceneMode()
                              StartCutScene("WizWar2")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @26470
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @26471
  IF ~~ THEN REPLY @26491 GOTO 9
  IF ~~ THEN REPLY @26492 GOTO 9
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26493 DO ~SetGlobal("Kieran_Betrayed","GLOBAL",1)
                                                                   SetGlobal("Kieran_Protected","GLOBAL",0)~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @26472
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @26473
  IF ~~ THEN DO ~SetGlobal("Kieran_Protected","GLOBAL",1)~ EXTERN ~DALPHEUS~ 2
END

IF ~~ THEN BEGIN 10
  SAY @26474
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 StartCutScene("WizWar3")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @26468
  IF ~~ THEN DO ~SetGlobal("Hosttower_Encounter","GLOBAL",2)
                 StartCutSceneMode()
                 StartCutScene("WizWar4")~ EXIT
END
