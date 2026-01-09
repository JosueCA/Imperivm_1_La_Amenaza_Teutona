// void, Settlement set

int AIPlayer;
str strTech;

AIPlayer = set.player;

// if (Count(AIPlayer, "RPriest") + Count(AIPlayer, "GDruid") < AIVar(AIPlayer, AIV_CombatMagic))
//  return;

if (set.IsRomeStronghold) strTech = "Altar of Jupiter"; else strTech = "Ritual chamber";
if (!IsResearched(set, strTech)) {
  EnvWriteString(set, "strTech", strTech); set.AIRun("ESH_NeedTech.vs");
  return;
}

if (set.IsRomeStronghold) strTech = "Cloud of Plague"; else strTech = "Ghoul Summoning";
if (!IsResearched(set, strTech)) {
  EnvWriteString(set, "strTech", strTech); set.AIRun("ESH_NeedTech.vs");
  return;
}
    
