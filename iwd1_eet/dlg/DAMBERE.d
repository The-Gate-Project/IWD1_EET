BEGIN ~DAMBERE~

IF WEIGHT #0
~Global("Talk_Ambere","GLOBAL",0)
 Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @21878
  IF ~~ THEN REPLY @21879 DO ~SetGlobal("Know_Ambere","GLOBAL",1)
                              SetGlobal("Talk_Ambere","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @21880 DO ~SetGlobal("Know_Ambere","GLOBAL",1)
                              SetGlobal("Talk_Ambere","GLOBAL",1)~ GOTO 2
END

IF WEIGHT #1
~Global("Talk_Ambere","GLOBAL",0)
 Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 1
  SAY @21881
  IF ~~ THEN REPLY @21879 DO ~SetGlobal("Know_Ambere","GLOBAL",1)
                              SetGlobal("Talk_Ambere","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @21880 DO ~SetGlobal("Know_Ambere","GLOBAL",1)
                              SetGlobal("Talk_Ambere","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @21883
  IF ~Global("Know_Tybald","GLOBAL",1)~ THEN REPLY @21884 GOTO 3
  IF ~Global("Know_Hailee","GLOBAL",1)~ THEN REPLY @21885 GOTO 15
  IF ~~ THEN REPLY @21886 GOTO 21
  IF ~~ THEN REPLY @21887 GOTO 19
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21889
  IF ~~ THEN REPLY @21890 GOTO 4
  IF ~~ THEN REPLY @21891 GOTO 21
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21893
  IF ~~ THEN REPLY @21894 GOTO 5
  IF ~~ THEN REPLY @21895 GOTO 21
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21897
  IF ~~ THEN REPLY @21899 GOTO 6
  IF ~~ THEN REPLY @21900 GOTO 6
  IF ~~ THEN REPLY @21895 GOTO 21
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21903
  IF ~~ THEN REPLY @21904 GOTO 7
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Screwed_Ambere","GLOBAL",0)~ THEN REPLY @21905 GOTO 24
  IF ~~ THEN REPLY @21906 GOTO 11
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21908
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @21909
  IF ~~ THEN REPLY @21910 GOTO 11
  IF ~~ THEN REPLY @21911 GOTO 9
  IF ~~ THEN REPLY @21912 GOTO 11
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21914
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @21915 DO ~SetGlobal("Ambere_Family","GLOBAL",1)
                                                                AddXP2DA("ID1EX6E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@18518)
                                                                AddJournalEntry(@23781,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @21916 GOTO 21
  IF ~~ THEN REPLY @21917 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21918
  IF ~~ THEN REPLY @21919 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @21920
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)
      Global("Screwed_Ambere","GLOBAL",0)~ THEN REPLY @21921 GOTO 12
  IF ~~ THEN REPLY @21922 GOTO 21
  IF ~~ THEN REPLY @21923 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @21924
  IF ~~ THEN REPLY @21925 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @21926
  IF ~~ THEN REPLY @21927 DO ~SetGlobal("Ambere_Family","GLOBAL",2)
                              AddXP2DA("ID1EX6E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@18523)
                              AddJournalEntry(@32002,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @21928
  IF ~~ THEN REPLY @21919 DO ~SetGlobal("Move_Ambere","GLOBAL",1)
                              EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @21929
  IF ~Global("Hailee_Joke","GLOBAL",1)~ THEN REPLY @21930 DO ~SetGlobal("Hailee_Joke","GLOBAL",3)
                                                              AddJournalEntry(@23563,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @21931 GOTO 18
  IF ~~ THEN REPLY @21932 GOTO 21
  IF ~~ THEN REPLY @21887 GOTO 19
  IF ~~ THEN REPLY @21888 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @21935
  IF ~~ THEN REPLY @21938 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @21941
  IF ~~ THEN REPLY @21942 GOTO 18
  IF ~~ THEN REPLY @21943 GOTO 21
  IF ~~ THEN REPLY @21887 GOTO 19
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22008
  IF ~~ THEN REPLY @22009 GOTO 21
  IF ~~ THEN REPLY @21887 GOTO 19
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @22022
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Screwed_Ambere","GLOBAL",0)~ THEN REPLY @22025 GOTO 20
  IF ~~ THEN REPLY @22027 GOTO 21
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @22029
  IF ~~ THEN REPLY @22031 GOTO 6
  IF ~~ THEN REPLY @22033 DO ~SetGlobal("Screwed_Ambere","GLOBAL",1)
                              //ReputationInc(-1)
                              FadeToColor([0.0],0)
                              FadeFromColor([0.0],0)
                              AddJournalEntry(@23562,QUEST)~ EXIT
  IF ~~ THEN REPLY @22046 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @22047
  IF ~~ THEN REPLY @22048 GOTO 22
  IF ~~ THEN REPLY @22049 GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY @22050
  IF ~~ THEN REPLY @22051 GOTO 23
  IF ~~ THEN REPLY @22052 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @22053
  IF ~Gender(LastTalkedToBy,MALE)
      Global("Screwed_Ambere","GLOBAL",0)~ THEN REPLY @22054 GOTO 20
  IF ~Global("Know_Tybald","GLOBAL",1)~ THEN REPLY @22055 GOTO 3
  IF ~Global("Know_Hailee","GLOBAL",1)~ THEN REPLY @472 GOTO 15
  IF ~~ THEN REPLY @21519 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @22058
  IF ~~ THEN REPLY @22059 DO ~SetGlobal("Screwed_Ambere","GLOBAL",1)
                              //ReputationInc(-1)
                              FadeToColor([0.0],0)
                              FadeFromColor([0.0],0)
                              AddJournalEntry(@23562,QUEST)~ EXIT
  IF ~~ THEN REPLY @22046 EXIT
END

IF WEIGHT #2
~GlobalGT("Talk_Ambere","GLOBAL",0)
 GlobalGT("Ambere_Family","GLOBAL",1)~ THEN BEGIN 25
  SAY @22061
  IF ~~ THEN REPLY @21919 EXIT
END

IF WEIGHT #4
~GlobalGT("Talk_Ambere","GLOBAL",0)~ THEN BEGIN 26
  SAY @22063
  IF ~Global("Know_Tybald","GLOBAL",1)~ THEN REPLY @22075 GOTO 3
  IF ~Global("Know_Hailee","GLOBAL",1)~ THEN REPLY @21885 GOTO 15
  IF ~~ THEN REPLY @22079 GOTO 21
  IF ~~ THEN REPLY @21887 GOTO 19
  IF ~~ THEN REPLY @22081 EXIT
END

IF WEIGHT #3
~GlobalGT("Talk_Ambere","GLOBAL",0)
 Global("Screwed_Ambere","GLOBAL",1)~ THEN BEGIN 27
  SAY @22082
  IF ~Global("Know_Tybald","GLOBAL",1)~ THEN REPLY @22075 GOTO 3
  IF ~Global("Know_Hailee","GLOBAL",1)~ THEN REPLY @21885 GOTO 15
  IF ~~ THEN REPLY @22085 GOTO 21
  IF ~~ THEN REPLY @22086 EXIT
END
