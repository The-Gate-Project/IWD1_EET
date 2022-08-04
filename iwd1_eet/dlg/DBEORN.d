BEGIN ~DBEORN~

IF WEIGHT #1
~NumTimesTalkedTo(0)
 !Global("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 0
  SAY @7919
  IF ~~ THEN REPLY @8841 DO ~SetGlobal("Beorn_Talk","GLOBAL",1)
                             AddJournalEntry(@34420,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @8842 DO ~SetGlobal("Beorn_Talk","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @8847
  IF ~~ THEN REPLY @8848 GOTO 3
  IF ~~ THEN REPLY @8849 GOTO 3
  IF ~~ THEN REPLY @8850 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @8852
  IF ~~ THEN REPLY @8853 GOTO 6
  IF ~!Global("Know_Marketh","GLOBAL",1)~ THEN REPLY @8854 DO ~SetGlobal("Know_Marketh","GLOBAL",1)
                                                               AddJournalEntry(@34419,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @8855 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @8857
  IF ~~ THEN REPLY @8858 EXIT
  IF ~~ THEN REPLY @8863 EXIT
  IF ~~ THEN REPLY @8864 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8866
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8871
  IF ~~ THEN REPLY @8872 DO ~SetGlobal("Sad_Gnomes","GLOBAL",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8880 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @8882
  IF ~~ THEN REPLY @8883 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8884 GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY @8885
  IF ~~ THEN REPLY @8886 GOTO 4
  IF ~~ THEN REPLY @8887 GOTO 8
  IF ~~ THEN REPLY @8888 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @8889
  IF ~~ THEN REPLY @8858 EXIT
  IF ~~ THEN REPLY @8863 EXIT
  IF ~~ THEN REPLY @8864 GOTO 4
END

IF WEIGHT #2
~NumTimesTalkedTo(1)
 !Global("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 9
  SAY @8892
  IF ~~ THEN REPLY @8893 DO ~AddJournalEntry(@34386,QUEST)~ GOTO 10
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @8894 DO ~AddJournalEntry(@34386,QUEST)~ GOTO 10
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @8895 DO ~AddJournalEntry(@34386,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @8896 DO ~AddJournalEntry(@34386,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @8897 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @8899
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @8900
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @8901
  IF ~Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY @8902 GOTO 20
  IF ~~ THEN REPLY @8903 DO ~SetGlobal("Beorn_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @8904 DO ~SetGlobal("Beorn_Quest","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @8905
  IF ~~ THEN REPLY @8907 GOTO 10
  IF ~~ THEN REPLY @8908 DO ~SetGlobal("Beorn_Quest","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @8910
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(1)
 Global("Beorn_Quest","GLOBAL",1)
 !Global("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 15
  SAY @8927
  IF ~~ THEN REPLY @8928 EXIT
  IF ~~ THEN REPLY @8930 DO ~SetGlobal("Beorn_Quest","GLOBAL",2)~ GOTO 10
END

IF WEIGHT #4
~NumTimesTalkedToGT(1)
 Global("Beorn_Quest","GLOBAL",2)
 !Global("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 16
  SAY @8931
  IF ~~ THEN REPLY @8932 GOTO 17
  IF ~~ THEN REPLY @8933 DO ~StartStore("LDD_Beor",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @8934
  IF ~~ THEN REPLY @8935 DO ~StartStore("LDD_Beor",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @283 EXIT
END

IF WEIGHT #0
~GlobalGT("Beorn_Quest","GLOBAL",2)
 !Global("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 18
  SAY @7902
  IF ~~ THEN REPLY @8935 DO ~StartStore("LDD_Beor",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8938 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @8939
  IF ~~ THEN REPLY @8935 DO ~StartStore("LDD_Beor",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @8940 EXIT
  IF ~~ THEN REPLY @8941 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @8942
  IF ~~ THEN REPLY @8903 DO ~SetGlobal("Beorn_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @8904 DO ~SetGlobal("Beorn_Quest","GLOBAL",1)~ GOTO 14
END
