BEGIN ~DAPSEL~

IF ~NumTimesTalkedTo(0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0
  SAY @449
  IF ~~ THEN REPLY @466 GOTO 1
  IF ~~ THEN REPLY @34513 GOTO 2
  IF ~~ THEN REPLY @470 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @450
  IF ~~ THEN REPLY @34513 GOTO 2
  IF ~~ THEN REPLY @470 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @451
  IF ~~ THEN REPLY @473 GOTO 3
  IF ~~ THEN REPLY @474 GOTO 4
  IF ~~ THEN REPLY @475 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @452
  IF ~~ THEN REPLY @474 GOTO 4
  IF ~~ THEN REPLY @477 DO ~SetGlobal("Chaotic_Apsel_1","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @470 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @34509
  IF ~~ THEN REPLY @479 DO ~SetGlobal("Apsel_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @480 DO ~IncrementGlobalOnce("Chaotic_Apsel_2","GLOBAL","Law","GLOBAL",-1)~ GOTO 7
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @481 GOTO 14
  IF ~!Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @481 GOTO 15
  IF ~~ THEN REPLY @470 DO ~SetGlobal("Apsel_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @454
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @456
  IF ~~ THEN DO ~AddJournalEntry(@3355,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @34510
  IF ~~ THEN REPLY @479 DO ~SetGlobal("Apsel_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @3357 DO ~SetGlobal("Apsel_Quest","GLOBAL",2)~ EXIT
END

IF ~Global("Apsel_Quest","GLOBAL",2)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 8
  SAY @34511
  IF ~~ THEN REPLY @479 DO ~SetGlobal("Apsel_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @470 EXIT
END

IF ~Global("Apsel_Quest","GLOBAL",1)
    Global("SPRITE_IS_DEADEHWolf","GLOBAL",0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 9
  SAY @459
  IF ~~ THEN REPLY @3360 EXIT
  IF ~~ THEN REPLY @3361 DO ~IncrementGlobalOnce("Chaotic_Apsel_3","GLOBAL","Law","GLOBAL",-1)~ EXIT
END

IF ~Global("Apsel_Quest","GLOBAL",1)
    Global("SPRITE_IS_DEADEHWolf","GLOBAL",1)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 10
  SAY @460
  IF ~~ THEN REPLY @276 DO ~SetGlobal("Apsel_Quest","GLOBAL",3)
                            GiveGoldForce(25)
                            AddXP2DA("ID1EX1E")
                            GiveItemCreate("EHDag",LastTalkedToBy,1,1,1)
                            EraseJournalEntry(@3355)
                            AddJournalEntry(@348,QUEST_DONE)~ EXIT
END

IF ~Global("Apsel_Quest","GLOBAL",3)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 11
  SAY @34512
  IF ~~ THEN REPLY @1668 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Apsel_Quest","GLOBAL",0)
    Global("Know_Balance","GLOBAL",0)
    Global("Chaotic_Apsel_1","GLOBAL",0)~ THEN BEGIN 12
  SAY @462
  IF ~~ THEN REPLY @34513 GOTO 2
  IF ~~ THEN REPLY @470 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Apsel_Quest","GLOBAL",0)
    Global("Chaotic_Apsel_1","GLOBAL",1)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 13
  SAY @463
  IF ~~ THEN REPLY @474 GOTO 4
  IF ~~ THEN REPLY @470 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @464
  IF ~~ THEN REPLY @479 DO ~SetGlobal("Apsel_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @480 DO ~IncrementGlobalOnce("Chaotic_Apsel_2","GLOBAL","Law","GLOBAL",-1)~ GOTO 7
  IF ~~ THEN REPLY @3377 DO ~SetGlobal("Apsel_Quest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @465
  IF ~~ THEN REPLY @479 DO ~SetGlobal("Apsel_Quest","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @480 DO ~IncrementGlobalOnce("Chaotic_Apsel_2","GLOBAL","Law","GLOBAL",-1)~ GOTO 7
  IF ~~ THEN REPLY @3377 DO ~SetGlobal("Apsel_Quest","GLOBAL",2)~ EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 16
  SAY @18298
  IF ~~ THEN REPLY @18299 EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 17
  SAY @18300
  IF ~~ THEN REPLY @18301 EXIT
END
