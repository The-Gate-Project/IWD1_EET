EXTEND_BOTTOM DPLANAR 16
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

EXTEND_BOTTOM DPLANAR 26
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

EXTEND_BOTTOM DPLANAR 45
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

EXTEND_BOTTOM DPLANAR 51
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

EXTEND_BOTTOM DPLANAR 57
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

EXTEND_BOTTOM DPLANAR 69
  IF ~PartyHasItem("lxbowbm")~ THEN REPLY @770060 DO ~TransformItem("lxbowbm","cdxbowbm")~ GOTO BrenMuller
END

APPEND DPLANAR

  IF ~~ THEN BEGIN BrenMuller SAY @770061 = @770062 = @770063 = @770064 = @770065
    IF ~~ THEN DO ~StartCutScene("gnDstSlf")~ EXIT
  END

END