BEGIN ~DTHERIK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5067
  IF ~~ THEN REPLY @5731 GOTO 2
  IF ~~ THEN REPLY @5732 GOTO 3
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @5734 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @5735 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @5738
  IF ~~ THEN REPLY @1428 GOTO 2
  IF ~~ THEN REPLY @5732 GOTO 3
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @1623 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 2
  SAY @5749
  IF ~~ THEN REPLY @5732 GOTO 3
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @1623 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @5756
  IF ~~ THEN REPLY @5757 GOTO 4
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @1623 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @5762
  IF ~~ THEN REPLY @5763 GOTO 5
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @1623 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @5768
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~~ THEN REPLY @1623 GOTO 7
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @5773
  IF ~~ THEN REPLY @1582 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5777
  IF ~~ THEN REPLY @2611 GOTO 8
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @5782
  IF ~~ THEN REPLY @5733 GOTO 6
  IF ~!PartyHasItem("KeyGate")~ THEN REPLY @1502 DO ~StartCutScene("vstherc1")~ EXIT
  IF ~PartyHasItem("KeyGate")~ THEN REPLY @1502 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @5793
  IF ~~ THEN REPLY @5794 GOTO 6
  IF ~~ THEN REPLY @5795 GOTO 10
  IF ~~ THEN REPLY @5797 GOTO 11
  IF ~~ THEN REPLY @5798 DO ~TakePartyItem("KeyGate")
                             StartCutScene("vstherc1")~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @5799
  IF ~~ THEN REPLY @5794 GOTO 6
  IF ~~ THEN REPLY @5797 GOTO 11
  IF ~~ THEN REPLY @5798 DO ~TakePartyItem("KeyGate")
                             StartCutScene("vstherc1")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @6066
  IF ~~ THEN REPLY @5794 GOTO 6
  IF ~~ THEN REPLY @6068 GOTO 12
  IF ~~ THEN REPLY @5798 DO ~TakePartyItem("KeyGate")
                             StartCutScene("vstherc1")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @6070
  IF ~~ THEN REPLY @5794 GOTO 6
  IF ~~ THEN REPLY @5798 DO ~TakePartyItem("KeyGate")
                             StartCutScene("vstherc1")~ EXIT
END
