BEGIN ~DHJOLLDE~

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("Know_Hjollder","GLOBAL",0)~ THEN BEGIN 0
  SAY @22579
  IF ~~ THEN REPLY @22580 DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @11452 DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @22582 DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 17
END

IF ~~ THEN BEGIN 1
  SAY @22583
  IF ~~ THEN REPLY @22586 GOTO 2
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22589 GOTO 2
  IF ~Global("Join_Posse","GLOBAL",0)~ THEN REPLY @22590 GOTO 2
  IF ~~ THEN REPLY @22591 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @22592
  IF ~~ THEN REPLY @1355 GOTO 3
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22594 GOTO 8
  IF ~~ THEN REPLY @22595 GOTO 17
END

IF ~~ THEN BEGIN 3
  SAY @22596
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @22597
  IF ~~ THEN REPLY @22598 GOTO 5
  IF ~~ THEN REPLY @22599 DO ~SetGlobal("Know_Wylf","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @22600 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @22601
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @22602
  IF ~~ THEN REPLY @22603 GOTO 7
  IF ~Global("Know_Wylf","GLOBAL",1)~ THEN REPLY @22604 GOTO 9
  IF ~Global("Know_Wylf","GLOBAL",0)~ THEN REPLY @22604 DO ~SetGlobal("Know_Wylf","GLOBAL",1)~ GOTO 9
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22606 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22607
  IF ~Global("Join_Posse","GLOBAL",0)~ THEN REPLY @22629 DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
                                                             AddJournalEntry(@26302,QUEST)~ GOTO 18
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      XPGT(Player1,35999)~ THEN REPLY @22629 DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
                                                 AddJournalEntry(@25836,QUEST)~ GOTO 21
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      XPLT(Player1,36000)~ THEN REPLY @22629 DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)~ GOTO 83
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      Global("Hjollder_Quest","GLOBAL",0)~ THEN REPLY @8648 DO ~SetGlobal("Hjollder_Quest","GLOBAL",1)~ EXIT
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      Global("Hjollder_Quest","GLOBAL",1)~ THEN REPLY @8648 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22642
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 9
  SAY @22643
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @22646
  IF ~~ THEN REPLY @22648 GOTO 11
  IF ~~ THEN REPLY @22650 GOTO 5
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22651 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22652
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @22653
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      GlobalGT("Jered_Stone","GLOBAL",0)~ THEN REPLY @22654 GOTO 13
  IF ~GlobalGT("Join_Posse","GLOBAL",0)
      Global("Jered_Stone","GLOBAL",0)~ THEN REPLY @22656 GOTO 14
  IF ~Global("Join_Posse","GLOBAL",0)~ THEN REPLY @22658 GOTO 13
  IF ~~ THEN REPLY @22659 GOTO 5
END

IF ~~ THEN BEGIN 13
  SAY @22661
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @22662
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @22663
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22664
  IF ~~ THEN REPLY @22603 GOTO 7
  IF ~~ THEN REPLY @22667 GOTO 5
  IF ~~ THEN REPLY @22668 GOTO 5
END

IF ~~ THEN BEGIN 17
  SAY @22669
  IF ~~ THEN REPLY @22670 GOTO 3
  IF ~~ THEN REPLY @22671 GOTO 3
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @8648 DO ~AddJournalEntry(@25837,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22673
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @22674
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @22675
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",4)
                 AddJournalEntry(@26298,QUEST)
                 StartCutSceneMode()
                 StartCutScene("HJescape")~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @22676
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @22677
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @22678
  IF ~~ THEN REPLY @22679 DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
                              StartCutSceneMode()
                              StartCutScene("KUtoLW")~ EXIT
  IF ~~ THEN REPLY @22680 DO ~SetGlobal("Hjollder_Delay","GLOBAL",1)~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @22681
  IF ~~ THEN REPLY @288 EXIT
END

IF WEIGHT #3
~GlobalLT("Hjollder_Quest","GLOBAL",3)~ THEN BEGIN 25
  SAY @22682
  IF ~Global("Hjollder_Quest","GLOBAL",0)~ THEN REPLY @22683 GOTO 2
  IF ~Global("Hjollder_Quest","GLOBAL",1)~ THEN REPLY @22684 GOTO 7
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",2)~ THEN REPLY @22685 EXIT
  IF ~Global("Hjollder_Delay","GLOBAL",1)
      Global("Hjollder_Quest","GLOBAL",2)
      XPGT(Player1,35999)~ THEN REPLY @22686 DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
                                                 StartCutSceneMode()
                                                 StartCutScene("KUtoLW")~ EXIT
  IF ~Global("Hjollder_Quest","GLOBAL",2)
      XPLT(Player1,36000)~ THEN REPLY @22686 GOTO 83
  IF ~Global("Hjollder_Delay","GLOBAL",0)
      Global("Hjollder_Quest","GLOBAL",2)
      XPGT(Player1,35999)~ THEN REPLY @22686 GOTO 21
  IF ~Global("Hjollder_Quest","GLOBAL",2)~ THEN REPLY @22688 GOTO 24
END

IF WEIGHT #4
~Global("Hjollder_Quest","GLOBAL",3)~ THEN BEGIN 26
  SAY @22689
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @22690
  IF ~~ THEN REPLY @22691 GOTO 18
END

IF ~~ THEN BEGIN 28
  SAY @22692
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @22693
  IF ~~ THEN EXTERN ~DWYLF~ 41
END

IF ~~ THEN BEGIN 30
  SAY @22696
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @22697
  IF ~~ THEN EXTERN ~DWYLF~ 42
END

IF ~~ THEN BEGIN 32
  SAY @22698
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",1)~ EXTERN ~DWYLF~ 43
END

IF WEIGHT #5
~Global("Hjollder_Quest","GLOBAL",4)~ THEN BEGIN 33
  SAY @22699
  IF ~~ THEN REPLY @22700 DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
                              SetGlobal("Body_Count","GLOBAL",2)
                              AddXP2DA("ID1EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@26308)~ GOTO 34
  IF ~~ THEN REPLY @6159 DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
                             SetGlobal("Body_Count","GLOBAL",2)
                             AddXP2DA("ID1EX12A")
                             DisplayStringNoNameDlg(LastTalkedToBy,@26308)~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @22702
  IF ~~ THEN REPLY @22703 GOTO 35
  IF ~~ THEN REPLY @22704 GOTO 42
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22705 GOTO 43
END

IF ~~ THEN BEGIN 35
  SAY @22706
  IF ~~ THEN REPLY @22707 GOTO 36
  IF ~~ THEN REPLY @22708 GOTO 36
  IF ~~ THEN REPLY @22709 EXIT
END

IF ~~ THEN BEGIN 36
  SAY @22739
  IF ~Global("Know_Soul","GLOBAL",1)~ THEN REPLY @22740 GOTO 37
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22741 GOTO 45
  IF ~Global("Know_Soul","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22742 GOTO 44
  IF ~~ THEN REPLY @22709 EXIT
END

IF ~~ THEN BEGIN 37
  SAY @22744
  IF ~~ THEN REPLY @22747 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @22748
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @22749
  IF ~~ THEN REPLY @22750 GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @22751
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @22752
  IF ~PartyHasItem("wylfins")~ THEN REPLY @22753 DO ~TakePartyItem("wylfins")
                                                     DestroyItem("wylfins")
                                                     SetGlobal("Hjollder_Quest","GLOBAL",7)
                                                     AddXP2DA("ID1EX12H")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@26309)
                                                     AddJournalEntry(@26299,QUEST)~ GOTO 48
  IF ~!PartyHasItem("wylfins")~ THEN REPLY @22754 DO ~SetGlobal("Hjollder_Quest","GLOBAL",6)
                                                      AddJournalEntry(@26300,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @22755
  IF ~~ THEN REPLY @22707 GOTO 36
  IF ~~ THEN REPLY @22708 GOTO 36
  IF ~~ THEN REPLY @22709 EXIT
END

IF ~~ THEN BEGIN 43
  SAY @22759
  IF ~~ THEN REPLY @22707 GOTO 36
  IF ~~ THEN REPLY @22708 GOTO 36
  IF ~~ THEN REPLY @22709 EXIT
END

IF ~~ THEN BEGIN 44
  SAY @22763
  IF ~~ THEN REPLY @22770 DO ~AddJournalEntry(@26295,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @22771
  IF ~~ THEN REPLY @22750 GOTO 40
END

IF WEIGHT #6
~Global("Hjollder_Quest","GLOBAL",5)~ THEN BEGIN 46
  SAY @22773
  IF ~Global("Know_Soul","GLOBAL",1)~ THEN REPLY @22774 GOTO 37
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22741 GOTO 45
  IF ~Global("Know_Soul","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @22742 GOTO 44
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22793 GOTO 43
  IF ~~ THEN REPLY @22709 EXIT
END

IF WEIGHT #7
~Global("Hjollder_Quest","GLOBAL",6)~ THEN BEGIN 47
  SAY @22795
  IF ~PartyHasItem("wylfins")~ THEN REPLY @22796 DO ~TakePartyItem("wylfins")
                                                     DestroyItem("wylfins")
                                                     SetGlobal("Hjollder_Quest","GLOBAL",7)
                                                     AddXP2DA("ID1EX12H")
                                                     DisplayStringNoNameDlg(LastTalkedToBy,@26309)
                                                     AddJournalEntry(@26299,QUEST)~ GOTO 48
  IF ~!PartyHasItem("wylfins")~ THEN REPLY @22797 EXIT
END

IF ~~ THEN BEGIN 48
  SAY @22798
  IF ~~ THEN REPLY @8694 GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @22799
  IF ~~ THEN REPLY @22800 GOTO 50
  IF ~~ THEN REPLY @22801 GOTO 51
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22802 GOTO 60
END

IF ~~ THEN BEGIN 50
  SAY @22803
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @22804
  IF ~~ THEN REPLY @22805 GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @22806
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",8)~ GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @22807
  IF ~~ THEN REPLY @22808 GOTO 54
  IF ~~ THEN REPLY @22809 GOTO 55
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22810 DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
                                                               RevealAreaOnMap("ID9500")~ GOTO 60
  IF ~~ THEN REPLY @22811 DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
                              RevealAreaOnMap("ID9500")~ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @22812
  IF ~~ THEN REPLY @22813 GOTO 55
  IF ~~ THEN REPLY @22814 GOTO 55
  IF ~~ THEN REPLY @22811 EXIT
END

IF ~~ THEN BEGIN 55
  SAY @22816
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @22817
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
  SAY @22818
  IF ~~ THEN REPLY @22819 GOTO 58
  IF ~~ THEN REPLY @22811 EXIT
END

IF ~~ THEN BEGIN 58
  SAY @22821
  IF ~~ THEN REPLY @22822 DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
                              RevealAreaOnMap("ID9500")
                              SetGlobal("Hjollder_Quest","GLOBAL",9)
                              //StartCutSceneMode()
                              //StartCutScene("HJescape")
                              AddJournalEntry(@26321,QUEST)~ GOTO 59
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22810 DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
                                                               RevealAreaOnMap("ID9500")~ GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY @22824
  IF ~~ THEN REPLY @288 DO ~AddJournalEntry(@26329,QUEST)
                            StartCutSceneMode()
                              StartCutScene("HJescape")~ EXIT
END

IF ~~ THEN BEGIN 60
  SAY @22825
  IF ~!Global("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @8242 DO ~SetGlobal("Exp_Pause","GLOBAL",1)
                                                                  StartCutSceneMode()
                                                                  StartCutScene("BItoKU")~ EXIT
  IF ~Global("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @8242 DO ~SetGlobal("Exp_Pause","GLOBAL",1)
                                                                 StartCutSceneMode()
                                                                 StartCutScene("BCtoKU")~ EXIT
END

IF WEIGHT #1
~Global("Exp_Pause","GLOBAL",1)~ THEN BEGIN 61
  SAY @22827
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22828 DO ~SetGlobal("Exp_Pause","GLOBAL",0)
                                                                    StartCutSceneMode()
                                                                    StartCutScene("KUtoBI")~ EXIT
  IF ~GlobalGT("Hjollder_Quest","GLOBAL",10)~ THEN REPLY @22828 DO ~SetGlobal("Exp_Pause","GLOBAL",0)
                                                                    StartCutSceneMode()
                                                                    StartCutScene("KUtoBC")~ EXIT
  IF ~~ THEN REPLY @22836 DO ~SetGlobal("Exp_Pause","GLOBAL",2)~ EXIT
END

IF WEIGHT #2
~Global("Exp_Pause","GLOBAL",2)~ THEN BEGIN 62
  SAY @22837
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22848 DO ~SetGlobal("Exp_Pause","GLOBAL",0)
                                                                    StartCutSceneMode()
                                                                    StartCutScene("KUtoBI")~ EXIT
  IF ~GlobalGT("Hjollder_Quest","GLOBAL",10)~ THEN REPLY @22848 DO ~SetGlobal("Exp_Pause","GLOBAL",0)
                                                                    StartCutSceneMode()
                                                                    StartCutScene("KUtoBC")~ EXIT
  IF ~~ THEN REPLY @22850 EXIT
END

IF WEIGHT #8
~GlobalGT("Hjollder_Quest","GLOBAL",6)
 GlobalLT("Hjollder_Quest","GLOBAL",9)~ THEN BEGIN 63
  SAY @22855
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @22856 GOTO 51
  IF ~Global("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @22857 GOTO 53
  IF ~Global("Hjollder_Quest","GLOBAL",8)~ THEN REPLY @22858 GOTO 58
  IF ~~ THEN REPLY @22811 EXIT
END

IF WEIGHT #9
~Global("Hjollder_Quest","GLOBAL",9)~ THEN BEGIN 64
  SAY @22860
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @22863
  IF ~Global("Found_Seer","GLOBAL",0)~ THEN REPLY @22864 GOTO 66
  IF ~Global("Found_Seer","GLOBAL",1)
      !PartyHasItem("mirror")
      !PartyHasItem("mirror2")~ THEN REPLY @22865 GOTO 67
  IF ~Global("Found_Seer","GLOBAL",1)
      PartyHasItem("mirror")~ THEN REPLY @22866 GOTO 68
  IF ~Global("Found_Seer","GLOBAL",1)
      PartyHasItem("mirror2")~ THEN REPLY @22866 GOTO 68
END

IF ~~ THEN BEGIN 66
  SAY @22867
  IF ~~ THEN REPLY @22868 EXIT
END

IF ~~ THEN BEGIN 67
  SAY @22869
  IF ~~ THEN REPLY @22870 EXIT
END

IF ~~ THEN BEGIN 68
  SAY @22871
  IF ~~ THEN REPLY @22872 GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @22873
  IF ~~ THEN REPLY @22874 DO ~GiveItemCreate("Wylfins",LastTalkedToBy,1,0,0)
                              SetGlobal("Hjollder_Quest","GLOBAL",10)
                              AddJournalEntry(@26333,QUEST)~ EXIT
END

IF WEIGHT #10
~Global("Hjollder_Quest","GLOBAL",10)~ THEN BEGIN 70
  SAY @22875
  IF ~~ THEN REPLY @22876 GOTO 71
  IF ~~ THEN REPLY @22877 EXIT
END

IF ~~ THEN BEGIN 71
  SAY @22878
  IF ~~ THEN REPLY @22879 EXIT
END

IF WEIGHT #12
~Global("Hjollder_Quest","GLOBAL",11)~ THEN BEGIN 72
  SAY @22880
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",4)~ GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY @22882
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
  SAY @22883
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY @22884
  IF ~~ THEN REPLY @22885 DO ~SetGlobal("Hjollder_Quest","GLOBAL",12)~ GOTO 76
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22886 GOTO 60
END

IF ~~ THEN BEGIN 76
  SAY @22887
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY @22888
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 78
  SAY @22889
  IF ~~ THEN REPLY @22890 GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY @22891
  IF ~~ THEN REPLY @22892 GOTO 80
  IF ~~ THEN REPLY @22893 GOTO 81
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22811 GOTO 60
END

IF ~~ THEN BEGIN 80
  SAY @22895
  IF ~~ THEN REPLY @22896 DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
                              AddJournalEntry(@26331,QUEST)
                              StartCutSceneMode()
                              StartCutScene("BCtoIL")~ EXIT
END

IF ~~ THEN BEGIN 81
  SAY @22897
  IF ~GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY @22810 GOTO 60
  IF ~~ THEN REPLY @18109 EXIT
END

IF WEIGHT #13
~Global("Hjollder_Quest","GLOBAL",12)~ THEN BEGIN 82
  SAY @22899
  IF ~~ THEN REPLY @22900 DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
                              AddJournalEntry(@26331,QUEST)
                              StartCutSceneMode()
                              StartCutScene("BCtoIL")~ EXIT
  IF ~~ THEN REPLY @22901 GOTO 81
END

IF ~~ THEN BEGIN 83
  SAY @22905
  IF ~~ THEN REPLY @6159 DO ~AddJournalEntry(@26297,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 84
  SAY @22906
  IF ~~ THEN GOTO 78
END

IF WEIGHT #11
~Global("Hjollder_Quest","GLOBAL",11)
 Global("BC_Battle_Over","GLOBAL",0)~ THEN BEGIN 85
  SAY @22895
  IF ~~ THEN EXIT
END
