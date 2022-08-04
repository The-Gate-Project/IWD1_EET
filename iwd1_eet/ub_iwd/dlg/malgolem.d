ADD_TRANS_ACTION DMALASIM BEGIN  9 END BEGIN END ~AddXP2DA("ID1EX7H")~
ADD_TRANS_ACTION DMALASIM BEGIN 10 END BEGIN END ~AddXP2DA("ID1EX7V")~

APPEND DMALAVON

  IF WEIGHT #-1 ~GlobalLT("IRON_GOLEM_DEAD","GLOBAL",2)~ THEN BEGIN TurnedGolems SAY @300000102
    COPY_TRANS DMALAVON 0
  END

END

EXTEND_BOTTOM dmalasim 1 2 7
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY @10509 DO ~Enemy()~ GOTO 8
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,8,INT)
      CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @10510 DO ~AddXP2DA("ID1EX7H")
                                                                SetGlobal("Golem_Commands","GLOBAL",2)
                                                                Enemy()~ GOTO 9
  IF ~Global("Golem_Commands","GLOBAL",1)
      CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @10511 DO ~AddXP2DA("ID1EX7V")
                                                                SetGlobal("Golem_Commands","GLOBAL",3)
                                                                Enemy()~ GOTO 10
END