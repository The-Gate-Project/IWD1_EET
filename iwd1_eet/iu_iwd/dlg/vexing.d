ADD_TRANS_TRIGGER dplanar 69 ~!PartyHasItem("vexed")
                              !PartyHasItem("vexed2")~ DO 6

EXTEND_BOTTOM DPLANAR 16
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

EXTEND_BOTTOM DPLANAR 26
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

EXTEND_BOTTOM DPLANAR 45
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

EXTEND_BOTTOM DPLANAR 51
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

EXTEND_BOTTOM DPLANAR 57
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

EXTEND_BOTTOM DPLANAR 69
  IF ~Global("Know_Vexing","GLOBAL",1)
      !Global("Know_Truename","GLOBAL",1)
      OR(2)
        PartyHasItem("vexed")
        PartyHasItem("vexed2")~ THEN REPLY @25298 DO ~SetGlobal("Know_Truename","GLOBAL",1)~ GOTO VexedVexed
END

APPEND DPLANAR

  IF ~~ THEN BEGIN VexedVexed SAY @25306
    IF ~~ THEN DO ~StartCutScene("cdvexcut")~ EXIT
  END

END

BEGIN CDVEX

IF ~True()~ THEN BEGIN OneAndOnly SAY @24280
  IF ~~ THEN DO ~TakePartyItemAll("vexed") 
                 TakePartyItemAll("vexed2")
                 GiveItemCreate("Vexed3",LastTalkedToBy,1,1,1)
                 AddJournalEntry(@23545,INFO)
                 DestroySelf()~ EXIT
END