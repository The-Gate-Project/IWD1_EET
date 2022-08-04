BEGIN ~DNYM~

IF WEIGHT #0
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7953
  IF ~~ THEN REPLY @11001 GOTO 1
  IF ~Race(LastTalkedToBy,ELF)~ THEN REPLY @11002 GOTO 2
  IF ~Race(LastTalkedToBy,DWARF)~ THEN REPLY @11003 GOTO 2
  IF ~~ THEN REPLY @11004 GOTO 1
  IF ~~ THEN REPLY @11007 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @11008
  IF ~~ THEN REPLY @11009 GOTO 3
  IF ~~ THEN REPLY @11010 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11011 GOTO 4
  IF ~~ THEN REPLY @11012 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11013 GOTO 9
END

IF ~~ THEN BEGIN 2
  SAY @11016
  IF ~~ THEN REPLY @11018 GOTO 3
  IF ~~ THEN REPLY @11019 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11029 GOTO 4
  IF ~~ THEN REPLY @11030 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11031 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @11060
  IF ~~ THEN REPLY @11061 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11062 GOTO 5
  IF ~~ THEN REPLY @11064 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11066 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @11067
  IF ~~ THEN REPLY @11061 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11062 GOTO 5
  IF ~~ THEN REPLY @11071 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11072 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @11073
  IF ~~ THEN REPLY @11074 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11080 GOTO 6
  IF ~~ THEN REPLY @11087 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11088 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @11100
  IF ~~ THEN REPLY @11135 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11136 DO ~SetGlobal("Voice_Quest","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @11137 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11138 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @11139
  IF ~~ THEN REPLY @11140 GOTO 8
  IF ~~ THEN REPLY @11141 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11142 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @11143
  IF ~~ THEN REPLY @11157 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11170 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11171 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @11173
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 10
  SAY @11174
  IF ~~ THEN REPLY @11184 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11187 GOTO 5
  IF ~~ THEN REPLY @11189 GOTO 9
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 PartyHasItem("BeetShld")
 GlobalLT("Nym_Shield","GLOBAL",1)~ THEN BEGIN 11
  SAY @11190
  IF ~~ THEN REPLY @11191 GOTO 12
  IF ~~ THEN REPLY @11192 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11195 GOTO 5
  IF ~~ THEN REPLY @11196 GOTO 9
END

IF ~~ THEN BEGIN 12
  SAY @11199
  IF ~PartyGoldGT(29999)~ THEN REPLY @11203 DO ~TakePartyGold(30000)
                                                TakePartyItem("BeetShld")
                                                DestroyItem("BeetShld")
                                                SetGlobal("Nym_Shield","GLOBAL",1)
                                                SetGlobalTimer("Nym_Timer","GLOBAL",21600)~ GOTO 13
  IF ~PartyGoldLT(30000)~ THEN REPLY @11203 GOTO 17
  IF ~~ THEN REPLY @11207 GOTO 14
  IF ~~ THEN REPLY @11211 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11189 GOTO 9
END

IF ~~ THEN BEGIN 13
  SAY @11213
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF ~~ THEN BEGIN 14
  SAY @11215
  IF ~PartyGoldGT(32999)~ THEN REPLY @11216 DO ~TakePartyGold(33000)
                                                TakePartyItem("BeetShld")
                                                DestroyItem("BeetShld")
                                                GiveItemCreate("NymDagg",LastTalkedToBy,1,1,1)
                                                SetGlobal("Nym_Shield","GLOBAL",1)
                                                SetGlobalTimer("Nym_Timer","GLOBAL",21600)~ GOTO 15
  IF ~PartyGoldLT(33000)~ THEN REPLY @11216 GOTO 17
  IF ~~ THEN REPLY @11218 GOTO 16
  IF ~~ THEN REPLY @11211 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF ~~ THEN BEGIN 15
  SAY @11249
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF ~~ THEN BEGIN 16
  SAY @11251
  IF ~PartyGoldGT(27999)~ THEN REPLY @11252 DO ~TakePartyGold(28000)
                                                TakePartyItem("BeetShld")
                                                DestroyItem("BeetShld")
                                                SetGlobal("Nym_Shield","GLOBAL",1)
                                                SetGlobalTimer("Nym_Timer","GLOBAL",21600)~ GOTO 13
  IF ~PartyGoldLT(28000)~ THEN REPLY @11252 GOTO 17
  IF ~~ THEN REPLY @11254 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11255 GOTO 9
END

IF ~~ THEN BEGIN 17
  SAY @11256
  IF ~~ THEN REPLY @11257 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Nym_Shield","GLOBAL",1)
 !GlobalTimerExpired("Nym_Timer","GLOBAL")~ THEN BEGIN 18
  SAY @11259
  IF ~~ THEN REPLY @11184 DO ~StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11172 GOTO 9
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Nym_Shield","GLOBAL",1)
 GlobalTimerExpired("Nym_Timer","GLOBAL")~ THEN BEGIN 19
  SAY @11264
  IF ~~ THEN REPLY @11265 DO ~GiveItemCreate("NymShld",LastTalkedToBy,1,1,1)
                              SetGlobal("Nym_Shield","GLOBAL",2)
                              StartStore("LDD_Nym",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @11266 DO ~GiveItemCreate("NymShld",LastTalkedToBy,1,1,1)
                              SetGlobal("Nym_Shield","GLOBAL",2)~ GOTO 9
END
