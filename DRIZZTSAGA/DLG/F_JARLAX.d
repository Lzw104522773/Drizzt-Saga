BEGIN ~F_JARLAX~

IF ~InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~InParty([0.0.0.0.0.0.MASK_EVIL])~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1 // from:
  SAY @4
  IF ~InParty([0.0.0.0.0.0.MASK_EVIL])~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("F_cattitalk","GLOBAL",1)
SetGlobal("F_finalfight","GLOBAL",1)
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",Enemy())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",Enemy())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",Enemy())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",Enemy())
ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",Enemy())
ActionOverride("F_GUEN",Enemy())
ActionOverride("F_ARTEMIS",JoinParty())
ActionOverride("F_BRUENOR",SetDialog("F_BETRAY"))
ActionOverride("F_DRIZZT",SetDialog("F_BETRAY"))
ActionOverride("F_WULFGAR",SetDialog("F_BETRAY"))
ActionOverride("F_CATTIBR",SetDialog("F_BETRAY"))
ActionOverride("F_REGIS2",SetDialog("F_BETRAY"))
ActionOverride("F_ARTEMIS",JoinParty())
ChangeEnemyAlly("F_ERRTU",4)
ReallyForceSpell("F_BRUENOR",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_WULFGAR",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_REGIS2",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_CATTIBR",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_BRUENOR",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_WULFGAR",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_REGIS2",CLERIC_CURE_CRITICAL_WOUNDS)
ReallyForceSpell("F_CATTIBR",CLERIC_CURE_CRITICAL_WOUNDS)
ReputationInc(-2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 0.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("F_finalfight","GLOBAL",1)
ReallyForceSpell(Myself,WIZARD_BLUR)
ReallyForceSpell(Myself,WIZARD_STONE_SKIN)
ReallyForceSpell(Myself,WIZARD_DETECT_INVISIBILITY)
ReallyForceSpell("F_ARTEMIS",WIZARD_BLUR)
ReallyForceSpell("F_ARTEMIS",WIZARD_HASTE)
ReallyForceSpell("F_ARTEMIS",WIZARD_STONE_SKIN)
ReallyForceSpell("F_ARTEMIS",WIZARD_INVISIBILITY)
ActionOverride("F_ARTEMIS",Enemy())
ReallyForceSpell([PC],WIZARD_GREATER_MALISON)
ReallyForceSpell([PC],WIZARD_HOLD_PERSON)
ReallyForceSpell([PC],WIZARD_CHAOS)
ReallyForceSpell(Player1,WIZARD_DISPEL_MAGIC)
ReallyForceSpell(Player2,WIZARD_DISPEL_MAGIC)
ReallyForceSpell(Player3,WIZARD_DISPEL_MAGIC)
ReallyForceSpell(Player4,WIZARD_DISPEL_MAGIC)
ReallyForceSpell(Player5,WIZARD_DISPEL_MAGIC)
ReallyForceSpell(Player6,WIZARD_DISPEL_MAGIC)
CreateCreature("F_DROWAR",[454.333],0)
CreateCreature("F_DROWAR",[454.333],0)
CreateCreature("F_DROWAR",[454.333],0)
CreateCreature("F_DROWAR",[454.333],0)
Enemy()~ EXIT
END
