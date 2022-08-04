BEGIN ~DTIERNON~

IF WEIGHT #6
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24336
  IF ~GlobalLT("Emmerich_Quest","GLOBAL",3)
      Global("SPRITE_IS_DEADEmmerich","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Know_Tiernon","GLOBAL",1)
                                                                        SetGlobal("Body_Count","GLOBAL",3)~ GOTO 1
  IF ~GlobalLT("Emmerich_Quest","GLOBAL",3)
      Global("SPRITE_IS_DEADEmmerich","GLOBAL",1)~ THEN REPLY @1428 DO ~SetGlobal("Know_Tiernon","GLOBAL",1)~ GOTO 1
  IF ~Global("Emmerich_Quest","GLOBAL",3)~ THEN REPLY @1428 DO ~SetGlobal("Know_Tiernon","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @24338
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @24339 DO ~SetGlobal("Tiernon_Rep","GLOBAL",1)~ GOTO 47
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @24340 DO ~AddXP2DA("ID1EX8E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@18517)
                                                        SetGlobal("Tiernon_Rep","GLOBAL",1)
                                                        AddJournalEntry(@23537,QUEST)~ GOTO 49
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @24341 DO ~AddXP2DA("ID1EX8E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@18517)
                                                        SetGlobal("Tiernon_Rep","GLOBAL",1)
                                                        AddJournalEntry(@23537,QUEST)~ GOTO 49
  IF ~~ THEN REPLY @514 GOTO 2
  IF ~~ THEN REPLY @24343 GOTO 63
END

IF ~~ THEN BEGIN 2
  SAY @24344
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @24345 GOTO 3
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @24346 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @24347
  IF ~~ THEN REPLY @24348 GOTO 4
  IF ~~ THEN REPLY @24349 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @24350
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @24351
  IF ~~ THEN REPLY @24352 GOTO 6
  IF ~~ THEN REPLY @24353 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @24354
  IF ~~ THEN REPLY @24355 GOTO 7
  IF ~~ THEN REPLY @24356 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @24357
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @24358
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @24359
  IF ~~ THEN REPLY @24360 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @24361
  IF ~~ THEN REPLY @24362 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @24363
  IF ~~ THEN DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",1)
                 AddJournalEntry(@23540,QUEST)
                 StartCutSceneMode()
                 StartCutScene("scMirCut")~ EXIT
END

IF WEIGHT #3
~Global("Tiernon_Cut_Scene","GLOBAL",1)~ THEN BEGIN 12
  SAY @24364
  IF ~~ THEN REPLY @24365 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 18
  IF ~~ THEN REPLY @24343 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 14
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24367 DO ~SetGlobal("Know_Rose","GLOBAL",2)
                                                            SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24368 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 51
  IF ~~ THEN REPLY @24369 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 13
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24370 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24370 DO ~SetGlobal("Tiernon_Cut_Scene","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @24396
  IF ~~ THEN REPLY @24397 DO ~SetGlobal("Know_Tiernon_Store","GLOBAL",1)
                              StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24398 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24398 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @24400
  IF ~~ THEN REPLY @540 DO ~SetGlobal("Know_Tiernon","GLOBAL",2)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @24402
  IF ~~ THEN REPLY @24403 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @24404
  IF ~~ THEN REPLY @24405 GOTO 17
  IF ~~ THEN REPLY @24406 GOTO 18
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24367 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24408 GOTO 51
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24411 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24411 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @24413
  IF ~~ THEN REPLY @24406 GOTO 18
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24367 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24416 GOTO 51
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24419 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24419 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @24421
  IF ~!Race(LastTalkedToBy,DWARF)~ THEN REPLY @24422 GOTO 19
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @988 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @24424
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @24425
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @24426
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @24427
  IF ~~ THEN REPLY @24428 GOTO 23
  IF ~~ THEN REPLY @24429 GOTO 23
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24430 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24430 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @24432
  IF ~~ THEN REPLY @24433 GOTO 24
  IF ~~ THEN REPLY @24434 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @24435
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @24436
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @24437
  IF ~Global("Made_Tiernon_Weapon","GLOBAL",0)~ THEN REPLY @24438 GOTO 27
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24439 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24440 GOTO 51
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24430 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24430 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @24445
  IF ~~ THEN REPLY @24446 GOTO 28
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24447 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24408 GOTO 51
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24430 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24430 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @24453
  IF ~~ THEN REPLY @24454 GOTO 29
  IF ~~ THEN REPLY @24455 GOTO 29
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24456 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24457 GOTO 51
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24430 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24430 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @24462
  IF ~~ THEN REPLY @26665 GOTO 65
END

IF WEIGHT #7
~Global("Made_Tiernon_Weapon","GLOBAL",1)~ THEN BEGIN 30
  SAY @24463
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",1)~ THEN REPLY @24464 DO ~GiveItemCreate("BloodGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",2)~ THEN REPLY @24464 DO ~GiveItemCreate("TalonGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",3)~ THEN REPLY @24464 DO ~GiveItemCreate("HandGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",4)~ THEN REPLY @24464 DO ~GiveItemCreate("KissGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",5)~ THEN REPLY @24464 DO ~GiveItemCreate("FistGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",6)~ THEN REPLY @24464 DO ~GiveItemCreate("FangGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",7)~ THEN REPLY @24464 DO ~GiveItemCreate("TongGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~~ THEN REPLY @24473 GOTO 31
  IF ~~ THEN REPLY @24474 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @24475
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",1)~ THEN REPLY @24476 DO ~GiveItemCreate("BloodGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",2)~ THEN REPLY @24476 DO ~GiveItemCreate("TalonGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",3)~ THEN REPLY @24476 DO ~GiveItemCreate("HandGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",4)~ THEN REPLY @24476 DO ~GiveItemCreate("KissGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",5)~ THEN REPLY @24476 DO ~GiveItemCreate("FistGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",6)~ THEN REPLY @24476 DO ~GiveItemCreate("FangGF",LastTalkedToBy,1,1,1)~ GOTO 32
  IF ~Global("Set_Tiernon_Weapon","GLOBAL",7)~ THEN REPLY @24476 DO ~GiveItemCreate("TongGF",LastTalkedToBy,1,1,1)~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @24485
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24486 DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",2)~ GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24487 DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",2)
                                                                     StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24488 DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",2)~ GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24488 DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",2)~ EXIT
END

IF WEIGHT #8
~NumTimesTalkedToGT(0)~ THEN BEGIN 33
  SAY @24490
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~Global("Made_Tiernon_Weapon","GLOBAL",0)~ THEN REPLY @24493 GOTO 18
  IF ~~ THEN REPLY @24343 GOTO 14
  IF ~Global("Tiernon_Rep","GLOBAL",0)
      Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @24494 DO ~SetGlobal("Tiernon_Rep","GLOBAL",1)~ GOTO 47
  IF ~Global("Tiernon_Rep","GLOBAL",0)
      Race(LastTalkedToBy,DWARF)~ THEN REPLY @24495 DO ~SetGlobal("Tiernon_Rep","GLOBAL",1)~ GOTO 50
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24496 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24408 GOTO 51
  IF ~CheckStatGT(LastTalkedToBy,14,INT)
      Global("Mirror_Tiernon","GLOBAL",0)
      GlobalGT("Found_Seer","GLOBAL",0)~ THEN REPLY @24498 GOTO 38
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)
      CheckStatLT(LastTalkedToBy,15,INT)
      Global("Mirror_Tiernon","GLOBAL",0)
      GlobalGT("Found_Seer","GLOBAL",0)~ THEN REPLY @24498 GOTO 38
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24500 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24500 EXIT
END

IF WEIGHT #5
~PartyHasItem("Tiernon")
 Global("Tiernon_Thief","GLOBAL",0)~ THEN BEGIN 34
  SAY @24502
  IF ~~ THEN REPLY @18856 DO ~SetGlobal("Tiernon_Thief","GLOBAL",1)~ GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @24504
  IF ~GlobalGT("Know_Tiernon","GLOBAL",0)~ THEN REPLY @24505 GOTO 46
  IF ~GlobalGT("Know_Tiernon","GLOBAL",0)~ THEN REPLY @24506 GOTO 46
  IF ~Global("Know_Tiernon","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Know_Tiernon","GLOBAL",1)~ GOTO 1
END

IF WEIGHT #4
~Global("SPRITE_IS_DEADSeer","GLOBAL",1)
 Global("Seer_Death_OK","GLOBAL",0)~ THEN BEGIN 36
  SAY @24508
  IF ~~ THEN REPLY @24509 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @24510 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @24511
  IF ~~ THEN REPLY @24509 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @24513 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @24514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @24515
  IF ~~ THEN REPLY @24516 GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @24517
  IF ~~ THEN REPLY @2757 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @24519
  IF ~~ THEN REPLY @24520 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @24521
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @24522
  IF ~PartyHasItem("Mirror")~ THEN REPLY @24523 DO ~SetGlobal("Mirror_Tiernon","GLOBAL",1)~ GOTO 43
  IF ~!PartyHasItem("Mirror")~ THEN REPLY @24524 GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @24525
  IF ~~ THEN REPLY @24526 DO ~TakePartyItem("Mirror")
                              DestroyItem("Mirror")
                              GiveItemCreate("Mirror2",LastTalkedToBy,1,1,1)~ GOTO 45
END

IF ~~ THEN BEGIN 44
  SAY @24527
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24530 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24530 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @24532
  IF ~~ THEN REPLY @24533 GOTO 46
  IF ~~ THEN REPLY @24534 GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @24535
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~Global("Made_Tiernon_Weapon","GLOBAL",0)~ THEN REPLY @24493 GOTO 18
  IF ~Global("Tiernon_Rep","GLOBAL",0)
      Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @24494 DO ~SetGlobal("Tiernon_Rep","GLOBAL",1)~ GOTO 47
  IF ~Global("Tiernon_Rep","GLOBAL",0)
      Race(LastTalkedToBy,DWARF)~ THEN REPLY @24540 DO ~SetGlobal("Tiernon_Rep","GLOBAL",1)~ GOTO 50
  IF ~Global("Know_Rose","GLOBAL",1)~ THEN REPLY @24541 DO ~SetGlobal("Know_Rose","GLOBAL",2)~ GOTO 60
  IF ~PartyHasItem("Dntshd1")~ THEN REPLY @24408 GOTO 51
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24543 GOTO 64
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24543 EXIT
END

IF ~~ THEN BEGIN 47
  SAY @24545
  IF ~~ THEN REPLY @24546 GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @24547
  IF ~NumTimesTalkedTo(1)~ THEN REPLY @24548 DO ~AddXP2DA("ID1EX8E")
                                                 DisplayStringNoNameDlg(LastTalkedToBy,@18517)
                                                 AddJournalEntry(@23538,QUEST)~ GOTO 49
  IF ~NumTimesTalkedToGT(1)~ THEN REPLY @24548 DO ~AddXP2DA("ID1EX8E")
                                                   DisplayStringNoNameDlg(LastTalkedToBy,@18517)
                                                   AddJournalEntry(@23538,QUEST)~ GOTO 50
END

IF ~~ THEN BEGIN 49
  SAY @24550
  IF ~~ THEN REPLY @514 GOTO 2
END

IF ~~ THEN BEGIN 50
  SAY @24553
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @24554 DO ~AddXP2DA("ID1EX8E")
                                                        DisplayStringNoNameDlg(LastTalkedToBy,@18517)
                                                        AddJournalEntry(@23537,QUEST)~ GOTO 46
  IF ~!Race(LastTalkedToBy,DWARF)~ THEN REPLY @24554 GOTO 46
END

IF ~~ THEN BEGIN 51
  SAY @24555
  IF ~~ THEN REPLY @24556 DO ~StartCutSceneMode()
                              StartCutScene("scTieShl")~ EXIT
END

IF WEIGHT #1
~Global("Tiernon_Makes_Shield","GLOBAL",2)~ THEN BEGIN 52
  SAY @24557
  IF ~PartyHasItem("JhoSwd2")~ THEN REPLY @24558 DO ~SetGlobal("Tiernon_Makes_Shield","GLOBAL",1)~ GOTO 53
  IF ~!PartyHasItem("JhoSwd2")~ THEN REPLY @24559 DO ~SetGlobal("Tiernon_Makes_Shield","GLOBAL",1)~ GOTO 46
END

IF ~~ THEN BEGIN 53
  SAY @24560
  IF ~~ THEN REPLY @24561 GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @24562
  IF ~~ THEN REPLY @24563 GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @24564
  IF ~~ THEN REPLY @24565 GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @24566
  IF ~~ THEN REPLY @24567 GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @24568
  IF ~~ THEN DO ~AddJournalEntry(@23536,QUEST)
                 StartCutSceneMode()
                 StartCutScene("scTieSwd")~ EXIT
END

IF WEIGHT #2
~Global("Tiernon_Makes_Sword","GLOBAL",2)~ THEN BEGIN 58
  SAY @24569
  IF ~~ THEN REPLY @24570 DO ~SetGlobal("Tiernon_Makes_Sword","GLOBAL",1)~ GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @24571
  IF ~Global("Know_Tiernon_Store","GLOBAL",0)~ THEN REPLY @24409 GOTO 13
  IF ~Global("Know_Tiernon_Store","GLOBAL",1)~ THEN REPLY @24410 DO ~StartStore("Tiernon",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @24574 EXIT
END

IF ~~ THEN BEGIN 60
  SAY @24575
  IF ~~ THEN REPLY @24576 GOTO 61
  IF ~~ THEN REPLY @24577 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @24578
  IF ~~ THEN REPLY @24476 DO ~AddJournalEntry(@23534,QUEST)
                              StartCutSceneMode()
                              StartCutScene("scTieRos")~ EXIT
END

IF WEIGHT #0
~Global("Tiernon_Makes_Rose","GLOBAL",2)~ THEN BEGIN 62
  SAY @24580
  IF ~~ THEN REPLY @24581 DO ~SetGlobal("Tiernon_Makes_Rose","GLOBAL",1)~ GOTO 46
  IF ~~ THEN REPLY @24582 DO ~SetGlobal("Tiernon_Makes_Rose","GLOBAL",1)~ GOTO 46
END

IF ~~ THEN BEGIN 63
  SAY @24583
  IF ~~ THEN REPLY @514 GOTO 2
END

IF ~~ THEN BEGIN 64
  SAY @24585
  IF ~~ THEN REPLY @24561 GOTO 54
END

IF ~~ THEN BEGIN 65
  SAY @26675
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @26676
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @26685 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",1)~ GOTO 67
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @26686 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",2)~ GOTO 67
  IF ~~ THEN REPLY @26687 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",3)~ GOTO 67
  IF ~~ THEN REPLY @26688 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",4)~ GOTO 67
  IF ~~ THEN REPLY @26689 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",5)~ GOTO 67
  IF ~~ THEN REPLY @26690 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",6)~ GOTO 67
  IF ~~ THEN REPLY @26691 DO ~SetGlobal("Set_Tiernon_Weapon","GLOBAL",7)~ GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @26684
  IF ~~ THEN DO ~SetGlobal("Made_Tiernon_Weapon","GLOBAL",1)
                 AddXP2DA("ID1EX10A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@18520)
                 AddJournalEntry(@23543,QUEST)
                 StartCutSceneMode()
                 StartCutScene("gnFdeDlg")~ EXIT
END
