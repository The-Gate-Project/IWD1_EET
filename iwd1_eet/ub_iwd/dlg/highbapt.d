ADD_TRANS_ACTION DHIGHBAP BEGIN 0 END BEGIN 0 END ~SetGlobal("CDFlockHostile","MYAREA",1)~

APPEND DCAPVIL3
// states borrowed from dcvquest

  IF WEIGHT #-1 ~Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)
                 !Global("Baptist_Quest","GLOBAL",1)
                 Global("Hyp_Villager_Dead","GLOBAL",0)~ THEN BEGIN CDQuestCompleteNoDeaths SAY @6275
    IF ~~ THEN REPLY @6280 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
    IF ~~ THEN REPLY @6278 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
    IF ~~ THEN REPLY @6284 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
  END

  IF WEIGHT #-1 ~Global("SPRITE_IS_DEADHigh_Baptist","GLOBAL",1)
                 !Global("Baptist_Quest","GLOBAL",1)
                 GlobalGT("Hyp_Villager_Dead","GLOBAL",0)~ THEN BEGIN CDQuestCompleteDeaths SAY @6276
    IF ~~ THEN REPLY @6287 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
    IF ~~ THEN REPLY @6289 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
    IF ~~ THEN REPLY @6290 DO ~AddXP2DA("ID1EX4H") SetGlobal("Baptist_Quest","GLOBAL",1)~ EXIT
  END

END