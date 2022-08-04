/*
CDOswaldItem
1 - offered to buy tolls, offer declined
2 - sold tools
3 - wanted to borrow belt, declined
4 - lent belt, wanted downpayment
5 - lent belt, no downpayment
6 - declined offer to upgrade belt, wanted downpayment previously
7 - declined offer to upgrade belt, did not want downpayment previously
8 - accepted offer to upgrade
9 - upgraded belt given
*/

EXTEND_BOTTOM DOSWALD 14
  IF ~PartyHasItem("cdtools")
      Global("CDOswaldItem","MYAREA",1)~ THEN REPLY @7700322 GOTO StillWantTools
  IF ~PartyHasItem("beltgon")
      Global("CDOswaldItem","MYAREA",3)~ THEN REPLY @7700339 GOTO BeltRedux
  IF ~PartyHasItem("beltgon")
      Global("CDOswaldItem","MYAREA",6)~ THEN REPLY @7700352 GOTO ImproveOffer
  IF ~PartyHasItem("beltgon")
      Global("CDOswaldItem","MYAREA",7)~ THEN REPLY @7700352 GOTO ImproveOfferLikes
END

APPEND DOSWALD

  IF WEIGHT #0 ~Global("Kuldahar_Murder","GLOBAL",0)
                Global("CDOswaldItem","MYAREA",0)
                PartyHasItem("cdtools")~ THEN BEGIN OohShinies SAY @770030
    IF ~~ THEN REPLY @770031 GOTO Sure
    IF ~~ THEN REPLY @770032 GOTO Sure
  END

  IF WEIGHT #0 ~Global("Kuldahar_Murder","GLOBAL",0)
                PartyHasItem("beltgon")
                Global("CDOswaldItem","MYAREA",2)
                GlobalTimerExpired("CDOswaldTimer","MYAREA")~ THEN BEGIN LookAtBelt SAY @7700325 = @7700326 = @7700327
    IF ~~ THEN GOTO BeltRedux
  END

  IF WEIGHT #0 ~Global("Kuldahar_Murder","GLOBAL",0)
                GlobalGT("CDOswaldItem","MYAREA",3)
                GlobalLT("CDOswaldItem","MYAREA",6)
                GlobalTimerExpired("CDOswaldTimer","MYAREA")~ THEN BEGIN ImproveBelt SAY @7700340 = @7700341 = @7700342
    IF ~Global("CDOswaldItem","MYAREA",4)~ THEN GOTO ImproveOffer
    IF ~Global("CDOswaldItem","MYAREA",5)~ THEN GOTO ImproveOfferLikes
  END

  IF WEIGHT #0 ~Global("Kuldahar_Murder","GLOBAL",0)
                Global("CDOswaldItem","MYAREA",8)
                GlobalTimerExpired("CDOswaldTimer","MYAREA")~ THEN BEGIN ImprovedBeltDone SAY @7700350 = @7700351
    IF ~~ THEN DO ~SetGlobal("CDOswaldItem","MYAREA",9)
                   GiveItemCreate("cdgond",LastTalkedToBy,0,0,0)~ GOTO GenericReset
  END
  
  IF ~~ THEN BEGIN Sure SAY @770033 = @770034
    IF ~~ THEN REPLY @770035 GOTO Offer
    IF ~~ THEN REPLY @770036 GOTO NoMatter
    IF ~~ THEN REPLY @770037 GOTO NoMatter
  END
  
  IF ~~ THEN BEGIN NoMatter SAY @770038
    IF ~~ THEN GOTO Offer
  END
  
  IF ~~ THEN BEGIN Offer SAY @770039 = @7700310
    IF ~~ THEN REPLY @7700311 GOTO WantGold
    IF ~~ THEN REPLY @7700312 GOTO WhatPotions
    IF ~~ THEN REPLY @7700313 DO ~TakePartyItem("cdtools")
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn09",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn10",LastTalkedToBy,0,0,0)
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",2)~ GOTO OfferAccepted
    IF ~~ THEN REPLY @7700316 DO ~SetGlobal("CDOswaldItem","MYAREA",1)~ GOTO NotInterested
  END
  
  IF ~~ THEN BEGIN WantGold SAY @7700314
    IF ~~ THEN REPLY @7700315 GOTO WhatPotions
    IF ~~ THEN REPLY @7700317 DO ~TakePartyItem("cdtools")
                                  GiveGoldForce(150)
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",2)~ GOTO OfferAccepted
    IF ~~ THEN REPLY @7700316 DO ~SetGlobal("CDOswaldItem","MYAREA",1)~ GOTO NotInterested
  END
  
  IF ~~ THEN BEGIN WhatPotions SAY @7700318
    IF ~~ THEN REPLY @7700311 GOTO WantGold
    IF ~~ THEN REPLY @7700313 DO ~TakePartyItem("cdtools")
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn09",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn10",LastTalkedToBy,0,0,0)
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",2)~ GOTO OfferAccepted
    IF ~~ THEN REPLY @7700316 DO ~SetGlobal("CDOswaldItem","MYAREA",1)~ GOTO NotInterested
  END
  
  IF ~~ THEN BEGIN OfferAccepted SAY @7700319
    COPY_TRANS DOSWALD 14
  END
  
  IF ~~ THEN BEGIN NotInterested SAY @7700320
    IF ~~ THEN GOTO GenericReset
  END
  
  IF ~~ THEN BEGIN GenericReset SAY @7700321
    COPY_TRANS DOSWALD 14
  END

  IF ~~ THEN BEGIN StillWantTools SAY @7700323
    IF ~~ THEN REPLY @7700311 GOTO WantGold
    IF ~~ THEN REPLY @7700313 DO ~TakePartyItem("cdtools")
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn08",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn09",LastTalkedToBy,0,0,0)
                                  GiveItemCreate("potn10",LastTalkedToBy,0,0,0)
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",2)~ GOTO OfferAccepted
    IF ~~ THEN REPLY @7700324 GOTO NotInterested
  END

  IF ~~ THEN BEGIN BeltRedux SAY @7700328
    IF ~~ THEN REPLY @7700329 DO ~TakePartyItem("beltgon")
                                  DestroyItem("beltgon")
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",5)~ GOTO TakeBelt
    IF ~~ THEN REPLY @7700330 GOTO WhatchooGonnaDo
    IF ~~ THEN REPLY @7700331 GOTO Collat
    IF ~~ THEN REPLY @7700332 DO ~SetGlobal("CDOswaldItem","MYAREA",3)~ GOTO GenericReset
  END

  IF ~~ THEN BEGIN WhatchooGonnaDo SAY @7700333
    IF ~~ THEN REPLY @7700334 DO ~TakePartyItem("beltgon")
                                  DestroyItem("beltgon")
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",5)~ GOTO TakeBelt
    IF ~~ THEN REPLY @7700331 GOTO Collat
    IF ~~ THEN REPLY @7700332 DO ~SetGlobal("CDOswaldItem","MYAREA",3)~ GOTO GenericReset
  END

  IF ~~ THEN BEGIN Collat SAY @7700335
    IF ~~ THEN REPLY @7700336 DO ~TakePartyItem("beltgon")
                                  DestroyItem("beltgon")
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  SetGlobal("CDOswaldItem","MYAREA",5)~ GOTO TakeBelt
    IF ~~ THEN REPLY @7700337 DO ~TakePartyItem("beltgon")
                                  DestroyItem("beltgon")
                                  SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)
                                  GiveGoldForce(50)
                                  SetGlobal("CDOswaldItem","MYAREA",4)~ GOTO TakeBelt
    IF ~~ THEN REPLY @7700330 GOTO WhatchooGonnaDo
    IF ~~ THEN REPLY @7700332 DO ~SetGlobal("CDOswaldItem","MYAREA",3)~ GOTO GenericReset
  END

  IF ~~ THEN BEGIN TakeBelt SAY @7700338
    IF ~~ THEN GOTO GenericReset
  END
  
  IF ~~ THEN BEGIN ImproveOffer SAY @7700344
    IF ~PartyGoldGT(1599)~ THEN REPLY @7700345 DO ~TakePartyGold(1600)
                                                   TakePartyItem("beltgon")
                                                   SetGlobal("CDOswaldItem","MYAREA",8)
                                                   SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)~ GOTO GetToWork
    IF ~PartyGoldLT(1600)~ THEN REPLY @7700346 DO ~SetGlobal("CDOswaldItem","MYAREA",6)
                                                   GiveItemCreate("beltgon",LastTalkedToBy,0,0,0)~ GOTO Nope
    IF ~!Global("CDOswaldItem","MYAREA",6)~ THEN REPLY @7700347 DO ~SetGlobal("CDOswaldItem","MYAREA",6)
                                                                    GiveItemCreate("beltgon",LastTalkedToBy,0,0,0)~ GOTO Nope
    IF ~Global("CDOswaldItem","MYAREA",6)~ THEN REPLY @7700347 GOTO Nope
  END
  
  IF ~~ THEN BEGIN ImproveOfferLikes SAY @7700343
    IF ~PartyGoldGT(1199)~ THEN REPLY @7700345 DO ~TakePartyGold(1200)
                                                   TakePartyItem("beltgon")
                                                   SetGlobal("CDOswaldItem","MYAREA",8)
                                                   SetGlobalTimer("CDOswaldTimer","MYAREA",ONE_DAY)~ GOTO GetToWork
    IF ~PartyGoldLT(1200)~ THEN REPLY @7700346 DO ~SetGlobal("CDOswaldItem","MYAREA",7)
                                                   GiveItemCreate("beltgon",LastTalkedToBy,0,0,0)~ GOTO Nope
    IF ~!Global("CDOswaldItem","MYAREA",7)~ THEN REPLY @7700347 DO ~SetGlobal("CDOswaldItem","MYAREA",7)
                                                                    GiveItemCreate("beltgon",LastTalkedToBy,0,0,0)~ GOTO Nope
    IF ~Global("CDOswaldItem","MYAREA",7)~ THEN REPLY @7700347 GOTO Nope
  END
  
  IF ~~ THEN BEGIN Nope SAY @7700348
    IF ~~ THEN GOTO GenericReset
  END
  
  IF ~~ THEN BEGIN GetToWork SAY @7700349
    IF ~~ THEN GOTO GenericReset
  END

END