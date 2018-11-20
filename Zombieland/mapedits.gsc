setupCustomMap()
{
	if(getDvar("mapname") == "mp_nuketown_2020")
		level thread Nuketown();
	if(getDvar("mapname") == "mp_hijacked")
		level thread Hijacked();
	if(getDvar("mapname") == "mp_express")
		level thread Express();
	if(getDvar("mapname") == "mp_meltdown")
		level thread Meltdown();
	if(getDvar("mapname") == "mp_drone")
		level thread Drone();
	if(getDvar("mapname") == "mp_carrier")
		level thread Carrier();
	if(getDvar("mapname") == "mp_overflow")
		level thread Overflow();
	if(getDvar("mapname") == "mp_slums")
		level thread Slums();
	if(getDvar("mapname") == "mp_turbine")
		level thread Turbine();
	if(getDvar("mapname") == "mp_raid")
		level thread Raid();
	if(getDvar("mapname") == "mp_la")
		level thread Aftermath();	
	if(getDvar("mapname") == "mp_dockside") 
		level thread Cargo();	
	if(getDvar("mapname") == "mp_village")
		level thread Standoff();
	if(getDvar("mapname") == "mp_nightclub")
		level thread Plaza();	
	if(getDvar("mapname") == "mp_socotra")
		level thread Yemen();
	if(getDvar("mapname") == "mp_dig")
		level thread Dig();	
	if(getDvar("mapname") == "mp_pod")
		level thread Pod();	
	if(getDvar("mapname") == "mp_takeoff")
		level thread Takeoff();	
	if(getDvar("mapname") == "mp_frostbite")
		level thread Frost();	
	if(getDvar("mapname") == "mp_mirage")
		level thread Mirage();	
	if(getDvar("mapname") == "mp_hydro")
		level thread Hydro();	
	if(getDvar("mapname") == "mp_skate")
		level thread Grind();	
	if(getDvar("mapname") == "mp_downhill")
		level thread Downhill();	
	if(getDvar("mapname") == "mp_concert")
		level thread Encore();	
	if(getDvar("mapname") == "mp_vertigo")
		level thread Vertigo();	
	if (getDvar("mapname") == "mp_magma")
		level thread Magma();
	if(getDvar("mapname") == "mp_studio")
		level thread Studio();	
	if(getDvar("mapname") == "mp_paintball")
		level thread Rush();	
	if(getDvar("mapname") == "mp_castaway")
		level thread Cove();	
	if(getDvar("mapname") == "mp_bridge")
		level thread Detour();
	if(getDvar("mapname") == "mp_uplink")
		level thread Uplink();
}

Nuketown()
{
	level.mapmaker = "CodJumper";
	//Created by CodJumper | We buy Any Car v1
	level thread removeSkyBarrier();
	//start floor 1(

	//One
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -1755, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -1755, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -1755, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -1755, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -1755, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -1755, 309), ( 0, 0, 180 ));

	//two
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -1845, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -1845, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -1845, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -1845, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -1845, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -1845, 309), ( 0, 0, 180 ));
	
	//three
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -1925, 309), ( 0, 0, 180 ));
	
	//four
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -2015, 309), ( 0, 0, 180 ));
	
	//five
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -2105, 309), ( 0, 0, 180 ));
	
	//six
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (333, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (213, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (93, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-27, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-147, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (-267, -2195, 309), ( 0, 0, 180 ));
	//end floor 1)
	
	//start floor 2
	//One
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (1990, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2110, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2230, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2350, -2195, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2470, -2195, 309), ( 0, 0, 180 ));
	
	//Two
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (1990, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2110, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2230, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2350, -2105, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2470, -2105, 309), ( 0, 0, 180 ));
	
	//Three
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (1990, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2110, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2230, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2350, -2015, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2470, -2015, 309), ( 0, 0, 180 ));
	
	//Four
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (1990, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2110, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2230, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2350, -1925, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2470, -1925, 309), ( 0, 0, 180 ));
	
	//Five
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (1990, -1835, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2110, -1835, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2230, -1835, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2350, -1835, 309), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2470, -1835, 309), ( 0, 0, 180 ));
	//End floor Two)
	
	//Elevator start(
	CreateCarElevator((333, -2305, 309), (1990, -2305, 309), ( 0, 0, 180), 7.5, 4);
	CreateCarElevator((333, -2265, 309), (1990, -2265, 309), ( 0, 0, 180), 7.5, 4);
	CreateCarElevator((333, -2285, 309), (1990, -2285, 309), ( 0, 0, 180), 7.5, 4);
	CreateCarElevator((245, -2285, 340), (1902, -2285, 340), ( 0, 270, 90), 7.5, 4);
	CreateCarElevator((421, -2285, 340), (2078, -2285, 340), ( 0, 90, 90), 7.5, 4);
	//Elevator end)
	
	//ramp Start(
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2110, -1835, 359), ( 40, 180, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2178, -1835, 415), ( 40, 180, 180 ));
	//ramp end)
	
	//floor three
	// One start(
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2350, -1835, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2470, -1835, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2350, -1925, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2470, -1925, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2350, -2015, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2470, -2015, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2350, -2105, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2470, -2105, 472), ( 0, 0, 180 ));
	//end floor three)
	
	//Floor four start(
	//one
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2925, -4995, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3045, -4995, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3165, -4995, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3285, -4995, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3405, -4995, 472), ( 0, 0, 180 ));
	
	//two
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2925, -5085, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3045, -5085, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3165, -5085, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3285, -5085, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3405, -5085, 472), ( 0, 0, 180 ));
	
	//three
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2925, -5175, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3045, -5175, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3165, -5175, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3285, -5175, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3405, -5175, 472), ( 0, 0, 180 ));
	
	//four
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (2925, -5265, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3045, -5265, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3165, -5265, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3285, -5265, 472), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car01_whole"), (3405, -5265, 472), ( 0, 0, 180 ));
	
	//one //toppppp
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2925, -4995, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3045, -4995, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3165, -4995, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3285, -4995, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3405, -4995, 672), ( 0, 0, 180 ));
	
	//two
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2925, -5085, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3045, -5085, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3165, -5085, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3285, -5085, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3405, -5085, 672), ( 0, 0, 180 ));
	
	//three
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2925, -5175, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3045, -5175, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3165, -5175, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3285, -5175, 672), ( 0, 0, 180 ));
	
	//four
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (2925, -5265, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3045, -5265, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3165, -5265, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3285, -5265, 672), ( 0, 0, 180 ));
	createObject(( "veh_t6_nuketown_2020_car02_whole"), (3405, -5265, 672), ( 0, 0, 180 ));
	
	//wall/door start(
	CreateWall((402, -1968, 320), (80, -1968, 320.01)); //left bottom
	CreateWall((402, -1968, 390), (80, -1968, 390.01)); //left top
	CreateWall((-349, -1968, 320), (-45, -1968, 320.01)); //right bottom
	CreateWall((-349, -1968, 390), (-45, -1968, 390.01)); //right top
	CreateDoor((-166, -1968, 330), (20, -1968, 330), 1.5, (90, 90, 0), 5, 2, 35, 90); //door :)
	//end)
	
	//extra crap start(
	CreateCarElevator((3405, -5175, 472), (3405, -5175, 672), ( 0, 0, 180), 3.5, 3);
	CreateMysteryBox((-320, -2198, 308), (0, 180, 0), 150);
	CreateMysteryBox((-1733, 1226, -61), (0, 90, 0), 10);
	CreateZipline((-240, -589, -60), (-240, -1782, 308), 2, false); //enter zip right
	CreateZipline((304, -589, -60), (304, -1782, 308), 2, false); // enter zip left
	CreateZipline((2509, -2095, 472), (2937, -5012, 472), 2.5, true); // enter 4ourth floor
	CreateFlag((-413, -2225, 170), (-1846, 930, -50), true, false); //escape ent
	CreateFlag((-1790, 1258, -62), (154, -2020, 308), true, false); //escape leave
	CreateFlag((3479, -5265, 671), (-65, 829, -6), false, false); //escape act 1
	//crappy end) :)


}

Hijacked()
{
	level.mapmaker = "Skonafid/SPARX";
	level thread removeSkyBarrier();
    //Made By:Skonafid/SPARX
    //1st bunker
	CreateRamp((-3485.7, 58.2416, -288.875), (-3967.89, -76.5387, -130.921));//1st bunker
	CreateGrid((-4040.98, 38.658, -145.19), (-4215.56, -327.445, -175.015));
	CreateWall((-4248.03, -280.528, -91.4418), (-4267.57, 72.0809, -93.1179));
	CreateDoor((-4025.07, -225.356, -129.315), (-3972.32, -76.5683, -111.295), 3, (90, 90, 90), 6, 2, 50, 80);
	//2nd Bunker
	Createramp((-4207.59, 84.9128, -130.665), (-4216.61, 335.209, 0.237621));
	CreateGrid((-4216.61, 335.209, 0.237621), (-3896.09, 554.702, -18.4181));
	CreateDoor((-4059.96, 302.743, 16.1126), (-4207.7, 290.502, 14.9669), 3, (90, 0, 90), 4, 2, 25, 80);
	CreateWall((-4247.47, 600.345, 44.2502), (-3867.8, 605.476, 47.9234));
	CreateWall((-4247.47, 600.345, 44.2502), (-4260.38, 342.388, 51.1453));

	CreateZipline((-4396.06, -548.843, -305.479), (-2745.17, -19622.3, -45.5649), 4, true);//Secret
	Createramp((-2905.14, -19672.4, -94.3158), (-2430.67, -19663.2, -89.3319));//secret	
}

Express()
{ 
	level.mapmaker = "???";
	level thread removeSkyBarrier();

CreateMysteryBox((-3494, -3633, 428), (0,73,0), 125);
CreateMysteryBox((-3537, -3772, 428), (0,73,0), 125);
CreateMysteryBox((2850, -1032, -120), (0,-90,0), 110);
CreateZipline((-4313, -3273, -30), (2226, 1050, -120), 2, true);
createWall((164, -2249, 164), (33.5, -2075, 165), true);
CreateFlag((264, 95.5, -15), (97, -2429, 163), false, false);
CreateFlag((2025, -1006, -120), (1680, -3, 81), false, false);
CreateDoor((2849, -696, -120), (3151, -20, -100), 2, (90, 90, 0), 3, 2, 30, 80);

		createObject(("p6_bullet_train_engine_rev"), (58, -2727, 110), (8, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-135, -2555, 110), (0, -53, 0));
		
		createObject(("p6_bullet_train_engine_rev"), (0, -2500, 138), (180, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-340, -2770, 135), (180, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-680, -3040, 135), (180, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-1020, -3310, 135), (180, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-1360, -3580, 135), (180, -141, 0));
		createObject(("p6_bullet_train_engine_rev"), (-1700, -3850, 135), (180, -141, 0));
		
		
		createObject(("p6_bullet_train_engine_rev"), (-1944, -4149, 135), (180, 164, 0));
		createObject(("p6_bullet_train_car"), (-2344, -4035, 135), (160, 164, 0));
		createObject(("p6_bullet_train_car"), (-2747, -3920, 280), (160, 164, 0));
		createObject(("p6_bullet_train_car"), (-3147, -3805, 435), (180, 164, 0));
		createObject(("p6_bullet_train_car"), (-3911, -3582, 55), (130, -16, 0)); //Slide
		createObject(("p6_bullet_train_car"), (-3990, -3558, -15), (134, -16, 0));
		
		createObject(("p6_bullet_train_engine_rev"), (-2060, -4325, 132), (-90, -102, 0));
		createObject(("p6_bullet_train_engine_rev"), (-2180, -4315, 250), (-90, -102, 0));
		
		createObject(("p6_bullet_train_engine_rev"), (-3600, -3796, 370), (0, -15, 0));
		createObject(("p6_bullet_train_engine_rev"), (-3520, -3568, 370), (0, -15, 0));

		createObject(("p6_bullet_train_engine_rev"), (-4030, -3551, 520), (0, 164, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4007, -3828, 370), (0, -106, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4007, -3828, 245), (0, -106, 0));
		
		createObject(("p6_bullet_train_engine_rev"), (-3883, -3890, -85), (0, -104, 0));
		createObject(("p6_bullet_train_engine_rev"), (-3901, -3372, -28), (180, -104, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4030, -3351, -28), (180, -104, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4170, -3328, -28), (180, -104, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4308, -3297, -28), (180, -104, 0));
		createObject(("p6_bullet_train_engine_rev"), (-3917, -3927, -85), (0, -15, 0));
		createObject(("p6_bullet_train_engine_rev"), (-3782, -3335, -85), (0, -14, 0));
		createObject(("p6_bullet_train_engine_rev"), (-4396, -3221, -85), (0, 75, 0));
		
		createObject(("p6_bullet_train_engine_rev"), (3151, 660, -270), (0, 90, 0));
		createObject(("p6_bullet_train_engine_rev"), (3151, 226, -270), (0, 90, 0));
		createObject(("p6_bullet_train_engine_rev"), (3151, -683, -270), (0, -90, 0));
	
 }

Meltdown()
{ 
 level.mapmaker = "xTiibo Modz";
 level thread removeSkyBarrier();
  CreateFlag((982, 3445, -71.875), (-872.8, 4226, -63.875), false, false);
 CreateMysteryBox((-63, 5292, -59), (0, -138, 0), 125);
 
 createObject(("veh_t6_v_van_whole_tan"), (-893, 4137, -60), (0, 0, 0));
 
 createObject(("veh_t6_v_van_whole_tan"), (-995, 4260, -70), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-995, 4410, -70), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-995, 4560, -70), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-995, 4710, -70), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-995, 4860, -70), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-995, 5010, -70), (0, 90, 0));
 
  createObject(("veh_t6_v_van_whole_tan"), (-755, 5057, -60), (0, 180, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-915, 5057, -60), (0, 180, 0));
 
  createObject(("veh_t6_v_van_whole_tan"), (-617, 5169, -60), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-617, 5011, -65), (0, 90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-617, 4670, -64), (0, -90, 0));
 
 createObject(( "t6_wpn_supply_drop_hq"),  (-617, 4751, 0), (0, -90,0 )); //Antiglitch
createObject(( "t6_wpn_supply_drop_hq"),  (-617, 4933, 0), (0,-90, 0 )); //Antiglitch

CreateDoor((-511, 5032, -64), (-617, 4845, -64), 2, (90, 180, 0), 4, 2, 35, 80);

createObject(("veh_t6_civ_truck_destructible_white_mp"), (-127, 5085, -90), (0, -154, 0));
CreateTurret((-117.5, 5088, -35), (0, -154, 0), "auto_gun_turret_mp");

createObject(("veh_t6_v_van_whole_tan"), (-585, 5470, -70), (0, -90, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-585, 5339, -60), (0, 90, 0));
 
 createObject(("veh_t6_v_van_whole_tan"), (-455, 5490, -65), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-310, 5490, -70), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-170, 5490, -70), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (-30, 5490, -70), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (110, 5490, -70), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (250, 5490, -70), (0, 0, 0));
 
 createObject(("veh_t6_v_van_whole_tan"), (223, 5360,-20), (0, 90, 90));
 createObject(("veh_t6_v_van_whole_tan"), (223, 5190,-20), (0, 90, 90));
 createObject(("veh_t6_v_van_whole_tan"), (223, 4925,-20), (0, 90, 90));
 createObject(("veh_t6_v_van_whole_tan"), (223, 4850,-20), (0, 90, 90));
 createObject(("veh_t6_v_van_whole_tan"), (223, 4680,-20), (0, 90, 90));
 
 CreateMysteryBox((455, 4864, -62), (0, 90, 0), 115);
 createObject(("veh_t6_civ_truck_destructible_white_mp"), (262, 5053, 15), (0, -90, 0));
 CreateDoor((281, 5160, -135), (303, 5055, -47), 2, (90, 180, 0), 2, 2, 25, 80);
 createObject(("veh_t6_civ_truck_destructible_white_mp"), (470, 5055, -108), (-150, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (305, 5055, -140), (0, 0, 0));
 
 createObject(("veh_t6_v_van_whole_tan"), (310, 5776, -135), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (455, 5776, -150), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (600, 5776, -150), (0, 0, 0));
 createObject(("veh_t6_civ_truck_destructible_white_mp"), (595, 5776, -90), (0, 0, 0));
 createObject(("veh_t6_v_van_whole_tan"), (745, 5776, -150), (0, 0, 0));
 createObject(("veh_t6_civ_truck_destructible_white_mp"), (750, 5776, -90), (0, 0, 0));
 
 CreateFlag(( 298, 5633, -136), (-80, 449, -63), false, false);

CreateFlag((209, 4565, -63.875), (-234, 484, -43), true,false); //Enter to secret room
CreateFlag((-369, 511, -55), (30, 5190, -53), true,false);//Exit to secret room
CreateMysteryBox((-390, 187, -30), (0, 0, 0), 70);
createObject(( "t6_wpn_supply_drop_axis"),  (-337, 506, -5), (90, 0,0 ));//secret room

}

Drone()
{ 
	level.mapmaker = "???";
	level thread removeSkyBarrier() // containers x120, y350, z200
	
	CreateFlag((-329.68, 8431.06, 322.672), (-33.8727, -931.003, -39.875), false, false); // Dont remove
	CreateFlag((-329.68, 8431.06, 322.672), (-33.8727, -931.003, -39.875), false, false); // bunker escape flag
	CreateFlag((998.876, 3702.04, 298.218), (585.0149, 7178.51, 306.672), false, True); //enter bunker
	CreateMysteryBox((434.989, -777.067, 240.125), (0, 180, 0), 150);
	CreateWall((464.431, 6926.81, 360.676), (849.875, 7100.98, 320.511)); // 1st back wall
	CreateWall((240.72, 7671.27, 306.672), (418.682, 7745.64, 397.672)); // 2nd back wall
	CreateWall((-50.7627, 8402.28, 306.672), (68.1149, 8509.7, 420.672)); //front right wall
	CreateWall((-158.503, 8321.72, 306.672), (-293.008, 8235.62, 420.672)); //front left wall
	CreateRamp((-254.393, 8267.81, 417.825), (57.0122, 8502.17, 417.825)); // 1st bunker ramp/floor
	CreateRamp((-295.4, 8313.46, 417.825), (12.4179, 8562.77, 417.825)); // 2nd bunker ramp/floor
	CreateRamp((-284.103, 8370.66, 428.526), (-481.152, 8588.01, 455.653)); // 1st bunker ramp
	CreateRamp((-199.233, 8693.32, 320.504), (-71.9255, 8556.26, 419.866)); // 2nd bunker ramp
	CreateRamp((-258.517, 8859.44, 451.811), (-547.972, 8584.76, 451.811)); // back ramp/floor
	CreateDoor((-97.5456, 8358.69, 410.011), (-105.688, 8355.64, 312.672), 1, (90, 125, 0), 2, 2, 25, 95); //1st bunker door
	CreateDoor((851.847, -1002.64, 240.125), (1005.49, -1001.51, 240.125), 1, (90, 90, 0), 4, 2, 25, 80); //1nd room door
	
	//Blocking
	CreateObject(("p6_door_automatic_mp_drone"), (201, -1125, 240), (0, 90, 0));
	
	//1 NEW!
	CreateZipline((-1858, -1752, 80), (-767, -22086, 2495), 2, false);
	CreateZipline((-2133, -1752, 80), (-1366, -22086, 2495), 2, false);
	CreateFlag((-1478, -23234, 2725), (-317, 825, 264), false, false); //escape room
	CreateFlag((-1505, -22974, 2495), (-317, 825, 264), false, false); //escape room
	CreateObject(("p6_dockside_container_lrg_orange"), (-650, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-770, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-890, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1010, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1130, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1250, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1370, -22170, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1490, -22170, 2359), (0, 0, 0));// first floor level
	
	//2
	CreateObject(("p6_dockside_container_lrg_orange"), (-650, -22520, 2405), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-770, -22520, 2405), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-890, -22520, 2405), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1010, -22520, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1130, -22520, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1250, -22520, 2405), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1370, -22520, 2405), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1490, -22520, 2405), (0, 0, 0));// first floor level
	
	//3
	CreateObject(("p6_dockside_container_lrg_orange"), (-650, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-770, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-890, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1010, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1130, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1250, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1370, -22870, 2359), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1490, -22870, 2359), (0, 0, 0));// first floor level
	
	//4 top
	CreateObject(("p6_dockside_container_lrg_orange"), (-650, -22520, 2589), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-770, -22520, 2589), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-890, -22520, 2589), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1250, -22520, 2589), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1370, -22520, 2589), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1490, -22520, 2589), (0, 0, 0));// first floor level
	
	//5 back top
	CreateObject(("p6_dockside_container_lrg_orange"), (-650, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-770, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-890, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1010, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1130, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1250, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1370, -23120, 2605), (0, 0, 0));// first floor level
	CreateObject(("p6_dockside_container_lrg_orange"), (-1490, -23120, 2605), (0, 0, 0));// first floor level
	
	//door floor
	CreateObject(("p6_door_automatic_mp_drone"), (-1231, -22508, 2725), (0, 90, 90));
	CreateObject(("p6_door_automatic_mp_drone"), (-1131, -22508, 2725), (0, 90, 90));
	CreateObject(("p6_door_automatic_mp_drone"), (-1031, -22508, 2725), (0, 90, 90));
	
	CreateObject(("p6_door_automatic_mp_drone"), (-1487, -22882, 2630), (0, 90, 90));
	CreateObject(("p6_door_automatic_mp_drone"), (-1224, -22882, 2495), (0, 270, 50));
	CreateObject(("p6_door_automatic_mp_drone"), (-1308, -22882, 2565), (0, 270, 50));
	
	CreateObject(("p6_door_automatic_mp_drone"), (-1487, -22760, 2675), (140, 90, 90));
	
	//first door up/down
	CreateDoor((-1068, -22356, 2590), (-1068, -22356, 2510), 1, (90, 90, 0), 6, 2, 30, 110); //1st room door
	CreateDoorSolid((-764, -22915, 2720), (-764, -22650 , 2720), 1, (180, 90, 0), 5, 6, 20, 140);
	CreateMysteryBox((-769, -22710, 2495), (0, 90, 0), 120); //box
	
}

Carrier()
{
    level.mapmaker = "SKONAFID/SPARX";
    level thread removeSkyBarrier();
    //V1.0 Made BY:SKONAFID/SPARX
    //1st bunker
    CreateWall((-2484.02, 1454.88, -36.9663), (-2494.62, 1037.86, -67.875));
    CreateDoor((-2497.21, 1125.37, -67.875), (-2497.95, 968.823, -67.875), 3, (90, 90, 90), 7, 2, 30, 80);
    CreateFlag((-3007.86, 1401.45, -67.875), (-6279.72, 482.6, -179.875), false, false);
    CreateFlag((-3722.25, 863.286, -40.875), (-2120.28, 1396.52, -67.875), true, false);

    //2nd bunker
    CreateWall((-6289.36, 75.2229, -180.711), (-6099.52, 72.9107, -179.875));
    CreateWall((-6288.53, 72.5659, -154.836), (-6124.77, 71.9364, -155.103));
    CreateWall((-6129.9, 71.2682, -130.734), (-6289.36, 74.0885, -128.961));
    CreateDoor((-6051.35, -38.2957, -179.875), (-6055.98, 73.5169, -179.875), 3, (90, 90, 0), 5, 2, 30, 80);
    CreateFlag((-6272.5, -568.581, -179.875), (-6178.2, -984.667, 44.125), false, false);

    //boat
    CreateZipline((-4943.38, -2016.18, -75.875), (-5881.25, -17879.1, -305.853), 6, true);
    CreateGrid((-5831.09, -17980.4, -310.841), (-5944.11, -18617.8, -299.995));
    CreateGrid((-5412.95, -18667.8, -207.327), (-5331.11, -18272, -198.119));
    CreateRamp((-5851.56, -18527, -308.273), (-5416.95, -18520.6, -183.835));
    CreateDoor((-5945.75, -18527.8, -308.273), (-5763.73, -18525.8, -264.265), 3, (90, 90, 90), 4, 2, 30, 80);
    CreateZipline((-5328.71, -18196.5, -215.099), (-557.016, -1731.2, -187.363), 6, true);

    //bunker3
    CreateZipline((371.516, -1535.27, -267.875), (-2193.34, 873.727, -67.875), 4, false);
    CreateWall((-193.788, -1649.19, -237.952), (-186.651, -1064.97, -267.875));
    CreateDoor((-153.206, -1163.58, -267.875), (-186.277, -997.394, -267.875), 3, (90, 90, 90), 7, 2, 30, 80);
    CreateWall((-193.248, -1696.87, -197.556), (-186.129, -1094.37, -193.463));
}

Overflow()
{
	level.mapmaker = "xKraveModz";
	//Created By xKraveModz
	level thread removeSkyBarrier();
	CreateWall((-319.097,-2947.62,-31.875), (125.243,-3382.55,96.1576), false);//Wall #1
	CreateWall((106.148,-3376.44,-33.886), (-147.088,-3632.31,96.1576), false);//Wall #2
	CreateWall((-140.202,-3626.67,-31.875), (-602.35,-3180.11,96.1576), false);//Wall #3
	CreateDoor((-558.92,-3154.8,-31.875), (-495.009,-3075.26,-31.875), 3,(90,135,0),11,2,20,80);//Door To Bunker
	CreateMysteryBox((38.7811,-3380.98,-32.7998), (0,135,0), 50);//Mystery Box #1
	CreateMysteryBox((-24.3675,-3443.36,-31.875), (0,135,0), 50);//Mystery Box #2
	CreateFlag((-141.022,-3539.69,-31.875), (2323.12,-840.106,8.6945), false, false);//Teleport Out Of Bunker
	CreateWall((-336.962,-2889.13,-31.875), (-796.4148,-2221.81,96.1576), true);//Invisable Wall #1
	CreateWall((-396.83,-3426.24,-31.875), (-598.889,-3642.65,96.1576), true);//Invisable Wall #2
	CreateFlag((-2289.24,-836.36,-131.875), (-1221.51,-2152.18,-22.2549), false, false);//Teleport Into Bunker Area
	CreateFlag((-179.303,1912.92,97.125), (2982.43,-458.262,40.125), true, false);//Hidden Flag #1 To Sand Box
	CreateTurret((2377.07,-635.723,48.8142),(0,175,0), "auto_gun_turret_mp");//Turret In Hidden Flag #1 Area
	CreateFlag((-1761.16,-1472.99,-33.8754), (-1892.38,924.653,-5.8609), true, false);//Hidden Flag #2 To Outside Map Area
	CreateTurret((-1237.48,2248.56,-6.40662),(0,-50,0), "auto_gun_turret_mp");//Turret In Hidden Flag #2 Area
	CreateFlag((225.621,2349.88,72.2772), (1890.3,-88.6554,64.125), false, false);//Hidden Flag To Escape Hidden Flag #2 Area
	CreateZipline((1060.76,-1207.14,0.430733), (1083.7,-1838.08,-7.875),3,true);//Zipline To Alley Way
	CreateFlag((667.027,-1810.16,-7.875), (163.102,2203.98,472.125), false, true);//Flag From Alley To Roof #1
	CreateFlag((-231.34,2249.67,472.261), (-410.887,2200.24,400.125), false, true);//Teleport From  Roof #1 To Roof #2
	CreateFlag((263.634,-1481.54,-23.875), (-951.664,-485.596,0.125), false, true);//Teleport To Bank
	CreateMysteryBox((-126.355,1614.05,472.125), (0,90,0), 50);//Mystery Box #3
	CreateFlag((-177.033,-79.7607,-6.125), (-2954.46,3964.38,177.005), false, false);//Death Trap Flag (Troll) xD
	CreateFlag((-973.144,-696.534,0.125), (494.402,-2187.12,-31.0116), false, true);//Teleport From Bank To Alley Way #2
	CreateMysteryBox((-1068.01,-2208.6,-39.875), (0,90,0), 100);//Mystery Box #4
	CreateDoor((-523.241,-2224.36,-17.4754), (-524.236,-2132.68,-17.4754), 3,(90,0,0),7,2,20,80);//Door To Alley Way #2 -17.4754
	
}

Slums()
{
// Created by xTiibo Modz
level.mapmaker = "xTiibo Modz";
level thread removeSkyBarrier();
CreateMysteryBox((1441, -895, 622), (0, 90, 0), 120);
CreateMysteryBox((1571, -895, 622), (0, 90, 0), 120);
CreateMysteryBox((-2105, -1028, 560), (0, 0, 0), 100);

		createObject(("p_glo_corrugated_metal1"), (2300, -1380, 550), (0, 90, 0));
		CreateCustomDoor(("com_pallet_2"),(2000, -1639, 510), (2303, -1505, 510), 2, (90, 0, 0), 6, 2, 50, 80);
//CreateDoor((2000, -1639, 510), (2303, -1505, 510), 2, (90, 0, 0), 6, 2, 50, 80); //If you don't want use the custom door
CreateDoor((-2640, -917, 524), (-2655, -522, 527), 2, (90, 178, 0), 6, 2, 35, 80);
CreateDoor((-2042, -1568, 460), (-2313, -1291, 489), 2, (90, 90, 0), 6, 2, 35, 80);
	CreateFlag((195, -824, 552), ( 2680, -1760, 490), false, false);
		CreateFlag((196, -555, 552), ( 2692, -1218, 510), false, false);
		CreateFlag((1963, -1082, 620), ( -3000, -612, 526), false, true);
		CreateFlag((-2060, -1752, 456), ( 793, -1575, 552), false, false);
		CreateZipline((1420,-1514, 500), (1457,-1308, 620), 1, true);
		createObject(("collision_clip_512x512x10"), (2750, -1306, 504), (0, 90, 0));
		createObject(("veh_iw_gaz_tigr_destruct"), (2735, -1062, 507), (0, 180, 0));
		createObject(("veh_t6_v_van_whole_red"), (2873, -1800, 504), (0, 18, 0));
		createObject(("veh_t6_v_van_whole_red"), (2722, -1848, 495), (0, 18, 0));
		createObject(("collision_clip_512x512x10"), (2710, -1545, 504), (0, 0, 0));

		createObject(("collision_clip_wall_256x256x10"), (2611, -1229, 504), (0, 90, 0));
		createObject(("collision_clip_wall_256x256x10"), (2870, -1210, 504), (0, 102, 0));
		createObject(("collision_clip_wall_256x256x10"), (2905, -1400, 504), (0, 102, 0));
		CreateObject(("collision_clip_wall_256x256x10"), (2938, -1600, 504), (0, 102, 0));
		createObject(("collision_clip_wall_256x256x10"), (2620, -1823, 546), (0, -90, 0));
		createObject(("collision_clip_wall_256x256x10"), (2480, -1682, 550), (0, 180, 0));
		createObject(("t6_wpn_supply_drop_ally"), (2317, -1702, 548), (0, -90, 0));
		createObject(("p_glo_corrugated_metal1"), (2300, -1630, 550), (0, 90, 0));
        createObject(("p_glo_corrugated_metal1"), (1313, -1512, 550), (0, 90, 0));
        createObject(("collision_clip_wall_128x128x10"), (2300, -1650, 550), (0, 90, 0));
        createObject(("collision_clip_wall_128x128x10"), (2300, -1360, 550), (0, 90, 0));
		createObject(("collision_clip_wall_256x256x10"), (2176, -1660, 550), (0, 180, 0));
		createObject(("t6_wpn_supply_drop_ally"), (2014, -1691, 548), (0, 0, 0));
		createObject(("collision_clip_wall_512x512x10"), (2355, -1355, 550), (0, 180, 0));
		createObject(("collision_clip_wall_256x256x10"), (2000, -1353, 550), (0, 180, 0));
		createObject(("collision_clip_wall_512x512x10"), (1751, -1725, 550), (0, 180, 0));
		
		createObject(("collision_clip_wall_256x256x10"), (1998, -1192, 620), (0, 90, 0));
		createObject(("collision_clip_512x512x10"), (2210, -1505, 504), (0, 180, 0));
		createObject(("collision_clip_512x512x10"), (1690, -1505, 504), (0, 180, 0));
		createObject(("p_glo_corrugated_metal1"), (1528, -1715, 550), (0, 0, 0));
		
		createObject(("veh_t6_v_van_whole_red"), (-2833, -652, 520), (0, -10, 0));
		createObject(("veh_t6_v_van_whole_red"), (-2700, -673, 520), (0, 170, 0));
		createObject(("veh_iw_gaz_tigr_destruct"), (-3030, -695, 515), (0, 180, 0));
		createObject(("p_glo_corrugated_metal1"), (-3065, -432, 558), (0, 0, 0));
		createObject(("t6_wpn_supply_drop_ally"), (-3070, -392, 568), (0, 0, 0));
        createObject(("collision_clip_wall_256x256x10"), (-3094, -555, 550), (0, -90, 0));
        createObject(("veh_iw_gaz_tigr_destruct"), (-2355, -475, 534), (-10, 80, 0));
        createObject(("veh_iw_gaz_tigr_destruct"), (-2272, -618, 515), (0, 0, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2111, -713, 520), (0, 0, 0));
        createObject(("veh_t6_civ_smallwagon_whole_green"), (-2135, -1028, 495), (0, 180, 0));
        createObject(("collision_clip_wall_256x256x10"), (-2635, -834, 550), (0, -100, 0));
        createObject(("collision_clip_wall_256x256x10"), (-2712, -1091, 550), (0, -100, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2380, -1265, 480), (188, -90, 0));
        createObject(("veh_t6_v_van_whole_red"), (-2512, -1235, 490), (-5, -166, 0));
        createObject(("veh_t6_v_van_whole_red"), (-2641, -1262, 505), (10, 13, 0));
        createObject(("veh_t6_v_van_whole_red"), (-2466, -1340, 465), (0, -90, 0));
        createObject(("p_glo_corrugated_metal1"), (-2358, -1539, 505), (0, 0, 0));
        createObject(("collision_clip_wall_128x128x10"), (-2405, -1539, 550), (0, 0, 0));
        createObject(("p_glo_corrugated_metal1"), (-2191, -1490, 490), (90, 90, 0));
        createObject(("p_glo_corrugated_metal1"), (-2191, -1490, 528), (90, 90, 0));
        createObject(("t6_wpn_supply_drop_ally"), (-2162, -1487, 490), (0, 0, 0));
        createObject(("t6_wpn_supply_drop_ally"), (-2162, -1487, 520), (0, 0, 0));
        createObject(("collision_clip_wall_256x256x10"), (-2062, -1544, 550), (0, 180, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2380, -1771, 460), (0, -90, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2262, -1840, 460), (0, 0, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2142, -1840, 460), (0, 0, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-2020, -1840, 460), (0, 0, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-1970, -1765, 460), (0, 90, 0));
        createObject(("veh_t6_v_van_whole_blue"), (-1970, -1625, 460), (0, 90, 0));
        wait 80;
		PlayFX( level._effect["fx_mp_slums_vista_smoke"], (2760, -1240, -99) );
                PlayFX( level._effect["fx_mp_slums_vista_smoke"], (2760, -1670, -99) );
}

Turbine()
{   
    level.mapmaker = "???";
    level thread removeSkyBarrier();
	CreateFlag((-386.575, -2263.15, 156.848), (-473, -2476, 164), false, false);
	CreateFlag((-1352.49, -4001.75, 609.834), (-1938.15, -4275.27, 750.011), false, false);// to platform
	CreateGrid((-1861.66, -4246.43, 734.136), (-2012.95, -4416.41, 734.136), 90, false);
	CreateRamp((-2236.18, -4311.71, 677.744), (-2236.18, -4311.71, 677.744), false);
	CreateRamp((-2243.08, -4451.6, 659.177), (-2243.08, -4451.6, 659.177), false);
	
	CreateZipline((-2434.09, -4579.86, 556.435), (-2851.76, -4288.05, 531.58), 1, false);//to bunker
	CreateZipline((-2439.19, -4259.27, 597.587), (-2763.02, -4227.9, 531.58), 1, false);
	
	CreateGrid((-2748.19, -3755.66, 515.705), (-2935.19, -4292.38, 515.705), 90, false);//bunker
	CreateRamp((-2748.19, -4092.71, 600), (-2854.94, -4091.9, 600), false);
	CreateRamp((-2748.19, -4092.71, 580), (-2854.94, -4091.9, 580), false);
	CreateRamp((-2748.19, -4092.71, 555), (-2854.94, -4091.9, 555), false);
	CreateDoor((-2912.01, -3965.02, 531.58), (-2912.01, -4091.27, 531.58), 3, (90, 0, 90), 2, 2, 30, 60);
	CreateFlag((-2911.24, -3768.26, 531.58), (1658.4, 2425.54, 210.125), false, false);
}

Raid()
{ 
    level.mapmaker = "???";
    level thread removeSkyBarrier();
	CreateZipline((577.084, 2736.79, 148.125), (999.676, 2976.02, 272.125), 1, true);
	CreateZipline((1947.91, 2872.71, 56.125), (1374.02, 3156.56, 288.125), 1, true);
	CreateElevator((1672.86, 2839.19, 303.623), (1672.86, 2839.19, 433.727), 1, 1);
	CreateElevator((1749.45, 2567.67, 256.125), (1749.45, 2567.67, 434.125), 1, 1);
	CreateMysteryBox((1320.74, 2731.36, 424.125), (0,80,0), 150);
	CreateFlag((1294.83, 3252.07, 288.125), (2004, 3770.73, 284.125), false, true);
	CreateZipline((2464.17, 3405.66, 284.125), (1987.98, 3407.57, 284.125), 1, true);
}

Aftermath()
{ 
level.mapmaker = "???";
level thread removeSkyBarrier();
 
//Interactive Objects
CreateWall((-1690, -132, -265), (-1690, -162, -140), false); //Blocker 1
CreateWall((-2098, 215, -200), (-2098, 230, -90), false); //Blocker 2
CreateWall((-650, -592, -260), (-580, -592, -140), false); //Blocker 3
CreateFlag((-1885, -209, -260), (-860, -1228, -268), false, false); //Flag From Building to Parking Lot Floor 1
CreateFlag((1173, -2152, -44), (-694, -1831, 115), false, false); //Flag From Parking Lot Floor 2 to Parkinglot Floor 3
CreateFlag((-3447, -1690, -207), (-510, -1200, 221), false, false); //Restart Parcore Flag
CreateFlag((-3034, -3249, 294), (-1190, 5360, -263), false, false); //Base Escape Back into Map
CreateDoor((-500, 280, -44), (-300, 280, -44), 3, (90, 90, 0), 5, 2, 30, 60); // Door 1
CreateDoor((-245, -1790, -44), (-245, -1610, -44), 3, (90, 0, 0), 5, 2, 20, 60); // Door 2
CreateDoor((-3700, -3198, -207), (-3450, -3198, -207), 3, (90, 90, 0), 8, 2, 30, 60); //Door 3
CreateZipline((0, -1990, -268), (-768, -1990, -44), 2, true); //Zipline to ParkingLot Floor 2
CreateMysteryBox((-2033, 31, -60), (0, 90, 0), 150); //Mystery Box 1
CreateMysteryBox((-3077, -3967, -207), (0, 90, 0), 150); //Mystery Box 2
 
//Ground
CreateObject(("veh_iw_civ_firetruck"), (-1973, 534, -142), (0, 90, 0)); //Ground
CreateObject(("veh_iw_civ_firetruck"), (-1602, 560, -203), (0, 90, 0)); //Ground
CreateObject(("veh_iw_civ_firetruck"), (-1476, -40, -268), (0, 90, 0)); //Ground       
CreateObject(("veh_iw_civ_firetruck"), (-1807, 709, -220), (35, 0, 0)); //Ground Ramp FireTruck
CreateObject(("veh_iw_civ_firetruck"), (-1232, -65, -262), (0, 0, 0)); //Ground
CreateObject(("veh_iw_civ_firetruck"), (-1135, -65, -262), (325, 0, 0)); //Ground Ramp FireTruck
CreateObject(("veh_iw_civ_suv_whole_red"), (-1306, -368, -190), (0, 113, 0)); //Ground
CreateObject(("veh_iw_civ_ambulance_whole"), (-1514, 409, -211), (0, 130, 0)); //Ground
 
//ParkingLot Floor 1
CreateObject(("veh_iw_civ_firetruck"), (-100, -1900, -268), (0, 90, 0)); //ParkingLot Floor 1
CreateObject(("veh_iw_civ_firetruck"), (100, -1900, -268), (0, 90, 0)); //ParkingLot Floor 1
CreateObject(("veh_iw_civ_firetruck"), (0, -2140, -268), (0, 0, 0)); //ParkingLot Floor 1
 
//ParkingLot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-580, -1738, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-907, -1294, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-535, -1540, -44), (0, 90, 0)); //ParkingLot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-907, -880, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-530, -880, -44), (0, 0, 0)); //Parkinglot Floor 2
 
CreateObject(("veh_iw_civ_firetruck"), (-317, -2137, -44), (0, 90, 0)); //ParkingLot Floor 2   
CreateObject(("veh_iw_civ_firetruck"), (-317, -1877, -44), (0, 90, 0)); //ParkingLot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-907, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-485, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (-100, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (300, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (700, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (1100, -2300, -44), (0, 0, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (1280, -2100, -44), (0, 90, 0)); //Parkinglot Floor 2
CreateObject(("veh_iw_civ_firetruck"), (1280, -1700, -44), (0, 90, 0)); //Parkinglot Floor 2
 
//Parkinglot Floor 3
CreateObject(("veh_iw_civ_suv_whole_black"), (-588, -1734, 115), (0, 135, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (-207, -1521, 115), (0, 0, 0)); //ParkingLot Floor 3
CreateObject(("veh_t6_police_car_destructible"), (347, -1403, 115), (0, 0, 0)); //ParkingLot Floor 3
CreateObject(("veh_t6_police_car_destructible"), (770, -1384, 115), (0, 130, 0)); //ParkingLot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (471, -803, 115), (0, 20, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (379, -119, 115), (0, 90, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_suv_whole_beige"), (174, -450, 115), (0, 100, 0)); //Parkinglot Floor 3
       
CreateObject(("veh_iw_civ_firetruck"), (-183, -230, 40), (35, 90, 0)); //Ramp FireTruck                
CreateObject(("veh_iw_civ_firetruck"), (-186, -555, 115), (0, 90, 0)); //Parkinglot Floor 3    
CreateObject(("veh_iw_civ_firetruck"), (-186, -905, 115), (0, 90, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (-186, -1050, 115), (0, 90, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (-412, -1200, 115), (0, 0, 0)); //Parkinglot Floor 3
CreateObject(("veh_iw_civ_firetruck"), (-825, -1200, 115), (0, 0, 0)); //Parkinglot Floor 3
 
//Sideways Elevator
CreateFireCarElevator((-1130, -1200, 97), (-3386, -1200, 97), ( 0, 90, 0), 7.5, 7); //Rear Piece
CreateFireCarElevator((-1460, -1200, 97), (-3694, -1200, 97), ( 0, 90, 0), 7.5, 7); //Front Piece
CreateFireCarElevator((-1284, -1000, 97), (-3540, -1000, 97), ( 0, 0 , 0), 7.5, 7); //Left Siding
CreateFireCarElevator((-1284, -1200, 115), (-3540, -1200, 115), ( 0, 0, 180), 7.5, 7); //Middle
CreateFireCarElevator((-1284, -1100, 115), (-3540, -1100, 115), ( 0, 0, 180), 7.5, 7); //Right
CreateFireCarElevator((-1284, -1300, 115), (-3540, -1300, 115), ( 0, 0, 180), 7.5, 7); //left
 
//Moving Platforms
CreateFireCarElevator((-3100, -1500, 115), (-3900, -1500, 115), ( 0, 0, 180), 6, 0.1); //Sideways
CreateFireCarElevator((-3100, -1900, 115), (-3900, -1900, 115), ( 0, 90, 180), 7.5, 0.5); //Longways
CreateFireCarElevator((-3100, -2300, 115), (-3900, -2300, 115), ( 0, 90, 180), 6, 0.5); //Longways
CreateFireCarElevator((-3100, -2700, 115), (-3900, -2700, 115), ( 0, 0, 180), 5, 0.3); //Sideways
CreateFireCarElevator((-3100, -2850, 115), (-3900, -2850, 115), ( 0, 0, 180), 3, 0.2); //Sideways
 
//First Up and Down Elevator
CreateFireCarElevator((-3500, -2950, 97), (-3500, -2950, -180), ( 0, 0, 180), 3, 0.5); //Elevator
CreateObject(("veh_iw_civ_firetruck"), (-3100, -2850, -207), (0, 0, 0)); //Elevator Sides
CreateObject(("veh_iw_civ_firetruck"), (-3900, -2850, -207), (0, 0, 0)); //Elevator Sides
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3000, -207), (0, 90, 0)); //Elevator Sides
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3000, -207), (0, 90, 0)); //Elevator Sides
CreateObject(("veh_iw_civ_firetruck"), (-3500, -2850, -207), (0, 0, 0)); //Elevator Back
 
//Second Up and Down Elevator
CreateFireCarElevator((-3450, -3950, -180), (-3450, -3950, 290), ( 0, 0, 180), 4, 2);
 
//First Floor Walls of Base
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3100, -5), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3200, -5), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3700, -3200, -5), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3800, -3200, -5), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3200, -5), (90, 90, 0)); //Castle Left Side Front
 
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3100, -5), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3200, -5), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3200, -5), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3200, -5), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3100, -3200, -5), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3200, -5), (90, 90, 0)); //Castle Right Side Front
 
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3200, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3300, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3400, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3500, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3600, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3700, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3800, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3900, -5), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -4000, -5), (90, 180, 0)); //Castle Left Side
 
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3200, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3300, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3400, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3500, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3600, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3700, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3800, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3900, -5), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -4000, -5), (90, 0, 0)); //Castle Right Side
 
CreateObject(("veh_iw_civ_firetruck"), (-3600, -4000, -5), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3700, -4000, -5), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3800, -4000, -5), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3900, -4000, -5), (90, 270, 0)); //Castle Left Side Back
 
CreateObject(("veh_iw_civ_firetruck"), (-3500, -4000, -5), (90, 270, 0)); //Castle Middle Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3400, -4000, -5), (90, 270, 0)); //Castle Middle Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3300, -4000, -5), (90, 270, 0)); //Castle Middle Side Back
 
CreateObject(("veh_iw_civ_firetruck"), (-3200, -4000, -5), (90, 270, 0)); //Castle Right Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3100, -4000, -5), (90, 270, 0)); //Castle Right Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3000, -4000, -5), (90, 270, 0)); //Castle Right Side Back
 
//Second Floor Walls of Base
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3100, 395), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3200, 395), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3700, -3200, 395), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3800, -3200, 395), (90, 90, 0)); //Castle Left Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3200, 395), (90, 90, 0)); //Castle Left Side Front
       
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3100, 395), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3200, 395), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3200, 395), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3200, 395), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3100, -3200, 395), (90, 90, 0)); //Castle Right Side Front
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3200, 395), (90, 90, 0)); //Castle Right Side Front
 
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3200, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3300, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3400, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3500, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3600, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3700, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3800, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3900, 395), (90, 180, 0)); //Castle Left Side
CreateObject(("veh_iw_civ_firetruck"), (-3900, -4000, 395), (90, 180, 0)); //Castle Left Side
 
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3200, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3300, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3400, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3500, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3600, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3700, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3800, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3900, 395), (90, 0, 0)); //Castle Right Side
CreateObject(("veh_iw_civ_firetruck"), (-3000, -4000, 395), (90, 0, 0)); //Castle Right Side
 
CreateObject(("veh_iw_civ_firetruck"), (-3600, -4000, 395), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3700, -4000, 395), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3800, -4000, 395), (90, 270, 0)); //Castle Left Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3900, -4000, 395), (90, 270, 0)); //Castle Left Side Back
 
CreateObject(("veh_iw_civ_firetruck"), (-3500, -4000, 395), (90, 270, 0)); //Castle Middle Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3400, -4000, 395), (90, 270, 0)); //Castle Middle Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3300, -4000, 395), (90, 270, 0)); //Castle Middle Side Back
 
CreateObject(("veh_iw_civ_firetruck"), (-3200, -4000, 395), (90, 270, 0)); //Castle Right Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3100, -4000, 395), (90, 270, 0)); //Castle Right Side Back
CreateObject(("veh_iw_civ_firetruck"), (-3000, -4000, 395), (90, 270, 0)); //Castle Right Side Back
 
//First Floor Base
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3700, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3800, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3400, 180), (0, 90, 0));
 
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3100, -3400, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3400, 180), (0, 90, 0));
 
CreateObject(("veh_iw_civ_firetruck"), (-3600, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3700, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3800, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3900, -3800, 180), (0, 90, 0));        
 
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3300, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3200, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3100, -3800, 180), (0, 90, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3000, -3800, 180), (0, 90, 0));
 
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3270, 180), (0, 0, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3370, 180), (0, 0, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3470, 180), (0, 0, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3570, 180), (0, 0, 0));
 
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3100, -120), (0, 0, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3100, -20), (0, 0, 0));
CreateObject(("veh_iw_civ_firetruck"), (-3400, -3100, 100), (0, 0, 0));
 
CreateObject(("veh_iw_civ_firetruck"), (-3454, -3177, 140), (0, 0, 0));
 
//Script End
}

Cargo()
{
level.mapmaker = "???";
level thread removeSkyBarrier();
   
    OrangeContainer((-2025, 2018, -195), ( 0, 90, 0 ));//roll,yaw,Pitch
	BlueContainer((-2375, 2018, -195), ( 0, 90, 0 ));
	OrangeContainer((-2725, 2018, -195), ( 0, 90, 0 ));
	BlueContainer((-3075, 2018, -195), ( 0, 90, 0 ));
	OrangeContainer((-3425, 2018, -195), ( 0, 90, 0 ));
	BlueContainer((-3775, 2018, -195), ( 0, 90, 0 ));
	OrangeContainer((-4125, 2018, -195), ( 0, 90, 0 ));
	BlueContainer((-4475, 2018, -195), ( 0, 90, 0 ));
	
	OrangeContainer((-4590, 1780, -195), ( 0, 0, 0 ));
    BlueContainer((-4590, 1430, -195), ( 0, 0, 0 ));
    OrangeContainer((-4590, 1080, -195), ( 0, 0, 0 ));
    BlueContainer((-4590, 730, -195), ( 0, 0, 0 ));
    OrangeContainer((-4590, 380, -195), ( 0, 0, 0 ));
    BlueContainer((-4590, 30, -195), ( 0, 0, 0 ));
    OrangeContainer((-4590, -320, -195), ( 0, 0, 0 ));
    BlueContainer((-4590, -670, -195), ( 0, 0, 0 ));
    OrangeContainer((-4590, -1020, -195), ( 0, 0, 0 ));
    BlueContainer((-4590, -1370, -195), ( 0, 0, 0 ));
    OrangeContainer((-4590, -1720, -195), ( 0, 0, 0 ));
	
	BlueContainer((-385, -1855, -195), ( 0, 0, 0 ));
	OrangeContainer((-385, -1505, -195), ( 0, 0, 0 ));
	
	RedContainer((-4350, 380, -195), ( 0, 90, 0 ));//Path to building
    RedContainer((-4000, 380, -195), ( 0, 90, 0 ));
    
    RedContainer((-4350, 480, -195), ( 0, 90, 0 ));//left
    RedContainer((-4000, 280, -195), ( 0, 90, 0 )); //right
    
    RedContainer((-4350, 280, -195), ( 0, 90, 0 ));//left
    RedContainer((-4000, 480, -195), ( 0, 90, 0 )); //right
	
	WhiteContainer((-3650, -10, -65), ( 0, 90, 0 ));//R Walls 1
	WhiteContainer((-3650, 770, -65), ( 0, 90, 0 ));
	WhiteContainer((-3300, -10, -65), ( 0, 90, 0 ));//L Walls 1
	WhiteContainer((-3300, 770, -65), ( 0, 90, 0 ));
	
	WhiteContainer((-3650, -10, 195), ( 0, 90, 0 ));//R Walls 2
	WhiteContainer((-3650, 770, 195), ( 0, 90, 0 ));
	WhiteContainer((-3300, -10, 195), ( 0, 90, 0 ));//L Walls 2
	WhiteContainer((-3300, 770, 195), ( 0, 90, 0 ));
	
	WhiteContainer((-3650, -10, 325), ( 0, 90, 0 ));//R Walls 3
	WhiteContainer((-3650, 770, 325), ( 0, 90, 0 ));
	WhiteContainer((-3300, -10, 325), ( 0, 90, 0 ));//L Walls 3
	WhiteContainer((-3300, 770, 325), ( 0, 90, 0 ));
		
	WhiteContainer((-3763, 623, 65), ( 0, 0, 0 ));
	WhiteContainer((-3763, 623, -65), ( 0, 0, 0 ));//Front Left wall 1
	
	WhiteContainer((-3763, 136, 65), ( 0, 0, 0 ));
	WhiteContainer((-3763, 136, -65), ( 0, 0, 0 ));//Front Right wall 1
	
	WhiteContainer((-3763, 623, 195), ( 0, 0, 0 ));//Front Left wall 2
	WhiteContainer((-3763, 136, 195), ( 0, 0, 0 ));//Front Right wall 2
	
	WhiteContainer((-3763, 623, 325), ( 0, 0, 0 ));//Front Left wall 3
	WhiteContainer((-3763, 136, 325), ( 0, 0, 0 ));//Front Right wall 3
	
	WhiteContainer((-3193, 525, -65), ( 0, 0, 0 ));//Back walls 1
	WhiteContainer((-3193, 175, -65), ( 0, 0, 0 ));
	
	WhiteContainer((-3193, 525, 195), ( 0, 0, 0 ));//Back walls 2
	WhiteContainer((-3193, 175, 195), ( 0, 0, 0 ));
	
	WhiteContainer((-3193, 525, 325), ( 0, 0, 0 ));//Back walls 3
	WhiteContainer((-3193, 175, 325), ( 0, 0, 0 ));
	
	WhiteContainer((-3193, 175, 65), ( 0, 0, 0 ));//
	WhiteContainer((-3193, 525, 65), ( 0, 0, 0 ));//
	WhiteContainer((-3323, 525, 65), ( 0, 0, 0 ));//
	
	WhiteContainer((-3650, -10, 65), ( 0, 90, 0 ));//F Roof 1
	WhiteContainer((-3650, 120, 65), ( 0, 90, 0 ));
	WhiteContainer((-3650, 250, 65), ( 0, 90, 0 ));
	WhiteContainer((-3650, 380, 65), ( 0, 90, 0 ));
	WhiteContainer((-3650, 510, 65), ( 0, 90, 0 ));
	//WhiteContainer((-3650, 640, 65), ( 0, 90, 0 ));
	WhiteContainer((-3650, 770, 65), ( 0, 90, 0 ));
	
	WhiteContainer((-3300, -10, 65), ( 0, 90, 0 ));//B Roof 1
	WhiteContainer((-3300, 120, 65), ( 0, 90, 0 ));
	WhiteContainer((-3300, 250, 65), ( 0, 90, 0 ));
	WhiteContainer((-3300, 380, 65), ( 0, 90, 0 ));
	WhiteContainer((-3300, 510, 65), ( 0, 90, 0 ));
	//WhiteContainer((-3300, 640, 65), ( 0, 90, 0 ));
	WhiteContainer((-3300, 770, 65), ( 0, 90, 0 ));
	
	WhiteContainer((-3650, -10, 455), ( 0, 90, 0 ));//F Roof 2
	WhiteContainer((-3650, 120, 455), ( 0, 90, 0 ));
	WhiteContainer((-3650, 250, 455), ( 0, 90, 0 ));
	WhiteContainer((-3650, 380, 455), ( 0, 90, 0 ));
	WhiteContainer((-3650, 510, 455), ( 0, 90, 0 ));
	WhiteContainer((-3650, 640, 455), ( 0, 90, 0 ));
	WhiteContainer((-3650, 770, 455), ( 0, 90, 0 ));
	
	WhiteContainer((-3300, -10, 455), ( 0, 90, 0 ));//B Roof 2
	WhiteContainer((-3300, 120, 455), ( 0, 90, 0 ));
	WhiteContainer((-3300, 250, 455), ( 0, 90, 0 ));
	WhiteContainer((-3300, 380, 455), ( 0, 90, 0 ));
	WhiteContainer((-3300, 510, 455), ( 0, 90, 0 ));
	WhiteContainer((-3300, 640, 455), ( 0, 90, 0 ));
	WhiteContainer((-3300, 770, 455), ( 0, 90, 0 ));
	
	WhiteContainer((-3420, 640, -25), ( 0, 90, -45 ));//ramp 1

	WhiteContainer((-3650, -10, -195), ( 0, 90, 0 ));//F Floor
	WhiteContainer((-3650, 120, -195), ( 0, 90, 0 ));
	WhiteContainer((-3650, 250, -195), ( 0, 90, 0 ));
	WhiteContainer((-3650, 380, -195), ( 0, 90, 0 ));
	WhiteContainer((-3650, 510, -195), ( 0, 90, 0 ));
	WhiteContainer((-3650, 640, -195), ( 0, 90, 0 ));
	WhiteContainer((-3650, 770, -195), ( 0, 90, 0 ));
	
	WhiteContainer((-3300, -10, -195), ( 0, 90, 0 ));//B Floor
	WhiteContainer((-3300, 120, -195), ( 0, 90, 0 ));
	WhiteContainer((-3300, 250, -195), ( 0, 90, 0 ));
	WhiteContainer((-3300, 380, -195), ( 0, 90, 0 ));
	WhiteContainer((-3300, 510, -195), ( 0, 90, 0 ));
	WhiteContainer((-3300, 640, -195), ( 0, 90, 0 ));
	WhiteContainer((-3300, 770, -195), ( 0, 90, 0 ));
	
	BlueContainer((-3980, 380, 155), ( 0, 90, 30 ));//ramp 2
	BlueContainer((-4280, 380, 329), ( 0, 90, 30 ));
	
	BlueContainer((-4545, 380, 402), ( 0, 90, 0 ));//Pathway 2
	BlueContainer((-4895, 380, 402), ( 0, 90, 0 ));
	
	RedContainer((-5245, -270, 402), ( 0, 90, 0 ));//Floor 1 Front B2
	RedContainer((-5245, -140, 402), ( 0, 90, 0 ));
	RedContainer((-5245, -10, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 120, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 120, 532), ( 0, 90, 0 ));//Wall
	RedContainer((-5245, 250, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 380, 402), ( 0, 90, 0 ));//middle
	RedContainer((-5245, 510, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 640, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 640, 532), ( 0, 90, 0 ));//Wall
	RedContainer((-5245, 770, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 900, 402), ( 0, 90, 0 ));
	RedContainer((-5245, 1030, 402), ( 0, 90, 0 ));
	
	RedContainer((-5595, -270, 402), ( 0, 90, 0 ));//Floor 1 Mid B2
	RedContainer((-5595, -140, 402), ( 0, 90, 0 ));
	RedContainer((-5595, -10, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 120, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 120, 532), ( 0, 90, 0 ));//Wall
	RedContainer((-5595, 250, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 380, 402), ( 0, 90, 0 ));//middle
	RedContainer((-5595, 510, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 640, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 640, 532), ( 0, 90, 0 ));//Wall
	RedContainer((-5595, 770, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 900, 402), ( 0, 90, 0 ));
	RedContainer((-5595, 1030, 402), ( 0, 90, 0 ));
	
	RedContainer((-5945, -270, 402), ( 0, 90, 0 ));//Floor 1 Back B2
	RedContainer((-5945, -140, 402), ( 0, 90, 0 ));
	RedContainer((-5945, -10, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 120, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 250, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 380, 402), ( 0, 90, 0 ));//middle
	RedContainer((-5945, 510, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 640, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 770, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 900, 402), ( 0, 90, 0 ));
	RedContainer((-5945, 1030, 402), ( 0, 90, 0 ));
	
	RedContainer((-5138, 623, 532), ( 0, 0, 0 ));//F walls
	RedContainer((-5138, 136, 532), ( 0, 0, 0 ));
	RedContainer((-5138, 800, 532), ( 0, 0, 0 ));
	RedContainer((-5138, -80, 532), ( 0, 0, 0 ));
	
	RedContainer((-5245, -270, 532), ( 0, 90, 0 ));
	RedContainer((-5245, 1030, 532), ( 0, 90, 0 ));
	RedContainer((-5595, -270, 532), ( 0, 90, 0 ));
	RedContainer((-5595, 1030, 532), ( 0, 90, 0 ));
	RedContainer((-5945, -270, 532), ( 0, 90, 0 ));
	RedContainer((-5945, 1030, 532), ( 0, 90, 0 ));
	
	RedContainer((-6058, -25, 532), ( 0, 0, 0 ));//Back walls
	RedContainer((-6058, 325, 532), ( 0, 0, 0 ));
	RedContainer((-6058, 675, 532), ( 0, 0, 0 ));
	RedContainer((-6058, 800, 532), ( 0, 0, 0 ));
	
	RedContainer((-5245, -270, 662), ( 0, 90, 0 ));//Roof 1 Front B2
	RedContainer((-5245, -140, 662), ( 0, 90, 0 ));
	RedContainer((-5245, -10, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 120, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 250, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 380, 662), ( 0, 90, 0 ));//middle
	RedContainer((-5245, 510, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 640, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 770, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 900, 662), ( 0, 90, 0 ));
	RedContainer((-5245, 1030, 662), ( 0, 90, 0 ));
	
	RedContainer((-5595, -270, 662), ( 0, 90, 0 ));//Roof 1 Mid B2
	RedContainer((-5455, -140, 572), ( 0, 90, -45 ));//ramp up
	RedContainer((-5595, -10, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 120, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 250, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 380, 662), ( 0, 90, 0 ));//Middle
	RedContainer((-5595, 510, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 640, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 770, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 900, 662), ( 0, 90, 0 ));
	RedContainer((-5595, 1030, 662), ( 0, 90, 0 ));
	
	RedContainer((-5945, -270, 662), ( 0, 90, 0 ));//Roof 1 Back B2
	RedContainer((-5945, -140, 662), ( 0, 90, 0 ));
	RedContainer((-5945, -10, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 120, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 250, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 380, 662), ( 0, 90, 0 ));//middle
	RedContainer((-5945, 510, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 640, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 770, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 900, 662), ( 0, 90, 0 ));
	RedContainer((-5945, 1030, 662), ( 0, 90, 0 ));
	// Elevator Start
	BlueContainer((-4475, 2018, -195), ( 0, 90, 0 ));//Middle
	BlueContainer((-4345, 1888, -195), ( 0, 90, 0 ));//Left
	//BlueContainer((-4475, 1888, -195), ( 0, 90, 0 ));//Left OG
	BlueContainer((-4475, 2148, -195), ( 0, 90, 0 ));//Right
	
	BlueContainer((-4475, 2018, 975), ( 0, 90, 0 ));//Middle
	
	BlueContainer((-4475, 2148, -65), ( 0, 90, 0 ));//Right Mid
	BlueContainer((-4475, 2148, 65), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 195), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 325), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 455), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 585), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 715), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 845), ( 0, 90, 0 ));
	BlueContainer((-4475, 2148, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4345, 1888, -65), ( 0, 90, 0 ));//Left Mid
	BlueContainer((-4475, 1888, 65), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 195), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 325), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 455), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 585), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 715), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 845), ( 0, 90, 0 ));
	BlueContainer((-4475, 1888, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4125, 2148, -195), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, -65), ( 0, 90, 0 ));//Right Front
	BlueContainer((-4125, 2148, 65), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 195), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 325), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 455), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 585), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 715), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 845), ( 0, 90, 0 ));
	BlueContainer((-4125, 2148, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4125, 2018, 65), ( 0, 90, 0 ));//Middle Front
	BlueContainer((-4125, 2018, 195), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 325), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 455), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 585), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 715), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 845), ( 0, 90, 0 ));
	BlueContainer((-4125, 2018, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4125, 1888, -195), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, -65), ( 0, 90, 0 ));//Left Front
	BlueContainer((-4125, 1888, 65), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 195), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 325), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 455), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 585), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 715), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 845), ( 0, 90, 0 ));
	BlueContainer((-4125, 1888, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4825, 2148, -195), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, -65), ( 0, 90, 0 ));//Right Back
	BlueContainer((-4825, 2148, 65), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 195), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 325), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 455), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 585), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 715), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 845), ( 0, 90, 0 ));
	BlueContainer((-4825, 2148, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4825, 2018, -195), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, -65), ( 0, 90, 0 ));//Middle Back
	BlueContainer((-4825, 2018, 65), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, 195), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, 325), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, 455), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, 585), ( 0, 90, 0 ));
	RedContainer((-4825, 2018, 715), ( 0, 90, 0 ));
	//BlueContainer((-4825, 2018, 845), ( 0, 90, 0 ));
	BlueContainer((-4825, 2018, 975), ( 0, 90, 0 ));
	
	BlueContainer((-4825, 1888, -195), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, -65), ( 0, 90, 0 ));//Left Back
	BlueContainer((-4825, 1888, 65), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 195), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 325), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 455), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 585), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 715), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 845), ( 0, 90, 0 ));
	BlueContainer((-4825, 1888, 975), ( 0, 90, 0 ));
	
	CreateOrangeElevator((-4475, 2018, -195), (-4475, 2018, 715), (0, 90, 0), 4, 2);
	
	RedContainer((-5175, 2018, 715), ( 0, 90, 0 ));//Top path S M
	
	RedContainer((-5175, 2148, 715), ( 0, 90, 0 ));//R
	RedContainer((-5175, 2278, 715), ( 0, 90, 0 ));
	
	RedContainer((-4830, 2278, 773), ( 0, 90, -20 ));//RS Ramp
	RedContainer((-4607.5, 2278, 853.5), ( 0, 90, -20 ));
	RedContainer((-4423, 2278, 922), ( 0, 90, -20 ));//UP
	RedContainer((-4125, 2278, 975), ( 0, 90, 0 ));
	
	RedContainer((-5175, 1888, 715), ( 0, 90, 0 ));//L
	RedContainer((-5175, 1758, 715), ( 0, 90, 0 ));
	
	RedContainer((-4830, 1758, 773), ( 0, 90, -20 ));//LS Ramp
	RedContainer((-4607.5, 1758, 853.5), ( 0, 90, -20 ));
	RedContainer((-4423, 1758, 922), ( 0, 90, -20 ));//UP
	RedContainer((-4125, 1758, 975), ( 0, 90, 0 ));
    
    //white bunker door
    CreateDoor((-3713.01, 264.01, -56.01), (-3719.01, 382.01, -56.01), 1.5, (90, 180, 0), 3, 2, 25, 80);
    CreateDoor((-3534.01, 513.01, 190.01), (-3534.01, 638.01, 190.01), 1.5, (0, 180, 0), 3, 3, 30, 105);
    CreateZipline((-5102.01, 380.01, 798.125), (-3779.01, 380.01, 591.125), 1.2, false);
    CreateZipline((-2123.01, 2032.01, -58.125), (-4583.01, 1227.01, -58.125), 1.2, true);
    CreateZipline((-410.01, -1977.01, -58.125), (-4586.01, -1557.01, -58.125), 1.2, true);
    CreateMysteryBox((-5218.407, -8.366, 552.125), (0, 0, 0), 150);
    CreateMysteryBox((-3324.407, 647.366, -58.125), (0, 90, 0), 150);
    CreateFlag((-5419.21, 949.8177, 538.6875), (-5237.82, 2261.2285, 851.125), true, false); //enter flag
}

standoff()
{
	level.mapmaker = "???";
	level thread removeskybarrier();
	createwall( ( -1172, -1364, 8 ), ( -1202, -1364, 100 ), 0 );
	createwall( ( -842, -1510, 8 ), ( -842, -1540, 100 ), 0 );
	createwall( ( -457, -1356, 40 ), ( -485, -1356, 140 ), 0 );
	createwall( ( -1337, -1406, 144 ), ( -1337, -1436, 160 ), 0 );
	createwall( ( -1172, -1221, 172 ), ( -1172, -1251, 230 ), 0 );
	createwall( ( -310, 1219, 144 ), ( -340, 1219, 230 ), 0 );
	createwall( ( 515, 55, 16 ), ( 515, 85, 110 ), 0 );
	createwall( ( -585, -915, 80 ), ( -585, -875, 100 ), 0 );
	createdoor( ( -824, -1627, 0 ), ( -824, -1783, 0 ), 3, ( 90, 0, 0 ), 5, 2, 25, 60 );
	createdoor( ( 980, 234, 8 ), ( 1147, 234, 8 ), 3, ( 90, 90, 0 ), 4, 2, 30, 60 );
	createdoor( ( 152, -311, 17 ), ( 152, -425, 17 ), 3, ( 90, 0, 0 ), 3, 2, 20, 60 );
	createdoor( ( 152, -556, 170 ), ( 152, -394, 170 ), 3, ( 90, 0, 0 ), 4, 2, 20, 60 );
	createflag( ( 474, 59, 16 ), ( 445, -658, 8 ), 0, 0 );
	createflag( ( -324, 104, 8 ), ( -1464, 876, 0 ), 0, 1 );
	createmysterybox( ( -906, -1196, 174 ), ( 0, 90, 0 ), 900 );
	createmysterybox( ( 432, -347, 16 ), ( 0, 0, 0 ), 900 );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 902, 676, 8 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 902, 644, 8 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 902, 719, 8 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 1300, 687, 3 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 458, 834, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 548, 782, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 669, 711, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 703, 768, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 582, 839, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 430, 927, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 340, 903, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 485, 896, 6 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 485, 896, 6 ), ( 0, 330, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 624, 736, 0 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 657, 796, 0 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 320, 1024, 8 ), ( 0, 90, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 320, 1024, 8 ), ( 0, 270, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( -1094, -989, 150 ), ( 0, 90, 0 ) );
	createobject( "veh_t6_civ_van_sprinter_whole", ( 390, 949, 8 ), ( 0, 150, 0 ) );
	createobject( "veh_t6_civ_car_compact", ( 843, 200, 64 ), ( 0, 90, 0 ) );
	createobject( "veh_t6_civ_car_compact_red", ( -88, 765, 40 ), ( 0, 0, 0 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 666, 1051, 85 ), ( 0, 108, 0 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 838, 100, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 838, -100, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 838, -300, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 838, -500, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -100, -1210, 20 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 0, -1210, 20 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -100, -1210, 70 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 0, -1210, 70 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -683, -1530, 50 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -428, -1545, 100 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -350, -1545, 100 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -947, -915, 190 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -747, -915, 190 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -747, -915, 90 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -747, -915, -10 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -547, -915, 190 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -547, -915, 90 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -547, -915, -10 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -347, -915, 190 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -347, -915, 90 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -347, -915, -10 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( 527, -852, 50 ), ( 0, 0, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -300, 760, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -300, 560, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -20, 760, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -20, 560, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -20, 662, 0 ), ( 0, 90, 0 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -420, 525, 150 ), ( 0, 0, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, 367, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, 167, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -500, -33, 200 ), ( 0, 90, 270 ) ) 
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -500, 167, 200 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -500, 367, 200 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -500, 567, 200 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -430, 167, 200 ), ( 0, 90, 90 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -430, -33, 200 ), ( 0, 90, 90 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, 167, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, -67, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, -267, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -466, -467, 150 ), ( 0, 90, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -370, -656, 150 ), ( 0, -45, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -292, -577, 70 ), ( 45, 45, 180 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -325, 36, 59 ), ( 0, 0, 90 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -420, 182, 50 ), ( 0, 90, 270 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -578, -667, 75 ), ( 0, 84, 0 ) );
	createobject( "veh_t6_civ_truck_radiant_white_mp", ( -801, -986, 100 ), ( 0, 90, 180 ) );

}

Plaza()
{ 
	level.mapmaker = "CodJumper";
	level thread removeSkyBarrier() // v1.5 Made by CodJumper
	CreateWall((-17260.2, 654.034, -50.875), (-17409.8, 773.849, -50.876), true); //bs don't remove 
	CreateWall((-17260.2, 654.034, -50.875), (-17409.8, 773.849, -50.876), true); //right room wall
	CreateWall((-16174.6, 1775, -50.875), (-16275.5, 1910.85, -50.876), true); //left room wall  
	CreateZipline((-16536.8, 1373.69, -87.875), (-16226.4, 1042.5, 48.125), 2.5, true);
	CreateFlag((-16633.9, 700.693, 48.125), (-16386.7, 888.134, -80.125), false, false); // 1st room 1st flag 1way
	CreateFlag((-16179.3, 670.101, -81.6811), (-18597.4, -524.28, -191.875), false, false); // 1st room 2nd flag 1way
	CreateFlag((-13960.2, 3285.49, 4.739), (-18876.3, 961.221, -63.875), false, false); // 1st bunker escape 2nd flag 1way
	CreateFlag((-14978.5, 3091.35, -191.875), (-14729.4, 3087.29, -192.875), false, true); // 1st bunker 1st flag 2way
	CreateFlag((-16519.3, 3346.88, -191.875), (-16396.1, 3380.66, 27.6968), false, false); // 2nd room 1st escape flag 1way
	CreateGrid((-14252, 2892.17, -11.136), (-13950.8, 3285.22, -11.136), 90); // bunker floor
	CreateRamp((-14611, 3089.84, -192.875), (-14281.6, 3091.65, -15.136)); // bunker ramp
	CreateWall((-14174.7, 2871.83, 10.739), (-14174.7, 3043.56, 11.739)); //bunker bottom right wall
	CreateWall((-14174.7, 2871.83, 70.739), (-14174.7, 3043.56, 71.739)); //bunker top right wall
	CreateWall((-14174.7, 3296.92, 10.739), (-14174.7, 3156.18, 11.739)); //bunker bottom left wall
	CreateWall((-14174.7, 3296.92, 70.739), (-14174.7, 3156.18, 71.739)); //bunker top left wall
	CreateWall((-16037.5, 3094.16, -191.875), (-16037.5, 3134.16, -115.875), true); // 2md room right wall
	CreateWall((-16624, 3378.15, -191.875), (-16624, 3418.15, -115.875), true); // 2md room left wall
	CreateDoor((-14174.7, 3239.38, 10.739), (-14174.7, 3089.64, 10.739), 4, (90, 0, 0), 4, 2, 30, 80); //1nd bunker door
	CreateDoor((-16779, 1272.03, -57.875), (-16999.9, 1498.43, -57.875), 3, (90, 135, 0), 3, 2, 30, 80); //1st room door
	CreateDoor((-16351.8, 2867.44, -250.875), (-16351.7, 2867.43, -160.875), 3, (90, 70, 0), 3, 2, 30, 80); //2nd room door
	CreateMysteryBox((-16227, 3277.36, -185.875), (0, 90, 0), 100);
	
	//Patch glitch
	CreateWall((-16192.6, 959.282, 52.5358), (-16484.6, 653.624, 52.5359), true); //bs don't remove 
	CreateWall((-16152.6, 1182, 51.125), (-16271.7, 1184.13, 51.126), true); //bs don't remove 
	CreateWall((-16709.7, 655.331, 51.125), (-16734.2, 734.126, 51.126), true); //bs don't remove
}

Yemen()
{
level.mapmaker = "xTiibo Modz";
          ents = getEntArray();
        for ( index = 0; index < ents.size; index++ )
        {
            if(isSubStr(ents[index].classname, "trigger_hurt") )
            ents[index].origin = (0, 0, -1500); 
        }
        
        

 CreateMysteryBox((-690, -922, 288), (0, 85, 0), 100);
  CreateMysteryBox((-813, 293, 134), (0, 55, 0), 100);

		CreateDoor((-950, -2153, 148), (-800, -2410, 203), 2, (90, 0, 0), 6, 2, 30, 80);
		CreateDoor((-2300, -169, -121), (-2336, -565, -119), 2, (90, -53, 0), 6, 2, 37, 80);
		CreateDoor((-1275, -663, 207), (-1302, -383, 207), 2, (90, 55, 0), 4, 2, 35, 80);
		
		CreateFlag((-835, -1231, 200), (-1031, 647, -147), false, true);
		createObject(("t5_vehicle_tiara_whole_brown"), (-388, -2513, 230), (0, -45, 180));
		createObject(("t5_vehicle_tiara_whole_brown"), (-343, -2646, 230), (0, -135, 180));
		createObject(("t5_vehicle_tiara_whole_brown"), (-355, -2469, 250), (0, -45, -90));
		createObject(("t5_vehicle_tiara_whole_brown"), (-444, -2592, 230), (0, 135, 180));
		createObject(("p6_street_vendor_goods_table02"), (-754, -2561, 195), (0, -175, 0));
		createObject(("p6_street_vendor_goods_table02"), (-754, -2561, 230), (0, -175, 0));
		createObject(("p6_street_vendor_goods_table02"), (-768, -2263, 230), (0, -175, 0));
		
		
		createObject(("t5_vehicle_tiara_whole_brown"), (-1973, -992, -140), (0, 170, -90));
		
		
		
		createObject(("veh_t6_civ_car_compact"), (-1208, -856, 240), (0, -100, 0));
		createObject(("veh_t6_civ_car_compact"), (-1263, -1112, 240), (0, 123, 0));
		createObject(("veh_t6_civ_car_compact"), (-1222, -900, 240), (0, -141, 0));
		createObject(("fxanim_gp_cloth_sheet_med03_mod"), (-1271, -984, 290), (0, 160, 0));
		createObject(("fxanim_gp_cloth_sheet_med03_mod"), (-1286, -1024, 290), (0, 160, 0));
		createObject(("collision_clip_wall_256x256x10"), (-1268, -968, 230), (0, -93, 0));
		
		createObject(("veh_t6_civ_car_compact"), (-743, -1288, 200), (0, -120, 0));
		createObject(("veh_t6_civ_car_compact"), (-743, -1288, 250), (0, -120, 0));
		
		createObject(("t5_vehicle_tiara_whole_brown"), (-939, -629, 180), (0, 115, 0));
		createObject(("t5_vehicle_tiara_whole_brown"), (-939, -629, 230), (0, -65, 0));
		createObject(("veh_t6_civ_car_compact"), (-772, 358, 140), (0, 145, 0));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1150, 70, 140), (30, 130, 180));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1250, 190, 50), (30, 130, 180));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1350, 310, -40), (30, 130, 180));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1450, 430, -115), (15, 130, 180));
		
		createObject(("t5_vehicle_tiara_whole_brown"), (-1357, 623, -90), (0, -50, -90));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1445, 735, -90), (0, 130, 90));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1357, 623, -40), (0, -50, -90));
		createObject(("t5_vehicle_tiara_whole_brown"), (-1445, 735, -40), (0, 130, 90));
		createObject(("collision_clip_wall_256x256x10"), (-1170, 563, -133), (0, 160, 0));
		createObject(( "t6_wpn_supply_drop_ally"),  (-872, 728, -43), (0, 53,0 ));
		createObject(( "t6_wpn_supply_drop_ally"),  (-1080, 954, -129), (0, 155,0 ));
		createObject(( "t6_wpn_supply_drop_ally"),  (-1011, 1123, -129), (0, 170,0 ));
}

Dig()
{ 
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateFlag((-1704.45, -157.004, 79.2677), (-713.124, 2402.26, 418.054), false, false);
CreateWall((-84.1159, 2181.98, 383.803), (-84.1159, 2718.84, 440.804), true);
CreateWall((-85.0445, 2701.46, 383.803), (-549.177, 2701.46, 440.804), true);
CreateWall((-908.771, 2701.46, 440.341), (-484.344, 2701.46, 383.803), true);
CreateWall((-908.772, 2701.46, 420.803), (-910.46, 2701.46, 462.804), true);
CreateWall((-1238.52, 2693.94, 420.803), (-1238.52, 2469.45, 462.804), true);//
CreateWall((-72.8847, 2243.68, 360.527), (-600.454, 2243.68, 470.000));
CreateWall((-550.485, 2273.29, 360.527), (-550.485, 2555.83, 470.000));
CreateWall((-847.358, 2254.41, 394.064), (-847.358, 2718.46, 470.000));////
CreateDoor((-515.647, 2412.15, 364.334), (-516.276, 2604.65, 365.596), 2, (90, 0, 0), 3, 2, 50, 80);
CreateMysteryBox((-429.574, 2278.32, 358.954), (0, 90, 0), 200);
CreateWall((-866.599, 2242.06, 360.527), (-542.28, 2242.06, 470.000));
CreateWall((1000.98, 1246.18, 129.132), (1000.98, 1031.47, 260.000));
CreateDoor((1130.33, 999.677, 127.442), (1017.58, 989.242, 129.132), 2, (90, 0, 0), 3, 2, 40, 80);
CreateFlag((336.311, -403.517, 43.8388), (672.244, 1070.74, 132.718), false, false);
CreateWall((1366.05, 1243.44, 150.000), (544.102, 1243.44, 200.346), true);
CreateFlag((1350.43, 964.293, 124.503), (-730.124, -211.776, 160.462), false, false);
CreateFlag((-128.394, 2295.13, 361.423), (-140.901, -169.293, 161.708), false, false);
CreateFlag((1050.19, -1154.42, 122.233), (-1711.92, -1348.96, 76.4179), false, true);
CreateTurret((1028.2, 1146.34, 245.194),(0, 180, 0), "auto_gun_turret_mp");
CreateMysteryBox((116.947, 959.641, 174.974), (0, 90, 0), 200);
CreateZipline((1360.36, 1046.43, 124.357), (516.554, 1054.49, 190.847), 2, true);
CreateFlag((246.089, 1263.95, 236.679), (1075.63, 741.337, 120.125), false, false);
}

Pod()
{  
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateRamp((-1853.95, -283.205, 431.354), (-1853.73, -541.851, 552.879));
CreateGrid((-1881.09, -559.391, 552.879), (-1652.56, -1171.57, 552.879));
CreateWall((-1782.44, -530.608, 552.879), (-1596.61, -530.608, 553.879));
CreateWall((-1782.44, -530.608, 620.456), (-1596.61, -530.608, 621.456));
CreateWall((-1622.73, -547.608, 552.879), (-1622.73, -890.091, 553.879));
CreateWall((-1622.73, -547.608, 620.456), (-1622.73, -890.091, 621.456));
CreateWall((-1622.73, -890.091, 552.879), (-1622.73, -1240.01, 652.331));
CreateFlag((-1896.85, -1205.03, 568.754), (1231.24, -123.347, 271.204), false, false);
CreateMysteryBox((-1657.37, -1043.78, 568.754), (0, 0, 0), 200);
CreateDoor((-1731.34, -565.249, 568.754), (-1861.37, -565.962, 568.77), 2, (90, 90, 0), 2, 2, 35, 80);
CreateFlag((-223.609, 1182.8, 437.228), (-1117.22, -1569.99, 420.125), false, true);
CreateWall((-759.361, 399.641, 416.365), (-670.56, 399.641, 540.365));
CreateDoor((-704.069, 146.653, 420.125), (-674.916, 53.1565, 426.941), 2, (90, 115, 0), 3, 2, 20, 80);
CreateFlag((-592.616, 284.226, 420.125), (694.142, -2266.54, 384.854), false, false);
CreateWall((643.359, -1693.64, 372.152), (490.641, -1698.15, 471.152));
CreateWall((1315.65, -510.299, 243.532), (1515.54, -510.299, 340.532));
CreateWall((1084.35, -470.453, 264.626), (935.74, -470.453, 360.626));
CreateDoor((1008.18, -505.094, 260.841), (889.929, -490.453, 270.227), 2, (90, 90, 0), 2, 2, 30, 80);
CreateMysteryBox((1146.03, -664.641, 246.097), (0, 90, 0), 200);
CreateFlag((584.203, -1609.16, 348.125), (-1863.72, 2090.26, 480.152), false, false);
CreateTurret((1099.96, -1187.69, 260.125), (0, 90, 0), "auto_gun_turret_mp");
 }

Takeoff()
{ 	
    level.mapmaker = "speselized5";
    //Created by speselized5
	level thread removeSkyBarrier();
	//CreateFlag((-377.345, 4304.17, 32.125), (-378.816, 4791.27, 115.426), false, true);
	CreateZipline((479.7, 3321.43, 32.125), (-667.716, 3452.09, 184.125), true);
	CreateDoor((-964.043, 3496.36, 201.465), (-963.085, 3432.2, 201.465), 3, (90, 180, 0), 4, 2, 30, 80);
	CreateWall((-1270.23, 3535.44, 250.027), (-1540.36, 3534.54, 250.20), false);
	CreateWall((-1528.46, 3542.86, 162.88), (-1526.32, 3752.09, 188.763), false);
	CreateWall((-1270.23, 3535.44, 180.027), (-1540.36, 3534.54, 180.20), false);
	CreateFlag((-1526.42, 3688.87, 188.763), (-382.147, 583.253, 64.125), false, false);
	//added by 0zersub
	CreateFlag((176.588, -586.988, -0.875), (-605.78, -373.684, -7.875), true, true);//Hidden place 1
	CreateFlag((-1769.58, 176.412, 0.125), (-1584.36, 455.641, 2.125), true, true);//Hidden place 2 
	CreateGrid((-735.641, 186.101, 32.125), (-768.359, 186.101, 32.125), (90, 90, 0), true);//Block window health center 05
	CreateGrid((-883.315, 189.158, -11.0192), (-905.15, 186.73, -11.0192), (90, 90, 0), true);//Block door health center 05 pt1
	CreateGrid((-883.315, 189.158, 29.9333), (-905.15, 186.73, 29.9333), (90, 90, 0), true);//Block door health center 05 pt2
	CreateDoor((-922.512, 12.78, 14.7714), (-983.655, -84.0735, 14.7714), 3, (90, 0, 0), 1, 2, 30, 80);//Behind door health center 05
	CreateDoor((-305.206, 4.0352, 14.7714), (-429.473, 3.96509, 14.7714), 3, (90, 0, 0), 3, 2, 30, 80);//Front door health center 05
	CreateGrid((614.037, 450.597, 188.125), (575.641, 450.597, 188.125), (90, 90, 0), true);//Block ramp lounge 04
	CreateGrid((1276.98, 772.571, 14.7928), (1276.98, 638.77, 14.7928), (0, 0, 0), false);//Block side door Lounge 04
	CreateGrid((1276.98, 772.571, 30.7928), (1276.98, 638.77, 30.7928), (0, 0, 0), false);//Block side door Lounge 04 pt1
	CreateDoor((1121.78, 518.149, 14.159), (1119.75, 353.967, 14.159), 3, (90, 90, 0), 4, 2, 30, 80);//Behind door Lounge 04
 	CreateDoor((1256.41, 1281.34, 0.125), (1256.41, 1094.62, 43.8369), 3, (90, 90, 0), 4, 2, 30, 80);//Front door Lounge 04
	CreateMysteryBox((832.095, 415.641, 0.125), (0, 90, 0), 100);
	//Added by xTiibo Modz
	CreateFlag((-377.345, 4340.17, 32.125), (-378.816, 4460.27, 31.426), false, true);
	CreateRamp((-397, 4535, 20), (-397, 4665, 100), true);
	CreateRamp((-354, 4535, 20), (-354, 4665, 100), true);
	CreateWall((-150, 5365, 115.875), (-315, 5365, 225.125), false);
	CreateWall((-430, 5365, 115), (-640, 5365, 225.125), false);
	CreateGrid((-422, 4448, 11.875), (-322, 4523, 11.875), 90, false);
	CreateDoor((-343, 5365, 233.125), (-343, 5365.2, 130.125), 2, (90, 90, 0), 2, 2, 30, 80);
	CreateRamp((-140, 5460, 240), (-630, 5440, 225), false);
	CreateRamp((-140, 5380, 240), (-630, 5365, 225), false);//dessus barriere porte
	CreateWall((-132, 5375, 115.125), (-132, 5740, 247.125), false);
	CreateWall((-625, 5375, 115.125), (-625, 5740, 247.125), false);
	CreateRamp((-206, 5680, 115), (-206, 5487, 225), false);
	CreateFlag((-376, 5775.17, 120.125), (-620.909, 3410.52, 184.125), false, false);
	CreateWall((-503, 4953, 115.125), (-613, 4953, 210.125), false);
	CreateMysteryBox((-590, 5553, 125.125), (90, 180, 0), 100);
}

Frost()
{ 
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateWall((-661.034, 1898.69, 40.5484), (-661.034, 2813.26, 40.5485));
CreateWall((-670.393, 2766.93, -7.5484), (-799.933, 2767.64, 67.5485));
CreateWall((-770.086, 2757.78, -7.5484), (-770.086, 3885.23, 67.5485));
CreateWall((-786.008, 3815.34, -7.5484), (-410.904, 3815.34, 67.5485)); 
CreateFlag((-204.532, 1120.55, -4.42838), (-532.923, 1742.47, -7.875), false, false);
CreateWall((-668.04, 2774.67, -7.5484), (-518.759, 2774.67, 67.5485));
CreateDoor((-601.289, 2809.31, 2.68649), (-474.082, 2798.42, -7.875), 2, (90, 90, 0), 2, 2, 35, 80);
CreateMysteryBox((-735.445, 3127.24, -7.8529), (0, 180, 0), 190);
CreateWall((-661.058, 1909.3, -7.875), (-526.734, 1891.74, 74.5485));
CreateFlag((-724.722, 3773.01, -7.875), (677.785, -661.279, 50.125), false, false);
CreateMysteryBox((-735.445, 3291.09, -7.85299), (0, 180, 0), 190);
CreateWall((2486.56, -448.034, 9.69402), (3936.11, -469.465, 100.456));
CreateDoor((2250.02, -942.575, -9.71714), (2329.17, -789.183, -4.74274), 2, (90, 0, 0), 8, 2, 35, 80);
CreateFlag((88.9399, -46.8091, 64.2683), (3801.81, -569.645, -4.9691), false, false);
CreateWall((3618.3, -517.574, 0.357746), (3618.3, -723.55, 100.452));
CreateWall((2125.75, -1322.69, 10.3022), (2125.75, -1547.75, 10.3023), true);
CreateFlag((2241.55, -1468.49, -15.875), (341.131, 1232.61, 78.125), false, false);
CreateTurret((2246.8, -1219.62, -15.875), (0, 0, 0), "auto_gun_turret_mp");
CreateTurret((-733.519, 2778.19, 68.3912), (0, 270, 0), "auto_gun_turret_mp");
}

Mirage()
{ 	
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateWall((820.549, 1159.70, 131.865), (820.549, 1312.21, 250.945)); 
CreateDoor((-4.36561, 1832.2, 24.125), (-3.43415, 1932.96, 24.125), 2, (90, 90, 0), 4, 2, 15, 80);
CreateWall((-847.348, 1385.49, 145.199), (-846.551, 1128.68, 150.2245));
CreateWall((-847.348, 1385.49, 165.199), (-846.551, 1128.68, 75.2245));
CreateWall((-741.408, 1157.64, 6.44371), (-591.747, 1155.67, -1.78725));
CreateWall((-741.408, 1157.64, 45.44371), (-591.747, 1155.67, -1.78725));
CreateWall((-142.582, 955.454, 265.631), (132.361, 950.306, 267.255));
CreateMysteryBox((2.09576, 1376.36, -30.3806), (0, 90, 0), 200);
CreateWall((-705.296, 1153.35, 607.856), (-705.296, 240.588, 735.583));
CreateWall((-685.296, 249.741, 617.061), (750.386, 247.608, 735.583)); 
CreateWall((733.661, 257.728, 617.896), (733.661, 1171.39, 735.583));
CreateFlag((2.25761, 2570.64, 176.125), (-621.632, 1012.13, 633.336), false, false);
CreateWall((274.385, 1153.16, 700.321), (274.385, 553.568, 760.321));
CreateWall((261.928, 580.092, 658.342), (-273.553, 580.092, 760.321));
CreateWall((-257.259, 592.769, 660.341), (-257.259, 1180.22, 760.321));
CreateWall((-90.0417, 595.4, 648.125), (-90.0417, 458.868, 767.125));
CreateWall((-90.0417, 264.566, 618.688), (-90.0417, 418.028, 767.125));
CreateDoor((-55.4008, 322.291, 630.812), (-59.0809, 446.082, 648.125), 2, (90, 0, 0), 2, 2, 40, 80);
CreateTurret((603.176, 419.714, 647.788), (0, 180, 0), "auto_gun_turret_mp");
CreateMysteryBox((477.115, 1128.36, 648.125), (0, 90, 0), 200);
CreateFlag((668.061, 1086.84, 627.577), (-855.46, 2870.38, 28.0537), false, false);
CreateDoor((-896.51, 2073.64, 176.125), (-1021.03, 2040.87, 176.125), 2, (90, 90, 0), 2, 2, 25, 80);
CreateFlag((-736.184, 1998.07, 176.125), (940.271, 1435.1, 108.832), false, false);
CreateWall((-697.581, 2240.91, 212.828), (-697.581, 2119.2, 280.217));
CreateDoor((1982.36, 392.359, 0.124999), (2108.99, 410.359, 0.124999), 2, (90, 90, 0), 2, 2, 25, 80);
CreateWall((1430.56, -28.8206, 13.2398), (1430.56, 89.1984, 106.251));
CreateFlag((1544.63, 2.5824, 1.93948), (-2464.52, 1475.63, -42.1882), false, false);
CreateFlag((0.689376, 1001.46, 96.125), (2933.47, 1260.56, 18.5847), false, false);
}

Hydro()
{
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateFlag((-2701.3, -457.21, 222.125), (-2865.28, -1577.53, 216.125), false, false);
CreateWall((-3181.05, -1262.43, 216.125), (-3052.13, -1107, 335.966));
CreateWall((-3822.95, -446.114, 211.584), (-2600.19, 684.654, 284.57));
CreateWall((-3313.87, -482.114, 264.591), (-3387.29, -442.564, 266.554), true);
CreateWall((-2705.11, 561.652, 301.738), (-2554.92, 713.997, 306.735), true);
CreateTurret((-2760.69, 203.599, 216.125), (0, 270, 0), "auto_gun_turret_mp");
CreateTurret((-3023.35, 228.974, 216.125), (0, 270, 0), "auto_gun_turret_mp");
CreateMysteryBox((-2287.64, 43.9901, 216.125), (0, 0, 0), 200);
CreateMysteryBox((-2287.64, -125.783, 216.125), (0, 0, 0), 200);
CreateFlag((-2557.1, 187.289, 256.125), (-1407.16, -3460.03, 82.125), false, false);
CreateWall((715.112, -2820.03, 100.391), (515.633, -2824.46, 86.6547), true);
CreateFlag((-750.577, -3222.29, 82.125), (1220.17, -3911.64, 82.125), false, false);
CreateDoor((787.686, -3475.36, 82.125), (603.119, -3497.35, 82.125), 2, (90, 90, 0), 4, 2, 30, 80);
CreateFlag((1202.53, -3098.6, 82.126), (-30.2542, -1241.76, 324.125), false, false);
CreateMysteryBox((1248.07, -3334.27, 82.125), (0, 0, 0), 200);
CreateDoor((788.418, -3147.36, 82.125), (607.233, -3170.1, 82.125), 2, (90, 90, 0), 4, 2, 30, 80);
} 

Grind()
{   
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateWall((4478.13, -2934.58, 283.000), (4478.13, -2254.47, 283.001));
CreateWall((5007.59, -2934.58, 283.000), (5007.59, -2254.47, 283.001));
CreateWall((5000.4, -2957.1, 283.000), (4467.67, -2957.1, 283.001));
CreateMysteryBox((4725.33, -2319.64, 248.125), (0, 90, 0), 200);
CreateFlag((4526.01, -2326.66, 248.125), (2707.86, -202.092, 164.125), false, false);
CreateWall((4500.94, -2734.4, 248.125), (4890.88, -2734.4, 361.733));
CreateDoor((4772.76, -2699.76, 256.125), (4922.25, -2697.07, 256.125), 2, (90, 90, 0), 3, 2, 40, 80);
CreateFlag((561.622, -1324.31, 136.125), (4595.29, -2844.41, 256.125), false, false);
CreateWall((2309.94, 332.539, 169.000), (2309.94, 1483.11, 169.001)); //2
CreateWall((2318.18, 1466.48, 169.000), (3186.81, 1466.48, 169.001));
CreateWall((3128.03, 1440.13, 169.000), (3128.03, 303.505, 169.001));
CreateWall((3120.36, 321.489, 169.000), (2295.66, 324.115, 169.001));
CreateFlag((-575.399, -849.019, 280.125), (2769.22, 1353.76, 128.125), false, false);
CreateWall((3118.43, 965.084, 128.125), (2690.54, 965.084, 250.000));
CreateWall((2295.71, 965.084, 128.125), (2570.68, 965.084, 250.000));
CreateFlag((3068.2, 379.451, 128.125), (-963.664, 66.2146, 235.516), false, false);
CreateDoor((2635.02, 833.899, 128.125), (2620.41, 950.049, 128.125), 2, (90, 90, 0), 4, 2, 55, 80);
CreateMysteryBox((2867.64, 930.443, 128.125), (0, 90, 0), 200);
CreateTurret((2499.45, 420.805, 128.125), (0, 90, 0), "auto_gun_turret_mp");
CreateWall((5007.59, -2780.52, 308.875), (5007.59, -2600.23, 308.876), true);
}

Downhill()
{	
   level.mapmaker = "0zersub"; 
    //created by 0zersub
	level thread removeSkyBarrier();
	CreateDoor((1592.14, -1358.97, 993.617), (1784.75, -1346.95, 993.617), 3, (90, 90, 0), 6, 2, 30, 80);//1st big door
	CreateDoor((1678.99, -1665.15, 993.617), (1678.99, -1237.56, 993.617), 5, (90, 0, 0), 7, 2, 30, 80);//2nd big door
	CreateDoor((2004.95, -865.984, 993.617), (2203.89, -949.491, 993.617), 4, (90, 90, 0), 3, 2, 30, 80);//front door control room 
	CreateDoor((2333.08, 844.748, 1010.54), (2164.86, 852.094, 1010.54), 4, (90, 90, 0), 4, 2, 30, 80);//behind door control room
	CreateDoor((1213.54, 2662.98, 1121.13), (1380.15, 2643.32, 1176.82), 4, (90, 68, 0), 2, 2, 30, 80);//house stairs door
	CreateFlag((138.591, -2711.65, 1043.5), (132.304, -2986.64, 1051.02), false, true);//lets go for ski
	CreateDoor((-161.336, -1163.73, 1011.29), (-117.646, -1053.61, 1011.29), 3, (90, 335, 0), 1, 2, 20, 80);//door mini room
	CreateDoor((-10.9226, -1488.14, 1019.73), (93.2197, -1548.69, 1019.73), 2, (90, 68, 0), 1, 2, 25, 80);//door near blue track
	CreateFlag((-151.149, 1028.47, 1115.13), (235.631, -1395.78, 1001.13), true, true);//hide area
	CreateFlag((1909.52, -1108.83, 980.125), (298.678, 752.412, 1064.13), false, false);//Emengercy flag big doors
	CreateFlag((1925.28, 771.042, 980.125), (298.678, 752.412, 1064.13), false, false);//Emengercy flag behind-middle door
	CreateDoor((2164.9, 536.592, 1010.54), (1990.36, 535.886, 1010.54), 3, (90, 90, 0), 4, 2, 30, 80);//middle door
	CreateMysteryBox((222.39, -1082.21, 1001.13), (0, 68, 0), 150);//mysterybox near turret
	CreateMysteryBox((2254.86, -1230.34, 980.125), (0, 0, 0), 150);//mysterybox near 2 big doors
	CreateTurret((440.635, -1155.56, 1001.13), (0, 90, 0), "auto_gun_turret_mp");
}

Encore()
{ 

level.mapmaker = "xTiibo Modz";
//Created by xTiibo Modz
level thread removeSkyBarrier();
CreateFlag((-1504, 254, -62), (-5614, 3038, 14), false, false);
CreateWall((-5731, 3039, 7), (-5731, 2949, 80), true);
CreateWall((-5687, 2944, 6), (-5509, 3010, 80), true);
CreateWall((-5710, 3095, 6), (-5519, 3095, 80), true);
CreateDoor((-4610, 3922, 45), (-4558, 3910, 45), 2, (90, 80, 0), 3, 2, 25, 80);
CreateDoor((-4088, 3360, 80), (-4082, 3290, 80), 2, (90, -10, 0), 3, 2, 25, 80);
CreateWall((-4658, 3493, 21), (-4575, 3435, 140), false);
CreateMysteryBox((-4875, 4912, 3), (0, 135, 0), 110);
CreateDoor((-3326, 4740, -26), (-3326, 4678, -26), 2, (90, 10, 0), 3, 2, 30, 80);
CreateRamp((-2814, 4889, -29), (-2659, 4881, 30), false);
CreateWall((-2850, 4985, -10), (-2660, 4990, -9), true);
CreateWall((-2850, 4835, -10), (-2660, 4835, -9), true);
CreateWall((-2890, 2077, 39), (-2050, 2075, 39), false);
CreateWall((-2890, 2077, 95), (-2050, 2075, 96), true);
CreateRamp((-2262, 5422, 20), (-2262, 5864, 180), false);
///CreateDoor((-2091, 5901, 192), (-2254, 5399, 32), 2, (90, 90, 0), 5, 2, 25, 80);
CreateWall((-2329, 5413, 30), (-2359, 5413, 120), false);
CreateWall((-2200, 5413, 30), (-2180, 5413, 120), false);
CreateWall((-2030, 6470, 192), (-2217, 6470, 280), false);
CreateMysteryBox((-1910, 6715, 192), (0, 90, 0), 110);
CreateFlag((-1400, 6655, 192), (330, 2370, 24), false, false);
CreateWall((-2503, 6470, 192), (-2323, 6470, 280), false);
CreateDoor((-2394, 6673, 192), (-2279, 6464, 192), 2, (90, 90, 0), 4, 2, 25, 80);
CreateWall((-1971, 6497, 190), (-1971, 6357, 263), true);
CreateFlag((2325, 2150, 0.125), (-37910, 12551, 207), false, false); //Big out of map

CreateFlag((306, 1765, -63), (726, 1399, -63), false, false);
CreateWall((827, 1531, -32), (962, 1166, -31), false);
CreateRamp((1295, 955, -63), (1295, 771, 20), false);
CreateRamp((1312, 740, 24), (1147, 740, 24), false);
CreateRamp((1144, 740, 30), (940, 740, 130), false);
CreateWall((618, 595, 160), (1135, 590, 201), false);
CreateDoor((803, 773, 149), (1162, 740, 39), 2, (90, 0, 0), 2, 2, 30, 80);
CreateFlag((1120, 636, 140), (-1440, 3029, 32), false, false);
CreateMysteryBox((651, 629, 149), (0, 90, 0), 110);
CreateDoor((-1617, 3222, 32), (-1388, 3080, 32), 2, (90, 55, 0), 3, 2, 45, 80);
CreateWall((-1478, 3088, 32), (-1478, 3089, 70), false);
CreateWall((-1371, 2985, 32), (-1371, 2986, 70), true);
}

Vertigo()
{
level.mapmaker = "SneakerStreet";
//Created by SneakerStreet
level thread removeSkyBarrier();
CreateWall((4814.11, 3224.6, -319.875), (4193.55, 3224.6, -200.000));
CreateWall((3590.17, 3224.6, -319.875), (4110.74, 3224.6, -200.000));
CreateDoor((4154.33, 3415.35, -319.875), (4154.33, 3236.38, -319.875), 2, (90, 90, 0), 3, 2, 55, 80);
CreateMysteryBox((4644.21, 3259.24, -319.875), (0, 90, 0), 200);
CreateMysteryBox((3789.54, 3259.24, -319.875), (0, 90, 0), 200);
CreateFlag((4317.16, 3760.45, -303.875), (-221.183, -2220.31, 0.125), false, false);
CreateFlag((48.069, 2681.16, -19.875), (4627.01, 3073.2, -319.875), false, false);
CreateWall((4344.64, 661.475, 1855.28), (4344.64, 112.876, 1955.50));
CreateWall((4034.29, 112.876, 1855.28), (4034.29, 661.475, 1955.50));
CreateDoor((1056.36, 1960.76, -71.875), (1060.36, 1722.48, -71.875), 2, (90, 0, 0), 4.5, 2, 40, 80);
CreateWall((750.346, 2179.41, -71.875), (698.909, 2179.41, 50.910));
CreateMysteryBox((909.918, 2160.36, -34.875), (0, 90, 0), 200);
CreateFlag((761.195, 1570.09, -71.875), (-1388.22, 11.7219, 8.125), false, false);
CreateZipline((4150.59, 3744.62, -316.311), (4183.44, 196.313, 1856.13), 2, true);
}

Magma()
{ 
level.mapmaker = "xTiibo Modz";
//Created By xTiibo Modz V1.2
level thread removeSkyBarrier();
CreateFlag((683, -927, -521), (-867.278, 308.809, -495.875), false, false);
Createwall((-2724.756, -1387.477, -559.9594), (-2724, -1215, -558.7044), false); //1
Createwall((-2724.756, -1387.477, -509.9594), (-2724, -1215, -508.7044), false ); //2
Createwall((-2724.756, -1387.477, -459.9594), (-2724, -1215, -458.7044), false ); //3
Createwall((-2724.756, -1387.477, -559.9594), (-3272, -1387, -558.7044), false); //1
Createwall((-2724.756, -1387.477, -509.9594), (-3272, -1387, -508.7044), false); //2
Createwall((-2724.756, -1387.477, -459.9594), (-3272, -1387, -458.7044), false); //3
CreateDoor((-2766, -1300, -559.54), (-2750.36, -1142.886, -515.54), 2, (90, 0, 0), 4, 2, 30, 80);
CreateRamp((-3275.756, -1202.477, -495.9594), (-3275, -1450, -450.7044), false );
CreateFlag((-2275, -1467, -559.875), (-2520, -1459, -559.875), false, true);
CreateElevator((-2250.048, 715, -489.6955), (-2250.048, 715, -355.6955), 2, 1);
CreateElevator((-2292, 96, -495.6955), (-2292, 96, -330), 2, 1);
CreateRamp((-3376.756, -1480.477, -450.9594), (-2970, -1480, -450.7044), false );
CreateRamp((-3376.756, -1550.477, -450.9594), (-2970, -1550, -450.7044), false );
CreateZipline((-1020, 539.994, -451.125), (-1709.11, 756.517, -343.876), 1, true);
CreateDoor((-2531, 47, -308.54), (-2290, 242.886, -495.54), 2, (90, 90, 0), 3, 2, 30, 80);
CreateFlag((-3092, -1630, -450), (-867.278, 308.809, -495.875), false, false);
Createwall((-3089, -1585.477, -460.9594), (-3089, -1662, -460.7044), false);
CreateDoor((-3400, -1470.886, -559.54), (-3217, -1470.886, -559.54), 2, (90, 0, 0), 3, 2, 30, 80);
CreateFlag((-191, 328, -495), (-1727, 744.532, -343.875), false, false);
CreateMysteryBox((-2509, -424.88, -300.125), (0, 90, 0), 110);
CreateMysteryBox((-3456, -1154, -490), (0, 0, 0), 110);
Createwall((-3217.756, -1626.477, -559), (-3217, -1520, -558.7044), false);
Createwall((-3217.756, -1626.477, -510), (-3217, -1520, -510.7044), false);
CreateFlag((-2292.64, -448, -316), (149.72, -1910, -303.875), false, false);
Createwall((111, -1758.477, -475), (111, -1688, -475.7044), false);
CreateFlag((-2307, -490, -495), (-2524, -175, -219.875), true, true);
Createwall((-2968, -1424, -459), (-2968, -1423, -459), false );

//CreateRamp((-3411, -1526, -465), (-3593, -1526, -400), false ); // Beta functions
//CreateFlag((-3545, -1526, -395), (-3570, -1492, -329), false, true); // Beta functions
}

Studio()
{
	level.mapmaker = "???";
	level thread removeSkyBarrier();
	CreateFlag((880.269, -128.696, -21.875), (731.784, -252.809, -63.875), false, true); // 1st bunker enter flag
	CreateFlag((633.707, -1560.75, 96.125), (2066.35, 2231.37, -39.875), true, false); // 1st bunker escape flag
	CreateFlag((2641.75, 1521.29, 76), (2564.91, 1601.8, -43.875), false, true); // 2nd bunker 1st flag
	CreateFlag((2354.02, 1364.27, -43.875), (285.885, 755.791, 36.124), false, false); // 2nd bunker escape flag
	CreateFlag((-133.674, 975.225, 96.125), (-650.456, -427.257, -127.875), false, true); // random flag 1
	CreateZipline((518.547, -1195.03, 100.125), (401.057, 957.14, 194.125), 4, false); //1st room zip 1way
	Createwall((1205.34, -541.486, -30.3254), (1394.89, -1142.58, 10.3254), true); // Blocking wall 1
	Createwall((540.756, -875.477, -50.9594), (508.76, -1752.64, 75.7044), true ); // Blocking wall 2
	Createwall((691.247, -1603.46, 94.6437), (490.345, -1603.46, 135.6437), true); // Blocking wall 3
	Createwall((503.674, -840.285, -40.9588), (717.267, -840.285, -41.9588)); // 1st bunker 1st bottom wall
	Createwall((503.674, -840.285, 20.9588), (717.267, -840.285, 21.9588)); // 1st bunker  1st top wall
	Createwall((832.238, -541.245, -40.9588), (832.238, -850.285, -41.9588)); // 1st bunker 2nd bottom wall
	Createwall((832.238, -541.245, 20.9588), (832.238, -850.285, 21.9588)); // 1st bunker 2nd top walll
	Createwall((914.393, 1233.4, 118.246), (761.707, 981.197, 191.152), true); // 1st room ladder blocking wall
	Createwall((1384.25, 1547.21, 115.125), (1162.49, 1675.12, 116.125), true); // 1st room 5th side wall
	Createwall((2229.77, 1747.64, -43.875), (2229.77, 1264.36, 66), true); // 2nd bunker bottom wall
	Createwall((2201.71, 1264.36, 85), (2201.71, 1441.31, 86)); // 2nd bunker right bottom wall
	Createwall((2201.71, 1747.64, 85), (2201.71, 1553.82, 86)); // 2nd bunker left bottom wall
	Createwall((2201.71, 1264.36, 155), (2201.71, 1441.31, 156)); // 2nd bunker right top wall
	Createwall((2201.71, 1747.64, 155), (2201.71, 1553.82, 156)); // 2nd bunker left top wall
	CreateRamp((1666.41, 1375.59, 73.6968), (1996.69, 1464.23, 56)); // 2nd bunker 1st ramp
	CreateRamp((2528.6, 1669.57, 76), (2350.66, 1669.57, 190.433)); // 2nd bunker 2nd ramp
	CreateRamp((1272.45, 1402.86, 94.125), (1409.94, 1317.8, 75.6937)); // 1st room 2nd ramp
	CreateGrid((2007.64, 1264.36, 60.125), (2704.56, 1725.21, 60.125), 90, true);  // 2nd bunker 1st invis floor
	CreateGrid((2201.71, 1747.64, 200), (2320.71, 1264.36, 201), 90);  // 2nd bunker 2nd top floor
	CreateGrid((2150.71, 1747.64, 65), (2280.71, 1264.36, 65), 90);  // 2nd bunker 3rd bottom floor
	CreateDoor((610.297, -840.285, -35.9588), (761.854, -840.285, -35.285), 3, (90, 90, 0), 3, 2, 35, 80); // 1st bunker door
	CreateDoor((2201.71, 1497.88, 16), (2201.71, 1497.88, 92), 3, (90, 0, 0), 4, 2, 25, 80); // 2nd bunker door
	CreateDoor((1124.31, 1558.99, 98.125), (1076.81, 1472.99, 98.125), 3, (90, 150, 0), 2, 2, 15, 80); // 1st room door
	CreateElevator((955.048, -1200.14, -42.6955), (955.048, -1200.14, 96.6955), 3, 1); //1st bunker ele
	CreateMysteryBox((536.139, -1536.88, 96.125), (0, 120, 0), 150); // 1st bunker box
 }

Rush()
{		
        level.mapmaker = "0zersub";
        //Created by 0zersub
		level thread removeSkyBarrier();
		CreateDoor((-1174.86, 273.359, 19.2346), (-998.651, 260.509, 19.2346), 3, (90, 0, 90), 4, 2, 30, 80);//down door 1
		CreateDoor((527.634, 568.445, 163.135), (707.43, 551.102, 163.135), 3, (90, 0, 90), 3, 2, 30, 80);//up door 1
		CreateGrid((637.391, 624.359, 168.125), (637.381, 589.206, 168.125), (90, 0, 0), true);//up door 1 block 
		CreateGrid((-262.202, 187.641, 0.125), (-262.202, 218.359, 0.125), (90, 0, 0), true);//block door1
		CreateGrid((-262.202, 187.641, 19.2346), (-262.202, 218.359, 19.2346), (90, 0, 0), true);//block door2
		CreateGrid((-262.202, 187.641, 18.1175), (-262.202, 218.359, 18.1175), (90, 0, 0), true);//block door 3
		CreateGrid((-262.202, 187.641, 56.2747), (-262.202, 218.359, 56.2747), (90, 0, 0), true);//block door 4
		CreateDoor((401.641, 182.282, 163.135), (401.641, 272.492, 163.135), 3, (90, 0, 0), 2, 2, 10, 80);//up near turret door
		CreateDoor((821.385, -1203.39, 163.135), (639.706, -1192.77, 163.135), 3, (90, 0, 90), 4, 2, 30, 80);//up door 2 start
		CreateDoor((-650.641, -1478.15, 19.2346), (-650.641, -1636.72, 19.2346), 4, (90, 0, 0), 3, 2, 25, 80);//down door 2
		CreateFlag((422.376, -1081.86, 136.125), (724.956, -619.762, 264.125), false, false);//teleport to roof
		CreateFlag((730.114, 8.15531, 136.125), (987.052, 223.361, 136.125), false, false);//teleport from roof
		CreateFlag((-773.94, -688.024, 0.125), (658.285, -697.432, 170.125), false, true);//base1 to base2
		CreateFlag((-1460.52, -1446.08, 0.125), (-1610.49, -1448.21, 0.125), true, true);//secret gun room
		CreateTurret((573.692, 168.938, 136.125), (0, 270, 0), "auto_gun_turret_mp");//turret base 2
		CreateMysteryBox((944.359, -1028.16, 136.125), (0, 180, 0), 50);//mystery box base 2
		CreateMysteryBox((-446.606, 286.359, 0.125), (0, 90, 0), 50);//mystery box base 1
}

Cove()
{ 
        level.mapmaker = "xTiibo Modz";
        //Created By xTiibo Modz
level thread removeSkyBarrier();
ents = getEntArray();
for ( index = 0; index < ents.size; index++ )
{
if(isSubStr(ents[index].classname, "trigger_hurt"))
ents[index].origin = (0, 0, 9999999);
}
CreateDoor((1093, 196, 197.125), (990, 83, 233), 3, (90, -15, 0), 2, 2, 30, 80);
Createwall((330, 157, 39), (266, 182, 120), true);
CreateDoor((669, 219, 151.125), (555, 290, 96), 2, (90, 75, 0), 3, 2, 30, 80);
Createwall((253, 442, 129), (120, 476, 189), true);
CreateRamp((-2752, 993, -59.375), (-3080, 1037, 20),false);
CreateMysteryBox((273, 389, 126), (90, 75, 0), 110);
CreateFlag((310, 206, 47), (-1524, 1228.762, 59), false, false);
CreateFlag((-3028, 1034, 23), (-3627, 865, 86), false, false);
Createwall((-3647, 860, 82), (-3660, 1125, 83),false);
Createwall((-3685, 860, 86), (-3700, 1125, 260),false);
CreateRamp((-3633, 1123, 86), (-4850, 1123, 83),false);
CreateRamp((-3920, 1067, 81), (-3920, 886, 80),false);
CreateRamp((-3633, 1123, 86), (-3448, 1123, -30),false);
CreateRamp((-3880, 920, 92), (-3712, 928, 130),false);
CreateTurret((-3736, 925.938, 220), (0, -15, 0), "auto_gun_turret_mp");
CreateDoor((-3847, 922, 116), (-3847, 1125, 100), 2, (90, 0, 0), 2, 2, 25, 80);
Createwall((-3712, 1068, 105), (-3873, 1068, 176),false);
Createwall((-3875, 1055, 105), (-3875, 955, 176),false);
Createwall((-4820, 848, 30), (-4820, 1036, 205),false);
Createwall((-4820, 1260, 30), (-4820, 1406, 205),false);
CreateRamp((-5025, 1123, 30), (-4850, 1123, 83),false);
CreateFlag((-4945, 1338, 45), (1529, 16, 279), false, false);
Createwall((-4820, 1080, 30), (-4820, 980, 86),false);
Createwall((-4820, 1155, 30), (-4820, 1255, 86),false);
CreateDoor((-5036, 1123, 40), (-4850, 1120, 103), 2, (90, 0, 0), 6, 2, 25, 80);
CreateRamp((-4880, 828, 30.375), (-4880, 1396, 30),false);
CreateRamp((-4961, 828, 30.375), (-4961, 1396, 30),false);
CreateRamp((-5040, 828, 30.375), (-5040, 1396, 30),false);
CreateRamp((-5120, 828, 30.375), (-5120, 1396, 30),false);
Createwall((-4844, 835, 55), (-5190, 835, 56),false);
Createwall((-4844, 835, 115), (-5190, 835, 116),false);
Createwall((-4844, 835, 171), (-5190, 835, 172),false);
Createwall((-4844, 1366, 55), (-5190, 1365, 56),false);
Createwall((-4844, 1366, 115), (-5190, 1365, 116),false);
Createwall((-4844, 1366, 171), (-5190, 1365, 172),false);
CreateMysteryBox((-4910, 910, 55), (90, 90, 0), 110);
Createwall((-5169, 872, 44), (-5169, 1375, 152),true);
 }

Detour()
{ 
    level.mapmaker = "SneakerStreet";
    //Created by Unknown Edited by SneakerStreet
    Createwall((1692,-65,152), (1692,-149,260),false);//front wall
	Createwall((1692,72,152), (1692,166,260),false);//front wall
	Createwall((820,163,150), (820,0,250),false);//spawm wall
	Createwall((1119,-152,158), (1119,-50,230),false);//spawm wall 2
	CreateRamp((1500.5,-110,327.375), (1500.5,105,322),false);//infront of bunker 2
	CreateRamp((1701,-111,275.875), (1520,-111,310),false);//infront of bunker 1
	CreateRamp((2050,110,152.125), (2050,-104.673,270),false);//ramp to grid
	CreateGrid((1980,-108,260), (1690,148,260), 90,false);//grid roof of bunker
	CreateFlag((781,15,8.125), (700,98,152.125),false,false);//entry 
	CreateFlag((2060,-109,152), (1863.73,552.918,19),false,false);//exit
	CreateDoor((1695,-86,152.125), (1695,2,152.125), 2, (90, 90, 90), 2, 2, 30, 80);//bunker
	CreateMysteryBox((1884,150,285), (180, 180, 0), 200);//on grid
	CreateWall((-624.083, -841.905, 14.7755), (-989.289, -841.905, 107.793), false);
	CreateWall((-2051.84, -871.515, -119.087), (-1808.13, -871.515, -20.3964), false);
    CreateDoor((-108.401, -886.641, -102.875), (102.62, -899.341, -127.875), 2, (90, 0, 90), 4, 2, 30, 80);
    CreateWall((568.79, -1103.18, -88.6716), (635.567, -1175.89, -41.892), false);
    CreateWall((1120.36, -594.121, -131.81), (820.37, -594.121, -56.9505), false);
    CreateWall((1469.38, -816.856, -126.144), (1469.38, -940.537, -44.528), false);
    CreateMysteryBox((-437.585, -1197.64, 1.125), (0, 90, 0), 200);
    CreateFlag((-1947.63, -938.975, -122.375), (2043.41, -132.094, -127.875), false, false);
    CreateFlag((1834.3, -130.745, -127.875), (1745.27, -127.745, -127.875), false, false);
    CreateFlag((1515.78, -130.745, -127.875), (1413.62, -130.745, -127.875), false, false);
    CreateFlag((1209.65, -130.745, -127.875), (776.064, 102.544, 152.125), false, false);
    }

Uplink()
{ 
level.mapmaker = "xTiibo Modz";
//Created by xTiibo Modz V1.1
level thread removeSkyBarrier();
CreateFlag((6662, -8110, 169.125), (2147, -743, 456.122),true,true); //Hidden flag
CreateFlag((2943.06, 2020.14, 288.125), (2943.12, 2128.27, 268.122),false,false);
CreateFlag((3312.29, 673.403, 320.125), (3305, 625.27, 320.125),false,true);
CreateRamp((2948.12, 2080.27, 251.122), (2948.12, 2613.3, 147.525),true);
CreateRamp((2948.12, 2613.7, 180.601), (2948.12, 2650, 170.525),false);
CreateMysteryBox((3473.69, 401, 320.125), (180, 180, 0), 100);
CreateZipline((3342.34, 331.79, 320.125), (2835.25, 371.082, 214.125), 2,true);
CreateRamp((3030, 3469.96, 160.446), (2962.12, 3337, 200.334),true);
CreateRamp((2962.12, 3337, 200.334), (2827.08, 3026.53, 200.426),false);
CreateFlag((6496, -8984, 168.139), (2479.04, 320.171, 214),false,false);
CreateFlag((2456.91, -884, 320.125), (6419.25, -6378.19, 173.635),false,false);
CreateWall((6113.6, -6312.37, 174.112), (6574.15, -6112.68, 260.381),false);
CreateWall((2950.15, 3475.88, 185.112), (2757.38, 3057, 280.112),true); //droite
CreateWall((3068.64, 3395, 185.739), (2880, 2990, 280.112),true); //gauche
CreateWall((2773.64, 3031, 179.739), (2857.64, 2984, 280.739),false);
CreateFlag((3145, 3709.7, 195), (2794.12, -605, 454.122),false,false);
CreateWall((2836, -655, 487.122), (2685, -655, 520.525),true);
CreateFlag((2455, 632, 214), (2794.12, -605, 454.122),false,false);
CreateMysteryBox((6658.48, -9002.75, 168.125), (180, 180, 0), 125);
CreateDoor((6290, -8039, 170), (6494.98, -8055, 170.433), 2, (90, 90, 0), 2, 2, 25, 80);
CreateWall((6188.83, -8061, 170.739), (6485.64, -8050, 280.739),false);
CreateWall((6580, -8060, 170.739), (6750, -8075, 280.739),false);
CreateDoor((3088, 3275, 179.433), (2969, 3345, 215), 3, (90, 65, 0), 2, 2, 25, 80);
CreateMysteryBox((2824.69, 3042, 216.125), (90, 0, 0), 125);
}


























































