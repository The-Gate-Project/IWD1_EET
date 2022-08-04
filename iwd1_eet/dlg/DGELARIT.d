BEGIN ~DGELARIT~

IF ~NumTimesTalkedTo(0)
    GlobalLT("Astrolab","GLOBAL",4)~ THEN BEGIN 0
  SAY @18793
  IF ~~ THEN REPLY @18794 GOTO 1
  IF ~~ THEN REPLY @1428 GOTO 3
  IF ~PartyHasItem("PIECE1")~ THEN REPLY @18796 DO ~TakePartyItem("PIECE1")
                                                    DestroyItem("PIECE1")
                                                    SetGlobal("ASTRO1","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE2")~ THEN REPLY @18797 DO ~TakePartyItem("PIECE2")
                                                    DestroyItem("PIECE2")
                                                    SetGlobal("ASTRO2","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE3")~ THEN REPLY @18798 DO ~TakePartyItem("PIECE3")
                                                    DestroyItem("PIECE3")
                                                    SetGlobal("ASTRO3","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE4")~ THEN REPLY @18799 DO ~TakePartyItem("PIECE4")
                                                    DestroyItem("PIECE4")
                                                    SetGlobal("ASTRO4","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~~ THEN REPLY @18800 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @18801
  IF ~~ THEN REPLY @18802 GOTO 2
  IF ~~ THEN REPLY @18803 GOTO 3
  IF ~~ THEN REPLY @18804 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18805
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18806
  IF ~~ THEN REPLY @18807 GOTO 5
  IF ~~ THEN REPLY @18808 GOTO 4
  IF ~~ THEN REPLY @18809 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18810
  IF ~~ THEN REPLY @18811 GOTO 5
  IF ~~ THEN REPLY @18812 GOTO 6
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18814
  IF ~~ THEN REPLY @18812 GOTO 6
  IF ~~ THEN REPLY @18815 GOTO 4
  IF ~~ THEN REPLY @18817 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18818
  IF ~~ THEN REPLY @18819 GOTO 5
  IF ~~ THEN REPLY @18820 GOTO 4
  IF ~~ THEN REPLY @18821 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @18822
  IF ~PartyHasItem("PIECE1")~ THEN REPLY @18796 DO ~TakePartyItem("PIECE1")
                                                    DestroyItem("PIECE1")
                                                    SetGlobal("ASTRO1","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE2")~ THEN REPLY @18797 DO ~TakePartyItem("PIECE2")
                                                    DestroyItem("PIECE2")
                                                    SetGlobal("ASTRO2","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE3")~ THEN REPLY @18798 DO ~TakePartyItem("PIECE3")
                                                    DestroyItem("PIECE3")
                                                    SetGlobal("ASTRO3","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE4")~ THEN REPLY @18799 DO ~TakePartyItem("PIECE4")
                                                    DestroyItem("PIECE4")
                                                    SetGlobal("ASTRO4","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~~ THEN REPLY @19529 EXIT
END

IF ~NumTimesTalkedToGT(0)
    GlobalLT("Astrolab","GLOBAL",4)~ THEN BEGIN 8
  SAY @18828
  IF ~PartyHasItem("PIECE1")~ THEN REPLY @18796 DO ~TakePartyItem("PIECE1")
                                                    DestroyItem("PIECE1")
                                                    SetGlobal("ASTRO1","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE2")~ THEN REPLY @18797 DO ~TakePartyItem("PIECE2")
                                                    DestroyItem("PIECE2")
                                                    SetGlobal("ASTRO2","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX7A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE3")~ THEN REPLY @18798 DO ~TakePartyItem("PIECE3")
                                                    DestroyItem("PIECE3")
                                                    SetGlobal("ASTRO3","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~PartyHasItem("PIECE4")~ THEN REPLY @18799 DO ~TakePartyItem("PIECE4")
                                                    DestroyItem("PIECE4")
                                                    SetGlobal("ASTRO4","GLOBAL",1)
                                                    IncrementGlobal("ASTROLAB","GLOBAL",1)
                                                    AddXP2DA("ID1EX8A")
                                                    DisplayStringNoNameDlg(LastTalkedToBy,@19611)~ FLAGS 0x200 GOTO 10
  IF ~~ THEN REPLY @18794 GOTO 1
  IF ~~ THEN REPLY @1428 GOTO 3
  IF ~~ THEN REPLY @18800 EXIT
END

IF ~Global("Astrolab","GLOBAL",4)~ THEN BEGIN 9
  SAY @18836
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @19256
  IF ~~ THEN DO ~SetGlobal("Astro_No_Talk","GLOBAL",1)~ GOTO 7
END
