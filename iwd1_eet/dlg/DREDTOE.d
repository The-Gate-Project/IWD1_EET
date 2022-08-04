BEGIN ~DREDTOE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6129
  IF ~~ THEN REPLY @6153 GOTO 1
  IF ~~ THEN REPLY @6154 GOTO 2
  IF ~~ THEN REPLY @6155 DO ~SetGlobal("Red_Escape","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @6130
  IF ~CheckStatLT(LastTalkedToBy,10,INT)~ THEN REPLY @6156 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,9,INT)~ THEN REPLY @6157 GOTO 4
  IF ~~ THEN REPLY @6158 GOTO 5
  IF ~~ THEN REPLY @6159 DO ~SetGlobal("Red_Escape","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6133
  IF ~~ THEN REPLY @6158 GOTO 5
  IF ~CheckStatLT(LastTalkedToBy,10,INT)~ THEN REPLY @6156 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,9,INT)~ THEN REPLY @6157 GOTO 4
  IF ~~ THEN REPLY @6163 GOTO 8
  IF ~~ THEN REPLY @6164 DO ~Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6135
  IF ~~ THEN REPLY @6157 GOTO 4
  IF ~~ THEN REPLY @6166 GOTO 5
  IF ~~ THEN REPLY @6167 DO ~Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6147
  IF ~~ THEN REPLY @6168 GOTO 5
  IF ~~ THEN REPLY @6163 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @6148
  IF ~~ THEN REPLY @6170 GOTO 6
  IF ~~ THEN REPLY @6171 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @6149
  IF ~~ THEN REPLY @6172 GOTO 9
  IF ~~ THEN REPLY @6173 DO ~Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @6174 DO ~SetGlobal("Red_Escape","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @6150
  IF ~~ THEN REPLY @6170 GOTO 6
  IF ~~ THEN REPLY @6176 DO ~Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @6177 DO ~SetGlobal("Red_Escape","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @6151
  IF ~~ THEN REPLY @6171 GOTO 7
  IF ~~ THEN REPLY @6170 GOTO 6
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @6152
  IF ~~ THEN DO ~SetGlobal("Red_Escape","GLOBAL",1)~ EXIT
END
