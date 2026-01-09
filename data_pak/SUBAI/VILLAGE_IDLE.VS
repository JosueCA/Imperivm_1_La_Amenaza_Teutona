// void, Obj This

Settlement this;
int min_resource;
Wagon wagon;

this = This.AsBuilding().settlement;
min_resource = GetConst("MinResQtyToTransport");

while (1) {
	Sleep(3000);
	if (.supplied == this)
		.StopSupply();
	if (!.supplied.IsValid()) continue;
	if (.gold > min_resource) {
		wagon = .CreateMuleGold(1000);
		wagon.SetCommand("unload", .supplied.GetCentralBuilding());
	} else
	if (.food > min_resource) {
		wagon = .CreateMuleFood(1000);
		wagon.SetCommand("unload", .supplied.GetCentralBuilding());
	}
}