BEGIN ~DJHONEN~

IF WEIGHT #5
~NumTimesTalkedTo(0)
 Global("Jhonen_Leaving","GLOBAL",0)
 GlobalLT("Siren_Quest","GLOBAL",3)~ THEN BEGIN 0
  SAY @4383
  IF ~~ THEN REPLY @5079 GOTO 2
  IF ~~ THEN REPLY @5080 GOTO 3
  IF ~~ THEN REPLY @5081 EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)
 Global("Jhonen_Leaving","GLOBAL",0)
 GlobalLT("Siren_Quest","GLOBAL",3)~ THEN BEGIN 1
  SAY @5082
  IF ~Global("Siren_Quest","GLOBAL",2)~ THEN REPLY @5084 GOTO 9
  IF ~Global("Siren_Quest","GLOBAL",1)
      Global("Elisia_Vanish","GLOBAL",1)~ THEN REPLY @6386 GOTO 17
  IF ~Global("Siren_Quest","GLOBAL",0)~ THEN REPLY @5085 GOTO 2
  IF ~Global("Siren_Quest","GLOBAL",0)~ THEN REPLY @5086 GOTO 3
  IF ~~ THEN REPLY @5087 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5088
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @5089 GOTO 4
  IF ~~ THEN REPLY @5090 GOTO 6
  IF ~~ THEN REPLY @5091 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5092
  IF ~~ THEN REPLY @5093 GOTO 7
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @5095
  IF ~~ THEN REPLY @5096 GOTO 5
  IF ~~ THEN REPLY @5097 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5098
  IF ~~ THEN REPLY @5099 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @5100
  IF ~~ THEN REPLY @5093 GOTO 7
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5103
  IF ~Race(LastTalkedToBy,ELF)~ THEN REPLY @5104 GOTO 8
  IF ~Global("Siren_Quest","GLOBAL",2)~ THEN REPLY @5105 GOTO 10
  IF ~Global("Know_Elisia","GLOBAL",1)
      GlobalLT("Siren_Quest","GLOBAL",2)~ THEN REPLY @6385 GOTO 8
  IF ~~ THEN REPLY @5106 GOTO 8
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5108
  IF ~Global("Siren_Quest","GLOBAL",2)~ THEN REPLY @5105 GOTO 10
  IF ~Global("Know_Elisia","GLOBAL",1)
      GlobalLT("Siren_Quest","GLOBAL",2)
      Global ("Elisia_Vanish","GLOBAL",0)~ THEN REPLY @6383 DO ~SetGlobal("Siren_Quest","GLOBAL",1)~ GOTO 9
  IF ~GlobalLT("Siren_Quest","GLOBAL",2)
      Global ("Elisia_Vanish","GLOBAL",1)~ THEN REPLY @6384 GOTO 17
  IF ~Global("Know_Elisia","GLOBAL",0)
      GlobalLT("Siren_Quest","GLOBAL",2)~ THEN REPLY @5110 DO ~SetGlobal("Siren_Quest","GLOBAL",1)
                                                               AddJournalEntry(@2080,QUEST)~ GOTO 9
  IF ~GlobalLT("Siren_Quest","GLOBAL",2)
      Global("Elisia_Vanish","GLOBAL",0)~ THEN REPLY @1711 DO ~SetGlobal("Siren_Quest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @5112
  IF ~Global("Elisia_Vanish","GLOBAL",1)~ THEN REPLY @6382 GOTO 17
  IF ~Global("Siren_Quest","GLOBAL",2)~ THEN REPLY @5105 GOTO 10
  IF ~GlobalLT("Siren_Quest","GLOBAL",2)~ THEN REPLY @5114 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @5115
  IF ~~ THEN REPLY @5116 DO ~GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             GiveItemCreate("Dagg01",LastTalkedToBy,0,0,0)
                             IncrementGlobalOnce("Chaotic_Jhonen_1","GLOBAL","Law","GLOBAL",-1)
                             IncrementGlobalOnce("Evil_Jhonen_1","GLOBAL","Good","GLOBAL",-1)
                             AddXP2DA("ID1EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6306)
                             EraseJournalEntry(@2080)
                             EraseJournalEntry(@34497)
                             EraseJournalEntry(@23507)
                             AddJournalEntry(@2079,QUEST_DONE)~ GOTO 12
  IF ~PartyHasItem("JhoSwd1")~ THEN REPLY @5117 DO ~EraseJournalEntry(@2080)
                                                    EraseJournalEntry(@34497)
                                                    EraseJournalEntry(@23507)
                                                    AddJournalEntry(@11408,QUEST_DONE)~ GOTO 11
  IF ~!PartyHasItem("JhoSwd1")~ THEN REPLY @5118 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @5120
  IF ~~ THEN REPLY @5121 DO ~AddXP2DA("ID1EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@6257)
                             SetGlobal("Siren_Quest","GLOBAL",3)~ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @5122
  IF ~~ THEN REPLY @5123 DO ~SetGlobal("Jhonen_Leaving","GLOBAL",1)
                             EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @5124
  IF ~~ THEN REPLY @5125 DO ~TakePartyItem("JhoSwd1")~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @5126
  IF ~~ THEN REPLY @5127 EXIT
END

IF WEIGHT #3
~Global("Jhonen_Leaving","GLOBAL",1)~ THEN BEGIN 15
  SAY @5128
  IF ~~ THEN REPLY @5129 DO ~EscapeArea()~ EXIT
END

IF WEIGHT #4
~GlobalGT("Siren_Quest","GLOBAL",2)
 Global("Jhonen_Leaving","GLOBAL",0)~ THEN BEGIN 16
  SAY @5130
  IF ~~ THEN REPLY @5131 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @6380
  IF ~~ THEN REPLY @6381 DO ~GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             GiveItemCreate("Fish",LastTalkedToBy,0,0,0)
                             AddXP2DA("ID1EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@14332)
                             SetGlobal("Siren_Quest","GLOBAL",4)
                             EraseJournalEntry(@2080)
                             EraseJournalEntry(@34497)
                             EraseJournalEntry(@23507)
                             AddJournalEntry(@6294,QUEST_DONE)~ EXIT
END

IF WEIGHT #1
~GlobalGT("Know_Balance","GLOBAL",0)
 Global("Siren_Quest","GLOBAL",0)~ THEN BEGIN 18
  SAY @16138
  IF ~~ THEN REPLY @16139 GOTO 19
END

IF WEIGHT #2
~GlobalGT("Know_Balance","GLOBAL",0)
 GlobalGT("Siren_Quest","GLOBAL",0)~ THEN BEGIN 19
  SAY @16140
  IF ~Global("Siren_Quest","GLOBAL",0)~ THEN REPLY @16143 GOTO 20
  IF ~GlobalGT("Siren_Quest","GLOBAL",0)~ THEN REPLY @16144 GOTO 20
  IF ~GlobalGT("Freed_Everard","GLOBAL",0)
      GlobalLT("Siren_Quest","GLOBAL",3)~ THEN REPLY @16145 GOTO 23
  IF ~GlobalGT("Freed_Everard","GLOBAL",0)
      GlobalGT("Siren_Quest","GLOBAL",2)~ THEN REPLY @16145 GOTO 22
END

IF ~~ THEN BEGIN 20
  SAY @16147
  IF ~GlobalGT("Freed_Everard","GLOBAL",0)
      GlobalLT("Siren_Quest","GLOBAL",3)~ THEN REPLY @16148 GOTO 23
  IF ~GlobalGT("Freed_Everard","GLOBAL",0)
      GlobalGT("Siren_Quest","GLOBAL",2)~ THEN REPLY @16148 GOTO 22
  IF ~Global("Freed_Everard","GLOBAL",0)~ THEN REPLY @16150 DO ~AddJournalEntry(@15470,QUEST)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @16151
  IF ~GlobalLT("Siren_Quest","GLOBAL",3)~ THEN REPLY @16152 GOTO 23
  IF ~GlobalGT("Siren_Quest","GLOBAL",2)~ THEN REPLY @16152 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @16154
  IF ~~ THEN REPLY @16155 DO ~GiveItemCreate("JhoSwd2",LastTalkedToBy,0,0,0)
                              AddXP2DA("ID1EX12A")
                              DisplayStringNoNameDlg(LastTalkedToBy,@16141)~ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @16157
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @16162 DO ~SetGlobal("Jhonen_Done","GLOBAL",1)
                                                                 EscapeArea()~ EXIT
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @16164 DO ~SetGlobal("Jhonen_Done","GLOBAL",1)
                                                                  EscapeArea()~ EXIT
END

IF WEIGHT #0
~GlobalGT("Jhonen_Done","GLOBAL",0)~ THEN BEGIN 24
  SAY @16166
  IF ~~ THEN REPLY @16164 DO ~EscapeArea()~ EXIT
END
