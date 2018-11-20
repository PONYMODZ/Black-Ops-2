/*
^1 - RED 
^2 - GREEN 
^3 - YELLOW 
^4 - BLUE 
^5 - CYAN 
^6 - PINK 
^7 - WHITE 
^8 - DEFAULT MAP COLOR 
^9 - GREY OR DEFAULT MAP COLOR 
^0 - BLACK 
^; - YALE BLUE 
^: - LIGHT YELLOW
*/

changeVerification(player, verlevel)
{	
	player notify("statusChanged");
	player.status = verlevel;
	player giveMenu();
}

Iif(bool, rTrue, rFalse)
{
	if(bool)
		return rTrue;
	else
		return rFalse;
}

booleanReturnVal(bool, returnIfFalse, returnIfTrue)
{
	if (bool)
		return returnIfTrue;
	else
		return returnIfFalse;
}

booleanOpposite(bool)
{
	if(!isDefined(bool))
		return true;
	if (bool)
		return false;
	else
		return true;
}

verificationToNum(status)
{
	if (status == "human")
		return 2;
	if (status == "zombie")
		return 1;
	else
		return 0;
}

CreateMenu()
{
	if (self.status == "human")
	{
		self add_menu("Main Menu Human", undefined, "The Shop (Status: ^2Human^7)", "Unverified");
		self add_option("Main Menu Human", "General", ::submenu, "General", "General");
		self add_option("Main Menu Human", "Equipment", ::submenu, "Equipment", "Equipment");
		self add_option("Main Menu Human", "Free", ::submenu, "Free", "Free");
		self add_option("Main Menu Human", "Perks", ::submenu, "Perks", "Perks");
		self add_option("Main Menu Human", "Weapons", ::submenu, "Weapons", "Weapons");
		self add_option("Main Menu Human", "Attachments", ::submenu, "Attachments", "Attachments");
		self add_option("Main Menu Human", "Special", ::submenu, "Special", "Special");
		if(self isHost())
		{
			self add_option("Main Menu Human", "Messages", ::submenu, "Messages", "Messages");
			self add_option("Main Menu Human", "Host Menu", ::submenu, "HostMenu", "Host Menu");
			self add_option("Main Menu Human", "Players", ::submenu, "PlayersMenu", "Players");
		}
		
		self add_menu("Messages", "Main Menu Human", "Messages", "human");
		self add_option("Messages", "Replies", ::submenu, "Replies", "Replies");
		self add_option("Messages", "Nice", ::submenu, "Nice", "Nice");
		self add_option("Messages", "Funny", ::submenu, "Funny", "Funny");
		self add_option("Messages", "Mean", ::submenu, "Mean", "Mean");
		self add_option("Messages", "Random", ::submenu, "Random", "Random");
		
		self add_menu("Nice", "Messages", "Nice", "Messages");
		self add_option("Nice", "Hug", ::typewritter, "^6Need, ... a Hug?");
		self add_option("Nice", "Sexy", ::typewritter, "^2U are ^6SEXY^1<3");
		self add_option("Nice", "Luv ya", ::typewritter, "^3I Love u Guys^1<3");
		
		self add_menu("Replies", "Messages", "Replies", "Messages");
		self add_option("Replies", "Yup", ::typewritter, "^2Yup");
		self add_option("Replies", "Nope", ::typewritter, "^1Nope");
		self add_option("Replies", "What?", ::typewritter, "^5What???");
		self add_option("Replies", "Maybe", ::typewritter, "^6Maybe...");
		self add_option("Replies", "Idk", ::typewritter, "^7I Dont Know M8");
		self add_option("Replies", "Thanks", ::typewritter, "^4Thanks");
		self add_option("Replies", "No Problem", ::typewritter, "^6No Problem Bro");
		
		self add_menu("Mean", "Messages", "Mean", "Messages");
		self add_option("Mean", "Fuck u", ::typewritter, "^1FUCK YOU!!");
		self add_option("Mean", "Suck My Dick", ::typewritter, "^5Suck My ^6BIG PONY DICK ^5,u faggot");
		
		self add_menu("Funny", "Messages", "Funny", "Messages");
		self add_option("Funny", "Cooler", ::typewritter, "^5It needs to be about ^12^20^3p^4e^5r^6c^7e^1n^4t ^5Cooler");
		self add_option("Funny", "Money", ::typewritter, "^3Wheres My ^2Money ^7,^1BITCH!");
		self add_option("Funny", "Fuck u<3", ::typewritter, "^6Fuck u^1<3");
		
		self add_menu("Random", "Messages", "Random", "Messages");
		self add_option("Random", "Follow Me", ::typewritter, "^5Follow Me Dude");
		self add_option("Random", "Servive", ::typewritter, "^5Unlock All 5 Euro Paypal");
		self add_option("Random", "Credits", ::credits);
		self add_option("Random", "Close Door", ::typewritter, "^1CLOSE THE FUCKING DOOR!");
		self add_option("Random", "Gonna Win", ::typewritter, "^3Humans Gonna ^2WIN ^3,YAY!");
		
		self add_menu("HostMenu", "Main Menu Human", "human");
		self add_option("HostMenu", "Godmode", ::godmodeToggle);
		self add_option("HostMenu", "All Perks", ::allPerksToggle);
		self add_option("HostMenu", "UFO Mode", ::ToggleUFO);
		self add_option("HostMenu", "All Players ^2$1,000^7", ::giveAllCash, 1000);
        self add_option("HostMenu", "All Players ^1500 Health^7", ::giveAllHealth, 500);
		self add_option("HostMenu", "Hear All", ::hearallplayers);
		self add_option("HostMenu", "Do Heart", ::dhtoggle);
		self add_option("HostMenu", "Anti EndGame", ::AntiEndGame);
		self add_option("HostMenu", "Fast Restart", ::doRestart);
		self add_option("HostMenu", "End Game", ::endGame);
		self add_option("HostMenu", "Fake Derank", ::DerankScare);
		
		self add_menu("General", "Main Menu Human", "General" , "human");
		self add_option("General", "^1+100 Health ^7/ ^2$" + level.itemPrice["Human"]["General"]["Health"], ::AddHealth, 100, "Human");
		self add_option("General", "^7Max Ammo For Current Weapon / ^2$" + level.itemPrice["Human"]["Weapons"]["Ammo"], ::RefillAmmo);
		self add_option("General", "^7UAV / ^2$" + level.itemPrice["Human"]["General"]["UAV"], ::GiveUAV, "Human");
		self add_option("General", "^7Spawn Turret / ^2$" + level.itemPrice["Human"]["General"]["Turret"], ::spawnTurretPlayer, "auto_gun_turret_mp");
		self add_option("General", "^7Unlimited Ammo With Reload / ^2$" + level.itemPrice["Human"]["Weapons"]["UnlimitedAmmo"], ::infiniteAmmo);
		self add_option("General", "^7Unlimited Ammo No Reload / ^2$" + level.itemPrice["Human"]["Weapons"]["unlimitedammonoreload"], ::unlimitedammonoreload);
		self add_option("General", "^7Infrared Vision / ^2$" + level.itemPrice["Human"]["General"]["Infrared"], ::giveInfraredVision, "Human");
		self add_option("General", "^7Custom Teleport / ^2$" + level.itemPrice["Human"]["General"]["Teleport"], ::CustomTeleport, "Human");
		
		self add_menu("Equipment", "Main Menu Human", "Equipment", "human");
		self add_option("Equipment", "^7Claymore / ^2$" + level.itemPrice["Human"]["Equipment"]["claymore_mp"], ::giveEquipment, "claymore_mp", "Human");
		self add_option("Equipment", "^7Sticky Grenade / ^2$" + level.itemPrice["Human"]["Equipment"]["sticky_grenade_mp"], ::giveEquipment, "sticky_grenade_mp", "Human");
		self add_option("Equipment", "^7Frag Grenade / ^2$" + level.itemPrice["Human"]["Equipment"]["frag_grenade_mp"], ::giveEquipment, "frag_grenade_mp", "Human");
		self add_option("Equipment", "^7C4 / ^2$" + level.itemPrice["Human"]["Equipment"]["satchel_charge_mp"], ::giveEquipment, "satchel_charge_mp", "Human");
		self add_option("Equipment", "^7Shock Charge / ^2$" + level.itemPrice["Human"]["Equipment"]["proximity_grenade_mp"], ::giveEquipment, "proximity_grenade_mp", "Human");
		self add_option("Equipment", "^7Concussion Grenade / ^2$" + level.itemPrice["Human"]["Equipment"]["concussion_grenade_mp"], ::giveEquipment, "concussion_grenade_mp", "Human");
		self add_option("Equipment", "^7MW3 IMS / ^2$" + level.itemPrice["Human"]["Equipment"]["mw3ims"], ::doMW3IMS, "Human");
		
		self add_menu("Perks", "Main Menu Human", "Perks", "human");
		self add_option("Perks", "^7No Fall Damage / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_fallheight"], ::givePerk, "specialty_fallheight", "Human");
		self add_option("Perks", "^7Faster Aiming / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_fastads"], ::givePerk, "specialty_fastads", "Human");
		self add_option("Perks", "^7Unlimited Sprint / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_unlimitedsprint"], ::givePerk, "specialty_unlimitedsprint", "Human");
		self add_option("Perks", "^7Faster Weapon Switch / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_fastweaponswitch"], ::givePerk, "specialty_fastweaponswitch", "Human");
		self add_option("Perks", "^7Hear Zombie Footsteps Better / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_loudenemies"], ::givePerk, "specialty_loudenemies", "Human");
		self add_option("Perks", "^7Faster Climbing / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_fastmantle"], ::givePerk, "specialty_fastmantle", "Human");
		self add_option("Perks", "^7Faster Movement / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_movefaster"], ::givePerk, "specialty_movefaster", "Human");
		self add_option("Perks", "^7Faster Reload / ^2$" + level.itemPrice["Human"]["Perks"]["specialty_fastreload"], ::givePerk, "specialty_fastreload", "Human");
		self add_option("Perks", "^7All Perks / ^2$" + level.itemPrice["Human"]["Perks"]["allperks"], ::doallperks, "allperks", "Human");
		
		self add_menu("Weapons", "Main Menu Human", "Weapons", "human");
		self add_option("Weapons", "^7Submachine Guns / ^2$" + level.itemPrice["Human"]["Weapons"]["Submachine"], ::submenu, "SubmachineGuns");
		self add_option("Weapons", "^7Assault Rifles / ^2$" + level.itemPrice["Human"]["Weapons"]["Assault"], ::submenu, "AssaultRifles");
		self add_option("Weapons", "^7Lightmachine Guns / ^2$" + level.itemPrice["Human"]["Weapons"]["Lightmachine"], ::submenu, "LightmachineGuns");
		self add_option("Weapons", "^7Shotguns / ^2$" + level.itemPrice["Human"]["Weapons"]["Shotguns"], ::submenu, "Shotguns");
		self add_option("Weapons", "^7Sniper Rifles / ^2$" + level.itemPrice["Human"]["Weapons"]["Snipers"], ::submenu, "SniperRifles");
		self add_option("Weapons", "^7Pistols / ^2$" + level.itemPrice["Human"]["Weapons"]["Pistols"], ::submenu, "Pistols");
		self add_option("Weapons", "^7Launchers / ^2$" + level.itemPrice["Human"]["Weapons"]["Launchers"], ::submenu, "Launchers");
		self add_option("Weapons", "^7Specials / ^2$" + level.itemPrice["Human"]["Weapons"]["Specials"], ::submenu, "Specials");
		self add_option("Weapons", "^7Super Specials / ^2$" + level.itemPrice["Human"]["Weapons"]["SuperSpecials"], ::submenu, "SuperSpecials");
		self add_option("Weapons", "^7Wonder Weapons / ^2$" + level.itemPrice["Human"]["Weapons"]["Wonder Weapons"], ::submenu, "Wonder Weapons");
				
		self add_menu("SubmachineGuns", "Weapons", self.menu.menuopt["Weapons"][0], "human");
		self add_option("SubmachineGuns", "MP7", ::replaceWeapon, "mp7_mp", "Submachine");
		self add_option("SubmachineGuns", "PDW-57", ::replaceWeapon, "pdw57_mp", "Submachine");
		self add_option("SubmachineGuns", "Vector-K10", ::replaceWeapon, "vector_mp", "Submachine");
		self add_option("SubmachineGuns", "MSMC", ::replaceWeapon, "insas_mp", "Submachine");
		self add_option("SubmachineGuns", "Chicom CQB", ::replaceWeapon, "qcw05_mp", "Submachine");
		self add_option("SubmachineGuns", "Skorpion EVO", ::replaceWeapon, "evoskorpion_mp", "Submachine");
		self add_option("SubmachineGuns", "Peacekeeper", ::replaceWeapon, "peacekeeper_mp", "Submachine");
		
		self add_menu("AssaultRifles", "Weapons", self.menu.menuopt["Weapons"][1], "human");
		self add_option("AssaultRifles", "MTAR", ::replaceWeapon, "tar21_mp", "Assault");
		self add_option("AssaultRifles", "Type 25", ::replaceWeapon, "type95_mp", "Assault");
		self add_option("AssaultRifles", "SWAT-556", ::replaceWeapon, "sig556_mp", "Assault");
		self add_option("AssaultRifles", "FAL OSW", ::replaceWeapon, "sa58_mp", "Assault");
		self add_option("AssaultRifles", "M27", ::replaceWeapon, "hk416_mp", "Assault");
		self add_option("AssaultRifles", "SCAR-H", ::replaceWeapon, "scar_mp", "Assault");
		self add_option("AssaultRifles", "SMR", ::replaceWeapon, "saritch_mp", "Assault");
		self add_option("AssaultRifles", "M8A1", ::replaceWeapon, "xm8_mp", "Assault");
		self add_option("AssaultRifles", "AN-94", ::replaceWeapon, "an94_mp", "Assault");
		
		self add_menu("Shotguns", "Weapons", self.menu.menuopt["Weapons"][2], "human");
		self add_option("Shotguns", "R870 MCS", ::replaceWeapon, "870mcs_mp", "Shotguns");
		self add_option("Shotguns", "S12", ::replaceWeapon, "saiga12_mp", "Shotguns");
		self add_option("Shotguns", "KSG", ::replaceWeapon, "ksg_mp", "Shotguns");
		self add_option("Shotguns", "M1216", ::replaceWeapon, "srm1216_mp", "Shotguns");
		
		self add_menu("LightmachineGuns", "Weapons", self.menu.menuopt["Weapons"][3], "human");
		self add_option("LightmachineGuns", "MK 48", ::replaceWeapon, "mk48_mp", "Lightmachine");
		self add_option("LightmachineGuns", "QBB LSW", ::replaceWeapon, "qbb95_mp", "Lightmachine");
		self add_option("LightmachineGuns", "LSAT", ::replaceWeapon, "lsat_mp", "Lightmachine");
		self add_option("LightmachineGuns", "HAMR", ::replaceWeapon, "hamr_mp", "Lightmachine");
		
		self add_menu("SniperRifles", "Weapons", self.menu.menuopt["Weapons"][4], "human");
		self add_option("SniperRifles", "SVU-AS", ::replaceWeapon, "svu_mp", "Snipers");
		self add_option("SniperRifles", "DSR 50", ::replaceWeapon, "dsr50_mp", "Snipers");
		self add_option("SniperRifles", "Ballista", ::replaceWeapon, "ballista_mp", "Snipers");
		self add_option("SniperRifles", "XPR-50", ::replaceWeapon, "as50_mp", "Snipers");
		
		self add_menu("Pistols", "Weapons", self.menu.menuopt["Weapons"][5], "human");
		self add_option("Pistols", "Five-seven", ::replaceWeapon, "fiveseven_mp", "Pistols");
		self add_option("Pistols", "Tac-45", ::replaceWeapon, "fnp45_mp", "Pistols");
		self add_option("Pistols", "B23R", ::replaceWeapon, "beretta93r_mp", "Pistols");
		self add_option("Pistols", "Executioner", ::replaceWeapon, "judge_mp", "Pistols");
		self add_option("Pistols", "KAP-40", ::replaceWeapon, "kard_mp", "Pistols");
		
		self add_menu("Launchers", "Weapons", self.menu.menuopt["Weapons"][6], "human");
		self add_option("Launchers", "SMAW", ::replaceWeapon, "smaw_mp", "Launchers");
		self add_option("Launchers", "RPG", ::replaceWeapon, "usrpg_mp", "Launchers");
		
		self add_menu("Specials", "Weapons", self.menu.menuopt["Weapons"][7], "human");
		self add_option("Specials", "Riot Shield", ::replaceWeapon, "riotshield_mp", "Specials");
		self add_option("Specials", "Ballistic Knife", ::replaceWeapon, "knife_ballistic_mp", "Specials");
		self add_option("Specials", "Crossbow", ::replaceWeapon, "crossbow_mp", "Specials");
		
		self add_menu("SuperSpecials", "Weapons", self.menu.menuopt["Weapons"][8], "human");
		self add_option("SuperSpecials", "Grenade Launcher", ::replaceWeapon, "m32_wager_mp", "SuperSpecials");
		self add_option("SuperSpecials", "Minigun", ::replaceWeapon, "minigun_wager_mp", "SuperSpecials");
		
		self add_menu("Wonder Weapons", "Weapons", self.menu.menuopt["Weapons"][9], "human");
		self add_option("Wonder Weapons", "Dragons Breath", ::ToggleDragonGun, "Wonder Weapons");
		self add_option("Wonder Weapons", "Swarm MiniGun", ::doSwarmMiniGun, "Wonder Weapons");
		self add_option("Wonder Weapons", "Electric Gun", ::toggle_lightGun, "Wonder Weapons");
		self add_option("Wonder Weapons", "Mustang & Sally", ::ToggleMustangGun, "Wonder Weapons");
		self add_option("Wonder Weapons", "ZVX1337 Gun", ::ToggleZVX1337, "Wonder Weapons");
		self add_option("Wonder Weapons", "Tomahawk Executioner", ::hatchetExecutioner, "Wonder Weapons");
		self add_option("Wonder Weapons", "Thunder Gun", ::ThunGun, "Wonder Weapons");
        self add_option("Wonder Weapons", "Rocket Magnum", ::doRM, "Wonder Weapons");
		self add_option("Wonder Weapons", "Boom Knife", ::doBK, "Wonder Weapons");
		self add_option("Wonder Weapons", "Exterminator", ::doPM, "Wonder Weapons");
		self add_option("Wonder Weapons", "PONYs Gun", ::MLP, "Wonder Weapons");
		
		self add_Menu("Free", "Main Menu Human", "Free", "human");
		self add_option("Free", "^7Pro Mode", ::ToggleFOV, "Human");
		self add_option("Free", "^7Third Person", ::setThirdPerson, "Human");
		self add_option("Free", "^7Ghost Camo", ::giveGhost, "Human");
		self add_option("Free", "^7Diamond Camo", ::giveDiamond, "Human");
		self add_option("Free", "^7Darkened Vision", ::DarkenedVision, "Human");
		self add_option("Free", "^7Map Made By: " + level.mapmaker, "Human");
		
		self add_menu("Attachments", "Main Menu Human", "Attachments", "human");
		self add_option("Attachments", "^7FMJ / ^2$" + level.itemPrice["Human"]["Attachments"]["fmj"], ::replaceCurrentWeaponAttachment, "fmj");
		self add_option("Attachments", "^7Dual Wield / ^2$" + level.itemPrice["Human"]["Attachments"]["dw"], ::replaceCurrentWeaponAttachment, "dw");
		self add_option("Attachments", "^7Suppressor / ^2$" + level.itemPrice["Human"]["Attachments"]["silencer"], ::replaceCurrentWeaponAttachment, "silencer");
		self add_option("Attachments", "^7Fast Mag / ^2$" + level.itemPrice["Human"]["Attachments"]["dualclip"], ::replaceCurrentWeaponAttachment, "dualclip");
		self add_option("Attachments", "^7Extended Clip / ^2$" + level.itemPrice["Human"]["Attachments"]["extclip"], ::replaceCurrentWeaponAttachment, "extclip");
		self add_option("Attachments", "^7Long Barrel / ^2$" + level.itemPrice["Human"]["Attachments"]["extbarrel"], ::replaceCurrentWeaponAttachment, "extbarrel");
		self add_option("Attachments", "^7Reflex Sight / ^2$" + level.itemPrice["Human"]["Attachments"]["reflex"], ::replaceCurrentWeaponAttachment, "reflex");
		self add_option("Attachments", "^7Dual Band Scope / ^2$" + level.itemPrice["Human"]["Attachments"]["ir"], ::replaceCurrentWeaponAttachment, "ir");
		self add_option("Attachments", "^7Rapid Fire / ^2$" + level.itemPrice["Human"]["Attachments"]["rf"], ::replaceCurrentWeaponAttachment, "rf");
		self add_option("Attachments", "^7Target Finder / ^2$" + level.itemPrice["Human"]["Attachments"]["rangefinder"], ::replaceCurrentWeaponAttachment, "rangefinder");
		self add_option("Attachments", "^7ACOG Sight / ^2$" + level.itemPrice["Human"]["Attachments"]["acog"], ::replaceCurrentWeaponAttachment, "acog");
		
		self add_Menu("Special", "Main Menu Human", "Special", "human");
		self add_option("Special", "^7Jet Pack / ^2$" + level.itemPrice["Human"]["Special"]["JetPack"], ::doJetPack, "Human");
		self add_option("Special", "^3Fair ^7Aimbot ^220 ^7Secs / ^2$" + level.itemPrice["Human"]["Special"]["aimbotfair"], ::doAimbots, "Human");
		self add_option("Special", "^5UnFair ^7Aimbot ^210 ^7Secs / ^2$" + level.itemPrice["Human"]["Special"]["aimbotunfair"], ::doAimbotunfair, "Human");
		
		self add_menu("PlayersMenu", "Main Menu Human", "human");
        for (i = 0; i < 12; i++)
        { self add_menu("pOpt " + i, "PlayersMenu", "human"); }
	}
    if (self.status == "zombie")
	{
		self add_menu("Main Menu Zombie", undefined, "The Shop (Status: ^1Zombie^7)", "Unverified");
		self add_option("Main Menu Zombie", "General", ::submenu, "GeneralZombie", "General");
		self add_option("Main Menu Zombie", "Equipment", ::submenu, "EquipmentZombie", "Equipment");
		self add_option("Main Menu Zombie", "Free", ::submenu, "Free", "Free");
		if(self isHost())
		{
			self add_option("Main Menu Zombie", "Messages", ::submenu, "MessagesZ", "Messages");
			self add_option("Main Menu Zombie", "Host Menu", ::submenu, "HostMenuZ", "Host Menu");
			self add_option("Main Menu Zombie", "Players", ::submenu, "PlayersMenu", "Players");
		}
		
		self add_menu("MessagesZ", "Main Menu Zombie", "Messages", "zombie");
		self add_option("MessagesZ", "Replies", ::submenu, "Replies", "Replies");
		self add_option("MessagesZ", "Nice", ::submenu, "Nice", "Nice");
		self add_option("MessagesZ", "Funny", ::submenu, "Funny", "Funny");
		self add_option("MessagesZ", "Mean", ::submenu, "Mean", "Mean");
		self add_option("MessagesZ", "Random", ::submenu, "Random", "Random");
		
		self add_menu("Nice", "Messages", "Nice", "Messages");
		self add_option("Nice", "Hug", ::typewritter, "^6Need, ... a Hug?");
		self add_option("Nice", "Sexy", ::typewritter, "^2U are ^6SEXY^1<3");
		
		self add_menu("Replies", "Messages", "Replies", "Messages");
		self add_option("Replies", "Yup", ::typewritter, "^2Yup");
		self add_option("Replies", "Nope", ::typewritter, "^1Nope");
		self add_option("Replies", "What?", ::typewritter, "^5What???");
		self add_option("Replies", "Maybe", ::typewritter, "^6Maybe...");
		self add_option("Replies", "Idk", ::typewritter, "^7I Dont Know M8");
		self add_option("Replies", "Thanks", ::typewritter, "^4Thanks");
		self add_option("Replies", "No Problem", ::typewritter, "^6No Problem Bro");
		
		self add_menu("Mean", "Messages", "Mean", "Messages");
		self add_option("Mean", "Fuck u", ::typewritter, "^1FUCK YOU!!");
		self add_option("Mean", "Suck My Dick", ::typewritter, "^5Suck My ^6BIG PONY DICK ^5,u faggot");
		
		self add_menu("Funny", "Messages", "Funny", "Messages");
		self add_option("Funny", "Cooler", ::typewritter, "^5It needs to be about ^12^20^3p^4e^5r^6c^7e^1n^4t ^5Cooler");
		self add_option("Funny", "Money", ::typewritter, "^3Wheres My ^2Money ^7,^1BITCH!");
		self add_option("Funny", "Fuck u<3", ::typewritter, "^6Fuck u^1<3");
		
		self add_menu("Random", "Messages", "Random", "Messages");
		self add_option("Random", "Follow Me", ::typewritter, "^5Follow Me Dude");
		self add_option("Random", "Servive", ::typewritter, "^5Unlock All 5 Euro Paypal");
		self add_option("Random", "Credits", ::credits);
		self add_option("Random", "Close Door", ::typewritter, "^1CLOSE THE FUCKING DOOR!");
		self add_option("Random", "Gonna Win", ::typewritter, "^3Humans Gonna ^2WIN ^3,YAY!");
		
		self add_menu("HostMenuZ", "Main Menu Zombie", "zombie");
		self add_option("HostMenuZ", "Godmode", ::godmodeToggle);
		self add_option("HostMenuZ", "All Perks", ::allPerksToggle);
		self add_option("HostMenuZ", "UFO Mode", ::ToggleUFO);
		self add_option("HostMenuZ", "All Players ^2$1,000^7", ::giveAllCash, 1000);
        self add_option("HostMenuZ", "All Players ^1500 Health^7", ::giveAllHealth, 500);
		self add_option("HostMenuZ", "Hear All", ::hearallplayers);
		self add_option("HostMenuZ", "Do Heart", ::dhtoggle);
		self add_option("HostMenuZ", "Anti EndGame", ::AntiEndGame);
		self add_option("HostMenuZ", "Fast Restart", ::doRestart);
		self add_option("HostMenuZ", "End Game", ::endGame);
		self add_option("HostMenuZ", "Fake Derank", ::DerankScare);
        
		self add_Menu("Free", "Main Menu Zombie", "Free", "zombie");
		self add_option("Free", "^7Pro Mode", ::ToggleFOV, "zombie");
	    self add_option("Free", "^7Third Person", ::setThirdPerson, "Zombie");
		self add_option("Free", "^7Ghost Camo", ::giveGhost, "Zombie");
		self add_option("Free", "^7Diamond Camo", ::giveDiamond, "Zombie");
		self add_option("Free", "^7Darkened Vision", ::DarkenedVision, "Zombie");
		self add_option("Free", "^7Map Made By: " + level.mapmaker, "Zombie");
		
		self add_menu("GeneralZombie", "Main Menu Zombie", "General", "zombie");		
		self add_option("GeneralZombie", "^1+50 Health ^7/ ^2$" + level.itemPrice["Zombie"]["General"]["Health"], ::addHealth, 50, "Zombie");	
		self add_option("GeneralZombie", "^7UAV / ^2$" + level.itemPrice["Zombie"]["General"]["UAV"], ::GiveUAV, "Zombie");
		self add_option("GeneralZombie", "^7Infrared Vision / ^2$" + level.itemPrice["Zombie"]["General"]["Infrared"], ::giveInfraredVision, "Zombie");
		self add_option("GeneralZombie", "^7Invisible For 10 Seconds / ^2$" + level.itemPrice["Zombie"]["General"]["Invisible"], ::invisible, 10);
		self add_option("GeneralZombie", "^7Slow Humans For 15 Seconds / ^2$" + level.itemPrice["Zombie"]["General"]["SlowHumans"], ::slowHumans, 15);
		self add_option("GeneralZombie", "^7EMP All Humans / ^2$" + level.itemPrice["Zombie"]["General"]["ZombieEMP"], ::Zombie_EMP, "Zombie");
		self add_option("GeneralZombie", "^72X Speed / ^2$" + level.itemPrice["Zombie"]["General"]["2XSPD"], ::SpeedX2, "Zombie");
		self add_option("GeneralZombie", "^7Zombie King / ^2$" + level.itemprice["Zombie"]["General"]["ZKing"], ::ZombieKing, "Zombie");
		self add_option("GeneralZombie", "^7Jet Pack / ^2$" + level.itemPrice["Zombie"]["General"]["Devil"], ::FZBI, "Zombie");
		
		self add_menu("EquipmentZombie", "Main Menu Zombie", "Equipment", "zombie");
		self add_option("EquipmentZombie", "^7Tomahawk / ^2$" + level.itemPrice["Zombie"]["Equipment"]["hatchet_mp"], ::giveEquipment, "hatchet_mp", "Zombie");
		self add_option("EquipmentZombie", "^7EMP Grenade / ^2$" + level.itemPrice["Zombie"]["Equipment"]["emp_grenade_mp"], ::giveEquipment, "emp_grenade_mp", "Zombie");
		
		self add_menu("PlayersMenu", "Main Menu Zombie", "zombie");
        for (i = 0; i < 12; i++)
        { self add_menu("pOpt " + i, "PlayersMenu", "zombie"); }
		
	}
}

updatePlayersMenu()
{
        self.menu.menucount["PlayersMenu"] = 0;
        for (i = 0; i < 12; i++)
        {
                player = level.players[i];
                name = player.name;
               
                playersizefixed = level.players.size - 1;
                if(self.menu.curs["PlayersMenu"] > playersizefixed)
                {
                        self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
                        self.menu.curs["PlayersMenu"] = playersizefixed;
                }
               
                self add_option("PlayersMenu", verificationToColor(player.status) + player.name, ::submenu, "pOpt " + i, verificationToColor(player.status) + player.name);
       
                self add_menu_alt("pOpt " + i, "PlayersMenu");
                self add_option("pOpt " + i, "Give ^2$1000^7", ::givePlayerCash, 1000, player);
                self add_option("pOpt " + i, "Give ^11000 Health^7", ::givePlayerHealth, 1000, player);
                self add_option("pOpt " + i, "Give SCAR SWAT", ::givePlayerSwat, "scar_mp", player);
                self add_option("pOpt " + i, "Give dsr50 SWAT", ::givePlayerSwat, "dsr50_mp", player);
                self add_option("pOpt " + i, "Give 55k XP ", ::rankupplayer, player);
                self add_option("pOpt " + i, "Love Ponies", ::sayisgay, player);
                self add_option("pOpt " + i, "Teleport to Me", ::teletome, player);
                self add_option("pOpt " + i, "Teleport to Him", ::teletohim, player);
                self add_option("pOpt " + i, "Kill", ::killPlayer, player);
                self add_option("pOpt " + i, "Kick", ::kickPlayer, player);
                self add_option("pOpt " + i, "Freeze PS3", ::FreezeThePS3, player);
        }
}

add_menu_alt(Menu, prevmenu)
{
	self.menu.getmenu[Menu] = Menu;
	self.menu.menucount[Menu] = 0;
	self.menu.previousmenu[Menu] = prevmenu;
}

add_menu(Menu, prevmenu, menutitle, status)
{
    self.menu.status[Menu] = status;
	self.menu.getmenu[Menu] = Menu;
	self.menu.scrollerpos[Menu] = 0;
	self.menu.curs[Menu] = 0;
	self.menu.menucount[Menu] = 0;
	self.menu.subtitle[Menu] = menutitle;
	self.menu.previousmenu[Menu] = prevmenu;
}

add_option(Menu, Text, Func, arg1, arg2)
{
	Menu = self.menu.getmenu[Menu];
	Num = self.menu.menucount[Menu];
	self.menu.menuopt[Menu][Num] = Text;
	self.menu.menufunc[Menu][Num] = Func;
	self.menu.menuinput[Menu][Num] = arg1;
	self.menu.menuinput1[Menu][Num] = arg2;
	self.menu.menucount[Menu] += 1;
}

updateScrollbar()
{
	self.menu.scroller MoveOverTime(0.15);
	self.menu.scroller.y = 160 + (self.menu.curs[self.menu.currentmenu] * 18.10);
}

openMenu()
{
	if (!self.menu.closeondeath)
	{
		self freezeControls(false);
		if (self.status == "human")
			self StoreText("Main Menu Human", "The Shop (Status: ^2Human^7)");
		if (self.status == "zombie")
			self StoreText("Main Menu Zombie", "The Shop (Status: ^1Zombie^7)");
						
		self.menu.background ScaleOverTime(0.3, 240, 280);
		self.menu.background FadeOverTime(0.3);
 		self.menu.background.alpha = 0.65;
 		
 		self.menu.background1 ScaleOverTime(0.3, 240, 280);
		self.menu.background1 FadeOverTime(0.3);
 		self.menu.background1.alpha = 0.65;
		
		self.menu.scroller ScaleOverTime(0.3, 240, 18);
		self.menu.scroller FadeOverTime(0.3);
		self.menu.scroller.alpha = 0.80;

		self updateScrollbar();
		self.menu.open = true;
	}
}

closeMenu()
{
	self.menu.options FadeOverTime(0.3);
	self.menu.options.alpha = 0;
	
 	self.menu.background ScaleOverTime(0.3, 0, 0);
 	self.menu.background FadeOverTime(0.3);
 	self.menu.background.alpha = 0;
 	
 	self.menu.background1 ScaleOverTime(0.3, 0, 0);
 	self.menu.background1 FadeOverTime(0.3);
 	self.menu.background1.alpha = 0;
	
	self.menu.title FadeOverTime(0.3);
	self.menu.title.alpha = 0;
	
 	self.menu.scroller ScaleOverTime(0.3, 0, 0);
	self.menu.scroller FadeOverTime(0.3);
	self.menu.scroller.alpha = 0;	
	self.menu.open = false;
}

giveMenu()
{
	if (self.status == "human" || self.status == "zombie")
	{
		if (!self.MenuInit)
		{
			self.MenuInit = true;
			self thread MenuInit();
			self thread closeMenuOnDeath();
		}
	}
}

destroyMenu(player)
{
	player.MenuInit = false;
	closeMenu();
	wait 0.3;
	
	player unverifyReset();
	self.menu.closeondeath = false;
	player.menu.options destroy();	
	player.menu.background destroy();
	player.menu.background1 destroy();
	player.menu.scroller destroy();
	player.menu.title destroy();
	player notify("destroyMenu");
}

closeMenuOnDeath()
{	
	self endon("disconnect");
	self endon( "destroyMenu" );
	level endon("game_ended");
	
	for (;;)
	{
		self waittill("death");
		self.menu.closeondeath = true;
		if (self.status == "human")
			self submenu("Main Menu Human", "Main Menu Human");
		if (self.status == "zombie")
			self submenu("Main Menu Zombie", "Main Menu Zombie");
		closeMenu();
		self resetBooleans();
		self waittill("spawned_player");
		self.menu.closeondeath = false;
	}
}

closeMenuAnywhere()
{
	if (self.status == "human")
		self submenu("Main Menu Human", "Main Menu Human");
	if (self.status == "zombie")
		self submenu("Main Menu Zombie", "Main Menu Zombie");
	closeMenu();
}

StoreShaders()
{
	self.menu.background = self drawShader("white", 270, 100, 240, 280, (0, 0, 0), 0, 1, false);
	self.menu.background1 = self drawShader("compass_emp", 270, 100, 240, 280, (1, 0, 0.8), 0, 2, false);
	self.menu.scroller = self drawShader("white", 270, 160, 240, 18, (1, 0.035, 1), 0, 3, false);
}

StoreText(menu, title)
{
	self.menu.currentmenu = menu;
	string = "";
    self.menu.title destroy();
	self.menu.title = drawText(title, "objective", 2, 270, 110, (1, 1, 1), 0, (255,0,0), 0, 3, false);
	self.menu.title FadeOverTime(0.3);
	self.menu.title.alpha = 1;
	
    for(i = 0; i < self.menu.menuopt[menu].size; i++)
    { string += self.menu.menuopt[menu][i] + "\n"; }

    self.menu.options destroy(); 
	self.menu.options = drawText(string, "objective", 1.5, 270, 160, (1, 1, 1), 0, (0, 0, 0), 0, 4);
	self.menu.options FadeOverTime(0.3);
	self.menu.options.alpha = 1;
}

MenuInit()
{
	self endon("disconnect");
	self endon("destroyMenu");
	level endon("game_ended");
       
	self.menu = spawnstruct();  
	self.menu.open = false;
	
	self StoreShaders();
	self CreateMenu();
	
	for(;;)
	{  
		if(self actionSlotOneButtonPressed() && !self.menu.open) // Open.
		{
			openMenu();
			wait 0.01;
		}
		if (self actionSlotFourButtonPressed() && self GetStance() == "prone" && self isHost())
		{
			self forceHost();
		}
		if(self adsbuttonpressed() && self actionslotfourbuttonpressed())
		{
			if (self.status == "human")
			{
				self RefillAmmo();
			}
			else
			{
				//Do nothing
			}
		}
		if(self adsbuttonpressed() && self actionslotthreebuttonpressed())
		{
			if (self.status == "human")
			{
				self AddHealth(100, "Human");
			}
			else
			{
				self AddHealth(100, "Zombie");
			}
		}
		if(self.menu.open)
		{
			if(self useButtonPressed())
			{
				if(isDefined(self.menu.previousmenu[self.menu.currentmenu]))
				{
					self submenu(self.menu.previousmenu[self.menu.currentmenu], self.menu.subtitle[self.menu.previousmenu[self.menu.currentmenu]]);
				}
				else
				{
					closeMenu();
				}
				wait 0.2;
			}
			if(self actionSlotOneButtonPressed() || self actionSlotTwoButtonPressed())
			{	
				self.menu.curs[self.menu.currentmenu] += (Iif(self actionSlotTwoButtonPressed(), 1, -1));
				self.menu.curs[self.menu.currentmenu] = (Iif(self.menu.curs[self.menu.currentmenu] < 0, self.menu.menuopt[self.menu.currentmenu].size-1, Iif(self.menu.curs[self.menu.currentmenu] > self.menu.menuopt[self.menu.currentmenu].size-1, 0, self.menu.curs[self.menu.currentmenu])));
				
				self updateScrollbar();
			}
			if (self actionSlotThreeButtonPressed())
			{
				closeMenuAnywhere();
			}
			if(self jumpButtonPressed())
			{
				self thread [[self.menu.menufunc[self.menu.currentmenu][self.menu.curs[self.menu.currentmenu]]]](self.menu.menuinput[self.menu.currentmenu][self.menu.curs[self.menu.currentmenu]], self.menu.menuinput1[self.menu.currentmenu][self.menu.curs[self.menu.currentmenu]]);
				wait 0.2;
			}
		}
		wait 0.05;
	}
}
 
submenu(input, title)
{
	self.menu.options destroy();
	
	if (!isDefined(title))
		title = self.menu.subtitle[input];
	if (input == "Main Menu Human")
		self thread StoreText(input, "The Shop (Status: ^2Human^7)");
	else if (input == "Main Menu Zombie")
		self thread StoreText(input, "The Shop (Status: ^1Zombie^7)");
	else if (input == "PlayersMenu")
	{
		self updatePlayersMenu();
		self thread StoreText(input, "Players");
	}
	else
		self thread StoreText(input, title);
		
	self.CurMenu = input;
	
	self.menu.scrollerpos[self.CurMenu] = self.menu.curs[self.CurMenu];
	self.menu.curs[input] = self.menu.scrollerpos[input];
	
	if (!self.menu.closeondeath)
	{
		self updateScrollbar();
	}
}

//Functions
resetBooleans()
{

}

unverifyReset()
{

}

























































