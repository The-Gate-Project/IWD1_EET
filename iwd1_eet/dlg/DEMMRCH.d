BEGIN ~DEMMRCH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @25839
  IF ~Global("Know_Emmerich","GLOBAL",1)~ THEN REPLY @25898 GOTO 1
  IF ~Global("Know_Emmerich","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @25900 GOTO 3
  IF ~~ THEN REPLY @8807 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @25840
  IF ~~ THEN REPLY @25902 GOTO 2
  IF ~~ THEN REPLY @25900 GOTO 3
  IF ~~ THEN REPLY @25906 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @25907 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @25841
  IF ~~ THEN REPLY @25908 GOTO 3
  IF ~~ THEN REPLY @25909 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18109 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @25842
  IF ~Global("Werewolf_Encounter","GLOBAL",1)
      GlobalLT("Emmerich_Quest","GLOBAL",2)~ THEN REPLY @26009 DO ~SetGlobal("Werewolf_Encounter","GLOBAL",2)~ GOTO 29
  IF ~Global("Know_Doogal_Story","GLOBAL",1)
      GlobalLT("Emmerich_Quest","GLOBAL",2)~ THEN REPLY @26011 DO ~SetGlobal("Know_Doogal_Story","GLOBAL",2)
                                                                   SetGlobal("Emmerich_Quest","GLOBAL",1)~ GOTO 26
  IF ~Global("Know_Emmerich","GLOBAL",0)~ THEN REPLY @1428 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 4
  IF ~Global("Body_Count","GLOBAL",1)
      Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @25916 GOTO 21
  IF ~GlobalGT("Body_Count","GLOBAL",1)
      GlobalLT("Emmerich_Quest","GLOBAL",2)
      Global("Know_Dolan_Dead","GLOBAL",1)~ THEN REPLY @25559 GOTO 23
  IF ~Global("Know_Wolf","GLOBAL",1)~ THEN REPLY @25918 GOTO 11
  IF ~GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY @22304 GOTO 17
  IF ~~ THEN REPLY @25705 GOTO 19
  IF ~~ THEN REPLY @25923 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @25843
  IF ~~ THEN REPLY @25925 GOTO 7
  IF ~~ THEN REPLY @286 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @25844
  IF ~!Class(LastTalkedToBy,RANGER_ALL)
      OR(2)
        !Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @482 GOTO 8
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @25956 GOTO 16
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @25957 GOTO 16
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @6447 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @25845
  IF ~~ THEN REPLY @25964 GOTO 5
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @6447 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @25846
  IF ~~ THEN REPLY @25967 GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY @25847
  IF ~~ THEN REPLY @478 GOTO 9
  IF ~~ THEN REPLY @476 GOTO 10
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @6447 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25848
  IF ~~ THEN REPLY @476 DO ~AddJournalEntry(@25429,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @15022 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @25849
  IF ~~ THEN REPLY @25975 DO ~SetGlobal("Know_Wolf","GLOBAL",1)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @25850
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @25851
  IF ~~ THEN REPLY @8578 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @25852
  IF ~~ THEN REPLY @25977 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @25853
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @25854
  IF ~Global("Body_Count","GLOBAL",1)
      Global("Know_Digby_Dead","GLOBAL",1)~ THEN REPLY @483 DO ~SetGlobal("Emmerich_Quest","GLOBAL",1)
                                                                AddJournalEntry(@25431,QUEST)~ GOTO 22
  IF ~GlobalGT("Body_Count","GLOBAL",1)
      Global("Know_Dolan_Dead","GLOBAL",1)~ THEN REPLY @506 DO ~SetGlobal("Emmerich_Quest","GLOBAL",1)
                                                                AddJournalEntry(@25838,QUEST)~ GOTO 24
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @15022 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @25855
  IF ~~ THEN REPLY @478 GOTO 9
  IF ~~ THEN REPLY @476 GOTO 10
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @6447 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @25856
  IF ~~ THEN REPLY @25711 DO ~RevealAreaOnMap("ID9200")
                              AddJournalEntry(@25430,QUEST)~ GOTO 18
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @25857
  IF ~~ THEN REPLY @2601 DO ~SetGlobal("ID9200_Visited","GLOBAL", 1)~ GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @25858
  IF ~~ THEN REPLY @482 GOTO 8
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Emmerich_Quest","GLOBAL",0)~ THEN BEGIN 20
  SAY @25859
  IF ~~ THEN REPLY @25908 GOTO 3
  IF ~~ THEN REPLY @512 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8807 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @25860
  IF ~Global("Know_Wolf","GLOBAL",0)~ THEN REPLY @11452 DO ~SetGlobal("Know_Wolf","GLOBAL",1)~ GOTO 11
  IF ~Global("Know_Wolf","GLOBAL",1)~ THEN REPLY @483 DO ~SetGlobal("Emmerich_Quest","GLOBAL",1)
                                                          AddJournalEntry(@25431,QUEST)~ GOTO 22
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @25861
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @25862
  IF ~Global("Know_Wolf","GLOBAL",0)~ THEN REPLY @11452 DO ~SetGlobal("Know_Wolf","GLOBAL",1)~ GOTO 11
  IF ~Global("Know_Wolf","GLOBAL",1)~ THEN REPLY @506 DO ~SetGlobal("Emmerich_Quest","GLOBAL",1)
                                                          AddJournalEntry(@25838,QUEST)~ GOTO 24
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @25863
  IF ~Global("Know_Doogal_Story","GLOBAL",1)~ THEN REPLY @26011 DO ~SetGlobal("Know_Doogal_Story","GLOBAL",2)~ GOTO 26
  IF ~~ THEN REPLY @2601 GOTO 3
  IF ~~ THEN REPLY @265 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Emmerich_Quest","GLOBAL",1)~ THEN BEGIN 25
  SAY @25864
  IF ~Global("Werewolf_Encounter","GLOBAL",1)~ THEN REPLY @26009 DO ~SetGlobal("Werewolf_Encounter","GLOBAL",2)~ GOTO 29
  IF ~Global("Know_Werewolf","GLOBAL",1)~ THEN REPLY @26010 GOTO 29
  IF ~Global("Know_Doogal_Story","GLOBAL",1)~ THEN REPLY @26011 DO ~SetGlobal("Know_Doogal_Story","GLOBAL",2)~ GOTO 26
  IF ~~ THEN REPLY @26012 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26013 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @25865
  IF ~GlobalLT("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26014 DO ~SetGlobal("Know_Mirror_Door","GLOBAL",1)
                                                                     SetGlobal("Know_Doogal_Weapon","GLOBAL",1)~ GOTO 27
  IF ~Global("Know_Mirror_Door","GLOBAL",2)~ THEN REPLY @26015 DO ~SetGlobal("Know_Doogal_Weapon","GLOBAL",1)~ GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @25882
  IF ~~ THEN REPLY @509 DO ~AddJournalEntry(@25829,QUEST)
                            StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @510 DO ~AddJournalEntry(@25829,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @25883
  IF ~~ THEN REPLY @509 DO ~AddJournalEntry(@25830,QUEST)
                            StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @510 DO ~AddJournalEntry(@25830,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @25886
  IF ~~ THEN REPLY @26020 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @25887
  IF ~~ THEN REPLY @26021 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @25888
  IF ~~ THEN DO ~SetGlobal("Emmerich_Quest","GLOBAL",2)
                 AddXP2DA("ID1EX12H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@24884)~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @25891
  IF ~~ THEN REPLY @26022 DO ~AddJournalEntry(@25834,QUEST)~ GOTO 33
  IF ~~ THEN REPLY @26023 DO ~AddJournalEntry(@25831,QUEST)
                              Enemy()
                              Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26024 DO ~AddJournalEntry(@25832,QUEST)
                              Enemy()
                              Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @26025 DO ~AddJournalEntry(@25833,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @25893
  IF ~~ THEN REPLY @26026 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Emmerich_Quest","GLOBAL",2)~ THEN BEGIN 34
  SAY @25895
  IF ~PartyHasItem("wereamul")~ THEN REPLY @26027 DO ~TakePartyItem("wereamul")~ GOTO 35
  IF ~!PartyHasItem("wereamul")~ THEN REPLY @26026 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @25896
  IF ~~ THEN REPLY @26028 DO ~SetGlobal("Emmerich_Quest","GLOBAL",3)
                              AddXP2DA("ID1EX12H")
                              DisplayStringNoNameDlg(LastTalkedToBy,@24885)
                              EraseJournalEntry(@25429)
                              EraseJournalEntry(@25431)
                              EraseJournalEntry(@25838)
                              EraseJournalEntry(@25829)
                              EraseJournalEntry(@25830)
                              EraseJournalEntry(@25834)
                              EraseJournalEntry(@25831)
                              EraseJournalEntry(@25832)
                              EraseJournalEntry(@25833)
                              EraseJournalEntry(@26323)
                              EraseJournalEntry(@26327)
                              EraseJournalEntry(@23558)
                              EraseJournalEntry(@23557)
                              EraseJournalEntry(@23555)
                              EraseJournalEntry(@23559)
                              AddJournalEntry(@25835,QUEST_DONE)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Emmerich_Quest","GLOBAL",3)~ THEN BEGIN 36
  SAY @25897
  IF ~~ THEN REPLY @512 DO ~StartStore("Emmeric",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8807 EXIT
END
