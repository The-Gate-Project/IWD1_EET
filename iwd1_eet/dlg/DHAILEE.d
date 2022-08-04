BEGIN ~DHAILEE~

IF ~Global("Talk_Hailee","GLOBAL",0)~ THEN BEGIN 0
  SAY @21877
  IF ~~ THEN REPLY @22378 DO ~SetGlobal("Know_Hailee","GLOBAL",1)
                              SetGlobal("Hailee_Joke","GLOBAL",1)
                              SetGlobal("Talk_Hailee","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22379 DO ~SetGlobal("Know_Hailee","GLOBAL",1)
                              SetGlobal("Hailee_Joke","GLOBAL",1)
                              SetGlobal("Talk_Hailee","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22380 DO ~SetGlobal("Know_Hailee","GLOBAL",1)
                              SetGlobal("Hailee_Joke","GLOBAL",1)
                              SetGlobal("Talk_Hailee","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @22381
  IF ~~ THEN REPLY @22382 GOTO 2
  IF ~~ THEN REPLY @22383 GOTO 4
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22384 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @22385
  IF ~Global("Know_Tybald","GLOBAL",1)~ THEN REPLY @22386 DO ~AddJournalEntry(@34107,QUEST)~ EXIT
  IF ~Global("Know_Tybald","GLOBAL",0)~ THEN REPLY @22387 DO ~AddJournalEntry(@34107,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @22388
  IF ~~ THEN REPLY @22389 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22390
  IF ~~ THEN REPLY @22392 GOTO 6
  IF ~~ THEN REPLY @22391 GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @22393
  IF ~~ THEN REPLY @22394 GOTO 6
  IF ~~ THEN REPLY @22395 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
                              AddXP2DA("ID1EX6E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18525)
                              AddJournalEntry(@34106,QUEST)~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @22398
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22399 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
                                                                 AddXP2DA("ID1EX6E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@18525)
                                                                 AddJournalEntry(@34106,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @22391 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @22401
  IF ~~ THEN REPLY @22402 GOTO 11
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22403 GOTO 12
END

IF ~GlobalGT("Talk_Hailee","GLOBAL",0)
    GlobalLT("Hailee_Joke","GLOBAL",4)~ THEN BEGIN 8
  SAY @22404
  IF ~GlobalLT("Hailee_Joke","GLOBAL",2)~ THEN REPLY @22405 EXIT
  IF ~GlobalLT("Hailee_Joke","GLOBAL",2)~ THEN REPLY @22406 GOTO 3
  IF ~Global("Hailee_Joke","GLOBAL",2)~ THEN REPLY @22407 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
                                                              AddXP2DA("ID1EX6E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@18519)
                                                              AddJournalEntry(@34105,QUEST)~ GOTO 9
  IF ~Global("Hailee_Joke","GLOBAL",3)~ THEN REPLY @22408 DO ~SetGlobal("Hailee_Joke","GLOBAL",4)
                                                              AddXP2DA("ID1EX6E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@18519)
                                                              AddJournalEntry(@34105,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22409
  IF ~~ THEN REPLY @22402 GOTO 11
  IF ~~ THEN REPLY @22411 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @22412
  IF ~~ THEN REPLY @22413 GOTO 13
  IF ~~ THEN REPLY @22414 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22415
  IF ~~ THEN REPLY @22416 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22417
  IF ~~ THEN REPLY @22413 GOTO 13
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22419 EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22420 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22421
  IF ~~ THEN REPLY @22422 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",1)~ GOTO 15
  IF ~Global("Know_Purvis","GLOBAL",0)~ THEN REPLY @22423 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",1)
                                                              SetGlobal("Know_Purvis","GLOBAL",1)~ GOTO 14
  IF ~Global("Know_Purvis","GLOBAL",1)~ THEN REPLY @23076 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @22424
  IF ~~ THEN REPLY @23077 GOTO 50
  IF ~~ THEN REPLY @22425 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @22426
  IF ~~ THEN REPLY @22427 GOTO 16
  IF ~~ THEN REPLY @22428 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22429
  IF ~~ THEN REPLY @22430 GOTO 17
  IF ~~ THEN REPLY @22431 GOTO 23
  IF ~Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @22432 GOTO 43
  IF ~~ THEN REPLY @22433 GOTO 37
  IF ~~ THEN REPLY @22434 GOTO 39
  IF ~~ THEN REPLY @22435 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @22436
  IF ~PartyGold(0)~ THEN REPLY @22437 EXIT
  IF ~PartyGoldGT(0)~ THEN REPLY @22438 DO ~TakePartyGold(1)~ GOTO 18
  IF ~~ THEN REPLY @22439 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22440
  IF ~Global("Know_Kieran","GLOBAL",0)~ THEN REPLY @22441 GOTO 19
  IF ~Global("Know_Kieran","GLOBAL",1)~ THEN REPLY @22442 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @22443
  IF ~~ THEN REPLY @22444 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",2)
                              AddXP2DA("ID1EX6E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18524)
                              AddJournalEntry(@34099,QUEST)~ GOTO 20
  IF ~~ THEN REPLY @22445 DO ~SetGlobal("Know_Hailee_Secret","GLOBAL",2)
                              AddXP2DA("ID1EX6E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18524)
                              AddJournalEntry(@34099,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22446
  IF ~GlobalGT("Know_Mirror_Door","GLOBAL",0)~ THEN REPLY @22447 GOTO 22
  IF ~Global("Know_Mirror_Door","GLOBAL",0)~ THEN REPLY @22448 DO ~SetGlobal("Know_Mirror_Door","GLOBAL",1)~ GOTO 21
  IF ~Global("Know_Mirror_Door","GLOBAL",0)~ THEN REPLY @22449 DO ~SetGlobal("Know_Mirror_Door","GLOBAL",1)~ GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY @22450
  IF ~~ THEN REPLY @22449 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @22452
  IF ~~ THEN REPLY @22453 GOTO 37
  IF ~~ THEN REPLY @22434 GOTO 39
  IF ~Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @22455 GOTO 43
  IF ~~ THEN REPLY @22456 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @22457
  IF ~~ THEN REPLY @22458 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @22459
  IF ~~ THEN REPLY @22460 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @22461
  IF ~~ THEN REPLY @22462 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @22465
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @22466 DO ~SetGlobal("Fish_Story","GLOBAL",1)~ GOTO 31
  IF ~~ THEN REPLY @22467 DO ~SetGlobal("Bear_Story","GLOBAL",1)~ GOTO 27
  IF ~~ THEN REPLY @22468 DO ~SetGlobal("Barbarian_Story","GLOBAL",1)~ GOTO 36
END

IF ~~ THEN BEGIN 27
  SAY @22470
  IF ~~ THEN REPLY @22471 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @22472
  IF ~~ THEN REPLY @22474 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @22475
  IF ~~ THEN REPLY @22477 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @22478
  IF ~~ THEN REPLY @22479 GOTO 18
END

IF ~~ THEN BEGIN 31
  SAY @22470
  IF ~~ THEN REPLY @22481 GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @22482
  IF ~~ THEN REPLY @22483 GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @22484
  IF ~~ THEN REPLY @22485 GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @22486
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @22487 DO ~AddXP2DA("ID1EX6E")
                                                         DisplayStringNoNameDlg(LastTalkedToBy,@18515)
                                                         AddJournalEntry(@34093,QUEST)~ GOTO 35
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @22487 DO ~AddXP2DA("ID1EX6E")
                                                           DisplayStringNoNameDlg(LastTalkedToBy,@18515)
                                                           AddJournalEntry(@34091,QUEST)~ GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @22489
  IF ~~ THEN REPLY @22490 GOTO 18
END

IF ~~ THEN BEGIN 36
  SAY @22491
  IF ~~ THEN REPLY @22492 GOTO 18
END

IF ~~ THEN BEGIN 37
  SAY @22493
  IF ~~ THEN REPLY @22494 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @22495
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22496 GOTO 39
  IF ~Global("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22497 GOTO 13
  IF ~Global("Know_Hailee_Secret","GLOBAL",1)~ THEN REPLY @22498 GOTO 16
  IF ~Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @22432 GOTO 43
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @22501
  IF ~~ THEN REPLY @22502 GOTO 41
  IF ~~ THEN REPLY @22453 GOTO 37
  IF ~Global("Know_Purvis","GLOBAL",0)~ THEN REPLY @22504 DO ~SetGlobal("Know_Purvis","GLOBAL",1)~ GOTO 40
  IF ~Global("Know_Purvis","GLOBAL",1)~ THEN REPLY @23076 GOTO 40
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @22424
  IF ~~ THEN REPLY @23077 GOTO 51
  IF ~~ THEN REPLY @22507 GOTO 41
  IF ~~ THEN REPLY @22453 GOTO 37
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @22510
  IF ~Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @22511 GOTO 42
  IF ~~ THEN REPLY @22453 GOTO 37
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 42
  SAY @22514
  IF ~~ THEN REPLY @22515 GOTO 43
  IF ~~ THEN REPLY @22453 GOTO 37
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @22518
  IF ~~ THEN REPLY @23077 GOTO 52
  IF ~~ THEN REPLY @22519 GOTO 37
  IF ~~ THEN REPLY @22520 EXIT
END

IF ~GlobalGT("Talk_Hailee","GLOBAL",0)
    Global ("Hailee_Joke","GLOBAL",4)~ THEN BEGIN 44
  SAY @22521
  IF ~Global("Know_Purvis","GLOBAL",0)~ THEN REPLY @22423 DO ~SetGlobal("Know_Purvis","GLOBAL",1)~ GOTO 46
  IF ~Global("Know_Purvis","GLOBAL",1)~ THEN REPLY @23076 GOTO 46
  IF ~Global("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22497 GOTO 13
  IF ~Global("Know_Hailee_Secret","GLOBAL",1)~ THEN REPLY @22498 GOTO 16
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22531 GOTO 39
  IF ~~ THEN REPLY @22532 GOTO 37
  IF ~Global("Know_Purvis","GLOBAL",1)
      Global("Purvis_Dead","GLOBAL",0)~ THEN REPLY @22533 GOTO 45
  IF ~Global("Hailee_Home","GLOBAL",0)
      GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22534 GOTO 47
  IF ~~ THEN REPLY @22535 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @22536
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22537 GOTO 39
  IF ~Global("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22538 GOTO 13
  IF ~Global("Know_Hailee_Secret","GLOBAL",1)~ THEN REPLY @22498 GOTO 16
  IF ~~ THEN REPLY @22540 GOTO 37
  IF ~~ THEN REPLY @22541 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @22424
  IF ~~ THEN REPLY @23077 GOTO 53
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22543 GOTO 41
  IF ~Global("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22497 GOTO 13
  IF ~Global("Know_Hailee_Secret","GLOBAL",1)~ THEN REPLY @22498 GOTO 16
  IF ~~ THEN REPLY @22546 GOTO 37
  IF ~~ THEN REPLY @22500 EXIT
END

IF ~~ THEN BEGIN 47
  SAY @22548
  IF ~Global("Bear_Story","GLOBAL",1)~ THEN REPLY @22549 DO ~SetGlobal("Hailee_Home","GLOBAL",1)
                                                             AddXP2DA("ID1EX6E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@18516)
                                                             EraseJournalEntry(@34107)
                                                             EraseJournalEntry(@34106)
                                                             EraseJournalEntry(@34105)
                                                             EraseJournalEntry(@34093)
                                                             EraseJournalEntry(@34091)
                                                             EraseJournalEntry(@23563)
                                                             EraseJournalEntry(@34110)
                                                             AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
  IF ~Global("Fish_Story","GLOBAL",1)
      Global("SPRITE_IS_DEADTybaldDunn","GLOBAL",0)~ THEN REPLY @22552 DO ~SetGlobal("Hailee_Home","GLOBAL",2)
                                                                           AddXP2DA("ID1EX6E")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@18527)
                                                                           EraseJournalEntry(@34107)
                                                                           EraseJournalEntry(@34106)
                                                                           EraseJournalEntry(@34105)
                                                                           EraseJournalEntry(@34093)
                                                                           EraseJournalEntry(@34091)
                                                                           EraseJournalEntry(@23563)
                                                                           EraseJournalEntry(@34110)
                                                                           AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
  IF ~Global("Barbarian_Story","GLOBAL",1)
      Global("SPRITE_IS_DEADTybaldDunn","GLOBAL",0)~ THEN REPLY @22555 DO ~SetGlobal("Hailee_Home","GLOBAL",3)
                                                                           AddXP2DA("ID1EX6E")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@18527)
                                                                           EraseJournalEntry(@34107)
                                                                           EraseJournalEntry(@34106)
                                                                           EraseJournalEntry(@34105)
                                                                           EraseJournalEntry(@34093)
                                                                           EraseJournalEntry(@34091)
                                                                           EraseJournalEntry(@23563)
                                                                           EraseJournalEntry(@34110)
                                                                           AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
  IF ~GlobalGT("Ambere_Family","GLOBAL",1)
      Global("SPRITE_IS_DEADAmbereDunn","GLOBAL",0)~ THEN REPLY @22556 DO ~SetGlobal("Hailee_Home","GLOBAL",4)
                                                                           AddXP2DA("ID1EX6E")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@18527)
                                                                           EraseJournalEntry(@34107)
                                                                           EraseJournalEntry(@34106)
                                                                           EraseJournalEntry(@34105)
                                                                           EraseJournalEntry(@34093)
                                                                           EraseJournalEntry(@34091)
                                                                           EraseJournalEntry(@23563)
                                                                           EraseJournalEntry(@34110)
                                                                           AddJournalEntry(@34089,QUEST_DONE)~ GOTO 48
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",1)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22557 DO ~SetGlobal("Hailee_Home","GLOBAL",5)
                                                              AddXP2DA("ID1EX6E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@18516)
                                                              EraseJournalEntry(@34107)
                                                              EraseJournalEntry(@34106)
                                                              EraseJournalEntry(@34105)
                                                              EraseJournalEntry(@34093)
                                                              EraseJournalEntry(@34091)
                                                              EraseJournalEntry(@23563)
                                                              EraseJournalEntry(@34110)
                                                              AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22558 DO ~SetGlobal("Hailee_Home","GLOBAL",6)
                                                                 AddXP2DA("ID1EX6E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@18526)
                                                                 EraseJournalEntry(@34107)
                                                                 EraseJournalEntry(@34106)
                                                                 EraseJournalEntry(@34105)
                                                                 EraseJournalEntry(@34093)
                                                                 EraseJournalEntry(@34091)
                                                                 EraseJournalEntry(@23563)
                                                                 EraseJournalEntry(@34110)
                                                                 AddJournalEntry(@34089,QUEST_DONE)~ GOTO 49
  IF ~~ THEN REPLY @22559 GOTO 37
  IF ~~ THEN REPLY @22560 EXIT
END

IF ~~ THEN BEGIN 48
  SAY @22561
  IF ~~ THEN REPLY @22562 DO ~SetGlobal("Move_Hailee","GLOBAL",1)
                              EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @22563
  IF ~~ THEN REPLY @22564 DO ~SetGlobal("Move_Hailee","GLOBAL",1)
                              EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @23075
  IF ~~ THEN REPLY @23078 GOTO 15
END

IF ~~ THEN BEGIN 51
  SAY @23075
  IF ~~ THEN REPLY @23082 GOTO 41
END

IF ~~ THEN BEGIN 52
  SAY @23075
  IF ~~ THEN REPLY @22519 GOTO 37
  IF ~~ THEN REPLY @22520 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @23075
  IF ~GlobalGT("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @23082 GOTO 41
  IF ~Global("Know_Hailee_Secret","GLOBAL",0)~ THEN REPLY @22497 GOTO 13
  IF ~Global("Know_Hailee_Secret","GLOBAL",1)~ THEN REPLY @22498 GOTO 16
  IF ~~ THEN REPLY @22546 GOTO 37
  IF ~~ THEN REPLY @22500 EXIT
END
