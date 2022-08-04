BEGIN ~DGINAFAE~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7942
  IF ~~ THEN REPLY @10535 GOTO 1
  IF ~~ THEN REPLY @10537 GOTO 2
  IF ~~ THEN REPLY @10538 GOTO 3
  IF ~~ THEN REPLY @10539 GOTO 4
  IF ~~ THEN REPLY @620 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @10541
  IF ~~ THEN REPLY @10542 GOTO 5
  IF ~~ THEN REPLY @10543 DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @10544 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @10545
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10546
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10547
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY @10548 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,13,INT)~ THEN REPLY @10549 GOTO 7
  IF ~~ THEN REPLY @10550 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @10551
  IF ~~ THEN REPLY @10552 DO ~SetGlobal("Malavon_Curse","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @10553 GOTO 6
  IF ~~ THEN REPLY @10554 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10555
  IF ~~ THEN REPLY @10556 DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @10557 DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @10558 DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @10561 DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @10568
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @10569
  IF ~~ THEN REPLY @10570 GOTO 11
  IF ~~ THEN REPLY @10571 GOTO 11
  IF ~~ THEN REPLY @10574 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @10579
  IF ~~ THEN REPLY @10581 GOTO 10
  IF ~~ THEN REPLY @10582 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @10583
  IF ~~ THEN REPLY @10584 DO ~SetGlobal("Ginafae_Promise","GLOBAL",1)~ GOTO 13
  IF ~ ~ THEN REPLY @10585 DO ~SetGlobal("Ginafae_Promise","GLOBAL",2)~ GOTO 24
  IF ~ ~ THEN REPLY @10586 DO ~SetGlobal("Ginafae_Promise","GLOBAL",2)~ GOTO 24
  IF ~~ THEN REPLY @10995 DO ~SetGlobal("Malavon_Curse","GLOBAL",1)
                              SetGlobal("Ginafae_Promise","GLOBAL",2)~ GOTO 8
END

IF ~~ THEN BEGIN 11
  SAY @10587
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @10588
  IF ~!GlobalGT("Ginafae_Promise","GLOBAL",0)~ THEN REPLY @10590 GOTO 10
  IF ~~ THEN REPLY @19439 GOTO 8
END

IF ~~ THEN BEGIN 13
  SAY @10591
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @10593
  IF ~~ THEN REPLY @10595 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @10594
  IF ~!PartyHasItem("RingCop")~ THEN REPLY @10597 GOTO 16
  IF ~PartyHasItem("RingCop")~ THEN REPLY @10598 DO ~TakePartyItem("RingCop")
                                                     SetGlobal("Marketh_Ring","GLOBAL",5)
                                                     AddJournalEntry(@34271,QUEST)~ GOTO 17
END

IF ~~ THEN BEGIN 16
  SAY @10599
  IF ~~ THEN REPLY @10602 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @10603
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @10604
  IF ~~ THEN REPLY @10605 EXIT
  IF ~~ THEN REPLY @10606 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 19
  SAY @10609
  IF ~!Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY @10616 GOTO 6
  IF ~~ THEN REPLY @10621 GOTO 11
  IF ~Global("Malavon_Curse","GLOBAL",1)
      PartyHasItem("PNull")
      !Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY @18844 GOTO 25
  IF ~Global("Malavon_Curse","GLOBAL",1)
      PartyHasItem("PNull")
      Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY @18845 GOTO 26
END

IF ~~ THEN BEGIN 20
  SAY @10623
  IF ~~ THEN REPLY @10584 DO ~SetGlobal("Ginafae_Promise","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @10585 GOTO 22
  IF ~~ THEN REPLY @10586 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY @10628
  IF ~PartyHasItem("RingCop")~ THEN REPLY @10629 DO ~TakePartyItem("RingCop")
                                                     SetGlobal("Marketh_Ring","GLOBAL",5)
                                                     AddJournalEntry(@15780,QUEST)~ GOTO 17
  IF ~~ THEN REPLY @10630 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @10631
  IF ~~ THEN REPLY @10632 DO ~SetGlobal("Ginafae_Promise","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY @288 EXIT
END

IF WEIGHT #0 ~~ THEN BEGIN 23
  SAY @10634
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @10998
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @18846
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @18847
  IF ~~ THEN REPLY @18851 DO ~TakePartyItem("PNull")
                              AddXP2DA("ID1EX10A")
                              EscapeArea()~ EXIT
END

IF WEIGHT #1
~Global("SPRITE_IS_DEADMarketh","GLOBAL",1)~ THEN BEGIN 27
  SAY @18848
  IF ~~ THEN REPLY @18852 GOTO 28
  IF ~~ THEN REPLY @18853 GOTO 28
  IF ~~ THEN REPLY @18854 GOTO 28
  IF ~Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY @18855 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @18849
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29
  SAY @18850
  IF ~~ THEN REPLY @18856 DO ~Kill(Myself)~ EXIT
END
