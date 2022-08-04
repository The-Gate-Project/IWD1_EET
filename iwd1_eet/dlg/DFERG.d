BEGIN ~DFERG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5006
  IF ~Global("Know_Gus","GLOBAL",1)~ THEN REPLY @5007 DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @5010 DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @5012 DO ~SetGlobal("Know_Ferg","GLOBAL",1)
                             IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @15239 DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @4746
  IF ~~ THEN REPLY @5016 GOTO 9
  IF ~~ THEN REPLY @4834 GOTO 9
  IF ~~ THEN REPLY @5020 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY @5021
  IF ~~ THEN REPLY @5022 GOTO 3
  IF ~~ THEN REPLY @5023 GOTO 4
  IF ~~ THEN REPLY @5024 GOTO 5
  IF ~Global("Know_Conlan","GLOBAL",0)~ THEN REPLY @5025 GOTO 6
  IF ~GlobalGT("Know_Conlan","GLOBAL",0)~ THEN REPLY @5025 GOTO 7
  IF ~~ THEN REPLY @5027 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5028
  IF ~~ THEN REPLY @5029 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @18109 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5031
  IF ~~ THEN REPLY @5032 GOTO 2
  IF ~~ THEN REPLY @18109 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5034
  IF ~GlobalGT("Ferg_Pissed","GLOBAL",5)~ THEN REPLY @5035 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 11
  IF ~GlobalLT("Ferg_Pissed","GLOBAL",6)~ THEN REPLY @5035 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @5029 GOTO 2
  IF ~~ THEN REPLY @18109 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @5039
  IF ~~ THEN REPLY @5029 DO ~SetGlobal("Know_Conlan","GLOBAL",1)
                             SetGlobal("Know_Gerth","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @18109 DO ~SetGlobal("Know_Conlan","GLOBAL",1)
                              SetGlobal("Know_Gerth","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5039
  IF ~~ THEN REPLY @5029 DO ~SetGlobal("Know_Gerth","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @18109 DO ~SetGlobal("Know_Gerth","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5044
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @5045
  IF ~~ THEN REPLY @5010 DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @5047 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @5048 DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @5049
  IF ~~ THEN REPLY @5050 GOTO 2
  IF ~GlobalGT("Ferg_Pissed","GLOBAL",5)~ THEN REPLY @5051 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 11
  IF ~GlobalLT("Ferg_Pissed","GLOBAL",6)~ THEN REPLY @5051 DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @5054 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @5052
  IF ~~ THEN DO ~Enemy()
                 Attack(LastTalkedToBy)~ EXIT
END
