BEGIN ~DWYLF~

IF ~~ THEN BEGIN 0
  SAY @23108
  IF ~~ THEN REPLY @23274 DO ~SetGlobal("Know_Wylfdene","GLOBAL",1)~ GOTO 1
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @23275 DO ~SetGlobal("Know_Wylfdene","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @23276 DO ~SetGlobal("Know_Wylfdene","GLOBAL",1)~ GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY @23277
  IF ~~ THEN REPLY @23278 GOTO 2
  IF ~~ THEN REPLY @23279 DO ~AddXP2DA("ID1EX9H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26704)~ GOTO 22
  IF ~~ THEN REPLY @23276 GOTO 21
END

IF ~~ THEN BEGIN 2
  SAY @23281
  IF ~~ THEN REPLY @23282 GOTO 3
  IF ~~ THEN REPLY @23283 GOTO 26
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @23284 GOTO 36
  IF ~~ THEN REPLY @23276 GOTO 28
END

IF ~~ THEN BEGIN 3
  SAY @23286
  IF ~~ THEN REPLY @23287 GOTO 4
  IF ~~ THEN REPLY @23288 GOTO 29
  IF ~~ THEN REPLY @23276 GOTO 30
END

IF ~~ THEN BEGIN 4
  SAY @23290
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @23291
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @23292
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @23293
  IF ~~ THEN REPLY @23294 GOTO 8
  IF ~~ THEN REPLY @23295 GOTO 31
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @23296 GOTO 8
  IF ~~ THEN REPLY @23276 GOTO 32
END

IF ~~ THEN BEGIN 8
  SAY @23309
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @23310
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @23311
  IF ~~ THEN REPLY @23312 GOTO 11
  IF ~~ THEN REPLY @23313 GOTO 33
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @23314 GOTO 37
  IF ~~ THEN REPLY @23276 GOTO 34
END

IF ~~ THEN BEGIN 11
  SAY @23316
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @23317
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @23318
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23319
  IF ~~ THEN REPLY @23321 GOTO 15
  IF ~~ THEN REPLY @23322 GOTO 35
END

IF ~~ THEN BEGIN 15
  SAY @23324
  IF ~~ THEN REPLY @23327 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @23328
  IF ~~ THEN REPLY @23329 DO ~AddXP2DA("ID1EX9H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26588)~ GOTO 17
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @23330 DO ~AddXP2DA("ID1EX9H")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@26699)~ GOTO 38
END

IF ~~ THEN BEGIN 17
  SAY @23331
  IF ~~ THEN REPLY @988 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @23335
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @23336
  IF ~~ THEN REPLY @23342 DO ~SetGlobal("Know_Assassin","GLOBAL",2)~ GOTO 20
  IF ~~ THEN REPLY @23343 DO ~SetGlobal("Know_Assassin","GLOBAL",2)
                              SetGlobal("Know_Plot","GLOBAL",1)
                              AddXP2DA("ID1EX9H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26703)~ GOTO 40
END

IF ~~ THEN BEGIN 20
  SAY @23344
  IF ~~ THEN EXTERN ~DHJOLLDE~ 28
END

IF ~~ THEN BEGIN 21
  SAY @23345
  IF ~~ THEN REPLY @23278 GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY @23361
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @23362
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @23363
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @23364
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 26
  SAY @23365
  IF ~~ THEN REPLY @23366 GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @23367
  IF ~~ THEN REPLY @23368 GOTO 3
END

IF ~~ THEN BEGIN 28
  SAY @23369
  IF ~~ THEN REPLY @23282 GOTO 3
  IF ~~ THEN REPLY @23283 GOTO 26
END

IF ~~ THEN BEGIN 29
  SAY @23374
  IF ~~ THEN REPLY @23287 GOTO 4
END

IF ~~ THEN BEGIN 30
  SAY @23376
  IF ~~ THEN REPLY @23287 GOTO 4
  IF ~~ THEN REPLY @23288 GOTO 29
END

IF ~~ THEN BEGIN 31
  SAY @23381
  IF ~~ THEN REPLY @23294 GOTO 8
END

IF ~~ THEN BEGIN 32
  SAY @23345
  IF ~~ THEN REPLY @23294 GOTO 8
  IF ~~ THEN REPLY @23385 GOTO 31
END

IF ~~ THEN BEGIN 33
  SAY @23386
  IF ~~ THEN REPLY @23387 GOTO 11
END

IF ~~ THEN BEGIN 34
  SAY @23376
  IF ~~ THEN REPLY @23389 GOTO 11
  IF ~~ THEN REPLY @23313 GOTO 33
END

IF ~~ THEN BEGIN 35
  SAY @23391
  IF ~~ THEN REPLY @23321 GOTO 15
END

IF ~~ THEN BEGIN 36
  SAY @23393
  IF ~~ THEN REPLY @23394 GOTO 4
END

IF ~~ THEN BEGIN 37
  SAY @23410
  IF ~~ THEN REPLY @23413 GOTO 11
END

IF ~~ THEN BEGIN 38
  SAY @23414
  IF ~~ THEN REPLY @23415 GOTO 17
END

IF ~~ THEN BEGIN 39
  SAY @23416
  IF ~~ THEN REPLY @23278 GOTO 2
  IF ~~ THEN REPLY @23276 GOTO 21
END

IF ~~ THEN BEGIN 40
  SAY @23419
  IF ~~ THEN REPLY @23420 GOTO 20
END

IF ~~ THEN BEGIN 41
  SAY @23421
  IF ~~ THEN EXTERN ~DHJOLLDE~ 30
END

IF ~~ THEN BEGIN 42
  SAY @23422
  IF ~~ THEN EXTERN ~DHJOLLDE~ 32
END

IF ~~ THEN BEGIN 43
  SAY @23423
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @23425
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @23426
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @23427
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @23428
  IF ~~ THEN DO ~StartCutSceneMode()
                 SetGlobal("Ordered_Death","GLOBAL",1)
                 SetGlobal("Hjollder_Banished","GLOBAL",1)
                 StartCutScene("bcHjoBan")~ EXIT
END

IF ~PartyHasItem("Mirror")~ THEN BEGIN 48
  SAY @23429
  IF ~~ THEN REPLY @23430 GOTO 49
  IF ~~ THEN REPLY @376 GOTO 65
END

IF ~~ THEN BEGIN 49
  SAY @23432
  IF ~~ THEN REPLY @23433 GOTO 50
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @23434 GOTO 66
END

IF ~~ THEN BEGIN 50
  SAY @23435
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @23436
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @23437
  IF ~~ THEN REPLY @23438 GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @23439
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @23450 GOTO 54
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @23450 GOTO 55
END

IF ~~ THEN BEGIN 54
  SAY @23452
  IF ~~ THEN REPLY @23453 GOTO 56
END

IF ~~ THEN BEGIN 55
  SAY @23452
  IF ~~ THEN REPLY @23455 GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @23456
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @23457
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @23460
  IF ~Global("SPRITE_IS_DEADSeer","GLOBAL",0)~ THEN REPLY @23464 DO ~TakePartyItem("Mirror")
                                                                     TakePartyItem("Mirror2")
                                                                     DestroyItem("Mirror")
                                                                     DestroyItem("Mirror2")
                                                                     SetGlobal("Looked_Mirror","GLOBAL",1)~ GOTO 59
  IF ~Global("SPRITE_IS_DEADSeer","GLOBAL",1)~ THEN REPLY @23464 DO ~TakePartyItem("Mirror")
                                                                     TakePartyItem("Mirror2")
                                                                     DestroyItem("Mirror")
                                                                     DestroyItem("Mirror2")
                                                                     SetGlobal("Looked_Mirror","GLOBAL",1)~ GOTO 69
END

IF ~~ THEN BEGIN 59
  SAY @23465
  IF ~~ THEN DO ~SetGlobal("Seer_Ghost_State","GLOBAL",1)
                 SetGlobal("Wylf_Seer_Showdown","GLOBAL",1)
                 SetGlobal("Hjollder_Quest","GLOBAL",11)
                 AddXP2DA("ID1EX9H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@18522)
                 AddJournalEntry(@23527,QUEST)~ GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @23466
  IF ~~ THEN REPLY @26542 DO ~StartCutSceneMode()
                              StartCutScene("bcSCut1A")~ EXIT
END

IF ~~ THEN BEGIN 61
  SAY @23467
  IF ~~ THEN DO ~SetGlobal("Struck_Seer","GLOBAL",1)~ GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @23468
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @23469
  IF ~~ THEN DO ~SetGlobal("Wylf_Seer_Showdown","GLOBAL",2)~ GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @23470
  IF ~~ THEN REPLY @26543 DO ~StartCutSceneMode()
                              StartCutScene("bcSCut2A")~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY @23345
  IF ~~ THEN REPLY @23568 GOTO 49
END

IF ~~ THEN BEGIN 66
  SAY @23569
  IF ~~ THEN REPLY @23570 GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @23572
  IF ~~ THEN REPLY @23574 GOTO 50
END

IF ~PartyHasItem("Mirror2")~ THEN BEGIN 68
  SAY @23429
  IF ~~ THEN REPLY @23430 GOTO 49
  IF ~~ THEN REPLY @376 GOTO 65
END

IF ~~ THEN BEGIN 69
  SAY @23465
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",11)
                 AddXP2DA("ID1EX9H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@18522)
                 AddJournalEntry(@23527,QUEST)~ GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @23466
  IF ~~ THEN REPLY @516 DO ~StartCutSceneMode()
                            SetGlobal("Seer_Ghost_State","GLOBAL",2)
                            SetGlobal("Wylf_Seer_Showdown","GLOBAL",1)
                            StartCutScene("bcSCut1D")~ EXIT
END

IF ~~ THEN BEGIN 71
  SAY @23467
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY @23468
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY @23469
  IF ~~ THEN REPLY @515 DO ~StartCutSceneMode()
                            SetGlobal("Struck_Seer","GLOBAL",2)
                            StartCutScene("bcSCut2D")~ EXIT
END
