BEGIN ~DQUIMBY~

IF ~NumTimesTalkedTo(0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0
  SAY @700
  IF ~~ THEN REPLY @706 GOTO 2
  IF ~~ THEN REPLY @707 GOTO 3
  IF ~~ THEN REPLY @708 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @709 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 1
  SAY @701
  IF ~~ THEN REPLY @710 GOTO 3
  IF ~~ THEN REPLY @711 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @712 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @702
  IF ~~ THEN REPLY @713 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @714 GOTO 3
  IF ~~ THEN REPLY @715 GOTO 4
  IF ~~ THEN REPLY @716 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @703
  IF ~~ THEN REPLY @717 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @718 GOTO 5
  IF ~~ THEN REPLY @719 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @704
  IF ~~ THEN REPLY @720 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @721 GOTO 3
  IF ~~ THEN REPLY @722 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @705
  IF ~~ THEN REPLY @723 DO ~StartStore("EHInn",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @724 EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 6
  SAY @18320
  IF ~~ THEN REPLY @18299 EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 7
  SAY @18321
  IF ~~ THEN REPLY @18109 EXIT
END
