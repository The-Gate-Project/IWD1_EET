BEGIN ~DOSENTRY~

IF ~True()~ THEN BEGIN 0
  SAY @8243
  IF ~~ THEN REPLY @8696 GOTO 1
  IF ~~ THEN REPLY @8697 GOTO 1
  IF ~~ THEN REPLY @8698 GOTO 2
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @8691
  IF ~~ THEN REPLY @8692 GOTO 2
  IF ~~ THEN REPLY @8693 GOTO 2
  IF ~~ THEN REPLY @8694 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @8695
  IF ~~ THEN REPLY @8699 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
  IF ~~ THEN REPLY @8700 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END
