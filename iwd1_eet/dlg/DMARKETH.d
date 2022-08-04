BEGIN ~DMARKETH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7950
  IF ~~ THEN REPLY @10838 DO ~AddJournalEntry(@34249,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @10839 DO ~AddJournalEntry(@34249,QUEST)~ GOTO 1
  IF ~Global("Ginafae_Describe","GLOBAL",1)~ THEN REPLY @10840 DO ~AddJournalEntry(@34249,QUEST)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @10842
  IF ~~ THEN REPLY @10843 GOTO 3
  IF ~~ THEN REPLY @10844 GOTO 4
  IF ~Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY @10845 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @10846
  IF ~Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY @10848 GOTO 4
  IF ~~ THEN REPLY @10852 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @10853
  IF ~~ THEN REPLY @10854 GOTO 6
  IF ~~ THEN REPLY @10855 GOTO 7
  IF ~~ THEN REPLY @10857 GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @10858
  IF ~~ THEN REPLY @10859 GOTO 9
  IF ~~ THEN REPLY @10860 GOTO 10
END

IF ~~ THEN BEGIN 5
  SAY @10865
  IF ~~ THEN REPLY @10866 GOTO 12
  IF ~~ THEN REPLY @10867 GOTO 13
  IF ~~ THEN REPLY @10868 GOTO 14
END

IF ~~ THEN BEGIN 6
  SAY @10869
  IF ~~ THEN REPLY @10870 GOTO 17
  IF ~~ THEN REPLY @10873 GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY @10883
  IF ~~ THEN REPLY @10885 GOTO 17
  IF ~~ THEN REPLY @10886 GOTO 16
  IF ~~ THEN REPLY @10887 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @10890
  IF ~~ THEN REPLY @18857 GOTO 21
END

IF ~~ THEN BEGIN 9
  SAY @10891
  IF ~~ THEN REPLY @18858 GOTO 21
END

IF ~~ THEN BEGIN 10
  SAY @10892
  IF ~~ THEN REPLY @18859 GOTO 21
END

IF ~~ THEN BEGIN 11
  SAY @10893
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @10894
  IF ~~ THEN REPLY @10863 GOTO 21
END

IF ~~ THEN BEGIN 13
  SAY @10895
  IF ~~ THEN REPLY @18860 GOTO 21
END

IF ~~ THEN BEGIN 14
  SAY @10899
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @10900
  IF ~~ THEN REPLY @10902 GOTO 16
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @10903 GOTO 17
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @10906 GOTO 18
  IF ~~ THEN REPLY @10907 GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY @10908
  IF ~~ THEN REPLY @18861 GOTO 21
END

IF ~~ THEN BEGIN 17
  SAY @10909
  IF ~~ THEN REPLY @18862 GOTO 21
END

IF ~~ THEN BEGIN 18
  SAY @10910
  IF ~~ THEN REPLY @18863 GOTO 21
END

IF ~~ THEN BEGIN 19
  SAY @10911
  IF ~~ THEN REPLY @18864 GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @10912
  IF ~~ THEN REPLY @10913 GOTO 21
  IF ~~ THEN REPLY @10924 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @10927
  IF ~Global("Ginafae_Promise","GLOBAL",1)~ THEN REPLY @10948 DO ~GiveItem("Marketh",LastTalkedToBy)
                                                                  SetGlobal("Marketh_Gone","GLOBAL",1)
                                                                  EscapeArea()~ GOTO 23
  IF ~CheckStatGT(LastTalkedToBy,13,INT)~ THEN REPLY @18869 DO ~GiveItem("Marketh",LastTalkedToBy)
                                                                GiveItem("dragarm",LastTalkedToBy)
                                                                GiveItem("valiant",LastTalkedToBy)~ GOTO 26
  IF ~!Global("Ginafae_Promise","GLOBAL",1)~ THEN REPLY @18870 DO ~GiveItem("Marketh",LastTalkedToBy)
                                                                   SetGlobal("Marketh_Gone","GLOBAL",1)
                                                                   EscapeArea()~ GOTO 25
  IF ~~ THEN REPLY @18871 DO ~Enemy()~ GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY @10965
  IF ~~ THEN REPLY @10977 GOTO 21
  IF ~~ THEN REPLY @10978 GOTO 21
END

IF ~~ THEN BEGIN 23
  SAY @10979
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @10980
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @10964
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @18865
  IF ~~ THEN REPLY @18867 DO ~GiveItem("gorgon",LastTalkedToBy)
                              TakePartyGold(500)
                              SetGlobal("Marketh_Gone","GLOBAL",1)
                              EscapeArea()~ GOTO 27
  IF ~~ THEN REPLY @18868 DO ~SetGlobal("Marketh_Gone","GLOBAL",1)
                              EscapeArea()~ GOTO 25
END

IF ~~ THEN BEGIN 27
  SAY @18866
  IF ~~ THEN EXIT
END
