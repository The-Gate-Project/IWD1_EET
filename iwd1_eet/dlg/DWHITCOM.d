BEGIN ~DWHITCOM~

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0)
    GlobalLT("Kuldahar_Attack","GLOBAL",3)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 0
  SAY @27
  IF ~Global("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @1705 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @1706 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1707 GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY @10079 GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1)
      Global("SPRITE_IS_DEADLysan","GLOBAL",0)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @1709 GOTO 4
  IF ~Global("Know_Lysan","GLOBAL",2)
      Global("SPRITE_IS_DEADLysan","GLOBAL",1)
      Global("Lysan_Stuff","GLOBAL",0)~ THEN REPLY @1710 GOTO 6
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 1
  SAY @1712
  IF ~~ THEN REPLY @1713 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1714 GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY @10079 GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1)
      Global("SPRITE_IS_DEADLysan","GLOBAL",0)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @1709 GOTO 4
  IF ~Global("Know_Lysan","GLOBAL",2)
      Global("SPRITE_IS_DEADLysan","GLOBAL",1)
      Global("Lysan_Stuff","GLOBAL",0)~ THEN REPLY @1710 GOTO 6
  IF ~~ THEN REPLY @1718 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 2
  SAY @1719
  IF ~~ THEN REPLY @1713 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1714 GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY @10079 GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1)
      Global("SPRITE_IS_DEADLysan","GLOBAL",0)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @1709 GOTO 4
  IF ~Global("Know_Lysan","GLOBAL",2)
      Global("SPRITE_IS_DEADLysan","GLOBAL",1)
      Global("Lysan_Stuff","GLOBAL",0)~ THEN REPLY @1710 GOTO 6
  IF ~~ THEN REPLY @1718 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1726
  IF ~~ THEN REPLY @1727 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1714 GOTO 5
  IF ~Global("Know_Lysan","GLOBAL",1)
      Global("SPRITE_IS_DEADLysan","GLOBAL",0)
      Gender(LastTalkedToBy,Male)~ THEN REPLY @1709 GOTO 4
  IF ~Global("Know_Lysan","GLOBAL",2)
      Global("SPRITE_IS_DEADLysan","GLOBAL",1)
      Global("Lysan_Stuff","GLOBAL",0)~ THEN REPLY @1710 GOTO 6
  IF ~~ THEN REPLY @1718 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1733
  IF ~~ THEN REPLY @1734 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @1735 GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY @10079 GOTO 3
  IF ~~ THEN REPLY @1718 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1738
  IF ~~ THEN REPLY @1739 DO ~StartStore("KUTav",LastTalkedToBy)~ EXIT
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY @10079 GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1)
      Global("SPRITE_IS_DEADLysan","GLOBAL",0)
      Gender(LastTalkedToBy,MALE)~ THEN REPLY @1709 GOTO 4
  IF ~Global("Know_Lysan","GLOBAL",2)
      Global("SPRITE_IS_DEADLysan","GLOBAL",1)
      Global("Lysan_Stuff","GLOBAL",0)~ THEN REPLY @1710 GOTO 6
  IF ~~ THEN REPLY @1743 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1744
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @1745 DO ~SetGlobal("Lysan_Stuff","GLOBAL",1)~ GOTO 7
  IF ~!Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @1746 DO ~SetGlobal("Lysan_Stuff","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1747
  IF ~~ THEN REPLY @1748 GOTO 8
  IF ~~ THEN REPLY @1749 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @1750
  IF ~~ THEN REPLY @1751 DO ~AddJournalEntry(@34499,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @1752 DO ~AddJournalEntry(@34499,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @1753
  IF ~~ THEN REPLY @1754 GOTO 8
END

IF ~~ THEN BEGIN 10
  SAY @1755
  IF ~~ THEN REPLY @1756 DO ~GiveItemCreate("Scrl56",LastTalkedToBy,1,0,0)
                             GiveItemCreate("Scrl61",LastTalkedToBy,1,0,0)
                             GiveItemCreate("Scrl06",LastTalkedToBy,1,0,0)
                             GiveItemCreate("MantleCS",LastTalkedToBy,3,0,0)~ EXIT
  IF ~~ THEN REPLY @1757 DO ~GiveItemCreate("Scrl56",LastTalkedToBy,1,0,0)
                             GiveItemCreate("Scrl61",LastTalkedToBy,1,0,0)
                             GiveItemCreate("Scrl06",LastTalkedToBy,1,0,0)
                             GiveItemCreate("MantleCS",LastTalkedToBy,3,0,0)~ EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 11
  SAY @2949
  IF ~~ THEN REPLY @2950 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2951 EXIT
END
