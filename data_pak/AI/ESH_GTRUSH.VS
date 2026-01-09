// void, Settlement set

int AIPlayer;
str strTech;
int max, i;

AIPlayer = set.player;

strTech = "Free Beer";
if (!IsResearched(set, strTech)) {
  if (IsResearching(set, strTech)) return;
  if (set.CanResearch(strTech)) if (set.CanAfford(strTech)) {
    set.Research(strTech); 
    return;
  }
  if (GetTime < 30000) return;
  if (AIVar(AIPlayer, AIV_LogRush) != 0) pr("Player " + AIPlayer + "'s GT rush failed on " + strTech);
  EnvWriteInt(set, "GTRush", 0);
  return;
}

strTech = "Food Tax";
if (!IsResearched(set, strTech)) if (!IsResearching(set, strTech)) {
  if (set.CanResearch(strTech)) if (set.CanAfford(strTech)) {
    set.Research(strTech); 
    return;
  }
  if (GetTime < 300000) return;
  if (AIVar(AIPlayer, AIV_LogRush) != 0) pr("Player " + AIPlayer + "'s GT rush failed on " + strTech);
  EnvWriteInt(set, "GTRush", 0);
  return;
}

EnvWriteInt(set, "GTRush", 0);
if (AIVar(AIPlayer, AIV_LogRush) != 0) pr("Player " + AIPlayer + "'s GT rush is complete");
