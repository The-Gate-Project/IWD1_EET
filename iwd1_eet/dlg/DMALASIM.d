BEGIN ~DMALASIM~

IF ~True()~ THEN BEGIN 0
  SAY @7949
  IF ~~ THEN REPLY @10508 DO ~Enemy()~ GOTO 1
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY @10509 DO ~Enemy()~ GOTO 8
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @10510 DO ~SetGlobal("Golem_Commands","GLOBAL",2)
                                                                Enemy()~ GOTO 9
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @10511 DO ~SetGlobal("Golem_Commands","GLOBAL",3)
                                                                Enemy()~ GOTO 10
  IF ~~ THEN REPLY @10513 DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY @10515 DO ~Enemy()~ GOTO 3
  IF ~~ THEN REPLY @10516 DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @10517
  IF ~~ THEN REPLY @10518 GOTO 4
  IF ~~ THEN REPLY @10521 GOTO 6
  IF ~~ THEN REPLY @10522 DO ~ActionOverride(LastTalkedToBy,DropInventory())~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @10523
  IF ~~ THEN REPLY @10521 GOTO 6
  IF ~~ THEN REPLY @10524 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @10525
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10526
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10527
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10528
  IF ~~ THEN REPLY @10534 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10529
  IF ~~ THEN REPLY @10524 GOTO 3
  IF ~~ THEN REPLY @10530 GOTO 1
END

IF ~~ THEN BEGIN 8
  SAY @10531
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10532
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @10533
  IF ~~ THEN EXIT
END
