BEGIN ~DARUNDEL~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2333
  IF ~NumInPartyGT(1)~ THEN REPLY @2379 DO ~SetGlobal("Know_Arundel","GLOBAL",1)~ GOTO 1
  IF ~NumInPartyLT(2)~ THEN REPLY @2380 DO ~SetGlobal("Know_Arundel","GLOBAL",1)~ GOTO 1
  IF ~Global("Know_Arundel","GLOBAL",0)~ THEN REPLY @2381 DO ~SetGlobal("Know_Arundel","GLOBAL",1)~ GOTO 2
  IF ~Global("Know_Arundel","GLOBAL",1)~ THEN REPLY @2382 GOTO 51
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @2383 DO ~SetGlobal("Know_Arundel","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @2334
  IF ~NumInPartyGT(1)
      CheckStatLT(LastTalkedToBy,12,INT)~ THEN REPLY @2384 GOTO 2
  IF ~NumInPartyLT(2)
      CheckStatLT(LastTalkedToBy,12,INT)~ THEN REPLY @2392 GOTO 2
  IF ~Global("Know_Arundel","GLOBAL",0)~ THEN REPLY @2381 DO ~SetGlobal("Know_Arundel","GLOBAL",1)~ GOTO 2
  IF ~Global("Know_Arundel","GLOBAL",1)~ THEN REPLY @2382 GOTO 51
  IF ~CheckStatGT(LastTalkedToBy,11,INT)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @2395 GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @2397 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @2335
  IF ~~ THEN REPLY @2398 GOTO 3
  IF ~~ THEN REPLY @2399 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @2336
  IF ~~ THEN REPLY @2400 GOTO 4
  IF ~~ THEN REPLY @2401 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @2337
  IF ~~ THEN REPLY @16356 GOTO 6
  IF ~~ THEN REPLY @2404 GOTO 6
  IF ~~ THEN REPLY @2405 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @2338
  IF ~~ THEN REPLY @16356 GOTO 6
  IF ~~ THEN REPLY @2404 GOTO 6
  IF ~~ THEN REPLY @2405 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @2339
  IF ~~ THEN REPLY @2410 DO ~SetGlobal("Know_Balance","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @19548 DO ~SetGlobal("Know_Balance","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @16368
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @16369
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
END

IF ~~ THEN BEGIN 9
  SAY @16368
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16369
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
END

IF ~~ THEN BEGIN 11
  SAY @2342
  IF ~~ THEN REPLY @2416 GOTO 12
  IF ~~ THEN REPLY @2417 GOTO 14
  IF ~~ THEN REPLY @2428 GOTO 19
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2430 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2431 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @2432 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2433 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2434 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @16389
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @16390
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @16398
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @16400
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @16401
  IF ~~ THEN REPLY @2443 GOTO 17
  IF ~~ THEN REPLY @2444 GOTO 17
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @16416
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @16417
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @16425
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @16426
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @16427
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @16429
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @47 GOTO 23
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @16436
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @16437
  IF ~Class(LastTalkedToBy,RANGER_ALL)
      !Race(LastTalkedToBy,ELF)~ THEN REPLY @2466 GOTO 25
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      !Race(LastTalkedToBy,ELF)~ THEN REPLY @2466 GOTO 25
  IF ~Class(LastTalkedToBy,RANGER_ALL)
      Race(LastTalkedToBy,ELF)~ THEN REPLY @2466 GOTO 25
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Race(LastTalkedToBy,ELF)~ THEN REPLY @2466 GOTO 25
  IF ~!Class(LastTalkedToBy,RANGER_ALL)
      OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)
      !Race(LastTalkedToBy,ELF)~ THEN REPLY @2470 GOTO 25
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~~ THEN REPLY @2413 GOTO 25
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @16459
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @16479
  IF ~~ THEN REPLY @2478 GOTO 27
  IF ~Global("Know_Tolben","GLOBAL",1)~ THEN REPLY @2479 GOTO 29
  IF ~Global("Know_Tolben","GLOBAL",0)~ THEN REPLY @2480 DO ~SetGlobal("Know_Tolben","GLOBAL",1)~ GOTO 29
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 27
  SAY @16588
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @16591
  IF ~Global("Know_Tolben","GLOBAL",0)~ THEN REPLY @2480 DO ~SetGlobal("Know_Tolben","GLOBAL",1)~ GOTO 29
  IF ~Global("Know_Tolben","GLOBAL",1)~ THEN REPLY @2479 GOTO 29
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @34517
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @2352
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @16602
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @16603
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @2354
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @16606
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @16607
  IF ~~ THEN REPLY @2412 GOTO 11
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2438 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @21 GOTO 36
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @16614
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @16615
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @16621
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @16623
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @16626
  IF ~~ THEN REPLY @2503 DO ~IncrementGlobalOnce("Chaotic_Arundel_1","GLOBAL","Law","GLOBAL",-1)~ GOTO 41
  IF ~~ THEN REPLY @2504 GOTO 41
  IF ~~ THEN REPLY @2505 DO ~SetGlobal("Vale_Quest","GLOBAL",1)
                             AddJournalEntry(@10626,QUEST)~ GOTO 43
END

IF ~~ THEN BEGIN 41
  SAY @16631
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @16632
  IF ~~ THEN REPLY @2505 DO ~SetGlobal("Vale_Quest","GLOBAL",1)
                             AddJournalEntry(@10626,QUEST)~ GOTO 43
  IF ~~ THEN REPLY @2508 DO ~SetGlobal("Vale_Quest","GLOBAL",1)
                             AddJournalEntry(@10626,QUEST)~ GOTO 43
  IF ~~ THEN REPLY @2509 DO ~SetGlobal("Vale_Quest","GLOBAL",1)
                             AddJournalEntry(@16556,QUEST)
                             IncrementGlobalOnce("Evil_Arundel_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @16636
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @16637
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @16638
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @16639
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Vale_Quest","GLOBAL",1)
 Global("ID3000_Visited","GLOBAL",0)~ THEN BEGIN 47
  SAY @2361
  IF ~~ THEN REPLY @2510 GOTO 11
  IF ~~ THEN REPLY @2511 GOTO 25
  IF ~Global("Ghereg_Head","GLOBAL",1)
      Global("SPRITE_IS_DEADGhereg","GLOBAL",0)~ THEN REPLY @2512 GOTO 49
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @1634 GOTO 43
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)
      NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Vale_Quest","GLOBAL",1)
 Global("ID3000_Visited","GLOBAL",1)~ THEN BEGIN 48
  SAY @2362
  IF ~Global("Kress_Quest","GLOBAL",0)~ THEN REPLY @2517 GOTO 47
  IF ~GlobalGT("Kress_Quest","GLOBAL",0)
      GlobalLT("Kress_Quest","GLOBAL",4)~ THEN REPLY @2518 GOTO 52
  IF ~Global("Kress_Quest","GLOBAL",4)~ THEN REPLY @2519 DO ~AddXP2DA("ID1EX4H")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@16727)
                                                             SetGlobal("Vale_Quest","GLOBAL",2)~ GOTO 61
END

IF ~~ THEN BEGIN 49
  SAY @2364
  IF ~~ THEN REPLY @2520 EXIT
  IF ~~ THEN REPLY @2521 GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @2365
  IF ~~ THEN REPLY @2522 DO ~SetGlobal("Ghereg_Head","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @2371
  IF ~~ THEN REPLY @2398 GOTO 3
  IF ~~ THEN REPLY @2399 GOTO 3
END

IF ~~ THEN BEGIN 52
  SAY @2372
  IF ~~ THEN REPLY @2525 GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @2373
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Kress_Quest","GLOBAL",1)~ THEN REPLY @2526 GOTO 54
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("Kress_Quest","GLOBAL",1)~ THEN REPLY @2527 GOTO 55
  IF ~Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      Global("Kress_Quest","GLOBAL",1)~ THEN REPLY @284 GOTO 57
  IF ~Global("Kress_Quest","GLOBAL",2)~ THEN REPLY @2530 GOTO 47
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)
      Global("Kress_Quest","GLOBAL",3)~ THEN REPLY @2531 GOTO 47
  IF ~Alignment(LastTalkedToBy,MASK_GENEUTRAL)
      Global("Kress_Quest","GLOBAL",3)~ THEN REPLY @471 GOTO 47
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Kress_Quest","GLOBAL",3)~ THEN REPLY @2534 GOTO 59
END

IF ~~ THEN BEGIN 54
  SAY @2374
  IF ~~ THEN REPLY @2535 GOTO 47
  IF ~~ THEN REPLY @2536 GOTO 47
END

IF ~~ THEN BEGIN 55
  SAY @16685
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @16686
  IF ~~ THEN REPLY @2535 GOTO 47
  IF ~~ THEN REPLY @2536 GOTO 47
END

IF ~~ THEN BEGIN 57
  SAY @16688
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @16689
  IF ~~ THEN REPLY @2535 GOTO 47
  IF ~~ THEN REPLY @2536 GOTO 47
END

IF ~~ THEN BEGIN 59
  SAY @2377
  IF ~~ THEN REPLY @2541 GOTO 47
  IF ~~ THEN REPLY @2542 GOTO 47
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Temple_Quest","GLOBAL",1)
 Global("ID3600_Visited","GLOBAL",0)~ THEN BEGIN 60
  SAY @2361
  IF ~Global("Ghereg_Head","GLOBAL",1)
      Global("SPRITE_IS_DEADGhereg","GLOBAL",0)~ THEN REPLY @2512 GOTO 49
  IF ~~ THEN REPLY @1634 GOTO 69
  IF ~NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 61
  SAY @6074
  IF ~~ THEN REPLY @6105 GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @6075
  IF ~~ THEN REPLY @6106 GOTO 64
  IF ~~ THEN REPLY @6107 GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY @6076
  IF ~~ THEN REPLY @6108 GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY @6077
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @6078
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @6080
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @6081
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @6082
  IF ~~ THEN REPLY @6109 DO ~SetGlobal("Temple_Quest","GLOBAL",1)
                             AddJournalEntry(@5063,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 69
  SAY @6083
  IF ~~ THEN REPLY @18109 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 Global("Temple_Quest","GLOBAL",1)
 Global("ID3600_Visited","GLOBAL",1)~ THEN BEGIN 70
  SAY @6084
  IF ~Global("Heartstone_Stolen","GLOBAL",0)~ THEN REPLY @2517 GOTO 60
  IF ~Global("Heartstone_Stolen","GLOBAL",1)~ THEN REPLY @6112 DO ~SetGlobal("Temple_Quest","GLOBAL",2)~ GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY @6091
  IF ~PartyHasItem("Poison")~ THEN REPLY @6113 DO ~TakePartyItem("Poison")
                                                   DestroyItem("Poison")
                                                   AddXP2DA("ID1EX5H")
                                                   DisplayStringNoNameDlg(LastTalkedToBy,@16049)~ GOTO 72
  IF ~!PartyHasItem("Poison")~ THEN REPLY @6114 DO ~AddXP2DA("ID1EX5E")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@16049)~ GOTO 76
END

IF ~~ THEN BEGIN 72
  SAY @6092
  IF ~~ THEN REPLY @988 GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY @6093
  IF ~~ THEN REPLY @16715 GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @3208
  IF ~~ THEN REPLY @6118 GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @6095
  IF ~~ THEN REPLY @18109 DO ~SetGlobal("Deye_Quest","GLOBAL",1)
                              AddJournalEntry(@5064,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 76
  SAY @6096
  IF ~~ THEN REPLY @6120 GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY @6097
  IF ~~ THEN REPLY @988 GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY @16721
  IF ~~ THEN REPLY @16715 GOTO 74
END

IF WEIGHT #7
~NumTimesTalkedToGT(0)
 Global("Deye_Quest","GLOBAL",1)~ THEN BEGIN 79
  SAY @2378
  IF ~Global("Ghereg_Head","GLOBAL",1)
      Global("SPRITE_IS_DEADGhereg","GLOBAL",0)~ THEN REPLY @2512 GOTO 49
  IF ~~ THEN REPLY @1634 GOTO 80
  IF ~NumInPartyLT(2)~ THEN REPLY @2439 EXIT
  IF ~NumInPartyGT(1)~ THEN REPLY @2440 EXIT
END

IF ~~ THEN BEGIN 80
  SAY @6100
  IF ~~ THEN REPLY @18109 EXIT
END

IF WEIGHT #1
~GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
 Global("Dying_Arundel","LOCALS",1)~ THEN BEGIN 81
  SAY @17671
  IF ~~ THEN REPLY @17672 GOTO 82
END

IF ~~ THEN BEGIN 82
  SAY @17673
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
  SAY @17674
  IF ~~ THEN REPLY @17675 GOTO 84
END

IF ~~ THEN BEGIN 84
  SAY @17676
  IF ~~ THEN REPLY @17677 GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY @17687
  IF ~~ THEN REPLY @17688 DO ~SetGlobal("Severed_Hand_Reveal","GLOBAL",1)
                              AddJournalEntry(@17689,QUEST)~ GOTO 86
END

IF ~~ THEN BEGIN 86
  SAY @17690
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @17691 EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @17692 DO ~Kill(Myself)~ EXIT
END

IF WEIGHT #0
~GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
 Global("Dying_Arundel","LOCALS",0)~ THEN BEGIN 87
  SAY @16167
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
  SAY @16168
  IF ~~ THEN REPLY @16169 DO ~SetGlobal("Arundel_Belhifet","GLOBAL",1)
                              SetGlobal("Big_Scary_Global","GLOBAL",1)~ GOTO 89
END

IF ~~ THEN BEGIN 89
  SAY @16171
  IF ~~ THEN REPLY @16172 GOTO 90
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @16173 GOTO 94
  IF ~~ THEN REPLY @16174 GOTO 94
END

IF ~~ THEN BEGIN 90
  SAY @16175
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
  SAY @16176
  IF ~~ THEN REPLY @1428 GOTO 94
END

IF ~~ THEN BEGIN 92
  SAY @16184
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
  SAY @16185
  IF ~~ THEN DO ~StartCutSceneMode()
                 Enemy()
                 StartCutScene("kuBelBye")
                 AddJournalEntry(@15471,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 94
  SAY @16186
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95
  SAY @16187
  IF ~~ THEN REPLY @16188 GOTO 92
END
