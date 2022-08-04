BEGIN ~DAMELIA~

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0)
    GlobalLT("Kuldahar_Attack","GLOBAL",3)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 0
  SAY @25
  IF ~Global("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @1705 GOTO 10
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY @1706 GOTO 10
  IF ~~ THEN REPLY @1763 DO ~IncrementGlobalOnce("Evil_Amelia_1","GLOBAL","Good","GLOBAL",-1)~ EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 1
  SAY @1761
  IF ~~ THEN REPLY @1764 GOTO 2
  IF ~~ THEN REPLY @1765 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @1768
  IF ~~ THEN REPLY @1769 GOTO 10
  IF ~Global("Kuldahar_Attack","GLOBAL",0)~ THEN REPLY @1770 GOTO 11
  IF ~~ THEN REPLY @1771 GOTO 4
  IF ~~ THEN REPLY @1772 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 3
  SAY @1773
  IF ~~ THEN REPLY @1769 GOTO 10
  IF ~Global("Kuldahar_Attack","GLOBAL",0)~ THEN REPLY @1770 GOTO 11
  IF ~~ THEN REPLY @1707 GOTO 4
  IF ~~ THEN REPLY @1772 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1779
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @1780 GOTO 5
  IF ~Race(LastTalkedToBy,HALFLING)
      Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @1781 GOTO 5
  IF ~Global("Aldwin_Eidan","GLOBAL",0)~ THEN REPLY @1782 GOTO 5
  IF ~Global("Aldwin_Eidan","GLOBAL",1)~ THEN REPLY @1783 GOTO 9
  IF ~GlobalGT("Aldwin_Eidan","GLOBAL",1)~ THEN REPLY @18562 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @1784
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Aldwin_Story","GLOBAL",0)~ THEN REPLY @1785 DO ~SetGlobal("Aldwin_Story","GLOBAL",1)
                                                              AddJournalEntry(@2073,QUEST)~ GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Aldwin_Story","GLOBAL",0)~ THEN REPLY @1785 DO ~SetGlobal("Aldwin_Story","GLOBAL",1)
                                                              AddJournalEntry(@2057,QUEST)~ GOTO 6
  IF ~!Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Aldwin_Story","GLOBAL",1)~ THEN REPLY @1785 GOTO 6
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Global("Aldwin_Story","GLOBAL",1)~ THEN REPLY @1785 GOTO 6
  IF ~Global("Aldwin_Eidan","GLOBAL",2)~ THEN REPLY @1789 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @1790
  IF ~~ THEN REPLY @1791 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1792
  IF ~~ THEN REPLY @1793 GOTO 8
  IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @1794 GOTO 8
  IF ~~ THEN REPLY @1795 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1796
  IF ~~ THEN REPLY @1797 GOTO 10
  IF ~Global("Kuldahar_Attack","GLOBAL",0)~ THEN REPLY @1798 GOTO 11
  IF ~~ THEN REPLY @1799 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1800
  IF ~~ THEN REPLY @1801 GOTO 10
  IF ~Global("Kuldahar_Attack","GLOBAL",0)~ THEN REPLY @1802 GOTO 11
  IF ~~ THEN REPLY @1803 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1804
  IF ~Global("Kuldahar_Attack","GLOBAL",0)~ THEN REPLY @1805 DO ~SetGlobal("Amelia_Whitcomb","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @1806 DO ~SetGlobal("Amelia_Whitcomb","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @1807 DO ~SetGlobal("Amelia_Whitcomb","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1808
  IF ~~ THEN REPLY @1809 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @1810
  IF ~~ THEN REPLY @1785 GOTO 13
  IF ~~ THEN REPLY @1812 GOTO 10
  IF ~~ THEN REPLY @1813 GOTO 4
  IF ~~ THEN REPLY @1814 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1815
  IF ~~ THEN REPLY @1816 GOTO 10
  IF ~~ THEN REPLY @1817 GOTO 4
  IF ~~ THEN REPLY @1818 EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 14
  SAY @2952
  IF ~~ THEN REPLY @2953 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @2954 EXIT
END
