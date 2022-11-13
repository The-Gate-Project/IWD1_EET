BEGIN ~DCONLAN~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 Global("Know_Conlan","GLOBAL",0)~ THEN BEGIN 0
  SAY @4436
  IF ~~ THEN REPLY @4437 GOTO 2
  IF ~~ THEN REPLY @4438 GOTO 2
  IF ~~ THEN REPLY @4590 EXIT
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 GlobalGT("Know_Conlan","GLOBAL",0)~ THEN BEGIN 1
  SAY @4436
  IF ~~ THEN REPLY @4602 GOTO 12
  IF ~~ THEN REPLY @4604 GOTO 12
  IF ~~ THEN REPLY @4590 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4626
  IF ~~ THEN REPLY @34535 DO ~SetGlobal("Know_Conlan","GLOBAL",2)~ GOTO 3
  IF ~~ THEN REPLY @34536 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4630
  IF ~~ THEN REPLY @4631 GOTO 4
  IF ~~ THEN REPLY @4632 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4633
  IF ~CheckStatGT(LastTalkedToBy,9,CHR)~ THEN REPLY @4634 GOTO 5
  IF ~CheckStatLT(LastTalkedToBy,10,CHR)~ THEN REPLY @2631 GOTO 11
  IF ~~ THEN REPLY @4636 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4637 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4638
  IF ~~ THEN REPLY @4639 GOTO 7
  IF ~~ THEN REPLY @4641 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4642 DO ~IncrementGlobalOnce("Evil_Conlan_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @4643
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @4644
  IF ~Global("Know_Arundel","GLOBAL",0)~ THEN REPLY @4645 DO ~SetGlobal("Know_Arundel","GLOBAL",1)
                                                              AddJournalEntry(@2051,QUEST)~ GOTO 8
  IF ~Global("Vale_Quest","GLOBAL",1)~ THEN REPLY @4647 GOTO 10
  IF ~~ THEN REPLY @4648 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4652 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4653 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @4654
  IF ~~ THEN REPLY @4663 GOTO 9
  IF ~~ THEN REPLY @4664 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4665 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @4667
  IF ~~ THEN REPLY @4668 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4669 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @34537
  IF ~~ THEN REPLY @4671 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4672 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @4673
  IF ~Global("Know_Arundel","GLOBAL",0)~ THEN REPLY @4645 DO ~SetGlobal("Know_Arundel","GLOBAL",1)
                                                              AddJournalEntry(@34498,QUEST)~ GOTO 8
  IF ~Global("Know_Arundel","GLOBAL",1)~ THEN REPLY @4675 GOTO 10
END

IF ~~ THEN BEGIN 12
  SAY @4676
  IF ~~ THEN REPLY @34535 GOTO 3
  IF ~~ THEN REPLY @4678 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Know_Conlan","GLOBAL",0)~ THEN BEGIN 13
  SAY @4689
  IF ~~ THEN REPLY @34535 DO ~SetGlobal("Know_Conlan","GLOBAL",2)~ GOTO 3
  IF ~~ THEN REPLY @34536 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @607 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 GlobalGT("Know_Conlan","GLOBAL",0)~ THEN BEGIN 14
  SAY @4692
  IF ~~ THEN REPLY @4693 DO ~StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4694 EXIT
END

IF WEIGHT #0
~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 15
  SAY @18346
  IF ~~ THEN REPLY @18347 GOTO 16
  IF ~~ THEN REPLY @18348 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @18349
  IF ~~ THEN REPLY @18350 DO ~Enemy()
                              Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18348 EXIT
END

IF WEIGHT #1
~GlobalGT("Sheemish_Escape","GLOBAL",1)
 Global("Conlan_Thanked","GLOBAL",0)~ THEN BEGIN 17
  SAY @18352
  IF ~~ THEN REPLY @18353 DO ~SetGlobal("Conlan_Thanked","GLOBAL",1)
                              SetGlobal("Know_Conlan","GLOBAL",2)
                              StartStore("KUSmith",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @18354 DO ~SetGlobal("Conlan_Thanked","GLOBAL",1)
                              SetGlobal("Know_Conlan","GLOBAL",2)~ EXIT
END
