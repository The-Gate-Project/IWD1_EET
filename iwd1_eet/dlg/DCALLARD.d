BEGIN ~DCALLARD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9766
  IF ~~ THEN REPLY @9767 GOTO 2
  IF ~~ THEN REPLY @2148 GOTO 3
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @9769
  IF ~~ THEN REPLY @342 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9772
  IF ~~ THEN REPLY @2148 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9774
  IF ~~ THEN REPLY @9775 GOTO 4
  IF ~~ THEN REPLY @9776 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @9777
  IF ~~ THEN REPLY @9778 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9779
  IF ~~ THEN REPLY @9780 DO ~AddJournalEntry(@34295,QUEST)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @9782
  IF ~~ THEN REPLY @9783 DO ~GiveItem("Portrait",LastTalkedToBy)
                             SetGlobal("Flozem_Portrait","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @9784 DO ~GiveItem("Portrait",LastTalkedToBy)
                             SetGlobal("Flozem_Portrait","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @9791
  IF ~~ THEN REPLY @283 EXIT
END
