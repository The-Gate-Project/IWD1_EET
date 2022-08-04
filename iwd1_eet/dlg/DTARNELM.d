BEGIN ~DTARNELM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7960
  IF ~~ THEN REPLY @11345 GOTO 1
  IF ~~ THEN REPLY @11346 GOTO 2
  IF ~~ THEN REPLY @11347 GOTO 3
  IF ~~ THEN REPLY @3153 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @11354
  IF ~~ THEN REPLY @11357 GOTO 3
  IF ~~ THEN REPLY @11358 GOTO 2
  IF ~~ THEN REPLY @3153 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @11367
  IF ~~ THEN REPLY @11368 GOTO 3
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11369 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @11370 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @11371
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11372
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11373 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @11374 GOTO 3
  IF ~~ THEN REPLY @11375 DO ~SetGlobal("Know_Ilmadia","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @11376
  IF ~PartyHasItem("Potatoes")
      !Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11377 DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
                                                                TakePartyItem("Potatoes")
                                                                DestroyItem("Potatoes")
                                                                AddJournalEntry(@34247,QUEST)
                                                                SetQuestDone(@34247)
                                                                AddXP2DA("ID1EX10A")~ GOTO 9
  IF ~!PartyHasItem("Potatoes")~ THEN REPLY @11378 DO ~AddJournalEntry(@34247,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @18626 EXIT
  IF ~~ THEN REPLY @11379 DO ~AddJournalEntry(@34247,QUEST)~ GOTO 8
  IF ~~ THEN REPLY @11380 DO ~AddJournalEntry(@34247,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @11381
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11382 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @11383 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11389
  IF ~!Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @11390 GOTO 10
  IF ~Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @11394 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @11395
  IF ~PartyHasItem("Potatoes")
      !Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11396 DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
                                                                TakePartyItem("potatoes")
                                                                DestroyItem("Potatoes")
                                                                AddXP2DA("ID1EX10A")
                                                                AddJournalEntry(@34247,QUEST)
                                                                SetQuestDone(@34247)~ GOTO 9
  IF ~!PartyHasItem("Potatoes")~ THEN REPLY @11397 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @11398
  IF ~~ THEN REPLY @11401 GOTO 12
  IF ~~ THEN REPLY @11405 GOTO 13
  IF ~~ THEN REPLY @11412 GOTO 13
  IF ~~ THEN REPLY @11413 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @11414
  IF ~~ THEN REPLY @11415 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @11420 GOTO 13
  IF ~~ THEN REPLY @11421 GOTO 13
  IF ~~ THEN REPLY @11422 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @11423
  IF ~~ THEN REPLY @11424 DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @11425 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @11426
  IF ~~ THEN REPLY @11427 DO ~SetGlobal("Tarnel_Trap_Set","GLOBAL",1)
                              AddJournalEntry(@34246,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @11428
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @11429
  IF ~~ THEN REPLY @11430 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @11431
  IF ~~ THEN REPLY @11432 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY @11434
  IF ~PartyHasItem("Potatoes")
      !Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY @11435 DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
                                                                TakePartyItem("potatoes")
                                                                DestroyItem("Potatoes")
                                                                AddXP2DA("ID1EX10A")
                                                                AddJournalEntry(@34247,QUEST)
                                                                SetQuestDone(@34247)~ GOTO 9
  IF ~~ THEN REPLY @11436 GOTO 4
  IF ~~ THEN REPLY @11437 DO ~SetGlobal("Know_Ilmadia","GLOBAL",1)~ GOTO 6
  IF ~Global("Tarnelm_Food","GLOBAL",2)
      GlobalLT("TARNEL_TRAP_SET","GLOBAL",2)~ THEN REPLY @19146 GOTO 12
  IF ~~ THEN REPLY @19149 EXIT
END
