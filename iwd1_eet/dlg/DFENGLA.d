BEGIN ~DFENGLA~

IF WEIGHT #2
~NumTimesTalkedTo(0)
 !Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 0
  SAY @8102
  IF ~~ THEN REPLY @8103 DO ~SetGlobal("Fengla_Talked","GLOBAL",1)
                             AddJournalEntry(@34277,QUEST)~ GOTO 2
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)
 !Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 1
  SAY @8104
  IF ~Global("Watchtower_Key","GLOBAL",0)~ THEN REPLY @8105 GOTO 7
  IF ~~ THEN REPLY @8106 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8107
  IF ~~ THEN REPLY @8108 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8109
  IF ~~ THEN REPLY @8114 DO ~AddJournalEntry(@23341,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @8115 GOTO 5
  IF ~~ THEN REPLY @8116 DO ~SetGlobal("Fengla_Jerk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8117
  IF ~~ THEN REPLY @8118 DO ~AddJournalEntry(@34092,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @8119
  IF ~~ THEN REPLY @8120 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8122
  IF ~Global("Watchtower_Key","GLOBAL",0)~ THEN REPLY @8123 GOTO 7
  IF ~~ THEN REPLY @8124 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8125
  IF ~~ THEN REPLY @8126 DO ~GiveItem("KeyWatc",LastTalkedToBy)
                             SetGlobal("Watchtower_Key","GLOBAL",1)
                             AddJournalEntry(@34422,QUEST)~ EXIT
  IF ~~ THEN REPLY @8127 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)
 Global("Fengla_Jerk","GLOBAL",1)
 !Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 8
  SAY @8128
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("SPRITE_IS_DEADKelly","GLOBAL",1)
 GlobalGT("SPRITE_IS_DEAD8002_Archers","GLOBAL",4)
 !Global("Fengla_Talked","GLOBAL",1)
 !Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 9
  SAY @10500
  IF ~~ THEN REPLY @10501 DO ~SetGlobal("Fengla_Reward","GLOBAL",1)
                              AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10502)
                              EraseJournalEntry(@34277)
                              EraseJournalEntry(@34092)
                              EraseJournalEntry(@34422)
                              AddJournalEntry(@34276,QUEST_DONE)
                              EscapeArea()~ EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADKelly","GLOBAL",1)
 GlobalGT("SPRITE_IS_DEAD8002_Archers","GLOBAL",4)
 Global("Fengla_Talked","GLOBAL",1)
 !Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 10
  SAY @10503
  IF ~~ THEN REPLY @10501 DO ~SetGlobal("Fengla_Reward","GLOBAL",1)
                              AddXP2DA("ID1EX10A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@10502)
                              EraseJournalEntry(@34277)
                              EraseJournalEntry(@34092)
                              EraseJournalEntry(@34422)
                              AddJournalEntry(@34242,QUEST_DONE)
                              EscapeArea()~ EXIT
END
