BEGIN ~DORCCHIE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1085
  IF ~~ THEN REPLY @1086 GOTO 1
  IF ~~ THEN REPLY @1087 GOTO 2
  IF ~~ THEN REPLY @1088 GOTO 1
  IF ~~ THEN REPLY @1089 GOTO 1
  IF ~PartyGoldGT(49)~ THEN REPLY @1090 DO ~TakePartyGold(50)~ GOTO 4
  IF ~PartyGoldLT(50)~ THEN REPLY @1091 GOTO 5
  IF ~~ THEN REPLY @1092 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @1094
  IF ~~ THEN REPLY @1095 GOTO 2
  IF ~~ THEN REPLY @1111 GOTO 2
  IF ~~ THEN REPLY @1112 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      CheckStatGT(LastTalkedToBy,13,INT)
      CheckStatGT(LastTalkedToBy,13,STR)~ THEN REPLY @1113 DO ~IncrementGlobalOnce("Chaotic_Uligar","GLOBAL","Law","GLOBAL",-1)~ GOTO 3
  IF ~CheckStatGT(LastTalkedToBy,13,CHR)
      CheckStatGT(LastTalkedToBy,13,INT)
      CheckStatLT(LastTalkedToBy,14,STR)~ THEN REPLY @1114 DO ~IncrementGlobalOnce("Chaotic_Uligar","GLOBAL","Law","GLOBAL",-1)~ GOTO 6
  IF ~PartyGoldGT(49)~ THEN REPLY @1115 DO ~TakePartyGold(50)~ GOTO 4
  IF ~PartyGoldLT(50)~ THEN REPLY @1116 GOTO 5
  IF ~~ THEN REPLY @1117 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1120
  IF ~~ THEN REPLY @1121 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1122
  IF ~~ THEN REPLY @1123 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1124
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1125
  IF ~~ THEN REPLY @1126 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1127 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1128
  IF ~~ THEN REPLY @1129 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1131 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @1132
  IF ~~ THEN REPLY @1133 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1134 DO ~SetGlobal("ID2004_attack","ID2004",1)
                             SetGlobal("MAP_GROUP_HOSTILE1","ID2004",1)
                             Enemy()
                             Attack(LastTalkedToBy)~ EXIT
END
