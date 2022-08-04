BEGIN ~DQUINN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21776
  IF ~~ THEN REPLY @21777 GOTO 1
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21780 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @21781
  IF ~!Class(LastTalkedToBy,CLERIC_ALL)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @21782 GOTO 3
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21783 GOTO 4
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @21783 GOTO 4
  IF ~Global("Tybald_Work","GLOBAL",1)
      Global("Quinn_Tybald","GLOBAL",0)~ THEN REPLY @21872 DO ~SetGlobal("Quinn_Tybald","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21787 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @21788
  IF ~~ THEN REPLY @21789 GOTO 5
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21792
  IF ~~ THEN REPLY @21793 GOTO 4
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21797
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~Global("Tybald_Work","GLOBAL",1)
      Global("Quinn_Tybald","GLOBAL",0)~ THEN REPLY @21872 DO ~SetGlobal("Quinn_Tybald","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21801
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @21802 GOTO 6
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @21802 GOTO 6
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @21804 GOTO 7
  IF ~Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @21804 GOTO 7
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21808
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21811
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21791 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @21814
  IF ~~ THEN REPLY @21777 GOTO 1
  IF ~~ THEN REPLY @21778 DO ~StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~Global("Tybald_Work","GLOBAL",1)
      Global("Quinn_Tybald","GLOBAL",0)~ THEN REPLY @21872 DO ~SetGlobal("Quinn_Tybald","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @21662 GOTO 2
  IF ~~ THEN REPLY @21780 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @21873
  IF ~~ THEN REPLY @18582 DO ~AddJournalEntry(@34112,QUEST)
                              StartStore("Waukeen",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @21874 DO ~AddJournalEntry(@34112,QUEST)~ EXIT
END
