BEGIN ~DBALDEMR~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @25465
  IF ~~ THEN REPLY @25516 GOTO 1
  IF ~Global("Know_Baldemar","GLOBAL",1)~ THEN REPLY @25517 GOTO 2
  IF ~~ THEN REPLY @25518 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25466
  IF ~~ THEN REPLY @25519 GOTO 3
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",0)~ THEN REPLY @25522 GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",1)~ THEN REPLY @25523 GOTO 5
  IF ~~ THEN REPLY @25524 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @25467
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",1)~ THEN REPLY @25525 GOTO 11
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",0)~ THEN REPLY @25527 GOTO 12
  IF ~~ THEN REPLY @25519 GOTO 3
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",0)~ THEN REPLY @25522 GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",1)~ THEN REPLY @25523 GOTO 5
  IF ~~ THEN REPLY @25532 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @25468
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",0)~ THEN REPLY @25522 DO ~SetGlobal("Know_Threat","GLOBAL",1)~ GOTO 4
  IF ~Global("Hjollder_Banished","GLOBAL",0)
      Global("Know_Barb_Camp","GLOBAL",1)~ THEN REPLY @25523 DO ~SetGlobal("Know_Threat","GLOBAL",1)~ GOTO 5
  IF ~Global("Hjollder_Banished","GLOBAL",1)
      GlobalLT("Know_Assassin","GLOBAL",3)~ THEN REPLY @25535 DO ~SetGlobal("Know_Threat","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @2601 DO ~SetGlobal("Know_Threat","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @265 DO ~SetGlobal("Know_Threat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @25469
  IF ~~ THEN REPLY @25538 GOTO 3
  IF ~~ THEN REPLY @25539 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @25470
  IF ~~ THEN REPLY @25540 GOTO 6
  IF ~~ THEN REPLY @25541 EXIT
  IF ~~ THEN REPLY @25542 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @25471
  IF ~Global("Know_Assassin","GLOBAL",1)~ THEN REPLY @25543 GOTO 7
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",1)~ THEN REPLY @25544 GOTO 11
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",0)~ THEN REPLY @25545 GOTO 12
  IF ~Global("Know_Assassin","GLOBAL",0)~ THEN REPLY @25541 EXIT
  IF ~~ THEN REPLY @25542 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25472
  IF ~Global("Know_Threat","GLOBAL",1)~ THEN REPLY @25548 GOTO 8
  IF ~Global("Know_Threat","GLOBAL",1)~ THEN REPLY @25549 GOTO 9
  IF ~~ THEN REPLY @2601 GOTO 10
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @25473
  IF ~Global("Know_Threat","GLOBAL",1)~ THEN REPLY @25552 DO ~SetGlobal("Know_Threat","GLOBAL",2)~ GOTO 9
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25474
  IF ~Global("Know_Threat","GLOBAL",1)~ THEN REPLY @25555 DO ~SetGlobal("Know_Threat","GLOBAL",2)~ GOTO 8
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25477
  IF ~Global("Know_Threat","GLOBAL",0)~ THEN REPLY @25519 GOTO 3
  IF ~GlobalGT("Know_Threat","GLOBAL",0)~ THEN REPLY @25557 GOTO 3
  IF ~Global("Know_Assassin","GLOBAL",1)~ THEN REPLY @25558 GOTO 7
  IF ~GlobalGT("Body_Count","GLOBAL",1)
      Global("Know_Dolan_Dead","GLOBAL",1)~ THEN REPLY @25559 GOTO 26
  IF ~Global("Body_Count","GLOBAL",1)
      Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @25560 GOTO 27
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @25480
  IF ~~ THEN REPLY @25562 GOTO 13
  IF ~~ THEN REPLY @25563 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @25482
  IF ~~ THEN REPLY @25564 GOTO 13
  IF ~~ THEN REPLY @25565 GOTO 13
  IF ~~ THEN REPLY @25566 GOTO 10
END

IF ~~ THEN BEGIN 13
  SAY @25484
  IF ~~ THEN REPLY @25567 GOTO 14
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @25568 GOTO 14
  IF ~~ THEN REPLY @25569 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @25485
  IF ~~ THEN REPLY @25570 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @25486
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @25489
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @25502
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @25503
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @25504
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @25505
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @25506
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @25507
  IF ~~ THEN REPLY @25571 DO ~SetGlobal("Know_Plot","GLOBAL",2)
                              SetGlobal("Know_Assassin","GLOBAL",3)~ GOTO 23
  IF ~~ THEN REPLY @25572 DO ~SetGlobal("Know_Plot","GLOBAL",2)
                              SetGlobal("Know_Assassin","GLOBAL",3)~ GOTO 25
  IF ~~ THEN REPLY @25573 DO ~SetGlobal("Know_Plot","GLOBAL",2)
                              SetGlobal("Know_Assassin","GLOBAL",3)
                              AddXP2DA("ID1EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24882)
                              AddJournalEntry(@25426,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @25508
  IF ~~ THEN REPLY @25574 GOTO 24
  IF ~~ THEN REPLY @25575 DO ~AddXP2DA("ID1EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24882)
                              AddJournalEntry(@25426,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @25509
  IF ~~ THEN REPLY @25576 DO ~AddXP2DA("ID1EX12H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24883)
                              AddJournalEntry(@25428,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @25510
  IF ~~ THEN REPLY @25577 DO ~AddXP2DA("ID1EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24882)
                              AddJournalEntry(@25426,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @25511
  IF ~Global("Know_Emmerich","GLOBAL",0)~ THEN REPLY @25578 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 28
  IF ~~ THEN REPLY @8028 GOTO 10
  IF ~~ THEN REPLY @25580 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @25512
  IF ~Global("Know_Emmerich","GLOBAL",0)~ THEN REPLY @25578 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 28
  IF ~~ THEN REPLY @8028 GOTO 10
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @25513
  IF ~~ THEN REPLY @25584 GOTO 29
  IF ~~ THEN REPLY @8028 GOTO 10
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @25514
  IF ~~ THEN REPLY @8028 GOTO 10
  IF ~~ THEN REPLY @265 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 30
  SAY @25515
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",1)~ THEN REPLY @25544 GOTO 11
  IF ~Global("Know_Assassin","GLOBAL",2)
      Global("Know_Plot","GLOBAL",0)~ THEN REPLY @25545 GOTO 12
  IF ~~ THEN REPLY @25589 GOTO 10
  IF ~~ THEN REPLY @8000 EXIT
END
