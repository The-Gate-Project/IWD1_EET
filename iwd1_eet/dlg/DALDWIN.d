BEGIN ~DALDWIN~

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0)~ THEN BEGIN 0
  SAY @23
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2675 GOTO 3
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2675 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2675 GOTO 4
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2675 DO ~StartStore("KUInn2",LastTalkedToBy)~ EXIT
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2675 GOTO 5
  IF ~Global("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2675 DO ~StartStore("KUInn3",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2681 GOTO 3
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2681 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2681 GOTO 4
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2681 DO ~StartStore("KUInn2",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2681 GOTO 5
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)
      Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2681 DO ~StartStore("KUInn3",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Story","GLOBAL",1)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @2687 GOTO 10
  IF ~!Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HALFLING)
      !Race(LastTalkedToBy,GNOME)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @2688 GOTO 6
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFORC)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 GOTO 7
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)~ THEN REPLY @2690 GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)
      PartyHasItem("EidanRng")~ THEN REPLY @2691 GOTO 15
  IF ~~ THEN REPLY @2692 EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("Kuldahar_Attack","GLOBAL",0)~ THEN BEGIN 1
  SAY @2694
  IF ~~ THEN REPLY @2695 GOTO 3
  IF ~Global("Aldwin_Story","GLOBAL",1)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @2687 GOTO 10
  IF ~!Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HALFLING)
      !Race(LastTalkedToBy,GNOME)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 GOTO 6
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFORC)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 GOTO 7
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)~ THEN REPLY @2690 GOTO 9
  IF ~~ THEN REPLY @2700 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Attack","GLOBAL",0)~ THEN BEGIN 2
  SAY @2701
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2702 GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2702 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2704 GOTO 4
  IF ~Global("Aldwin_Eidan","GLOBAL",1)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2704 DO ~StartStore("KUInn2",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",0)~ THEN REPLY @2706 GOTO 5
  IF ~Global("Aldwin_Eidan","GLOBAL",2)
      Global("Aldwin_Explanation","GLOBAL",1)~ THEN REPLY @2702 DO ~StartStore("KUInn3",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Story","GLOBAL",1)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @2687 GOTO 10
  IF ~!Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HALFLING)
      !Race(LastTalkedToBy,GNOME)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 GOTO 6
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFORC)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 GOTO 7
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)~ THEN REPLY @2690 GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)
      PartyHasItem("EidanRng")~ THEN REPLY @2691 GOTO 15
  IF ~~ THEN REPLY @2713 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2714
  IF ~~ THEN REPLY @2715 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)
                             StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Story","GLOBAL",1)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @2687 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 10
  IF ~!Race(LastTalkedToBy,DWARF)
      !Race(LastTalkedToBy,HALFLING)
      !Race(LastTalkedToBy,GNOME)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 6
  IF ~!Race(LastTalkedToBy,HUMAN)
      !Race(LastTalkedToBy,ELF)
      !Race(LastTalkedToBy,HALF_ELF)
      !Race(LastTalkedToBy,HALFORC)
      Global("Aldwin","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 7
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)~ THEN REPLY @2690 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin","GLOBAL",1)
      PartyHasItem("EidanRng")~ THEN REPLY @2691 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @2721 DO ~SetGlobal("Aldwin_Threat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2722
  IF ~~ THEN REPLY @2723 DO ~SetGlobal("Aldwin_Explanation","GLOBAL",1)
                             StartStore("KUInn2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2724 DO ~SetGlobal("Aldwin_Explanation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2725
  IF ~~ THEN REPLY @2726 DO ~SetGlobal("Aldwin_Explanation","GLOBAL",1)
                             StartStore("KUInn3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2727 DO ~SetGlobal("Aldwin_Explanation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @2728
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2695 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                              SetGlobal("Aldwin_Threat","GLOBAL",1)
                                                              StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2730 DO ~SetGlobal("Aldwin","GLOBAL",1)
                             SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 8
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2731 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                              SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2732 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                     SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @2721 DO ~SetGlobal("Aldwin","GLOBAL",1)
                             SetGlobal("Aldwin_Threat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2734
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2695 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                              SetGlobal("Aldwin_Threat","GLOBAL",1)
                                                              StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2736 DO ~SetGlobal("Aldwin","GLOBAL",1)
                             SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 8
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2731 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                              SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2732 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                     SetGlobal("Aldwin_Threat","GLOBAL",1)~ GOTO 15
  IF ~~ THEN REPLY @2721 DO ~SetGlobal("Aldwin","GLOBAL",1)
                             SetGlobal("Aldwin_Threat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2740
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2695 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2731 GOTO 9
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2732 GOTO 15
  IF ~~ THEN REPLY @2744 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2745
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2746 GOTO 15
  IF ~Global("Aldwin_Story","GLOBAL",1)~ THEN REPLY @2747 GOTO 11
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2748 GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2748 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2750 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @2751
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @2747 DO ~SetGlobal("Aldwin","GLOBAL",1)~ GOTO 11
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2753 DO ~SetGlobal("Aldwin","GLOBAL",1)~ GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2753 DO ~SetGlobal("Aldwin","GLOBAL",1)
                                                               StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2750 DO ~SetGlobal("Aldwin","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @2756
  IF ~~ THEN REPLY @2757 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @2758
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2759 GOTO 15
  IF ~~ THEN REPLY @2760 GOTO 13
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2761 GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2761 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2721 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @2764
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      PartyHasItem("EidanRng")~ THEN REPLY @2765 GOTO 15
  IF ~~ THEN REPLY @2766 GOTO 14
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2767 GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2767 DO ~StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2721 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @2770
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      PartyHasItem("EidanRng")~ THEN REPLY @2771 GOTO 15
  IF ~!Class(LastTalkedToBy,PALADIN_ALL)
      PartyHasItem("EidanRng")~ THEN REPLY @2771 GOTO 15
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",0)~ THEN REPLY @2773 DO ~AddJournalEntry(@2077,QUEST)~ GOTO 3
  IF ~Global("Aldwin_Eidan","GLOBAL",0)
      Global("Aldwin_Threat","GLOBAL",1)~ THEN REPLY @2773 DO ~AddJournalEntry(@2077,QUEST)
                                                               StartStore("KUInn1",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2744 DO ~AddJournalEntry(@2077,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @2776
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)
      PartyHasItem("EidanRng")~ THEN REPLY @2777 DO ~IncrementGlobalOnce("Chaotic_Aldwin_1","GLOBAL","Law","GLOBAL",-1)
                                                     IncrementGlobalOnce("Evil_Aldwin_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 16
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      PartyHasItem("EidanRng")~ THEN REPLY @2777 DO ~IncrementGlobalOnce("Chaotic_Aldwin_1","GLOBAL","Law","GLOBAL",-1)
                                                     IncrementGlobalOnce("Evil_Aldwin_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @2780
  IF ~~ THEN REPLY @2781 GOTO 18
  IF ~~ THEN REPLY @2782 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @2783
  IF ~~ THEN REPLY @2781 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @2785
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @2786 DO ~IncrementGlobalOnce("Lawful_Aldwin_2","GLOBAL","Law","GLOBAL",-1)~ GOTO 19
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @2787 DO ~IncrementGlobalOnce("Chaotic_Aldwin_3","GLOBAL","Law","GLOBAL",-1)
                                                                 IncrementGlobalOnce("Evil_Aldwin_3","GLOBAL","Good","GLOBAL",-1)~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @2788
  IF ~~ THEN REPLY @2789 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @2790
  IF ~~ THEN REPLY @2791 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @2792
  IF ~~ THEN REPLY @2793 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @2794
  IF ~~ THEN REPLY @2795 DO ~IncrementGlobalOnce("Lawful_Aldwin_1","GLOBAL","Law","GLOBAL",1)
                             IncrementGlobalOnce("Good_Aldwin_1","GLOBAL","Good","GLOBAL",1)
                             SetGlobal("Aldwin_Eidan","GLOBAL",2)~ GOTO 24
  IF ~~ THEN REPLY @2798 DO ~IncrementGlobalOnce("Chaotic_Aldwin_2","GLOBAL","Law","GLOBAL",-1)
                             IncrementGlobalOnce("Evil_Aldwin_2","GLOBAL","Good","GLOBAL",-1)
                             SetGlobal("Aldwin_Eidan","GLOBAL",1)
                             AddXP2DA("ID1EX3E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6307)
                             EraseJournalEntry(@2073)
                             EraseJournalEntry(@2057)
                             EraseJournalEntry(@2077)
                             AddJournalEntry(@1827,QUEST_DONE)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @2800
  IF ~~ THEN REPLY @2801 DO ~StartStore("KUInn2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2803 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @2804
  IF ~~ THEN REPLY @2805 GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @2807
  IF ~~ THEN REPLY @2808 DO ~AddXP2DA("ID1EX3E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6308)
                             EraseJournalEntry(@2073)
                             EraseJournalEntry(@2057)
                             EraseJournalEntry(@2077)
                             AddJournalEntry(@2025,QUEST_DONE)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @2809
  IF ~~ THEN REPLY @2810 DO ~StartStore("KUInn3",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @2811 EXIT
END
