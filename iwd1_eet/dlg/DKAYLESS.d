BEGIN ~DKAYLESS~

IF ~NumTimesTalkedTo(0)
    Global("K_Done","GLOBAL",0)~ THEN BEGIN 0
  SAY @8354
  IF ~~ THEN REPLY @8355 GOTO 1
  IF ~~ THEN REPLY @8357 DO ~AddJournalEntry(@14416,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @8358 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @8359
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @8360
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @8362
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8363
  IF ~~ THEN REPLY @8364 GOTO 5
  IF ~~ THEN REPLY @8366 GOTO 8
  IF ~~ THEN REPLY @8367 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8368
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8369
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8370
  IF ~~ THEN REPLY @8371 GOTO 8
  IF ~~ THEN REPLY @8372 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8373
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8374
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8375
  IF ~~ THEN REPLY @8376 GOTO 11
  IF ~~ THEN REPLY @8377 GOTO 4
  IF ~~ THEN REPLY @8378 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8379
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @8380
  IF ~Global("KaylessaQuest","GLOBAL",0)~ THEN REPLY @8381 GOTO 13
  IF ~~ THEN REPLY @8382 GOTO 4
  IF ~~ THEN REPLY @8383 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8385
  IF ~~ THEN REPLY @8386 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @8387
  IF ~~ THEN REPLY @8388 DO ~SetGlobal("KaylessaQuest","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @8389
  IF ~GlobalGT("SPRITE_IS_DEADSH_Warrior_Dead","GLOBAL",24)
      Global("K_Done","GLOBAL",0)~ THEN REPLY @8399 DO ~AddXP2DA("ID1EX8H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@8142)
                                                        SetGlobal("K_Done","GLOBAL",1)
                                                        EraseJournalEntry(@14416)
                                                        AddJournalEntry(@14415,QUEST_DONE)~ GOTO 18
  IF ~~ THEN REPLY @8390 DO ~AddJournalEntry(@14416,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @8391 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @8392
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("K_Done","GLOBAL",0)~ THEN BEGIN 17
  SAY @8393
  IF ~~ THEN REPLY @8394 GOTO 5
  IF ~~ THEN REPLY @8395 GOTO 8
  IF ~GlobalGT("SPRITE_IS_DEADSH_Warrior_Dead","GLOBAL",24)
      Global("KaylessaQuest","GLOBAL",1)
      Global("K_Done","GLOBAL",0)~ THEN REPLY @8396 DO ~AddXP2DA("ID1EX8H")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@8142)
                                                        SetGlobal("K_Done","GLOBAL",1)
                                                        EraseJournalEntry(@14416)
                                                        AddJournalEntry(@14417,QUEST_DONE)~ GOTO 18
  IF ~~ THEN REPLY @8397 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @8398
  IF ~~ THEN DO ~Enemy()~ EXIT
END
