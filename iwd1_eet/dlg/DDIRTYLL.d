BEGIN ~DDIRTYLL~

IF ~Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @7932
  IF ~GlobalLT("Llew_Shield","GLOBAL",1)
      PartyHasItem("HideBee")~ THEN REPLY @9939 GOTO 9
  IF ~GlobalTimerExpired("Llew_Timer","GLOBAL")
      Global("Llew_Shield","GLOBAL",1)~ THEN REPLY @9940 DO ~SetGlobal("Llew_Shield","GLOBAL",2)
                                                             GiveItemCreate("BeetShld",LastTalkedToBy,1,1,1)~ GOTO 18
  IF ~~ THEN REPLY @9941 GOTO 3
  IF ~~ THEN REPLY @9943 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                             StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~~ THEN REPLY @1000 GOTO 4
END

IF ~Gender(LastTalkedToBy,FEMALE)
    CheckStatLT(LastTalkedToBy,16,CHR)~ THEN BEGIN 1
  SAY @9953
  IF ~GlobalLT("Llew_Shield","GLOBAL",1)
      PartyHasItem("HideBee")~ THEN REPLY @9939 GOTO 10
  IF ~GlobalTimerExpired("Llew_Timer","GLOBAL")
      Global("Llew_Shield","GLOBAL",1)~ THEN REPLY @9940 DO ~SetGlobal("Llew_Shield","GLOBAL",2)
                                                             GiveItemCreate("BeetShld",LastTalkedToBy,1,1,1)~ GOTO 19
  IF ~~ THEN REPLY @9941 GOTO 5
  IF ~~ THEN REPLY @9943 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                             StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~~ THEN REPLY @1000 GOTO 6
END

IF ~Gender(LastTalkedToBy,FEMALE)
    CheckStatGT(LastTalkedToBy,15,CHR)~ THEN BEGIN 2
  SAY @9961
  IF ~GlobalLT("Llew_Shield","GLOBAL",1)
      PartyHasItem("HideBee")~ THEN REPLY @9939 GOTO 11
  IF ~GlobalTimerExpired("Llew_Timer","GLOBAL")
      Global("Llew_Shield","GLOBAL",1)~ THEN REPLY @9940 DO ~SetGlobal("Llew_Shield","GLOBAL",2)
                                                             GiveItemCreate("BeetShld",LastTalkedToBy,1,1,1)~ GOTO 20
  IF ~~ THEN REPLY @9941 GOTO 7
  IF ~~ THEN REPLY @9943 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                             StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @9945 GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @9989
  IF ~~ THEN REPLY @10028 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~~ THEN REPLY @1000 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @10059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10060
  IF ~~ THEN REPLY @10028 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~~ THEN REPLY @1000 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @10088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10089
  IF ~~ THEN REPLY @10028 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10094 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @10096
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10097
  IF ~PartyGoldGT(9999)~ THEN REPLY @10098 DO ~TakePartyGold(10000)
                                               TakePartyItem("HideBee")
                                               DestroyItem("HideBee")
                                               SetGlobalTimer("Llew_Timer","GLOBAL",21600)
                                               SetGlobal("Llew_Shield","GLOBAL",1)~ GOTO 12
  IF ~PartyGoldLT(10000)~ THEN REPLY @10098 GOTO 15
  IF ~~ THEN REPLY @9941 GOTO 3
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~~ THEN REPLY @10111 GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY @10112
  IF ~PartyGoldGT(8999)~ THEN REPLY @10098 DO ~TakePartyGold(9000)
                                               TakePartyItem("HideBee")
                                               DestroyItem("HideBee")
                                               SetGlobalTimer("Llew_Timer","GLOBAL",21600)
                                               SetGlobal("Llew_Shield","GLOBAL",1)~ GOTO 13
  IF ~PartyGoldLT(9000)~ THEN REPLY @10098 GOTO 16
  IF ~~ THEN REPLY @9941 GOTO 5
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~~ THEN REPLY @10111 GOTO 6
END

IF ~~ THEN BEGIN 11
  SAY @10139
  IF ~PartyGoldGT(4999)~ THEN REPLY @10098 DO ~TakePartyGold(5000)
                                               TakePartyItem("HideBee")
                                               DestroyItem("HideBee")
                                               SetGlobalTimer("Llew_Timer","GLOBAL",21600)
                                               SetGlobal("Llew_Shield","GLOBAL",1)~ GOTO 14
  IF ~PartyGoldLT(5000)~ THEN REPLY @10098 GOTO 17
  IF ~~ THEN REPLY @9941 GOTO 7
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10166 GOTO 8
END

IF ~~ THEN BEGIN 12
  SAY @10167
  IF ~~ THEN REPLY @9941 GOTO 3
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~~ THEN REPLY @10166 GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY @10251
  IF ~~ THEN REPLY @9941 GOTO 5
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~~ THEN REPLY @10166 GOTO 6
END

IF ~~ THEN BEGIN 14
  SAY @10261
  IF ~~ THEN REPLY @9941 GOTO 7
  IF ~~ THEN REPLY @10110 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10094 GOTO 8
END

IF ~~ THEN BEGIN 15
  SAY @10276
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @10277
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @10278
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY @10279
  IF ~~ THEN REPLY @10280 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~~ THEN REPLY @10281 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @10282
  IF ~~ THEN REPLY @10280 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~~ THEN REPLY @10281 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @10327
  IF ~~ THEN REPLY @10382 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                              StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10281 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @18332
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~GlobalLT("Umber_Hulk_Armor","GLOBAL",15)
 PartyHasItem("HideUmb")
 NumTimesTalkedToGT(0)~ THEN BEGIN 22
  SAY @18333
  IF ~~ THEN REPLY @18334 DO ~TakePartyItem("HideUmb")
                              DestroyItem("HideUmb")
                              SetGlobal("Umber_Hulk_Armor","GLOBAL",15)
                              GiveItemCreate("UmHulk",LastTalkedToBy,1,1,1)~ GOTO 23
  IF ~~ THEN REPLY @18335 DO ~IncrementGlobal("Umber_Hulk_Armor","GLOBAL",4)
                              SetGlobalTimerRandom("UmbHide_Timer","GLOBAL",FIVE_DAYS,SEVEN_DAYS)~ GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @18336
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @18338 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                                                         StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~Gender(LastTalkedToBy,FEMALE)
      CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @18338 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                                                                StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~Gender(LastTalkedToBy,FEMALE)
      CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @18338 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                                                                StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10281 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @18337
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @18345 DO ~ChangeStoreMarkup("LDD_DL1",190,30)
                                                         StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT
  IF ~Gender(LastTalkedToBy,FEMALE)
      CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @18345 DO ~ChangeStoreMarkup("LDD_DL1",150,70)
                                                                StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL2
  IF ~Gender(LastTalkedToBy,FEMALE)
      CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @18345 DO ~ChangeStoreMarkup("LDD_DL1",120,90)
                                                                StartStore("LDD_DL1",LastTalkedToBy)~ /* FLAGS 0x200 */ EXIT //LDD_DL3
  IF ~~ THEN REPLY @10281 EXIT
END
