BEGIN ~DEREVAIN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @386
  IF ~~ THEN REPLY @399 DO ~SetGlobal("Erevain_Met","GLOBAL",1)~ GOTO 1
  IF ~!Race(LastTalkedToBy,ELF)~ THEN REPLY @400 DO ~SetGlobal("Erevain_Met","GLOBAL",1)~ GOTO 2
  IF ~Race(LastTalkedToBy,ELF)~ THEN REPLY @401 DO ~SetGlobal("Erevain_Met","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @402 DO ~SetGlobal("Erevain_Met","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @403 DO ~SetGlobal("Erevain_Met","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @34504
  IF ~CheckStatLT(LastTalkedToBy,9,CHR)
      CheckStatLT(LastTalkedToBy,9, INT)~ THEN REPLY @405 GOTO 4
  IF ~~ THEN REPLY @406 DO ~IncrementGlobalOnce("Chaotic_Erevain_1","GLOBAL","Law","GLOBAL",-1)~ GOTO 5
  IF ~~ THEN REPLY @407 GOTO 7
  IF ~~ THEN REPLY @408 GOTO 12
  IF ~!Race(LastTalkedToBy,ELF)~ THEN REPLY @409 GOTO 6
  IF ~~ THEN REPLY @411 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @388
  IF ~!Race(LastTalkedToBy,ELF)~ THEN REPLY @412 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,9,CHR)~ THEN REPLY @413 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,8,CHR)~ THEN REPLY @414 GOTO 9
  IF ~CheckStatLT(LastTalkedToBy,6,CHR)
      CheckStatLT(LastTalkedToBy,6,INT)
      CheckStatLT(LastTalkedToBy,6,WIS)~ THEN REPLY @417 GOTO 8
  IF ~CheckStatLT(LastTalkedToBy,9,CHR)
      CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY @418 GOTO 4
  IF ~~ THEN REPLY @419 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @389
  IF ~CheckStatLT(LastTalkedToBy,9,CHR)~ THEN REPLY @420 GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,8,CHR)~ THEN REPLY @421 GOTO 9
  IF ~~ THEN REPLY @422 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @390
  IF ~CheckStatLT(LastTalkedToBy,6,INT)~ THEN REPLY @423 DO ~SetGlobal("Erevain_Jerk","GLOBAL",1)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,5,INT)~ THEN REPLY @424 DO ~SetGlobal("Erevain_Jerk","GLOBAL",1)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,5,INT)~ THEN REPLY @425 DO ~SetGlobal("Erevain_Jerk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @391
  IF ~~ THEN REPLY @426 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @34505
  IF ~CheckStatLT(LastTalkedToBy,8,CHR)
      !Race(LastTalkedToBy,ELF)~ THEN REPLY @427 GOTO 4
  IF ~~ THEN REPLY @428 GOTO 9
  IF ~~ THEN REPLY @429 GOTO 12
  IF ~~ THEN REPLY @430 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @393
  IF ~~ THEN REPLY @431 GOTO 9
  IF ~CheckStatLT(LastTalkedToBy,12,WIS)~ THEN REPLY @432 GOTO 4
  IF ~~ THEN REPLY @433 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @34506
  IF ~~ THEN REPLY @434 DO ~SetGlobal("Erevain_Jerk","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @435 GOTO 4
END

IF ~~ THEN BEGIN 9
  SAY @395
  IF ~CheckStatGT(LastTalkedToBy,9,WIS)~ THEN REPLY @436 EXIT
  IF ~CheckStatLT(LastTalkedToBy,10, WIS)~ THEN REPLY @440 EXIT
  IF ~~ THEN REPLY @441 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Erevain_Jerk","GLOBAL",0)~ THEN BEGIN 10
  SAY @396
  IF ~!Race(LastTalkedToBy,ELF)~ THEN REPLY @442 GOTO 4
  IF ~~ THEN REPLY @34507 GOTO 9
  IF ~~ THEN REPLY @34508 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Erevain_Jerk","GLOBAL",1)~ THEN BEGIN 11
  SAY @397
  IF ~~ THEN REPLY @445 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @398
  IF ~~ THEN REPLY @446 GOTO 9
  IF ~~ THEN REPLY @447 GOTO 7
  IF ~~ THEN REPLY @448 EXIT
END
