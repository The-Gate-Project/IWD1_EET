BEGIN ~DGRISELL~

IF WEIGHT #0
~NumTimesTalkedTo(0)
 Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0
  SAY @134
  IF ~~ THEN REPLY @147 GOTO 2
  IF ~~ THEN REPLY @148 GOTO 9
  IF ~~ THEN REPLY @149 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)
 Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 1
  SAY @135
  IF ~Global("Grisella_Quest","GLOBAL",0)~ THEN REPLY @150 GOTO 2
  IF ~Global("Grisella_Quest","GLOBAL",2)~ THEN REPLY @151 DO ~StartStore("EHTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @152 GOTO 9
  IF ~~ THEN REPLY @153 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @136
  IF ~~ THEN REPLY @154 GOTO 3
  IF ~~ THEN REPLY @155 GOTO 3
  IF ~~ THEN REPLY @156 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @137
  IF ~~ THEN REPLY @157 GOTO 4
  IF ~~ THEN REPLY @158 GOTO 4
  IF ~~ THEN REPLY @159 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @138
  IF ~~ THEN REPLY @160 GOTO 5
  IF ~~ THEN REPLY @161 GOTO 5
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @139
  IF ~GlobalGT("SPRITE_IS_DEADEhBeetle","GLOBAL",3)~ THEN REPLY @18306 DO ~SetGlobal("Grisella_Quest","GLOBAL",2)
                                                                           AddXP2DA("ID1EX1E")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@14978)
                                                                           GiveGoldForce(5)
                                                                           EraseJournalEntry(@120001)
                                                                           AddJournalEntry(@120002,QUEST_DONE)~ GOTO 13
  IF ~!GlobalGT("SPRITE_IS_DEADEhBeetle","GLOBAL",3)~ THEN REPLY @163 GOTO 6
  IF ~~ THEN REPLY @164 GOTO 10
  IF ~~ THEN REPLY @165 GOTO 10
  IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @140
  IF ~~ THEN REPLY @167 DO ~SetGlobal("Grisella_Quest","GLOBAL",1)
                            AddJournalEntry(@120001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @168 GOTO 8
  IF ~~ THEN REPLY @169 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @141
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @142
  IF ~~ THEN REPLY @170 DO ~SetGlobal("Grisella_Quest","GLOBAL",1)
                            SetGlobal("Grisella_Cash","GLOBAL",1)
                            AddJournalEntry(@120001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @171 DO ~SetGlobal("Grisella_Quest","GLOBAL",1)
                            SetGlobal("Grisella_Cash","GLOBAL",1)
                            AddJournalEntry(@120001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @172 GOTO 11
  IF ~~ THEN REPLY @174 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @143
  IF ~Global("Grisella_Quest","GLOBAL",0)~ THEN REPLY @175 GOTO 2
  IF ~Global("Grisella_Quest","GLOBAL",2)~ THEN REPLY @176 DO ~StartStore("EHTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @177 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @144
  IF ~~ THEN REPLY @178 GOTO 6
  IF ~~ THEN REPLY @179 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @145
  IF ~~ THEN REPLY @180 DO ~SetGlobal("Grisella_Quest","GLOBAL",1)
                            SetGlobal("Grisella_Cash","GLOBAL",1)
                            AddJournalEntry(@120001,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @181 EXIT
END

IF WEIGHT #1
~Global("Grisella_Quest","GLOBAL",1)
 Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 12
  SAY @146
  IF ~GlobalLT("SPRITE_IS_DEADEhBeetle","GLOBAL",4)~ THEN REPLY @182 EXIT
  IF ~GlobalLT("SPRITE_IS_DEADEhBeetle","GLOBAL",4)~ THEN REPLY @183 EXIT
  IF ~GlobalGT("SPRITE_IS_DEADEhBeetle","GLOBAL",3)
      Global("Grisella_Cash","GLOBAL",0)~ THEN REPLY @184 DO ~SetGlobal("Grisella_Quest","GLOBAL",2)
                                                              AddXP2DA("ID1EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@14978)
                                                              GiveGoldForce(5)
                                                              EraseJournalEntry(@120001)
                                                              AddJournalEntry(@120002,QUEST_DONE)~ GOTO 13
  IF ~GlobalGT("SPRITE_IS_DEADEhBeetle","GLOBAL",3)
      Global("Grisella_Cash","GLOBAL",1)~ THEN REPLY @184 DO ~SetGlobal("Grisella_Quest","GLOBAL",2)
                                                              AddXP2DA("ID1EX1E")
                                                              DisplayStringNoNameDlg(LastTalkedToBy,@14978)
                                                              GiveGoldForce(5)
                                                              EraseJournalEntry(@120001)
                                                              AddJournalEntry(@120002,QUEST_DONE)~ GOTO 13
  IF ~GlobalGT("SPRITE_IS_DEADEhBeetle","GLOBAL",3)~ THEN REPLY @18322 DO ~SetGlobal("Grisella_Quest","GLOBAL",2)
                                                                           AddXP2DA("ID1EX1E")
                                                                           DisplayStringNoNameDlg(LastTalkedToBy,@14978)
                                                                           GivePartyGold(5)
                                                                           EraseJournalEntry(@120001)
                                                                           AddJournalEntry(@120002,QUEST_DONE)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @173
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~GlobalGT("Know_Balance","GLOBAL",0)
 Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 14
  SAY @18304
  IF ~~ THEN REPLY @18299 EXIT
END

IF WEIGHT #4
~GlobalGT("Know_Balance","GLOBAL",0)
 Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 15
  SAY @18305
  IF ~~ THEN REPLY @18109 EXIT
END
