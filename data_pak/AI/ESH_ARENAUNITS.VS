// void, Settlement set

int AIPlayer;
str strTech, class;
int max, i;
int budget;
bool bUpgrade, bRush;

AIPlayer = set.player;
budget = AIVar(AIPlayer, AIV_TechBudget);  // save orig. value
bRush = (EnvReadInt(set, "ArenaRush") != 0);
if (bRush) SetAIVar(AIPlayer, AIV_TechBudget, 100); // all money go for tech :)

if (set.IsRomeStronghold) strTech = "Gladiator Shows"; else strTech = "Fights";
if (!IsResearched(set, strTech)) {
  EnvWriteString(set, "strTech", strTech); set.AIRun("ESH_NeedTech.vs");
  SetAIVar(AIPlayer, AIV_TechBudget, budget);
  return;
}

if (!bRush) if (rand(100) < 50) return; // let ESH_ResearchTraining take the ball :)

// decide whether to try to upgrade hires
i = AIVar(AIPlayer, AIV_ArenaUpgradeHires);
if (i < 0) bUpgrade = true;
else if (i == 0) bUpgrade = false;
else if (i == 1) bUpgrade = true; 
else bUpgrade = (EnvReadInt(set, "ArenaHired") != 0);

if (bUpgrade) {
  if (set.IsRomeStronghold) strTech = "Liberati guild"; else strTech = "Shrine of Thor";
  if (!IsResearched(set, strTech)) {
    EnvWriteString(set, "strTech", strTech); set.AIRun("ESH_NeedTech.vs");
    if (i < 0) { // upgraded units only
      SetAIVar(AIPlayer, AIV_TechBudget, budget);
      return; 
    }
  }
}
SetAIVar(AIPlayer, AIV_TechBudget, budget); // restore AIV_TechBudget

//if (EnvReadInt(set, "FreezeArmyBuild") != 0) return;

if (set.IsRomeStronghold) {
  strTech = "Hire Liberati";
  class = "RLiberatus";
  max = 10;
} else {
  strTech = "Hire Viking Lord";
  class = "GVikingLord";
  max = 3;
}

i = Count(AIPlayer, class);
if (i <= max) {
  int gold, food; 
  if (!GetCmdCost(strTech, gold, food)) { 
    if (bRush) if (AIVar(AIPlayer, AIV_LogRush) != 0)
      pr("Player " + AIPlayer + "'s arena rush failed on " + strTech);
    EnvWriteInt(set, "ArenaRush", 0); 
    return; 
  }
  EnvWriteString(set, "strTech", strTech); set.AIRun("ESH_NeedTech.vs");
/*
  if (set.CanAfford(strTech)) if (set.CanResearch(strTech)) {
    if (AIVar(AIPlayer, AIV_LogResearch) != 0) pr("Player " + AIPlayer + " is hiring " + class); 
    set.SpentGoldOnArmy(gold);
    set.Research(strTech);
  }
*/

} else {
  EnvWriteInt(set, "ArenaRush", 0);
  EnvWriteInt(set, "ArenaHired", 1);
  if (bRush) if (AIVar(AIPlayer, AIV_LogRush) != 0) pr("Player " + AIPlayer + "'s arena rush is complete");
}
