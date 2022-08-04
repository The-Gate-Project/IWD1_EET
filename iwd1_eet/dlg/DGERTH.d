BEGIN ~DGERTH~

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0)
    GlobalLT("Kuldahar_Attack","GLOBAL",3)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 0
  SAY @2813
  IF ~Global("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @3103 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @3104 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @3105 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @3108 EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)
    Global("Gerth_Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 1
  SAY @3109
  IF ~~ THEN REPLY @3110 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @3115 DO ~SetGlobal("Gerth_Kuldahar_Murder","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @3122 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3123
  IF ~~ THEN REPLY @3126 DO ~SetGlobal("Gerth_Kuldahar_Murder","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @3127 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3137
  IF ~~ THEN REPLY @3144 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @3147
  IF ~~ THEN REPLY @3148 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)
    Global("Gerth_Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 5
  SAY @3149
  IF ~~ THEN REPLY @3150 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @3151 EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 6
  SAY @3152
  IF ~~ THEN REPLY @3153 GOTO 8
  IF ~~ THEN REPLY @3156 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @3157 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 7
  SAY @3158
  IF ~~ THEN REPLY @3153 GOTO 8
  IF ~~ THEN REPLY @3160 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1718 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3163
  IF ~~ THEN REPLY @3164 GOTO 9
  IF ~~ THEN REPLY @3165 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3167
  IF ~~ THEN REPLY @3169 DO ~AddJournalEntry(@2072,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @3165 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @3172
  IF ~~ THEN REPLY @3173 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @3175
  IF ~~ THEN REPLY @3179 DO ~StartStore("KUGerth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1711 EXIT
END
