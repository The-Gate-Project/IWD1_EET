// dginafae is all over the place. So...
ADD_TRANS_TRIGGER DGINAFAE  6 ~Global("Marketh_Ring","GLOBAL",0)~ DO 1
ADD_TRANS_TRIGGER DGINAFAE  9 ~Global("Marketh_Ring","GLOBAL",0)~ DO 0
ADD_TRANS_ACTION  DGINAFAE BEGIN 15 END BEGIN 1 END ~SetGlobalTimer("CDGinaRingTimer","GLOBAL",ONE_DAY)~
ADD_TRANS_ACTION  DGINAFAE BEGIN 21 END BEGIN 0 END ~SetGlobalTimer("CDGinaRingTimer","GLOBAL",ONE_DAY)~
ADD_TRANS_ACTION  DGINAFAE BEGIN 0 END BEGIN 3 END ~SetGlobal("Ginafae_Eye","GLOBAL",1)~
ADD_STATE_TRIGGER DGINAFAE 23 ~!GlobalTimerExpired("CDGinaRingTimer","GLOBAL") Global("Marketh_Ring","GLOBAL",5)~
ALTER_TRANS DGINAFAE BEGIN 12 END BEGIN 0 END
  BEGIN TRIGGER ~Global("Marketh_Ring","GLOBAL",0)~ END
ALTER_TRANS DGINAFAE BEGIN 12 END BEGIN 1 END
  BEGIN EPILOGUE ~EXIT~ END
EXTEND_BOTTOM DGINAFAE 9
  IF ~~ THEN REPLY @10574 EXIT
END
EXTEND_BOTTOM DGINAFAE 14
  IF ~Global("Marketh_Ring","GLOBAL",0)~ THEN REPLY @300000304 DO ~SetGlobal("Marketh_Ring","GLOBAL",1)~ GOTO 15
  IF ~!Global("Marketh_Ring","GLOBAL",0)~ THEN REPLY @300000304 GOTO 15
END
EXTEND_BOTTOM DGINAFAE 19
  IF ~!Global("Malavon_Curse","GLOBAL",1)~ THEN REPLY @10995 DO ~SetGlobal("Malavon_Curse","GLOBAL",1)~ GOTO 8
END

APPEND DGINAFAE

  IF WEIGHT #-2 ~GlobalGT("Marketh_Ring","GLOBAL",0)
                 GlobalLT("Marketh_Ring","GLOBAL",5)~ BEGIN GotRingYet SAY @300000306
    IF ~~ THEN REPLY @115 GOTO StillWaiting
    IF ~PartyHasItem("RingCop")~ THEN REPLY @10598 DO ~SetGlobalTimer("CDGinaRingTimer","GLOBAL",ONE_DAY)
                                                       TakePartyItem("RingCop")
                                                       SetGlobal("Marketh_Ring","GLOBAL",5)
                                                       AddJournalEntry(@34271,QUEST)~ GOTO 17
  END

  IF WEIGHT #-1 ~Global("SPRITE_IS_DEADMarketh","GLOBAL",0)
                 GlobalGT("Marketh_Ring","GLOBAL",4)
                 GlobalTimerExpired("CDGinaRingTimer","GLOBAL")
                 Global("CDRingDone","MYAREA",0)~ BEGIN Switched SAY @300000308
    IF ~~ THEN DO ~SetGlobal("CDRingDone","MYAREA",1)~ GOTO Switched2
  END

  IF ~~ THEN BEGIN Switched2 SAY @300000309
    IF ~!Global("Malavon_Curse","GLOBAL",1)~ THEN REPLY @10995 DO ~SetGlobal("Malavon_Curse","GLOBAL",1)~ GOTO 8
    IF ~~ THEN REPLY @10605 EXIT
    IF ~~ THEN REPLY @10606 EXIT
  END
  
  IF ~~ THEN BEGIN StillWaiting SAY @22502
    IF ~!Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY @10616 GOTO 6
    IF ~!Global("Malavon_Curse","GLOBAL",1)~ THEN REPLY @10995 DO ~SetGlobal("Malavon_Curse","GLOBAL",1)~ GOTO 8
    IF ~~ THEN REPLY @10605 EXIT
    IF ~~ THEN REPLY @10606 EXIT
  END

END

ADD_STATE_TRIGGER DMARKETH  0 ~!Global("Marketh_Ring","GLOBAL",6)~

ALTER_TRANS DMARKETH BEGIN 8 9 10 12 13 16 17 18 19 END BEGIN 0 END
  BEGIN EPILOGUE ~GOTO Teleporting~ END

APPEND DMARKETH

  IF ~NumTimesTalkedTo(0)
      Global("Marketh_Ring","GLOBAL",6)~ THEN BEGIN Screwed0 SAY @300000302
    IF ~~ THEN DO ~SetGlobal("Marketh_Ring","GLOBAL",7)~ GOTO 21
  END

  IF ~NumTimesTalkedToGT(0)
      Global("Marketh_Ring","GLOBAL",6)~ THEN BEGIN Screwed1 SAY @300000303
    IF ~~ THEN DO ~SetGlobal("Marketh_Ring","GLOBAL",7)~ GOTO 21
  END

  IF ~~ THEN BEGIN Teleporting SAY @300000301
    IF ~RandomNum(5,1)~ THEN DO ~SetGlobal("CDMarkethTeleporting","GLOBAL",1)
                                 ForceSpellPoint([1375.300],WIZARD_DIMENSION_DOOR)
                                 SetGlobal("IwIHidden","LOCALS",1)
                                 Deactivate(Myself)~ EXIT
    IF ~RandomNum(5,2)~ THEN DO ~SetGlobal("CDMarkethTeleporting","GLOBAL",2)
                                 ForceSpellPoint([1375.300],WIZARD_DIMENSION_DOOR)
                                 SetGlobal("IwIHidden","LOCALS",1)
                                 Deactivate(Myself)~ EXIT
    IF ~RandomNum(5,3)~ THEN DO ~SetGlobal("CDMarkethTeleporting","GLOBAL",3)
                                 ForceSpellPoint([1375.300],WIZARD_DIMENSION_DOOR)
                                 SetGlobal("IwIHidden","LOCALS",1)
                                 Deactivate(Myself)~ EXIT
    IF ~RandomNum(5,4)~ THEN DO ~SetGlobal("CDMarkethTeleporting","GLOBAL",4)
                                 ForceSpellPoint([1375.300],WIZARD_DIMENSION_DOOR)
                                 SetGlobal("IwIHidden","LOCALS",1)
                                 Deactivate(Myself)~ EXIT
    IF ~RandomNum(5,5)~ THEN DO ~SetGlobal("CDMarkethTeleporting","GLOBAL",5)
                                 ForceSpellPoint([1375.300],WIZARD_DIMENSION_DOOR)
                                 SetGlobal("IwIHidden","LOCALS",1)
                                 Deactivate(Myself)~ EXIT
  END

END

// restore states for norl
//REPLACE_ACTION_TEXT DNORL ~SetGlobalTimer("Ring_Quest_Time","GLOBAL",ONE_DAY)~ ~SetGlobalTimer("Ring_Quest_Time","GLOBAL",2400)~ // speed up quest by popular demand
ADD_STATE_TRIGGER DNORL  1 ~GlobalLT("Marketh_Ring","GLOBAL",2)~
ADD_STATE_TRIGGER DNORL 11 ~Global("Marketh_Ring","GLOBAL",2)~
ADD_STATE_TRIGGER DNORL 12 ~Global("Marketh_Ring","GLOBAL",3)
                            !GlobalTimerExpired("Ring_Quest_Time","GLOBAL")~
ADD_STATE_TRIGGER DNORL 13 ~Global("Marketh_Ring","GLOBAL",3)
                            GlobalTimerExpired("Ring_Quest_Time","GLOBAL")~
ADD_STATE_TRIGGER DNORL 14 ~GlobalGT("Marketh_Ring","GLOBAL",3)
                            Global("SPRITE_IS_DEADMarketh","GLOBAL",0)~
ADD_STATE_TRIGGER DNORL 15 ~Global("SPRITE_IS_DEADMarketh","GLOBAL",1)~

ADD_TRANS_ACTION  DNORL BEGIN 8 END BEGIN 0 END ~SetGlobal("Marketh_Ring","GLOBAL",2)~

EXTEND_BOTTOM DNORL 1 2 3 4 5 6 7
  IF ~Global("Marketh_Ring","GLOBAL",1)~ THEN REPLY @300000305 GOTO 8
END

SET_WEIGHT DGINAFAE 27 #-99