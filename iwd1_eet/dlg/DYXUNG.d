BEGIN ~DYXUNG~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @11599
  IF ~~ THEN REPLY @11610 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @11609 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @11611 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~Global("D5_Girl_Move_Loc","GLOBAL",1)~ THEN BEGIN 1
  SAY @11600
  IF ~~ THEN REPLY @11612 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @11613 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @11614 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",2)~ EXIT
END

IF WEIGHT #1
~Global("D5_Girl_Move_Loc","GLOBAL",2)~ THEN BEGIN 2
  SAY @11601
  IF ~~ THEN REPLY @11615 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @11616 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @11617 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",3)~ EXIT
END

IF WEIGHT #2
~Global("D5_Girl_Move_Loc","GLOBAL",3)~ THEN BEGIN 3
  SAY @11607
  IF ~~ THEN REPLY @11619 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",5)~ EXIT
  IF ~~ THEN REPLY @11622 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",5)~ EXIT
  IF ~~ THEN REPLY @11623 DO ~SetGlobal("D5_Girl_No_Talk","GLOBAL",1)
                              SetGlobal("D5_Girl_Move_Loc","GLOBAL",5)~ EXIT
END
