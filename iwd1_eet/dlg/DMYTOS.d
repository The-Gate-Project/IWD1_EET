BEGIN ~DMYTOS~

IF ~NumTimesTalkedTo(0)
    Global("M_Done","GLOBAL",0)~ THEN BEGIN 0
  SAY @2547
  IF ~~ THEN REPLY @2548 GOTO 2
  IF ~~ THEN REPLY @2549 GOTO 14
  IF ~~ THEN REPLY @2550 GOTO 24
END

IF ~NumTimesTalkedToGT(0)
    Global("M_Done","GLOBAL",0)~ THEN BEGIN 1
  SAY @2551
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~~ THEN REPLY @1598 GOTO 14
  IF ~~ THEN REPLY @2550 GOTO 24
END

IF ~~ THEN BEGIN 2
  SAY @2555
  IF ~~ THEN REPLY @2556 GOTO 3
  IF ~~ THEN REPLY @2557 GOTO 13
  IF ~~ THEN REPLY @1623 GOTO 14
  IF ~~ THEN REPLY @607 GOTO 24
END

IF ~~ THEN BEGIN 3
  SAY @2560
  IF ~~ THEN REPLY @2561 GOTO 4
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @2562 GOTO 12
  IF ~Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @2562 GOTO 12
  IF ~~ THEN REPLY @2564 GOTO 11
  IF ~~ THEN REPLY @2565 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 4
  SAY @2567
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @2568 GOTO 5
  IF ~Class(LastTalkedToBy,PALADIN_ALL)~ THEN REPLY @2568 GOTO 5
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @2568 GOTO 5
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @2571 GOTO 26
  IF ~~ THEN REPLY @2564 GOTO 11
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 5
  SAY @2576
  IF ~~ THEN REPLY @2577 GOTO 6
  IF ~~ THEN REPLY @2578 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 6
  SAY @2580
  IF ~~ THEN REPLY @2581 GOTO 7
  IF ~~ THEN REPLY @2578 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 7
  SAY @2584
  IF ~~ THEN REPLY @2585 GOTO 8
  IF ~Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2586 DO ~AddXP2DA("ID1EX3E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7923)
                                                                  SetGlobal("CDMytosDiplomacy","MYAREA",1)~ GOTO 9
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2587 DO ~AddXP2DA("ID1EX3E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7923)
                                                                  SetGlobal("CDMytosDiplomacy","MYAREA",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2588 DO ~AddXP2DA("ID1EX3E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7923)
                                                                  SetGlobal("CDMytosDiplomacy","MYAREA",1)~ GOTO 10
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2589 DO ~AddXP2DA("ID1EX3E")
                                                                  DisplayStringNoNameDlg(LastTalkedToBy,@7923)
                                                                  SetGlobal("CDMytosDiplomacy","MYAREA",1)~ GOTO 10
  IF ~!Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2586 GOTO 9
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      !Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2587 GOTO 10
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)
      !Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2588 GOTO 10
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      !Global("CDMytosDiplomacy","MYAREA",0)~ THEN REPLY @2589 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @2590
  IF ~~ THEN REPLY @2591 DO ~Enemy()
                             SetGlobal("M_Done","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2592
  IF ~~ THEN REPLY @2593 GOTO 2
  IF ~~ THEN REPLY @2594 GOTO 24
END

IF ~~ THEN BEGIN 10
  SAY @34
  IF ~~ THEN REPLY @162 GOTO 24
END

IF ~~ THEN BEGIN 11
  SAY @2598
  IF ~~ THEN REPLY @2599 GOTO 12
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 12
  SAY @2603
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 13
  SAY @2606
  IF ~~ THEN REPLY @2607 GOTO 2
  IF ~~ THEN REPLY @2566 GOTO 24
END

IF ~~ THEN BEGIN 14
  SAY @2609
  IF ~~ THEN REPLY @2610 GOTO 15
  IF ~~ THEN REPLY @2611 GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY @2612
  IF ~~ THEN REPLY @2613 GOTO 16
  IF ~~ THEN REPLY @2614 GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY @2615
  IF ~~ THEN REPLY @2616 GOTO 17
  IF ~~ THEN REPLY @2617 GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY @2618
  IF ~~ THEN REPLY @2620 GOTO 18
  IF ~~ THEN REPLY @2617 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @2622
  IF ~~ THEN REPLY @2623 GOTO 19
  IF ~~ THEN REPLY @2625 GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @2626
  IF ~~ THEN REPLY @2625 GOTO 20
  IF ~~ THEN REPLY @2629 GOTO 23
END

IF ~~ THEN BEGIN 20
  SAY @2630
  IF ~~ THEN REPLY @2631 GOTO 21
  IF ~~ THEN REPLY @2632 DO ~AddXP2DA("ID1EX3E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@7928)~ GOTO 25
END

IF ~~ THEN BEGIN 21
  SAY @2633
  IF ~~ THEN REPLY @1582 DO ~Enemy()
                             SetGlobal("M_Done","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @2635
  IF ~~ THEN REPLY @2636 GOTO 15
END

IF ~~ THEN BEGIN 23
  SAY @2637
  IF ~~ THEN REPLY @2638 GOTO 20
END

IF ~~ THEN BEGIN 24
  SAY @2639
  IF ~~ THEN REPLY @2640 GOTO 21
  IF ~~ THEN REPLY @2641 GOTO 20
END

IF ~~ THEN BEGIN 25
  SAY @2642
  IF ~~ THEN REPLY @2643 DO ~Enemy()
                             SetGlobal("M_Done","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @2644
  IF ~~ THEN REPLY @2645 GOTO 8
  IF ~~ THEN REPLY @2646 GOTO 9
END
