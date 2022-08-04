BEGIN ~DELISIA~

IF ~GlobalLT("Siren_Quest","GLOBAL",2)~ THEN BEGIN 0
  SAY @4384
  IF ~Global("Siren_Quest","GLOBAL",1)~ THEN REPLY @5132 DO ~SetGlobal("Know_Elisia","GLOBAL",1)~ GOTO 5
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Global("Bard_Greeting","GLOBAL",0)~ THEN REPLY @5153 DO ~SetGlobal("Bard_Greeting","GLOBAL",1)
                                                               AddXP2DA("ID1EX1E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@30979)
                                                               SetGlobal("Know_Elisia","GLOBAL",1)
                                                               AddJournalEntry(@23507,QUEST)~ GOTO 3
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Global("Bard_Greeting","GLOBAL",1)~ THEN REPLY @5157 EXIT
  IF ~Race(LastTalkedToBy,ELF)
      !Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @5160 DO ~SetGlobal("Know_Elisia","GLOBAL",1)
                                                            AddJournalEntry(@23507,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @5168 DO ~SetGlobal("Know_Elisia","GLOBAL",1)
                             AddJournalEntry(@23507,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @5171 DO ~SetGlobal("Know_Elisia","GLOBAL",1)
                             AddJournalEntry(@23507,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @5175 DO ~SetGlobal("Know_Elisia","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5179
  IF ~Global("Siren_Quest","GLOBAL",1)~ THEN REPLY @5132 GOTO 5
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Global("Bard_Greeting","GLOBAL",0)~ THEN REPLY @5153 DO ~SetGlobal("Bard_Greeting","GLOBAL",1)
                                                               AddXP2DA("ID1EX1E")
                                                               DisplayStringNoNameDlg(LastTalkedToBy,@30979)~ GOTO 3
  IF ~Class(LastTalkedToBy,BARD_ALL)
      Global("Bard_Greeting","GLOBAL",1)~ THEN REPLY @5157 EXIT
  IF ~~ THEN REPLY @5196 GOTO 2
  IF ~~ THEN REPLY @5199 DO ~IncrementGlobalOnce("Evil_Elisia_1","GLOBAL","Good","GLOBAL",-1)~ GOTO 2
  IF ~~ THEN REPLY @5251 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5254
  IF ~~ THEN DO ~SetGlobal("Elisia_Vanish","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @5257
  IF ~Global("Siren_Quest","GLOBAL",1)~ THEN REPLY @5132 GOTO 5
  IF ~Global("Siren_Quest","GLOBAL",0)~ THEN REPLY @5261 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5271
  IF ~~ THEN REPLY @5277 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @5278
  IF ~~ THEN REPLY @5279 DO ~SetGlobal("Siren_Quest","GLOBAL",2)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5282
  IF ~~ THEN REPLY @5292 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @5293
  IF ~~ THEN REPLY @5305 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @5373
  IF ~~ THEN REPLY @5374 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @5375
  IF ~~ THEN REPLY @5376 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @5377
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @5378 GOTO 13
  IF ~!Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @5379 DO ~GiveItemCreate("JhoSwd1",LastTalkedToBy,0,0,0)~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @5380
  IF ~~ THEN REPLY @5381 DO ~AddJournalEntry(@34497,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @5382
  IF ~~ THEN REPLY @5383 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @5384
  IF ~~ THEN REPLY @5385 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @5386
  IF ~~ THEN REPLY @5388 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @5394
  IF ~~ THEN REPLY @5397 DO ~AddXP2DA("ID1EX1E")
                             DisplayStringNoNameDlg(LastTalkedToBy,@30851)~ GOTO 16
  IF ~~ THEN REPLY @5413 DO ~GiveItemCreate("EliGem",LastTalkedToBy,5,0,0)~ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @5416
  IF ~~ THEN REPLY @5660 DO ~GiveItemCreate("JhoSwd1",LastTalkedToBy,0,0,0)~ GOTO 11
  IF ~~ THEN REPLY @5661 DO ~GiveItemCreate("EliGem", LastTalkedToBy,5,0,0)
                             IncrementGlobalOnce("Chaotic_Elisia_1","GLOBAL","Law","GLOBAL",-1)
                             IncrementGlobalOnce("Evil_Elisia_2","GLOBAL","Good","GLOBAL",-1)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @5662
  IF ~~ THEN REPLY @5663 DO ~GiveItemCreate("JhoSwd1",LastTalkedToBy,0,0,0)
                             AddJournalEntry(@34497,QUEST)~ GOTO 11
END

IF ~GlobalGT("Siren_Quest","GLOBAL",1)~ THEN BEGIN 18
  SAY @5664
  IF ~Global("Siren_Quest","GLOBAL",3)~ THEN REPLY @5665 DO ~AddXP2DA("ID1EX1E")
                                                             DisplayStringNoNameDlg(LastTalkedToBy,@14333)
                                                             GiveItemCreate("Misc36", LastTalkedToBy,0,0,0)
                                                             EraseJournalEntry(@2080)
                                                             EraseJournalEntry(@34497)
                                                             EraseJournalEntry(@23507)
                                                             AddJournalEntry(@16320,QUEST_DONE)~ GOTO 19
  IF ~Global("Siren_Quest","GLOBAL",2)~ THEN REPLY @5666 DO ~GiveItemCreate("Misc36",LastTalkedToBy,0,0,0)
                                                             EraseJournalEntry(@2080)
                                                             EraseJournalEntry(@34497)
                                                             EraseJournalEntry(@23507)
                                                             AddJournalEntry(@15731,QUEST_DONE)~ GOTO 20
  IF ~~ THEN REPLY @5667 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @5668
  IF ~~ THEN REPLY @5670 DO ~SetGlobal("Siren_Quest","GLOBAL",4)
                             SetGlobal("Elisia_Vanish","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @5668
  IF ~~ THEN REPLY @6869 DO ~SetGlobal("Elisia_Vanish","GLOBAL",1)~ EXIT
END
