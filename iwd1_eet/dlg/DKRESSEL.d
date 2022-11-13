BEGIN ~DKRESSEL~

IF WEIGHT #4
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1595
  IF ~~ THEN REPLY @1596 GOTO 2
  IF ~~ THEN REPLY @1597 GOTO 3
  IF ~~ THEN REPLY @1598 GOTO 14
  IF ~~ THEN REPLY @1599 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1600
  IF ~~ THEN REPLY @1597 GOTO 3
  IF ~~ THEN REPLY @1598 GOTO 14
  IF ~~ THEN REPLY @1599 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1604
  IF ~~ THEN REPLY @1597 GOTO 3
  IF ~~ THEN REPLY @1598 GOTO 14
  IF ~~ THEN REPLY @1599 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1609
  IF ~~ THEN REPLY @1610 GOTO 4
  IF ~~ THEN REPLY @1598 GOTO 14
  IF ~~ THEN REPLY @1612 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1613
  IF ~~ THEN REPLY @1615 DO ~SetGlobal("Kress_Tale","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @1616 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16728
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16729
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16730
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @16731
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @16732
  IF ~~ THEN REPLY @1620 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @16733
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @16734
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @16735
  IF ~~ THEN REPLY @1622 GOTO 13
  IF ~~ THEN REPLY @1623 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @1624
  IF ~~ THEN REPLY @1623 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @1626
  IF ~GlobalGT("Kress_Tale","GLOBAL",0)~ THEN REPLY @1627 GOTO 15
  IF ~Global("Kress_Tale","GLOBAL",0)~ THEN REPLY @1628 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @16741
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @16742
  IF ~~ THEN REPLY @1630 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @1631
  IF ~Global("SPRITE_IS_DEADLysan","GLOBAL",0)~ THEN REPLY @1632 GOTO 18
  IF ~Global("SPRITE_IS_DEADLysan","GLOBAL",1)~ THEN REPLY @1632 DO ~SetGlobal("Kress_Quest","GLOBAL",4)
                                                                     AddXP2DA("ID1EX5A")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@7915)~ GOTO 34
END

IF ~~ THEN BEGIN 18
  SAY @16746
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @16747
  IF ~~ THEN REPLY @1636 DO ~SetGlobal("Kress_Quest","GLOBAL",1)
                             AddJournalEntry(@40175,QUEST)~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @16748
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @16749
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @16750
  IF ~~ THEN REPLY @1638 GOTO 23
  IF ~~ THEN REPLY @1639 DO ~SetGlobal("Kress_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @1640 DO ~SetGlobal("Kress_Quest","GLOBAL",3)~ GOTO 25
END

IF ~~ THEN BEGIN 23
  SAY @16753
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @16755
  IF ~~ THEN REPLY @1642 EXIT
  IF ~~ THEN REPLY @1639 DO ~SetGlobal("Kress_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @1640 DO ~SetGlobal("Kress_Quest","GLOBAL",3)~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @1645
  IF ~~ THEN REPLY @1646 DO ~AddJournalEntry(@18314,QUEST)~ EXIT
END

IF WEIGHT #0
~Global("Kress_Quest","GLOBAL",1)~ THEN BEGIN 26
  SAY @1647
  IF ~~ THEN REPLY @1648 EXIT
  IF ~~ THEN REPLY @1639 DO ~SetGlobal("Kress_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @1640 DO ~SetGlobal("Kress_Quest","GLOBAL",3)~ GOTO 25
  IF ~~ THEN REPLY @1651 GOTO 41
END

IF WEIGHT #1
~Global("Kress_Quest","GLOBAL",2)~ THEN BEGIN 27 // from:
  SAY @1653
  IF ~~ THEN REPLY @1654 EXIT
  IF ~~ THEN REPLY @1640 DO ~SetGlobal("Kress_Quest","GLOBAL",3)~ GOTO 25
  IF ~~ THEN REPLY @1651 GOTO 41
END

IF WEIGHT #2
~Global("Kress_Quest","GLOBAL",3)~ THEN BEGIN 28
  SAY @1657
  IF ~Global("SPRITE_IS_DEADLysan","GLOBAL",1)~ THEN REPLY @1658 DO ~SetGlobal("Kress_Quest","GLOBAL",4)
                                                                     AddXP2DA("ID1EX5A")
                                                                     DisplayStringNoNameDlg(LastTalkedToBy,@16769)
                                                                     EraseJournalEntry(@1349)
                                                                     EraseJournalEntry(@1415)
                                                                     SetQuestDone(@40175)
                                                                     SetQuestDone(@18314)
                                                                     AddJournalEntry(@416,QUEST)~ GOTO 29
  IF ~Global("SPRITE_IS_DEADLysan","GLOBAL",0)~ THEN REPLY @1659 GOTO 31
END

IF ~~ THEN BEGIN 29
  SAY @1661
  IF ~~ THEN REPLY @1662 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @1663
  IF ~~ THEN REPLY @1664 GOTO 40
END

IF ~~ THEN BEGIN 31
  SAY @1665
  IF ~~ THEN REPLY @288 EXIT
END

IF WEIGHT #3
~Global("Kress_Quest","GLOBAL",4)~ THEN BEGIN 32
  SAY @16778
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @16784
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 34
  SAY @1669
  IF ~~ THEN REPLY @1670 DO ~AddJournalEntry(@1340,QUEST)~ GOTO 35
  IF ~~ THEN REPLY @1671 GOTO 36
END

IF ~~ THEN BEGIN 35
  SAY @1672
  IF ~~ THEN REPLY @1664 GOTO 40
END

IF ~~ THEN BEGIN 36
  SAY @16746
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @16747
  IF ~~ THEN REPLY @1675 GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @16790
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @16791
  IF ~~ THEN REPLY @1670 DO ~AddJournalEntry(@1340,QUEST)~ GOTO 35
END

IF ~~ THEN BEGIN 40
  SAY @1678
  IF ~~ THEN REPLY @1679 EXIT
END

IF ~~ THEN BEGIN 41
  SAY @1680
  IF ~~ THEN REPLY @1654 EXIT
  IF ~~ THEN REPLY @1640 DO ~SetGlobal("Kress_Quest","GLOBAL",3)~ GOTO 25
END
