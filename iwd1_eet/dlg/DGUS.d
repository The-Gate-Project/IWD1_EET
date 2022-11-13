BEGIN ~DGUS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4719
  IF ~Global("Know_Ferg","GLOBAL",1)~ THEN REPLY @4728 DO ~SetGlobal("Know_Gus","GLOBAL",1)~ GOTO 5
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @4729 DO ~SetGlobal("Know_Gus","GLOBAL",1)~ GOTO 1
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @4730 DO ~SetGlobal("Know_Gus","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @4731 DO ~SetGlobal("Know_Gus","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4732
  IF ~~ THEN REPLY @4733 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @4731 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4735
  IF ~~ THEN REPLY @4733 GOTO 3
  IF ~~ THEN REPLY @4731 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4739
  IF ~~ THEN REPLY @4740 GOTO 4
  IF ~~ THEN REPLY @262 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @34538
  IF ~~ THEN REPLY @4743 DO ~SetGlobal("Know_Oswald","GLOBAL",1)
                             SetGlobal("Know_Orrick","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4746
  IF ~~ THEN REPLY @4833 GOTO 6
  IF ~~ THEN REPLY @4834 GOTO 6
  IF ~~ THEN REPLY @262 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4838
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @4729 GOTO 1
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @4730 GOTO 2
  IF ~~ THEN REPLY @4841 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @4997
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @5001 GOTO 1
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @5003 GOTO 2
  IF ~~ THEN REPLY @5005 EXIT
END
