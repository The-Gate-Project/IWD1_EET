BEGIN ~DLIZARDK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1376
  IF ~~ THEN REPLY @1377 DO ~SetGlobal("Throne_Room_Attack","ID4001",1)~ GOTO 1
  IF ~~ THEN REPLY @1378 DO ~SetGlobal("Throne_Room_Attack","ID4001",1)~ GOTO 2
  IF ~~ THEN REPLY @1379 DO ~SetGlobal("Throne_Room_Attack","ID4001",1)~ GOTO 3
  IF ~~ THEN REPLY @1380 DO ~SetGlobal("Throne_Room_Attack","ID4001",1)~ GOTO 4
  IF ~~ THEN REPLY @1381 DO ~SetGlobal("Throne_Room_Attack","ID4001",1)
                             AddJournalEntry(@18315,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @1382
  IF ~~ THEN REPLY @1383 DO ~AddJournalEntry(@485,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @1384 DO ~AddJournalEntry(@1976,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY @1385
  IF ~~ THEN REPLY @1386 DO ~AddJournalEntry(@1977,QUEST)~ GOTO 6
  IF ~~ THEN REPLY @1387 DO ~AddJournalEntry(@4345,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @1388 DO ~AddJournalEntry(@4345,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @1389
  IF ~~ THEN REPLY @1390 DO ~AddJournalEntry(@4348,QUEST)~ GOTO 11
  IF ~~ THEN REPLY @1391 DO ~AddJournalEntry(@4348,QUEST)
                             IncrementGlobalOnce("Tasty_Flesh","GLOBAL","Law","GLOBAL",-1)~ GOTO 10
  IF ~~ THEN REPLY @1392 DO ~AddJournalEntry(@485,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @2948 DO ~AddJournalEntry(@4348,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @1393
  IF ~~ THEN REPLY @1394 DO ~AddJournalEntry(@4349,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @1395 DO ~AddJournalEntry(@4349,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @1396
  IF ~~ THEN REPLY @1397 GOTO 9
  IF ~~ THEN REPLY @1398 DO ~IncrementGlobalOnce("Tasty_Flesh","GLOBAL","Law","GLOBAL",-1)~ GOTO 10
  IF ~~ THEN REPLY @1399 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @1400
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1401
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1402
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1403
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1404
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1405
  IF ~~ THEN DO ~Enemy()~ EXIT
END
