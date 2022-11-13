BEGIN ~DCALLIAN~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4393
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @4394 GOTO 1
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @4395 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @4396 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @34532
  IF ~Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN REPLY @34533 DO ~SetGlobal("Know_Egenia","GLOBAL",1)
                                                                        AddJournalEntry(@2028,QUEST)~ GOTO 3
  IF ~GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
      Global("SPRITE_IS_DEADEgenia","GLOBAL",0)
      Global("Talonite_Dead","GLOBAL",4)~ THEN REPLY @34534 DO ~SetGlobal("Know_Egenia","GLOBAL",1)~ GOTO 10
  IF ~Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN REPLY @34534 DO ~SetGlobal("Know_Egenia","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @4400 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4401
  IF ~Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN REPLY @34533 DO ~SetGlobal("Know_Egenia","GLOBAL",1)
                                                                        AddJournalEntry(@2028,QUEST)~ GOTO 3
  IF ~GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
      Global("SPRITE_IS_DEADEgenia","GLOBAL",0)
      Global("Talonite_Dead","GLOBAL",4)~ THEN REPLY @34534 DO ~SetGlobal("Know_Egenia","GLOBAL",1)~ GOTO 10
  IF ~Global("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ THEN REPLY @34534 DO ~SetGlobal("Know_Egenia","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @4400 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4407
  IF ~~ THEN REPLY @4408 GOTO 5
  IF ~~ THEN REPLY @4412 DO ~SetGlobal("Know_Poquelin","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @4413 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4414 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4415
  IF ~~ THEN REPLY @4408 GOTO 5
  IF ~~ THEN REPLY @4412 DO ~SetGlobal("Know_Poquelin","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @4413 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4414 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @4420
  IF ~~ THEN REPLY @4421 DO ~SetGlobal("Know_Poquelin","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @4413 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4414 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @4424
  IF ~~ THEN REPLY @4413 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4414 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 Global("Know_Egenia","GLOBAL",0)~ THEN BEGIN 7
  SAY @4428
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @4395 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 2
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @4430 GOTO 2
  IF ~~ THEN REPLY @4431 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)
 Global("Know_Egenia","GLOBAL",1)~ THEN BEGIN 8
  SAY @4432
  IF ~Global("Know_Poquelin","GLOBAL",0)~ THEN REPLY @4421 DO ~SetGlobal("Know_Poquelin","GLOBAL",1)~ GOTO 6
  IF ~Global("Know_Poquelin","GLOBAL",1)~ THEN REPLY @4400 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4435 EXIT
END

IF WEIGHT #2
~GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)
 Global("SPRITE_IS_DEADEgenia","GLOBAL",0)
 Global("Talonite_Dead","GLOBAL",4)~ THEN BEGIN 9
  SAY @17772
  IF ~Global("Know_Calliana","GLOBAL",1)~ THEN REPLY @4394 GOTO 1
  IF ~Global("Know_Calliana","GLOBAL",0)~ THEN REPLY @4395 DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 2
  IF ~Global("Know_Poquelin","GLOBAL",1)~ THEN REPLY @17774 GOTO 6
  IF ~~ THEN REPLY @4435 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @17779
  IF ~~ THEN REPLY @4412 DO ~SetGlobal("Know_Poquelin","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @4413 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4414 EXIT
END

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("Voice_Quest","GLOBAL",2)
 PartyHasItem("VoiceBn")~ THEN BEGIN 11
  SAY @17782
  IF ~~ THEN REPLY @17783 DO ~SetGlobal("Voice_Quest","GLOBAL",3)
                              TakePartyItem("VoiceBn")
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@17341)
                              AddJournalEntry(@34205,QUEST_DONE)~ GOTO 13
  IF ~~ THEN REPLY @4395 GOTO 2
  IF ~~ THEN REPLY @620 EXIT
END

IF WEIGHT #1
~NumTimesTalkedToGT(0)
 Global("Voice_Quest","GLOBAL",2)
 PartyHasItem("VoiceBn")~ THEN BEGIN 12
  SAY @17786
  IF ~~ THEN REPLY @17783 DO ~SetGlobal("Voice_Quest","GLOBAL",3)
                              TakePartyItem("VoiceBn")
                              AddXP2DA("ID1EX12V")
                              DisplayStringNoNameDlg(LastTalkedToBy,@17341)
                              AddJournalEntry(@34205,QUEST_DONE)~ GOTO 13
  IF ~~ THEN REPLY @4430 DO ~StartStore("KUTemple",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @4396 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @17788
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @17790
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17792 DO ~GiveItemCreate("Glory",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,FIGHTER_ALL)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @17793 DO ~GiveItemCreate("Glory",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @17793 DO ~GiveItemCreate("Glory",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @17795 DO ~GiveItemCreate("ArmPen",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @17798 DO ~GiveItemCreate("Glory",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @17800 DO ~GiveItemCreate("ClckBS",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,DRUID_ALL)~ THEN REPLY @17803 DO ~GiveItemCreate("ClckBS",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @17807 DO ~GiveItemCreate("RobeAng",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @17795 DO ~GiveItemCreate("Glory",LastTalkedToBy,0,0,0)~ EXIT
  IF ~Class(LastTalkedToBy,MONK)~ THEN REPLY @17793 DO ~GiveItemCreate("ClckBS",LastTalkedToBy,0,0,0)~ EXIT
END
