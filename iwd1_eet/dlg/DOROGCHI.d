BEGIN ~DOROGCHI~

IF ~True()~ THEN BEGIN 0
  SAY @6186
  IF ~Global("Saablic_Quest","GLOBAL",1)~ THEN REPLY @8479 GOTO 1
  IF ~~ THEN REPLY @8481 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @8482
  IF ~~ THEN REPLY @8483 GOTO 2
  IF ~~ THEN REPLY @8484 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8485
  IF ~~ THEN REPLY @8486 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8487
  IF ~~ THEN REPLY @8488 GOTO 4
  IF ~~ THEN REPLY @8489 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @8490
  IF ~~ THEN REPLY @8491 DO ~SetGlobal("Attack_Saablic","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8492
  IF ~~ THEN REPLY @8493 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8494
  IF ~~ THEN REPLY @8495 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END
