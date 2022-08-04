BEGIN ~DFGG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @10386
  IF ~Global("Know_Ilmadia","GLOBAL",1)~ THEN REPLY @10389 GOTO 1
  IF ~~ THEN REPLY @10391 GOTO 2
  IF ~~ THEN REPLY @10392 GOTO 3
  IF ~~ THEN REPLY @10393 DO ~SetGlobal("Ilmadia_Attack","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @10395
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10396
  IF ~~ THEN REPLY @10397 GOTO 4
  IF ~~ THEN REPLY @10398 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @10399
  IF ~~ THEN REPLY @10400 GOTO 6
  IF ~~ THEN REPLY @10416 DO ~SetGlobal("Ilmadia_Attack","GLOBAL",2)
                              Enemy()
                              Attack(LastTalkedToBy)~ GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10417 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @10417 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @10425 GOTO 8
  IF ~~ THEN REPLY @10426 DO ~SetGlobal("Ilmadia_Attack","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10427
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10428
  IF ~~ THEN DO ~Enemy()
                 Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10429
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10430
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10431
  IF ~~ THEN EXIT
END
