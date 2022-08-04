BEGIN ~DKERISH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @4000
  IF ~~ THEN REPLY @9053 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 2
  IF ~~ THEN REPLY @9055 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 3
  IF ~~ THEN REPLY @9056 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 4
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @9054
  IF ~~ THEN REPLY @148 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 6
  IF ~Global("Get_Key","GLOBAL",3)
      Global("Got_KeyDug","GLOBAL",0)~ THEN REPLY @9058 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 19
  IF ~Global("Kill_Vera","GLOBAL",1)~ THEN REPLY @9059 DO ~SetGlobal("Kill_Vera","GLOBAL",3)
                                                           SetGlobal("Kerish_Talk","GLOBAL",0)
                                                           AddJournalEntry(@4680,QUEST)~ GOTO 21
  IF ~Global("Kill_Vera","GLOBAL",2)~ THEN REPLY @9060 DO ~SetGlobal("Kill_Vera","GLOBAL",3)
                                                           SetGlobal("Kerish_Talk","GLOBAL",0)
                                                           AddJournalEntry(@4680,QUEST)~ GOTO 21
  IF ~Global("Kill_Vera","GLOBAL",3)~ THEN REPLY @9061 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 22
  IF ~Global("Return_Slaves","GLOBAL",1)~ THEN REPLY @9062 DO ~SetGlobal("Return_Slaves","GLOBAL",3)
                                                               SetGlobal("Kerish_Talk","GLOBAL",0)
                                                               AddJournalEntry(@4649,QUEST)~ GOTO 21
  IF ~Global("Return_Slaves","GLOBAL",2)~ THEN REPLY @9063 DO ~SetGlobal("Return_Slaves","GLOBAL",3)
                                                               SetGlobal("Kerish_Talk","GLOBAL",0)
                                                               AddJournalEntry(@4649,QUEST)~ GOTO 21
  IF ~Global("Return_Slaves","GLOBAL",3)~ THEN REPLY @9064 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ GOTO 27
  IF ~~ THEN REPLY @8807 DO ~SetGlobal("Kerish_Talk","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9069
  IF ~~ THEN REPLY @9070 GOTO 5
  IF ~~ THEN REPLY @9071 GOTO 25
  IF ~~ THEN REPLY @9072 GOTO 18
END

IF ~~ THEN BEGIN 3
  SAY @9073
  IF ~~ THEN REPLY @9074 GOTO 5
  IF ~~ THEN REPLY @9071 GOTO 25
  IF ~~ THEN REPLY @9072 GOTO 18
END

IF ~~ THEN BEGIN 4
  SAY @9077
  IF ~~ THEN REPLY @9078 GOTO 5
  IF ~~ THEN REPLY @9071 DO ~AddJournalEntry(@9081,QUEST)~ GOTO 25
  IF ~~ THEN REPLY @9072 GOTO 18
END

IF ~~ THEN BEGIN 5
  SAY @9082
  IF ~~ THEN REPLY @8806 GOTO 6
  IF ~~ THEN REPLY @9072 GOTO 18
END

IF ~~ THEN BEGIN 6
  SAY @9084
  IF ~~ THEN REPLY @9085 GOTO 7
  IF ~~ THEN REPLY @1500 GOTO 8
  IF ~~ THEN REPLY @9087 DO ~SetGlobal("Joril_Kill_Dad","GLOBAL",1)
                             AddJournalEntry(@34265,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @9088 DO ~AddJournalEntry(@2071,QUEST)~ GOTO 12
  IF ~Global("Get_Key","GLOBAL",3)
      Global("Got_KeyDug","GLOBAL",0)~ THEN REPLY @9089 GOTO 19
  IF ~~ THEN REPLY @2566 GOTO 18
END

IF ~~ THEN BEGIN 7
  SAY @9093
  IF ~~ THEN REPLY @9094 GOTO 6
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 8
  SAY @9096
  IF ~~ THEN REPLY @9097 GOTO 9
  IF ~~ THEN REPLY @9098 GOTO 6
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 9
  SAY @9100
  IF ~~ THEN REPLY @9101 GOTO 6
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY @9109
  IF ~~ THEN REPLY @9110 DO ~SetGlobal("Fool_Joril","GLOBAL",1)
                             AddJournalEntry(@16526,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @9111 GOTO 11
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 11
  SAY @9113
  IF ~~ THEN REPLY @9114 DO ~SetGlobal("Fool_Joril","GLOBAL",1)
                             AddJournalEntry(@16526,QUEST)~ GOTO 26
  IF ~~ THEN REPLY @8082 GOTO 6
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 12
  SAY @9117
  IF ~~ THEN REPLY @9118 DO ~AddJournalEntry(@19364,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 13
  SAY @9120
  IF ~~ THEN REPLY @9121 DO ~AddJournalEntry(@20867,QUEST)~ GOTO 14
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 14
  SAY @9123
  IF ~~ THEN REPLY @9124 GOTO 15
  IF ~~ THEN REPLY @16044 GOTO 30
  IF ~~ THEN REPLY @9095 GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @9126
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @9127 DO ~SetGlobal("Kill_Vera","GLOBAL",3)
                                                                AddJournalEntry(@20179,QUEST)~ GOTO 16
  IF ~~ THEN REPLY @9128 DO ~SetGlobal("Kill_Vera","GLOBAL",2)
                             AddJournalEntry(@11854,QUEST)~ GOTO 17
  IF ~~ THEN REPLY @9129 DO ~SetGlobal("Kill_Vera","GLOBAL",1)
                             AddJournalEntry(@19284,QUEST)~ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @9130
  IF ~~ THEN REPLY @9131 GOTO 6
  IF ~~ THEN REPLY @9132 GOTO 18
END

IF ~~ THEN BEGIN 17
  SAY @9133
  IF ~~ THEN REPLY @9131 GOTO 6
  IF ~~ THEN REPLY @9132 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @9137
  IF ~~ THEN REPLY @9140 DO ~SetGlobal("Kerish_Look","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9142
  IF ~~ THEN REPLY @9143 DO ~GiveItem("KeyDug",LastTalkedToBy)
                             AddJournalEntry(@15762,QUEST)~ GOTO 20
  IF ~~ THEN REPLY @9146 DO ~GiveItem("KeyDug",LastTalkedToBy)
                             AddJournalEntry(@15762,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @9147
  IF ~~ THEN REPLY @9148 DO ~AddXP2DA("ID1EX10E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@9051)
                             SetGlobal("Got_KeyDug","GLOBAL",1)~ GOTO 18
END

IF ~~ THEN BEGIN 21
  SAY @9149
  IF ~~ THEN REPLY @9150 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @9151
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",1)~ THEN REPLY @9152 DO ~SetGlobal("Kill_Vera","GLOBAL",4)
                                                                    AddXP2DA("ID1EX10A")
                                                                    DisplayStringNoNameDlg(LastTalkedToBy,@9050)
                                                                    EraseJournalEntry(@16940)
                                                                    EraseJournalEntry(@34217)
                                                                    EraseJournalEntry(@34211)
                                                                    EraseJournalEntry(@34207)
                                                                    EraseJournalEntry(@4680)
                                                                    EraseJournalEntry(@20179)
                                                                    EraseJournalEntry(@11854)
                                                                    EraseJournalEntry(@19284)
                                                                    EraseJournalEntry(@34300)
                                                                    EraseJournalEntry(@18696)
                                                                    EraseJournalEntry(@16352)
                                                                    EraseJournalEntry(@15706)
                                                                    EraseJournalEntry(@16002)
                                                                    EraseJournalEntry(@34413)
                                                                    AddJournalEntry(@23552,QUEST_DONE)~ GOTO 23
  IF ~Global("Heard_Vera_Dead","GLOBAL",1)~ THEN REPLY @9154 DO ~SetGlobal("Kill_Vera","GLOBAL",4)
                                                                 AddXP2DA("ID1EX10E")
                                                                 DisplayStringNoNameDlg(LastTalkedToBy,@9050)
                                                                 EraseJournalEntry(@16940)
                                                                 EraseJournalEntry(@34217)
                                                                 EraseJournalEntry(@34211)
                                                                 EraseJournalEntry(@34207)
                                                                 EraseJournalEntry(@4680)
                                                                 EraseJournalEntry(@20179)
                                                                 EraseJournalEntry(@11854)
                                                                 EraseJournalEntry(@19284)
                                                                 EraseJournalEntry(@34300)
                                                                 EraseJournalEntry(@18696)
                                                                 EraseJournalEntry(@16352)
                                                                 EraseJournalEntry(@15706)
                                                                 EraseJournalEntry(@16002)
                                                                 EraseJournalEntry(@34413)
                                                                 AddJournalEntry(@20469,QUEST_DONE)~ GOTO 24
  IF ~Global("SPRITE_IS_DEADVERA","GLOBAL",0)~ THEN REPLY @9156 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @9157
  IF ~~ THEN REPLY @9160 GOTO 28
END

IF ~~ THEN BEGIN 24
  SAY @9161
  IF ~~ THEN REPLY @9162 DO ~SetGlobal("Return_Slaves","GLOBAL",3)
                             AddJournalEntry(@16319,QUEST)~ EXIT
  IF ~~ THEN REPLY @9163 DO ~SetGlobal("Return_Slaves","GLOBAL",2)
                             AddJournalEntry(@15707,QUEST)~ EXIT
  IF ~~ THEN REPLY @9164 DO ~SetGlobal("Return_Slaves","GLOBAL",1)
                             AddJournalEntry(@15739,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @9165
  IF ~~ THEN REPLY @9166 GOTO 5
END

IF ~~ THEN BEGIN 26
  SAY @9167
  IF ~~ THEN REPLY @9168 GOTO 11
  IF ~~ THEN REPLY @9169 GOTO 6
END

IF ~~ THEN BEGIN 27
  SAY @9170
  IF ~Global("SPRITE_IS_DEADGareth","GLOBAL",1)~ THEN REPLY @9171 DO ~SetGlobal("Return_Slaves","GLOBAL",4)
                                                                      AddXP2DA("ID1EX10E")
                                                                      DisplayStringNoNameDlg(LastTalkedToBy,@9052)
                                                                      EraseJournalEntry(@4649)
                                                                      EraseJournalEntry(@2071)
                                                                      EraseJournalEntry(@19364)
                                                                      EraseJournalEntry(@20867)
                                                                      EraseJournalEntry(@15762)
                                                                      EraseJournalEntry(@16319)
                                                                      EraseJournalEntry(@15707)
                                                                      EraseJournalEntry(@15739)
                                                                      EraseJournalEntry(@18695)
                                                                      EraseJournalEntry(@18699)
                                                                      EraseJournalEntry(@34417)
                                                                      EraseJournalEntry(@34418)
                                                                      EraseJournalEntry(@34416)
                                                                      EraseJournalEntry(@34407)
                                                                      EraseJournalEntry(@34399)
                                                                      EraseJournalEntry(@34391)
                                                                      AddJournalEntry(@34315,QUEST_DONE)~ GOTO 29
  IF ~Global("SPRITE_IS_DEADGareth","GLOBAL",0)~ THEN REPLY @9172 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @9173
  IF ~~ THEN REPLY @9162 DO ~SetGlobal("Return_Slaves","GLOBAL",3)
                             AddJournalEntry(@16319,QUEST)~ EXIT
  IF ~~ THEN REPLY @9163 DO ~SetGlobal("Return_Slaves","GLOBAL",2)
                             AddJournalEntry(@15707,QUEST)~ EXIT
  IF ~~ THEN REPLY @9164 DO ~SetGlobal("Return_Slaves","GLOBAL",1)
                             AddJournalEntry(@15739,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @9176
  IF ~~ THEN REPLY @9177 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @16045
  IF ~~ THEN REPLY @16046 GOTO 15
  IF ~~ THEN REPLY @16047 GOTO 18
END
