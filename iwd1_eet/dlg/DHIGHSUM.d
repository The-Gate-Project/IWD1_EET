BEGIN ~DHIGHSUM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1344
  IF ~~ THEN REPLY @1345 DO ~SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @1346 DO ~SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @1347 DO ~SetGlobal("Yuanti_Inferno","GLOBAL",1)
                             Enemy()~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1348
  IF ~~ THEN EXIT
END
