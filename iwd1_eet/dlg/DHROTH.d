BEGIN ~DHROTH~

IF WEIGHT #5
~Global("Know_Hrothgar","GLOBAL",0)
 Global("Join_Posse","GLOBAL",0)~ THEN BEGIN 0
  SAY @227
  IF ~~ THEN REPLY @285 DO ~EndCutSceneMode()~ GOTO 1
  IF ~~ THEN REPLY @286 GOTO 22
END

IF ~~ THEN BEGIN 1
  SAY @18714
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @18715
  IF ~~ THEN GOTO 23
END

IF WEIGHT #0
~Global("Know_Hrothgar","GLOBAL",1)
 GlobalLT("Join_Posse","GLOBAL",2)~ THEN BEGIN 3
  SAY @231
  IF ~~ THEN REPLY @287 GOTO 4
  IF ~~ THEN REPLY @289 GOTO 4
  IF ~~ THEN REPLY @290 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @232
  IF ~~ THEN REPLY @291 GOTO 5
  IF ~~ THEN REPLY @292 GOTO 7
  IF ~~ THEN REPLY @294 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @18722
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @18723
  IF ~~ THEN REPLY @295 GOTO 10
  IF ~~ THEN REPLY @297 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @18725
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @18726
  IF ~~ THEN REPLY @299 GOTO 9
  IF ~~ THEN REPLY @300 GOTO 9
  IF ~~ THEN REPLY @302 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @239
  IF ~~ THEN REPLY @305 GOTO 10
  IF ~~ THEN REPLY @307 GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY @18732
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @18733
  IF ~~ THEN REPLY @309 GOTO 12
  IF ~NumInPartyGT(1)~ THEN REPLY @311 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyLT(2)~ THEN REPLY @313 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyGT(1)~ THEN REPLY @319 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyLT(2)~ THEN REPLY @321 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @322 GOTO 15
END

IF ~~ THEN BEGIN 12
  SAY @18739
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @18740
  IF ~NumInPartyGT(1)~ THEN REPLY @311 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyLT(2)~ THEN REPLY @313 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyGT(1)~ THEN REPLY @319 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyLT(2)~ THEN REPLY @321 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @322 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @243
  IF ~~ THEN REPLY @329 GOTO 10
  IF ~~ THEN REPLY @330 GOTO 10
  IF ~~ THEN REPLY @331 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @244
  IF ~NumInPartyLT(2)~ THEN REPLY @332 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~NumInPartyGT(1)~ THEN REPLY @333 DO ~SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 16
  IF ~~ THEN REPLY @334 DO ~SetGlobal("Join_Posse","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @18751
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @18752
  IF ~NumInPartyLT(2)~ THEN REPLY @335 GOTO 28
  IF ~NumInPartyGT(1)~ THEN REPLY @336 GOTO 28
  IF ~NumInPartyLT(2)~ THEN REPLY @337 GOTO 28
  IF ~NumInPartyGT(1)~ THEN REPLY @338 GOTO 28
END

IF WEIGHT #1
~Global("Join_Posse","GLOBAL",2)~ THEN BEGIN 18
  SAY @248
  IF ~NumInPartyLT(2)~ THEN REPLY @332 GOTO 16
  IF ~NumInPartyGT(1)~ THEN REPLY @333 GOTO 16
  IF ~~ THEN REPLY @341 EXIT
END

IF WEIGHT #2
~Global("Join_Posse","GLOBAL",3)
 Global("Supply_Quest","GLOBAL",1)~ THEN BEGIN 19
  SAY @249
  IF ~~ THEN REPLY @342 EXIT
END

IF WEIGHT #3
~Global("Join_Posse","GLOBAL",3)
 Global("Supply_Quest","GLOBAL",2)~ THEN BEGIN 20
  SAY @251
  IF ~NumInPartyGT(1)~ THEN REPLY @343 DO ~StartCutSceneMode()
                                           StartCutScene("EHHrothM")~ EXIT
  IF ~NumInPartyLT(2)~ THEN REPLY @344 DO ~StartCutSceneMode()
                                           StartCutScene("EHHrothM")~ EXIT
  IF ~NumInPartyGT(1)~ THEN REPLY @345 GOTO 21
  IF ~NumInPartyLT(2)~ THEN REPLY @346 GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @252
  IF ~~ THEN REPLY @347 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @18765
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 23
  SAY @18766
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @18767
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @18768
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @18769
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Know_Hrothgar","GLOBAL",1)
                            AddJournalEntry(@20671,QUEST)
                            StartCutSceneMode()
                            StartCutScene("EHHrothC")~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @257
  IF ~~ THEN REPLY @288 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @18771
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @18772
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @18773
  IF ~~ THEN REPLY @18616 GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @18774
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @18775
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @18776
  IF ~Global("Caravan_Quest","GLOBAL",0)~ THEN REPLY @288 DO ~SetGlobal("Caravan_Quest","GLOBAL",1)
                                                              SetGlobal("Join_Posse","GLOBAL",3)
                                                              AddJournalEntry(@2331,QUEST)~ EXIT
  IF ~Global("Caravan_Quest","GLOBAL",2)~ THEN REPLY @3306 DO ~EraseJournalEntry(@2331)
                                                               EraseJournalEntry(@34183)
                                                               EraseJournalEntry(@34182)
                                                               EraseJournalEntry(@16535)
                                                               AddJournalEntry(@34231,QUEST_DONE)~ GOTO 34
  IF ~Global("Caravan_Quest","GLOBAL",3)~ THEN REPLY @3307 DO ~EraseJournalEntry(@2331)
                                                               EraseJournalEntry(@34183)
                                                               EraseJournalEntry(@34182)
                                                               EraseJournalEntry(@16535)
                                                               AddJournalEntry(@22928,QUEST_DONE)~ GOTO 35
END

IF ~~ THEN BEGIN 34
  SAY @277
  IF ~~ THEN REPLY @3308 DO ~AddXP2DA("ID1EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@18529)
                             SetGlobal("Caravan_Quest","GLOBAL",4)
                             SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 37
END

IF ~~ THEN BEGIN 35
  SAY @18780
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @18781
  IF ~~ THEN REPLY @3309 DO ~AddXP2DA("ID1EX1H")
                             DisplayStringNoNameDlg(LastTalkedToBy,@18528) 
                             SetGlobal("Caravan_Quest","GLOBAL",4)
                             SetGlobal("Join_Posse","GLOBAL",3)~ GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @18782
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @18783
  IF ~~ THEN REPLY @3310 DO ~SetGlobal("Supply_Quest","GLOBAL",1)
                             GiveItemCreate("List",LastTalkedToBy,1,0,0)
                             AddJournalEntry(@352,QUEST)~ EXIT
END

IF WEIGHT #4
~Global("Join_Posse","GLOBAL",3)
 GlobalLT("Caravan_Quest","GLOBAL",4)~ THEN BEGIN 39
  SAY @282
  IF ~Global("Caravan_Quest","GLOBAL",1)~ THEN REPLY @3311 GOTO 21
  IF ~Global("Caravan_Quest","GLOBAL",2)~ THEN REPLY @3312 DO ~EraseJournalEntry(@2331)
                                                               EraseJournalEntry(@34183)
                                                               EraseJournalEntry(@34182)
                                                               EraseJournalEntry(@16535)
                                                               AddJournalEntry(@351,QUEST_DONE)~ GOTO 34
  IF ~Global("Caravan_Quest","GLOBAL",3)~ THEN REPLY @3313 DO ~EraseJournalEntry(@2331)
                                                               EraseJournalEntry(@34183)
                                                               EraseJournalEntry(@34182)
                                                               EraseJournalEntry(@16535)
                                                               AddJournalEntry(@349,QUEST_DONE)~ GOTO 35
END
