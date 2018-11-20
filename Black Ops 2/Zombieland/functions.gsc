spawnBots()
{
	if(!level.botsHaveBeenSpawned)
	{
		for (i = 0; i <= level.amountOfBotsToSpawn; i++) {    
			spawnBot();
		}
		level.botsHaveBeenSpawned = true;
	}
}

spawnBot()
{
	maps/mp/bots/_bot::spawn_bot("autoassign");
}

drawValue(value, font, fontScale, x, y, color, alpha, glowColor, glowAlpha, sort, allclients)
{
	if (!isDefined(allclients))
		allclients = false;
	
	if (!allclients)
		hud = self createFontString(font, fontScale);
	else
		hud = level createServerFontString(font, fontScale);
    hud setValue(value);
    hud.x = x;
	hud.y = y;
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
    hud.sort = sort;
	hud.alpha = alpha;
	return hud;
}

drawText(text, font, fontScale, x, y, color, alpha, glowColor, glowAlpha, sort, allclients)
{
	if (!isDefined(allclients))
		allclients = false;
	
	if (!allclients)
		hud = self createFontString(font, fontScale);
	else
		hud = level createServerFontString(font, fontScale);
    hud.x = x;
	hud.y = y;
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
	hud.sort = sort;
	hud.alpha = alpha;
	
	level.result += 1;
    hud setText(text);
    level notify("textset");
	
	return hud;
}

drawShader(shader, x, y, width, height, color, alpha, sort, allclients)
{
	if (!isDefined(allclients))
		allclients = false;
	
	if (!allclients)
		hud = newClientHudElem(self);
	else
		hud = newHudElem();
    hud.elemtype = "icon";
    hud.color = color;
    hud.alpha = alpha;
    hud.sort = sort;
    hud.children = [];
    hud setParent(level.uiParent);
    hud setShader(shader, width, height);
    hud.x = x;
    hud.y = y;
    return hud;
}

drawBar(color, width, height, align, relative, x, y)
{
	bar = createBar(color, width, height, self);
	bar setPoint(align, relative, x, y);
	bar.hideWhenInMenu = true;
	return bar;
}

welcomeMessage()
{
	notifyData = spawnstruct();
	notifyData.titleText = "Welcome " + self.name + " To ^1Zombieland";
	notifyData.notifyText = "Edited By ^6PONY ^2MODZ";
	notifyData.iconName = "menu_mp_lobby_like";
	notifyData.glowColor = (0.3, 0.6, 0.3); 
	notifyData.duration = 8; 
	notifyData.font = "objective"; 
	notifyData.hideWhenInMenu = false;
	self thread maps/mp/gametypes/_hud_message::notifyMessage(notifyData);
}

SendError(errortype)
{
	if (errortype == "MoreMoney")
		self iPrintln("^1Error: ^7You Do Not Have Enough Money For This Item");
	if (errortype == "InvalidWeaponAttachment")
		self iPrintln("^1Error: ^7You Cannot Put This Attachment On This Weapon");
	if (errortype == "InvalidWeapon")
		self iPrintln("^1Error: ^7You Are Holding An Invalid Weapon");
	if (errortype == "AlreadyHasWeapon")
		self iPrintln("^1Error: ^7You Already Own This Weapon");
	if (errortype == "AlreadyHasAttachment")
		self iPrintln("^1Error: ^7You Already Have This Attachment");
	if (errortype == "MaxAmmo")
		self iPrintln("^1Error: ^7You Already Maximum Ammo For This Weapon");
	if (errortype == "AlreadyHasUAV")
		self iPrintln("^1Error: ^7You Already Have A UAV");
	if (errortype == "MaxTurrets")
		self iPrintln("^1Error: ^7Max Number of Turrets Reached!");
	if (errortype == "AlreadyHaveEquipment")
		self iPrintln("^1Error: ^7You Already Have This Equipment");
	if (errortype == "HasPerk")
		self iPrintln("^1Error: ^7You Already Have This Perk");
	if (errortype == "AlreadyInvisible")
		self iPrintln("^1Error: ^7You Are Already Invisible");
	if (errortype == "AlreadySlowedHumans")
		self iPrintln("^1Error: ^7Humans Have Already Been Slowed");
	if (errortype == "AlreadyHasInfrared")
		self iPrintln("^1Error: ^7You Already Have Infrared Vision");
	if (errortype == "AlreadyHasInfiniteAmmo")
		self iPrintln("^1Error: ^7You Already Have Infinite Ammo");
}

givePlayerWeapon(weapon)
{		
	self GiveWeapon(weapon);
	ammo = weaponClipSize(weapon);
	self GiveStartAmmo(weapon);
	self setWeaponAmmoClip(weapon, ammo);
	self SwitchToWeapon(weapon); 
}

locationSelector()
{
	self endon("disconnect");
	self endon("death");

	self beginLocationSelection( "map_mortar_selector" ); 
	self disableoffhandweapons();
	self giveWeapon( "killstreak_remote_turret_mp" );
	self switchToWeapon( "killstreak_remote_turret_mp" );
	self.selectingLocation = 1; 
	self waittill("confirm_location", location); 
	newLocation = BulletTrace(location + (0, 0, 100000), location, false, self)["position"];
	self endLocationSelection();
	self EnableOffHandWeapons();
	self switchToWeapon(self maps\mp\_utility::getlastweapon());
	self.selectingLocation = undefined;
	return newLocation;
}

itemPriceSetup()
{
	level.itemPrice["Human"]["General"]["UAV"] = 700;
	level.itemPrice["Human"]["General"]["Health"] = 150;
	level.itemPrice["Human"]["General"]["Turret"] = 500;
	level.itemPrice["Human"]["General"]["Infrared"] = 100;
	level.itemPrice["Human"]["General"]["Teleport"] = 2500;
	
	level.itemPrice["Zombie"]["General"]["UAV"] = 300;
	level.itemPrice["Zombie"]["General"]["Health"] = 100;
	level.itemPrice["Zombie"]["General"]["Invisible"] = 1500;
	level.itemPrice["Zombie"]["General"]["SlowHumans"] = 1000;
	level.itemPrice["Zombie"]["General"]["Infrared"] = 50;
	level.itemprice["Zombie"]["General"]["ZKing"] = 3000;
	level.itemPrice["Zombie"]["General"]["2XSPD"] = 750;
	level.itemPrice["Zombie"]["General"]["ZombieEMP"] = 1000;
	level.itemPrice["Zombie"]["General"]["Devil"] = 1000;
	
	level.itemPrice["Human"]["Special"]["JetPack"] = 3000;
    level.itemPrice["Human"]["Special"]["aimbotfair"] = 8000;
    level.itemPrice["Human"]["Special"]["aimbotunfair"] = 10000;
    
	level.itemPrice["Human"]["Equipment"]["claymore_mp"] = 60;
	level.itemPrice["Human"]["Equipment"]["sticky_grenade_mp"] = 50;
	level.itemPrice["Human"]["Equipment"]["frag_grenade_mp"] = 50;
	level.itemPrice["Human"]["Equipment"]["satchel_charge_mp"] = 90;
	level.itemPrice["Human"]["Equipment"]["proximity_grenade_mp"] = 30;
	level.itemPrice["Human"]["Equipment"]["concussion_grenade_mp"] = 40;
	level.itemPrice["Human"]["Equipment"]["claymore_mp"] = 60;
	level.itemPrice["Human"]["Equipment"]["mw3ims"] = 2500;
	
	level.itemPrice["Zombie"]["Equipment"]["hatchet_mp"] = 70;
	level.itemPrice["Zombie"]["Equipment"]["emp_grenade_mp"] = 120;
	
	level.itemPrice["Human"]["Perks"]["specialty_fallheight"] = 200;
	level.itemPrice["Human"]["Perks"]["specialty_fastads"] = 100;
	level.itemPrice["Human"]["Perks"]["specialty_unlimitedsprint"] = 200;
	level.itemPrice["Human"]["Perks"]["specialty_fastweaponswitch"] = 50;
	level.itemPrice["Human"]["Perks"]["specialty_loudenemies"] = 50;
	level.itemPrice["Human"]["Perks"]["specialty_fastmantle"] = 100;
	level.itemPrice["Human"]["Perks"]["specialty_movefaster"] = 100;
	level.itemPrice["Human"]["Perks"]["specialty_fastreload"] = 200;
	level.itemPrice["Human"]["Perks"]["allperks"] = 800;
	
	level.itemPrice["Human"]["Weapons"]["Ammo"] = 800;
	level.itemPrice["Human"]["Weapons"]["UnlimitedAmmo"] = 2500;
	level.itemPrice["Human"]["Weapons"]["unlimitedammonoreload"] = 5000;
	level.itemPrice["Human"]["Weapons"]["Submachine"] = 1000;
	level.itemPrice["Human"]["Weapons"]["Assault"] = 1200;
	level.itemPrice["Human"]["Weapons"]["Shotguns"] = 1000;
	level.itemPrice["Human"]["Weapons"]["Lightmachine"] = 1500;	
	level.itemPrice["Human"]["Weapons"]["Snipers"] = 700;
	level.itemPrice["Human"]["Weapons"]["Pistols"] = 400;
	level.itemPrice["Human"]["Weapons"]["Launchers"] = 300;
	level.itemPrice["Human"]["Weapons"]["Specials"] = 400;
	level.itemPrice["Human"]["Weapons"]["SuperSpecials"] = 3000;
	level.itemPrice["Human"]["Weapons"]["Wonder Weapons"] = 8000;
	level.itemPrice["Human"]["Weapons"]["Equipment"] = 80;
	
	level.itemPrice["Human"]["Attachments"]["fmj"] = 150; //FMJ
	level.itemPrice["Human"]["Attachments"]["dw"] = 120; //Dual Wield (_dw_mp)
	level.itemPrice["Human"]["Attachments"]["silencer"] = 100; //Suppressor
	level.itemPrice["Human"]["Attachments"]["dualclip"] = 100; //Fast Mag
	level.itemPrice["Human"]["Attachments"]["extclip"] = 150; //Extended Clip
	level.itemPrice["Human"]["Attachments"]["extbarrel"] = 120; //Long Barrel
	level.itemPrice["Human"]["Attachments"]["reflex"] = 50; //Reflex Sight
	level.itemPrice["Human"]["Attachments"]["ir"] = 80; //Dual Band
	level.itemPrice["Human"]["Attachments"]["rf"] = 120; //Rapid Fire
	level.itemPrice["Human"]["Attachments"]["rangefinder"] = 120; //Target Finder
	level.itemPrice["Human"]["Attachments"]["acog"] = 50; //ACOG Sight
}

invisible(time)
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["Invisible"])
	{
		if (!isDefined(self.isInvisible))
		{
			self endon("disconnect");
			self endon("endInvisible");
			
			self.invisibleTime = time;
			self.money -= level.itemPrice["Zombie"]["General"]["Invisible"];
			self iPrintln("You Are Now ^2Invisible ^7For " + time + " Seconds");
			for (;;)
			{
				if (self.invisibleTime != 0)
				{
					self.isInvisible = true;
					self hide();
					wait 1;
					self.invisibleTime -= 1;
				}
				else
				{
					self show();
					self iPrintln("You Are ^1No Longer ^7Invisible");
					self.isInvisible = undefined;
					self notify("endInvisible");
				}
				wait 0.01;
			}
		}
		else
			self SendError("AlreadyInvisible");
	}
	else
		self SendError("MoreMoney");
}

getPlayerName(player)
{
	playerName = getSubStr(player.name, 0, player.name.size);
	for(i=0; i < playerName.size; i++)
	{
		if(playerName[i] == "]")
			break;
	}
	if(playerName.size != i)
		playerName = getSubStr(playerName, i + 1, playerName.size);
	return playerName;
}

ReturnAttachmentArray(category)
{
	level.AttachmentArray["Submachine"][0] = "reflex"; //Reflex Sight
	level.AttachmentArray["Submachine"][1] = "steadyaim"; //Laser
	level.AttachmentArray["Submachine"][2] = "silencer"; //Suppressor
	level.AttachmentArray["Submachine"][3] = "dualclip"; //Fast Mag
	level.AttachmentArray["Submachine"][4] = "holo"; //EOTech
	level.AttachmentArray["Submachine"][5] = "grip"; //Fore Grip
	level.AttachmentArray["Submachine"][6] = "fastads"; //Quickdraw
	level.AttachmentArray["Submachine"][7] = "fmj"; //FMJ
	level.AttachmentArray["Submachine"][8] = "extbarrel"; //Long Barrel
	level.AttachmentArray["Submachine"][9] = "rangefinder"; //Target Finder
	level.AttachmentArray["Submachine"][10] = "stalker"; //Stock
	level.AttachmentArray["Submachine"][11] = "extclip"; //Extended Clip
	level.AttachmentArray["Submachine"][12] = "sf"; //Select Fire
	level.AttachmentArray["Submachine"][13] = "rf"; //Rapid Fire
	level.AttachmentArray["Submachine"][14] = "mms"; //MMS
	
	level.AttachmentArray["Assault"][0] = "reflex"; //Reflex Sight
	level.AttachmentArray["Assault"][1] = "fastads"; //Laser
	level.AttachmentArray["Assault"][2] = "dualclip"; //Fast Mag
	level.AttachmentArray["Assault"][3] = "acog"; //ACOG
	level.AttachmentArray["Assault"][4] = "grip"; //Grip
	level.AttachmentArray["Assault"][5] = "stalker"; //Stock
	level.AttachmentArray["Assault"][6] = "rangefinder"; //Target Finder
	level.AttachmentArray["Assault"][7] = "steadyaim"; //Laser
	level.AttachmentArray["Assault"][8] = "sf"; //Select Fire
	level.AttachmentArray["Assault"][9] = "holo"; //EOTech
	level.AttachmentArray["Assault"][10] = "silencer"; //Suppressor
	level.AttachmentArray["Assault"][11] = "fmj"; //FMJ
	level.AttachmentArray["Assault"][12] = "dualoptic"; //Hybrid Optic
	level.AttachmentArray["Assault"][13] = "extclip"; //Extended Clip
	level.AttachmentArray["Assault"][14] = "gl"; //Grenade Launcher
	level.AttachmentArray["Assault"][15] = "mms"; //MMS
	
	level.AttachmentArray["Shotguns"][0] = "reflex"; //Reflex Sight
	level.AttachmentArray["Shotguns"][1] = "extbarrel"; //Long Barrel
	level.AttachmentArray["Shotguns"][2] = "dualclip"; //Fast Mag
	level.AttachmentArray["Shotguns"][3] = "steadyaim"; //Laser
	level.AttachmentArray["Shotguns"][4] = "stalker"; //Stock
	level.AttachmentArray["Shotguns"][5] = "silencer"; //Suppressor
	level.AttachmentArray["Shotguns"][6] = "extclip"; //Extended Clip
	level.AttachmentArray["Shotguns"][7] = "fastads"; //Quickdraw
	level.AttachmentArray["Shotguns"][8] = "mms"; //MMS
	
	level.AttachmentArray["Lightmachine"][0] = "holo"; //EOTech
	level.AttachmentArray["Lightmachine"][1] = "grip"; //Fore Grip
	level.AttachmentArray["Lightmachine"][2] = "fmj"; //FMJ
	level.AttachmentArray["Lightmachine"][3] = "reflex"; //Reflex Sight
	level.AttachmentArray["Lightmachine"][4] = "fastads"; //Quickdraw
	level.AttachmentArray["Lightmachine"][5] = "rangefinder"; //Target Finder
	level.AttachmentArray["Lightmachine"][6] = "stalker"; //Stock
	level.AttachmentArray["Lightmachine"][7] = "acog"; //ACOG
	level.AttachmentArray["Lightmachine"][8] = "steadyaim"; //Laser
	level.AttachmentArray["Lightmachine"][9] = "silencer"; //Suppressor
	level.AttachmentArray["Lightmachine"][10] = "vzoom"; //Variable Zoom
	level.AttachmentArray["Lightmachine"][11] = "extclip"; //Extended Clip
	level.AttachmentArray["Lightmachine"][12] = "dualoptic"; //Hybrid Optic
	level.AttachmentArray["Lightmachine"][13] = "rf"; //Rapid Fire
	level.AttachmentArray["Lightmachine"][14] = "ir"; //Dual Band
	
	level.AttachmentArray["Snipers"][0] = "silencer"; //Suppressor
	level.AttachmentArray["Snipers"][1] = "swayreduc"; //Ballistics CPU
	level.AttachmentArray["Snipers"][2] = "vzoom"; //Variable Zoom
	level.AttachmentArray["Snipers"][3] = "dualclip"; //Fast Mag
	level.AttachmentArray["Snipers"][4] = "fmj"; //FMJ
	level.AttachmentArray["Snipers"][5] = "acog"; //ACOG
	level.AttachmentArray["Snipers"][6] = "extclip"; //Extended Clip
	level.AttachmentArray["Snipers"][7] = "steadyaim"; //Laser
	level.AttachmentArray["Snipers"][8] = "ir"; //Dual Band
	
	level.AttachmentArray["Pistols"][0] = "reflex"; //Reflex
	level.AttachmentArray["Pistols"][1] = "extclip"; //Extended Clip
	level.AttachmentArray["Pistols"][2] = "steadyaim"; //Laser
	level.AttachmentArray["Pistols"][3] = "extbarrel"; //Long Barrel
	level.AttachmentArray["Pistols"][4] = "fmj"; //FMJ
	level.AttachmentArray["Pistols"][5] = "dualclip"; //Fast Mag
	level.AttachmentArray["Pistols"][6] = "silencer"; //Suppressor
	level.AttachmentArray["Pistols"][7] = "tacknife"; //Tactical Knife
	level.AttachmentArray["Pistols"][8] = "dw"; //Dual Wield (_dw_mp)
	
	level.AttachmentArray["Specials"][0] = "reflex"; //Reflex Sight
	level.AttachmentArray["Specials"][1] = "acog"; //ACOG
	level.AttachmentArray["Specials"][2] = "ir"; //Dual Band
	level.AttachmentArray["Specials"][3] = "vzoom"; //Variable Zoom
	level.AttachmentArray["Specials"][4] = "stackfire"; //Tri-Bolt
	
	level.AttachmentArray["All"][0] = "acog"; //ACOG
	level.AttachmentArray["All"][1] = "defaultattachment"; //Nothing
	level.AttachmentArray["All"][2] = "dualclip"; //Fast Mag
	level.AttachmentArray["All"][3] = "dualoptic"; //Hybrid Optic
	level.AttachmentArray["All"][4] = "dw"; //Dual Wierd (_dw_mp)
	level.AttachmentArray["All"][5] = "extbarrel"; //Long Barrel
	level.AttachmentArray["All"][6] = "extclip"; //Extended Clip
	level.AttachmentArray["All"][7] = "fastads"; //Quickdraw
	level.AttachmentArray["All"][8] = "fmj"; //FMJ
	level.AttachmentArray["All"][9] = "gl"; //Grenade Launcher
	level.AttachmentArray["All"][10] = "grip"; //Fore Grip
	level.AttachmentArray["All"][11] = "holo"; //EOTech
	level.AttachmentArray["All"][12] = "ir"; //Dual Band
	level.AttachmentArray["All"][13] = "is"; //?
	level.AttachmentArray["All"][14] = "mms"; //MMS
	level.AttachmentArray["All"][15] = "rangefinder"; //Target Finder
	level.AttachmentArray["All"][16] = "reflex"; //Reflex Sight
	level.AttachmentArray["All"][17] = "rf"; //Rapid Fire
	level.AttachmentArray["All"][18] = "sf"; //Select Fire
	level.AttachmentArray["All"][19] = "silencer"; //Suppressor
	level.AttachmentArray["All"][20] = "stackfire"; //Tri-Bolt
	level.AttachmentArray["All"][21] = "stalker"; //Stock
	level.AttachmentArray["All"][22] = "steadyaim"; //Laser
	level.AttachmentArray["All"][23] = "swayreduc"; //Ballistics CPU
	level.AttachmentArray["All"][24] = "tacknife"; //Tactical Knife
	level.AttachmentArray["All"][25] = "vzoom"; //Variable Zoom
	
	if (category == "Submachine")
		return level.AttachmentArray["Submachine"];
	if (category == "Assault")
		return level.AttachmentArray["Assault"];
	if (category == "Shotguns")
		return level.AttachmentArray["Shotguns"];
	if (category == "Lightmachine")
		return level.AttachmentArray["Lightmachine"];
	if (category == "Snipers")
		return level.AttachmentArray["Snipers"];
	if (category == "Pistols")
		return level.AttachmentArray["Pistols"];
	if (category == "Specials")
		return level.AttachmentArray["Specials"];
	if (category == "All")
		return level.AttachmentArray["All"];
}

ReturnWeaponArray(category)
{
	level.WeaponArray["Submachine"][0] = "mp7_mp";
	level.WeaponArray["Submachine"][1] = "pdw57_mp";
	level.WeaponArray["Submachine"][2] = "vector_mp";
	level.WeaponArray["Submachine"][3] = "insas_mp";
	level.WeaponArray["Submachine"][4] = "qcw05_mp";
	level.WeaponArray["Submachine"][5] = "evoskorpion_mp";
	level.WeaponArray["Submachine"][6] = "peacekeeper_mp";
	
	level.WeaponArray["Assault"][0] = "tar21_mp";
	level.WeaponArray["Assault"][1] = "type95_mp";
	level.WeaponArray["Assault"][2] = "sig556_mp";
	level.WeaponArray["Assault"][3] = "sa58_mp";
	level.WeaponArray["Assault"][4] = "hk416_mp";
	level.WeaponArray["Assault"][5] = "scar_mp";
	level.WeaponArray["Assault"][6] = "saritch_mp";
	level.WeaponArray["Assault"][7] = "xm8_mp";
	level.WeaponArray["Assault"][8] = "an94_mp";
	
	level.WeaponArray["Shotguns"][0] = "870mcs_mp";
	level.WeaponArray["Shotguns"][1] = "saiga12_mp";
	level.WeaponArray["Shotguns"][2] = "ksg_mp";
	level.WeaponArray["Shotguns"][3] = "srm1216_mp";
	
	level.WeaponArray["Lightmachine"][0] = "mk48_mp";
	level.WeaponArray["Lightmachine"][1] = "qbb95_mp";
	level.WeaponArray["Lightmachine"][2] = "lsat_mp";
	level.WeaponArray["Lightmachine"][3] = "hamr_mp";
	
	level.WeaponArray["Snipers"][0] = "svu_mp";
	level.WeaponArray["Snipers"][1] = "dsr50_mp";
	level.WeaponArray["Snipers"][2] = "ballista_mp";
	level.WeaponArray["Snipers"][3] = "as50_mp";
	
	level.WeaponArray["Pistols"][0] = "fiveseven_mp";
	level.WeaponArray["Pistols"][1] = "fnp45_mp";
	level.WeaponArray["Pistols"][2] = "beretta93r_mp";
	level.WeaponArray["Pistols"][3] = "judge_mp";
	level.WeaponArray["Pistols"][4] = "kard_mp";
	
	level.WeaponArray["Launchers"][0] = "smaw_mp";
	level.WeaponArray["Launchers"][1] = "usrpg_mp";
	level.WeaponArray["Launchers"][2] = "fhj18_mp";
	
	level.WeaponArray["SuperSpecials"][0] = "minigun_wager_mp";
	level.WeaponArray["SuperSpecials"][1] = "m32_wager_mp";
	
	level.WeaponArray["Specials"][2] = "riotshield_mp";
	level.WeaponArray["Specials"][3] = "crossbow_mp";
	level.WeaponArray["Specials"][4] = "minigun_mp";
	level.WeaponArray["Specials"][5] = "knife_ballistic_mp";
	
	level.WeaponArray["Lethals"][0] = "frag_grenade_mp";
	level.WeaponArray["Lethals"][1] = "sticky_grenade_mp";
	level.WeaponArray["Lethals"][2] = "hatchet_mp";
	level.WeaponArray["Lethals"][3] = "bouncingbetty_mp";
	level.WeaponArray["Lethals"][4] = "satchet_charge_mp";
	level.WeaponArray["Lethals"][5] = "claymore_mp";
	
	level.WeaponArray["Tacticals"][0] = "concussion_grenade_mp";
	level.WeaponArray["Tacticals"][1] = "willy_pete_mp";
	level.WeaponArray["Tacticals"][2] = "sensor_grenade_mp";
	level.WeaponArray["Tacticals"][3] = "emp_grenade_mp";
	level.WeaponArray["Tacticals"][4] = "proximity_grenade_mp";
	level.WeaponArray["Tacticals"][5] = "pda_hack_mp";
	level.WeaponArray["Tacticals"][6] = "flash_grenade_mp";
	level.WeaponArray["Tacticals"][7] = "trophy_system_mp";
	level.WeaponArray["Tacticals"][8] = "tactical_insertion_mp";
	
    level.WeaponArray["Wonder Weapons"][0] = "::toggle_lightGun";
	level.WeaponArray["Wonder Weapons"][1] = "::ToggleMustangGun";
	level.WeaponArray["Wonder Weapons"][2] = "::ToggleZVX1337";
	level.WeaponArray["Wonder Weapons"][3] = "::hatchetExecutioner";
	level.WeaponArray["Wonder Weapons"][4] = "::ThunGun";
	level.WeaponArray["Wonder Weapons"][5] = "::ToggleDragonGun";
	level.WeaponArray["Wonder Weapons"][6] = "::doSwarmMiniGun";
	level.WeaponArray["Wonder Weapons"][7] = "::doRM";
	level.WeaponArray["Wonder Weapons"][8] = "::doBK";
	level.weaponArray["Wonder Weapons"][9] = "::doPM";
	level.weaponArray["Wonder Weapons"][10] = "::MLP";
	
	level.WeaponArray["All"][0] = "mp7_mp";
	level.WeaponArray["All"][1] = "pdw57_mp";
	level.WeaponArray["All"][2] = "vector_mp";
	level.WeaponArray["All"][3] = "insas_mp";
	level.WeaponArray["All"][4] = "qcw05_mp";
	level.WeaponArray["All"][5] = "evoskorpion_mp";
	level.WeaponArray["All"][6] = "peacekeeper_mp";
	level.WeaponArray["All"][7] = "tar21_mp";
	level.WeaponArray["All"][8] = "type95_mp";
	level.WeaponArray["All"][9] = "sig556_mp";
	level.WeaponArray["All"][10] = "sa58_mp";
	level.WeaponArray["All"][11] = "hk416_mp";
	level.WeaponArray["All"][12] = "scar_mp";
	level.WeaponArray["All"][13] = "saritch_mp";
	level.WeaponArray["All"][14] = "xm8_mp";
	level.WeaponArray["All"][15] = "an94_mp";
	level.WeaponArray["All"][16] = "870mcs_mp";
	level.WeaponArray["All"][17] = "saiga12_mp";
	level.WeaponArray["All"][18] = "ksg_mp";
	level.WeaponArray["All"][19] = "srm1216_mp";
	level.WeaponArray["All"][20] = "mk48_mp";
	level.WeaponArray["All"][21] = "qbb95_mp";
	level.WeaponArray["All"][22] = "lsat_mp";
	level.WeaponArray["All"][23] = "hamr_mp";
	level.WeaponArray["All"][24] = "svu_mp";
	level.WeaponArray["All"][25] = "dsr50_mp";
	level.WeaponArray["All"][26] = "ballista_mp";
	level.WeaponArray["All"][27] = "as50_mp";
	level.WeaponArray["All"][28] = "fiveseven_mp";
	level.WeaponArray["All"][29] = "fnp45_mp";
	level.WeaponArray["All"][30] = "beretta93r_mp";
	level.WeaponArray["All"][31] = "judge_mp";
	level.WeaponArray["All"][32] = "kard_mp";
	level.WeaponArray["All"][33] = "smaw_mp";
	level.WeaponArray["All"][34] = "usrpg_mp";
	level.WeaponArray["All"][35] = "fhj18_mp";
	level.WeaponArray["All"][36] = "minigun_wager_mp";
	level.WeaponArray["All"][37] = "m32_wager_mp";
	level.WeaponArray["All"][38] = "riotshield_mp";
	level.WeaponArray["All"][39] = "crossbow_mp";
	level.WeaponArray["All"][40] = "knife_ballistic_mp";
	level.WeaponArray["All"][41] = "knife_held_mp";
		
    if (category == "Submachine")
		return level.WeaponArray["Submachine"];
	if (category == "Assault")
		return level.WeaponArray["Assault"];
	if (category == "Shotguns")
		return level.WeaponArray["Shotguns"];
	if (category == "Lightmachine")
		return level.WeaponArray["Lightmachine"];
	if (category == "Snipers")
		return level.WeaponArray["Snipers"];
	if (category == "Pistols")
		return level.WeaponArray["Pistols"];
	if (category == "Launchers")
		return level.WeaponArray["Launchers"];
	if (category == "Specials")
		return level.WeaponArray["Specials"];
	if (category == "SuperSpecials")
		return level.WeaponArray["SuperSpecials"];
	if (category == "Lethals")
		return level.WeaponArray["Lethals"];
	if (category == "Tacticals")
		return level.WeaponArray["Tacticals"];
	if (category == "All")
		return level.WeaponArray["All"];
}

giveSpawnWeapons(status)
{
	self ClearPerks();
	self takeAllWeapons();
	
	level.loadoutkillstreaksenabled = false;
	self SetActionSlot(1, "");
	self SetActionSlot(2, "");
	self SetActionSlot(3, "");
	self SetActionSlot(4, "");
	
	level.playerspawnweapon = "fiveseven_mp+reflex+extbarrel";
	
	if (status == "human")
	{
		self.spawnWeapons[0] = level.playerspawnweapon; //Primary
		self.spawnWeapons[1] = "knife_held_mp"; //Secondary
		self.spawnWeapons[2] = ""; //Lethal
		self.spawnWeapons[3] = "trophy_system_mp+trophy_system_mp"; //Tacitcal
		self.spawnWeapons[4] = "knife_mp"; //Extra
		
		self.primaryWeapon = self.spawnWeapons[0];
		self.secondaryWeapon = self.spawnWeapons[1];
		
		//Character Model
	    randomcharacter = RandomInt(4);
        if (randomcharacter == 0)
			self [[game["set_player_model"][self.team]["smg"]]]();
		if (randomcharacter == 1)
			self [[game["set_player_model"][self.team]["mg"]]]();
		if (randomcharacter == 2)
			self [[game["set_player_model"][self.team]["spread"]]]();
		if (randomcharacter == 3)
			self [[game["set_player_model"][self.team]["default"]]]();	
    }
	if (status == "zombie")
    {
		self.spawnWeapons[0] = "knife_mp"; //Primary
		self.spawnWeapons[1] = ""; //Secondary
		self.spawnWeapons[2] = ""; //Lethal
		self.spawnWeapons[3] = "tactical_insertion_mp"; //Tactical
		
	    self setPerk("specialty_fastmantle");
   		self setPerk("specialty_fastmeleerecovery");
	    self setPerk("specialty_fastladderclimb");
	    self setPerk("specialty_fallheight");
	    self setPerk("specialty_fastequipmentuse");
	    self setPerk("specialty_fasttoss");
	    self setPerk("specialty_movefaster");
		self setPerk("specialty_unlimitedsprint");
	    self setPerk("specialty_quieter");
	    
	    //Character Model
	    self [[game["set_player_model"][self.team]["rifle"]]]();
	}
	
	for (i = 0; i < 5; i++)
	{
		if (isDefined(self.spawnWeapons[i]))
		{
			self GiveWeapon(self.spawnWeapons[i]);
			self setWeaponAmmoClip(self.spawnWeapons[i], weaponClipSize(self.spawnWeapons[i]));
			self GiveStartAmmo(self.spawnWeapons[i]);
			self SwitchToWeapon(self.spawnWeapons[0]); 
		}
		wait 0.05;
	}
}

isValidWeapon(WeaponRef)
{
	if (StrTok(WeaponRef, "_")[1] != "dw")
		WeaponRef = StrTok(WeaponRef, "+")[0];
	else
		WeaponRef = StrTok(WeaponRef, "_")[0] + "_mp";
	self.validReturn = WeaponRef;
		
	self.TempWeaponArray = ReturnWeaponArray("All");
	for (i = 0; i < self.TempWeaponArray.size; i++)
	{
		if (self.TempWeaponArray[i] == WeaponRef)
		{	
			return true;
		}
	}
	return false;
}

isValidAttachment(WeaponRef, AttachmentRef)
{
	if (StrTok(WeaponRef, "_")[1] != "dw")
		WeaponRef = StrTok(WeaponRef, "+")[0];
	else
		WeaponRef = StrTok(WeaponRef, "_")[0] + "_mp";
	self.validReturn = WeaponRef;

	self.SubmachineGuns = ReturnWeaponArray("Submachine");
	self.AssaultGuns = ReturnWeaponArray("Assault");
	self.Shotguns = ReturnWeaponArray("Shotguns");
	self.LightmachineGuns = ReturnWeaponArray("Lightmachine");
	self.Snipers = ReturnWeaponArray("Snipers");
	self.Pistols = ReturnWeaponArray("Pistols");
	self.WeaponCategory = undefined;
	self.AttachmentList = undefined;
	
	for (a = 0; a < self.SubmachineGuns.size; a++)
	{
		if (self.SubmachineGuns[a] == WeaponRef)
		{	
			self.WeaponCategory = "Submachine";
		}
	}
	for (b = 0; b < self.AssaultGuns.size; b++)
	{
		if (self.AssaultGuns[b] == WeaponRef)
		{	
			self.WeaponCategory = "Assault";
		}
	}
	for (c = 0; c < self.Shotguns.size; c++)
	{
		if (self.Shotguns[c] == WeaponRef)
		{	
			self.WeaponCategory = "Shotguns";
		}
	}
	for (d = 0; d < self.LightmachineGuns.size; d++)
	{
		if (self.LightmachineGuns[d] == WeaponRef)
		{	
			self.WeaponCategory = "Lightmachine";
		}
	}
	for (e = 0; e < self.Snipers.size; e++)
	{
		if (self.Snipers[e] == WeaponRef)
		{	
			self.WeaponCategory = "Snipers";
		}
	}
	for (f = 0; f < self.Pistols.size; f++)
	{
		if (self.Pistols[f] == WeaponRef)
		{	
			self.WeaponCategory = "Pistols";
		}
	}
	for (g = 0; g < 2; g++)
	{
		if (WeaponRef == "crossbow_mp")
		{	
			self.WeaponCategory = "Specials";
		}
	}
	
	if (!isDefined(self.WeaponCategory))
		return false;
	
	self.AttachmentList = ReturnAttachmentArray(self.WeaponCategory);
	for (h = 0; h < self.AttachmentList.size; h++)
	{
		if (self.AttachmentList[h] == AttachmentRef)
		{	
			return true;
		}
	}
	return false;
}

giveInfraredVision(status)
{
	if (self.money >= level.itemPrice[status]["General"]["Infrared"])
	{
		if (!isDefined(self.infraredOn))
		{
			self.infraredOn = true;
			self iPrintln("^2Infrared Vision ^7Purchased Successfully");
			self.money -= level.itemPrice[status]["General"]["Infrared"];
			self setinfraredvision(1);
			self useservervisionset(1);
			self setvisionsetforplayer(level.remore_mortar_infrared_vision, 1);
		}
		else
			self SendError("AlreadyHasInfrared");
	}
	else
		self SendError("MoreMoney");
}

giveInfraredVisionRaw()
{
	self setinfraredvision(1);
	self useservervisionset(1);
	self setvisionsetforplayer(level.remore_mortar_infrared_vision, 1);
}

RefillAmmo()
{
	self.currentWeapon = self GetCurrentWeapon();
	if (self.money >= level.itemPrice["Human"]["Weapons"]["Ammo"])
	{
		if (isValidWeapon(self.currentWeapon))
		{
			self setWeaponAmmoClip(self.currentWeapon, weaponClipSize(self.currentWeapon));
			self giveMaxAmmo(self.currentWeapon);
			self.money -= level.itemPrice["Human"]["Weapons"]["Ammo"];
			self iPrintln("^2Max Ammo ^7Purchased Successfully");
		}
		else
			self SendError("InvalidWeapon");
	}
	else
		self SendError("MoreMoney");
}

AddHealth(amount, status)
{
	if (self.money >= level.itemPrice[status]["General"]["Health"])
	{
		self.addingHealth = true;
		wait 0.01;
		self.health += amount;
		self.maxhealth = self.health;
		self.addingHealth = false;
		if (!self.healthMonitor)
			self thread MonitorHealth();
		self.money -= level.itemPrice[status]["General"]["Health"];
		self iPrintln("^1+100 Health ^7Purchased Successfully");
	}
	else
		self SendError("MoreMoney");
}

MonitorHealth()
{
	self endon("disconnect");
	self endon("infected");
	self endon("normalHealth");
	level endon("game_ended");
	
	self.healthMonitor = true;
	for (;;)
	{
		if (!self.addingHealth)
		{
			if (self.health > 100)
				self.maxhealth = self.health;
		}
		if (self.health < 100)
		{
			self.maxhealth = 100;
			self.healthMonitor = false;
			self notify("normalHealth");
		}
		wait 0.01;
	}
}

GiveUAV(status)
{
	if (self.money >= level.itemPrice[status]["General"]["UAV"])
	{
		if (!isDefined(self.UAV))
		{
			self.UAV = true;
			self SetClientUIVisibilityFlag("g_compassShowEnemies", 1);
			self.money -= level.itemPrice[status]["General"]["UAV"];
			self iPrintln("^2UAV ^7Purchased Successfully");
		}
		else
			SendError("AlreadyHasUAV");
	}
	else
		self SendError("MoreMoney");
}

replaceWeaponWorld(weapon, category)
{
	self.currentWeapon = self GetCurrentWeapon();
	if (isValidWeapon(self.currentWeapon))
	{
		self.currentWeaponNew = self.validReturn;
		if (weapon != self.primaryWeapon && weapon != self.secondaryWeapon)
		{
			if (self.currentWeapon == self.primaryWeapon)
				self.primaryWeapon = weapon;
			if (self.currentWeapon == self.secondaryWeapon)
				self.secondaryWeapon = weapon;
			
			if (self.currentWeapon == "knife_held_mp")
				self TakeWeapon("knife_held_mp");
			else
				self TakeWeapon(self.currentWeapon);
			self GiveWeapon(weapon);
			self setWeaponAmmoClip(weapon, weaponClipSize(weapon));
			self GiveStartAmmo(weapon);
			self SwitchToWeapon(weapon);
		}
		else
			self SendError("AlreadyHasWeapon");
	}
	else
		self SendError("InvalidWeapon");
}

replaceWeapon(weapon, category)
{
	self.currentWeapon = self GetCurrentWeapon();
	if (self.money >= level.itemPrice["Human"]["Weapons"][category])
	{
		if (isValidWeapon(self.currentWeapon))
		{
			self.currentWeaponNew = self.validReturn;
			if (weapon != self.primaryWeapon && weapon != self.secondaryWeapon)
			{
				if (self.currentWeapon == self.primaryWeapon)
					self.primaryWeapon = weapon;
				if (self.currentWeapon == self.secondaryWeapon)
					self.secondaryWeapon = weapon;
				
				if (self.currentWeapon == "knife_held_mp")
					self TakeWeapon("knife_held_mp");
				else
					self TakeWeapon(self.currentWeapon);
				self GiveWeapon(weapon);
				self setWeaponAmmoClip(weapon, weaponClipSize(weapon));
				self GiveStartAmmo(weapon);
				self SwitchToWeapon(weapon);
				self.money -= level.itemPrice["Human"]["Weapons"][category];
			}
			else
				self SendError("AlreadyHasWeapon");
		}
		else
			self SendError("InvalidWeapon");
	}
	else
		self SendError("MoreMoney");
}

replaceWeaponAttachment(weapon, attachment)
{
	self.currentWeapon = self GetCurrentWeapon();
	if (self.money >= level.itemPrice["Human"]["Attachments"][attachment])
	{
		if (isValidWeapon(self.currentWeapon) && self isValidAttachment(weapon, attachment) && self.currentWeapon != "knife_held_mp")
		{
			if (self.currentWeapon != weapon + "+" + attachment)
			{
				if (attachment == "dw" && StrTok(self.currentWeapon, "_")[1] == "dw")
					self SendError("AlreadyHasAttachment");
				else
				{
					self.currentWeaponNew = self.validReturn;
					oldAmmo = self GetWeaponAmmoStock(self.currentWeapon);
					self TakeWeapon(self.currentWeapon);
					self.newWeaponString = weapon + "+" + attachment;
					if (attachment == "dw")
						self GiveWeapon(StrTok(self.currentWeaponNew, "_")[0] + "_dw_mp");
					else
						self GiveWeapon(self.newWeaponString);
					self SetWeaponAmmoStock(self.newWeaponString, oldAmmo);
					self SwitchToWeapon(self.newWeaponString);
					self.money -= level.itemPrice["Human"]["Attachments"][attachment];
				}
			}
			else
				self SendError("AlreadyHasAttachment");
		}
		else
			self SendError("InvalidWeaponAttachment");
	}
	else
		self SendError("MoreMoney");
}

replaceCurrentWeaponAttachment(attachment)
{
	self.currentWeapon = self GetCurrentWeapon();
	if (StrTok(self.currentWeapon, "_")[1] != "dw")
		self.currentWeapon = StrTok(self.currentWeapon, "+")[0];
	else
		self.currentWeapon = StrTok(self.currentWeapon, "_")[0] + "_mp";
	self.validReturn = self.currentWeapon;
	
	self thread replaceWeaponAttachment(self.currentWeapon, attachment);
}

storeHuds()
{
	self.MoneyHUD destroyElem();
	self.MoneyHUD destroy();
	self.MoneyHUD = self drawText(level.playermoneytext, "objective", 2, 0, 130, (1, 1, 1), 0, (0, 1, 0), 0.50, 1, false);
	self.MoneyHUD.alignX = "left";
	self.MoneyHUD.horzAlign = "left";
	self.MoneyHUD.vertAlign = "center";
	self.MoneyHUD FadeOverTime(0.50);
	self.MoneyHUD.alpha = 1;
	
	self.HealthHUD destroyElem();
	self.HealthHUD destroy();
	self.HealthHUD = self drawText(level.playerhealthtext, "objective", 2, 0, 155, (1, 1, 1), 0, (1, 0, 0), 0.50, 2, false);
	self.HealthHUD.alignX = "left";
	self.HealthHUD.horzAlign = "left";
	self.HealthHUD.vertAlign = "center";
	self.HealthHUD FadeOverTime(0.50);
	self.HealthHUD.alpha = 1;
	
	self.HealthValue = drawValue(self.health, "objective", 2, 57, 155, (1, 1, 1), 0, (1, 0, 0), 0.50, 2, false);
	self.HealthValue.alignX = "left";
	self.HealthValue.horzAlign = "left";
	self.HealthValue.vertAlign = "center";
	self.HealthValue FadeOverTime(0.50);
	self.HealthValue.alpha = 1;
	
	self.MoneyValue = drawValue(self.money, "objective", 2, 57, 130, (1, 1, 1), 0, (0, 1, 0), 0.50, 2, false);
	self.MoneyValue.alignX = "left";
	self.MoneyValue.horzAlign = "left";
	self.MoneyValue.vertAlign = "center";
	self.MoneyValue FadeOverTime(0.50);
	self.MoneyValue.alpha = 1;
}

destroyHuds()
{
	foreach(player in level.players)
	{
		player.MoneyHUD destroyElem();
		player.MoneyHUD destroy();
	
		player.HealthHUD destroyElem();
		player.HealthHUD destroy();
		
		player.HealthValue destroyElem();
		player.HealthValue destroy();
		
		player.MoneyValue destroyElem();
		player.MoneyValue destroy();
		wait 0.05;
	}
	level.infoBarText destroyElem();
	level.infoBarText destroy();
}

destroyPlayerHuds()
{
	self.MoneyHUD destroyElem();
	self.MoneyHUD destroy();

	self.HealthHUD destroyElem();
	self.HealthHUD destroy();
	
	self.HealthValue destroyElem();
	self.HealthValue destroy();
	
	self.MoneyValue destroyElem();
	self.MoneyValue destroy();
}

returnRandomPlayer()
{
	return randomint(level.players.size);
}

selectRandomPlayers()
{
	level.startingZombieCount = 1;
		
	for (i = 0; i < level.startingZombieCount; i++)
	{
		level.zombieSelectionInProgress = true;
		level.selectedPlayer[i] = level thread returnRandomPlayer();
		level.currentSelectedPlayer = level.selectedPlayer[i];
		if (level.players[level.currentSelectedPlayer].name != "PlaceHolderName" && level.players[level.currentSelectedPlayer] isHost() && level.hostCantBecomeZombie)
		{ }
		else
		{
			skip = false;
			foreach(name in strTok(level.dontselectme, ",")){
				if (level.players[level.currentSelectedPlayer].name == name){
					skip = true;
					continue;
				}
			} 
			if (skip){continue;}
			level.players[level.currentSelectedPlayer] suicide();
			level.players[level.currentSelectedPlayer].startingZombie = true;
			level.zombiecount += 1;
		}
		wait 0.05;
	}
	wait 1;
	level.zombieSelectionInProgress = false;
	return level.selectedPlayers;
}

traceBullet(traceDistance, traceReturn, detectPlayers)
{
	if (!isDefined(traceDistance))
		traceDistance = 10000000;
	if (!isDefined(traceReturn))
		traceReturn = "position";
	if (!isDefined(detectPlayers))
		detectPlayers = false;

	return bulletTrace(self getEye(), self getEye() + VectorScale(AnglesToForward(self getPlayerAngles()), traceDistance), detectPlayers, self)[traceReturn];
}

slowHumans(time)
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["SlowHumans"])
	{
		if (!isDefined(level.slowHumans))
		{
			self endon("disconnect");
			self endon("endSlowHumans");
			
			self.money -= level.itemPrice["Zombie"]["General"]["SlowHumans"];
			level.slowHumans = true;
			level.slowHumansTime = time;
			iPrintln("^1All Humans Have Been Slowed For " + time + " Seconds");
			for (;;)
			{
				if (level.slowHumansTime != 0)
				{
					level thread setAllPlayerSpeed(0.7);
					wait 1;
					level.slowHumansTime -= 1;
				}
				else
				{
					level thread setAllPlayerSpeed(1);
					level.slowHumans = undefined;
					iPrintln("^2Humans Speed Returned To Normal");
					self notify("endSlowHumans");
				}
				wait 0.01;
			}
		}
		else
			self SendError("AlreadySlowedHumans");
	}
	else
		self SendError("MoreMoney");
}

setAllPlayerSpeed(speed)
{
	foreach (player in level.players)
	{
		if (player.status != "zombie")
			player setMoveSpeedScale(speed);
		wait 0.01;
	}
}

infiniteAmmo()
{
	if (self.money >= level.itemPrice["Human"]["Weapons"]["UnlimitedAmmo"])
	{
		if (!isDefined(self.infiniteAmmo))
		{
			self endon("disconnect");
			self endon("infected");
			
			self.infiniteAmmo = true;
			self.money -= level.itemPrice["Human"]["Weapons"]["UnlimitedAmmo"];
			for (;;)
			{
				wait 0.1;
				weapon = self GetCurrentWeapon();
				self GiveMaxAmmo(weapon);
			}
		}
		else
			self SendError("AlreadyHasInfiniteAmmo");
	}
	else	
		self SendError("MoreMoney");
}

watchForTurretDeath()
{
	self endon("turretRemoved");
	level endon("game_ended");
	
	for (;;)
	{
		self waittill("destroy_turret");
		self setturretminimapvisible(0);
		playFxOnTag(level.auto_turret_settings[self.turrettype].damagefx, self, level.auto_turret_settings[self.turrettype].stunfxtag);
		wait 1;
		level thread GiveDestroyedTurretMoney("zombie", 30);
		self delete();
		level.turretsSpawned -= 1;
		self notify("turretRemoved");
		wait 0.01;
	}
}

GiveDestroyedTurretMoney(status, money)
{
	foreach (player in level.players)
	{
		if (player.status == status)
		{
			player.money += money;
			player iPrintln("A Human Turret Was ^1Destroyed^7, All Zombies Have Been Given ^2$500 Bonus Cash");
		}
		wait 0.01;
	}
}

spawnTurretPlayer(turrettype)
{
	if (self.money >= level.itemPrice["Human"]["General"]["Turret"])
	{
		if (level.turretsSpawned < level.turretLimit)
		{
			self iPrintln("^2Turret ^7Purchased and Spawned Successfully");
			self.money -= level.itemPrice["Human"]["General"]["Turret"];
			tempSpawnPosition = self.origin + VectorScale(AnglesToForward((0, self getPlayerAngles()[1], self getPlayerAngles()[2])), 100);
			tempSpawnPosition[2] += 20;
			spawnPosition = bulletTrace(tempSpawnPosition, ((tempSpawnPosition) - (0, 0, 130)), false, self)["position"];
			turret = spawnTurret("auto_turret", spawnPosition, turrettype);
			level.turretsSpawned += 1;
			turret.angles = (0, self getPlayerAngles()[1], self getPlayerAngles()[2]);
			turret setModel("t6_wpn_turret_sentry_gun");
			turret setTurretTeam("allies");
			turret.status = "human";
			turret.team = "allies";
			SetupTurretHealth(turret);
			turret thread watchdamage();
			turret.weaponinfoname = turrettype;
			turret.turrettype = "sentry";
			turret setturrettype(turret.turrettype);
			turret laserOn();
			turret setturretminimapvisible(1);
			turret thread watchForTurretDeath();
			turret thread turretPlayerWatcher();
			turret maps/mp/_entityheadicons::setentityheadicon(self.pers["team"], self, level.turrets_headicon_offset["default"]);
			return turret;
		}
		else
			self SendError("MaxTurrets");
	}
	else
		self SendError("MoreMoney");
}

playerAnglesToForward(player, distance)
{
	return player.origin + VectorScale(AnglesToForward(player getPlayerAngles(), distance));
}

ToggleUFO()
{
    self endon("disconnect");
    self endon("death");
    self endon("disableUFO");

	self.UFO = booleanOpposite(self.UFO);
	self iPrintln(booleanReturnVal(self.UFO, "UFO Mode: ^1OFF", "UFO Mode: ^2ON^7\nPress [{+frag}] To Move!"));

	if (self.UFO)
	{
	    self.parentObject = spawn("script_origin", self.origin);
	    self.parentObject.angles = self.angles;
	    self PlayerLinkTo(self.parentObject, undefined);
	    self disableWeapons();

	    for(;;)
	    {
	        if(self fragButtonPressed())
	            self.parentObject moveTo(playerAnglesToForward(self, 50), 0.05);
	        wait 0.01;
	    }
	}
	else
	{
        self unlink();
        self enableWeapons();
        self.parentObject delete();
        self notify("disableUFO");
	}
}

forceHost()
{
	if (self isHost())
	{
		self.forceHost = booleanOpposite(self.forceHost);
		self iPrintln(booleanReturnVal(self.forceHost, "Force Host: ^1Off", "Force Host: ^2On"));
	
		if (self.forceHost)
		{
	        setDvar("party_connectToOthers", "0");
	        setDvar("partyMigrate_disabled", "1");
	        setDvar("party_mergingEnabled", "0");
	        setDvar("allowAllNAT", "1");
		}
		else
		{
	        setDvar("party_connectToOthers", "1");
	        setDvar("partyMigrate_disabled", "0");
	        setDvar("party_mergingEnabled", "1");
	        setDvar("allowAllNAT", "0");
		}
	}
}

resetDvars()
{
	self.infraredOn = undefined;
	self.infiniteAmmo = undefined;
	self.UAV = undefined;
	self SetClientUIVisibilityFlag("g_compassShowEnemies", 0);
}

setupTeamDvars()
{
	if (level.spawnBots)
		self thread spawnBots();
	level.teamLimit = 18;
	level.teamBalance = 0;
	level.disableweapondrop = 1;
	level.allow_teamchange = 0;
	setDvar("scr_disable_weapondrop", 1);
	setDvar("scr_teambalance", 0);
	setDvar("party_autoteams", 0);
	setDvar("ui_allow_teamchange", "0");
	setDvar("g_TeamName_Allies", "Humans");
	setDvar("g_TeamName_Axis", "Zombies");
	setDvar("g_customTeamName_Allies", "Humans");
	setDvar("g_customTeamName_Axis", "Zombies");
}

RandomWeapon()
{
	level endon("game_ended");
	level endon("winnerDeclared");
	while(1)
	{
		id = random(level.tbl_weaponids);
		weaponname = id["reference"];
		attachmentlist = id["attachment"];
		attachments = strtok( attachmentlist, " " );
		attachments[attachments.size] = "";
		attachment = random(attachments);
		
		if (id[ "group" ] != "weapon_launcher" && id[ "group" ] != "weapon_sniper" && id[ "group" ] != "weapon_lmg" && id[ "group" ] != "weapon_assault" && id[ "group" ] != "weapon_smg" && id[ "group" ] != "weapon_pistol" && id[ "group" ] != "weapon_cqb" && weaponname != "weapon_null") //&& id[ "group" ] != "weapon_special")
			correctweapon = false;
		else
			correctweapon = true;
		if (weaponname == "m32")
			return weaponname + "wager_mp+" + attachment;
		if (weaponname == "minigun")
			return weaponname + "wager_mp+" + attachment;			
		if (correctweapon)
			return weaponname + "_mp+" + attachment;
		wait 0.05;
	}
}

giveEquipment(equipment, status)
{
	if (self.money >= level.itemPrice[status]["Equipment"][equipment])
	{
		self TakeWeapon(self.previousEquipment);
		self.previousEquipment = equipment;
		self GiveWeapon(equipment);
		self SetWeaponAmmoClip(equipment, 1);
		self iPrintln("Equipment Purchased Successfully: ^2" + equipment);
	    self.money -= level.itemPrice[status]["Equipment"][equipment];
	}
	else
		self SendError("MoreMoney");
}

givePerk(perk, status)
{
	if (self.money >= level.itemPrice[status]["Perks"][perk])
	{
		if (!self HasPerk(perk))
		{
			self SetPerk(perk);
			self iPrintln("Perk Purchased Successfully: ^2" + perk);
			self.money -= level.itemPrice[status]["Perks"][perk];
		}
		else
			self SendError("HasPerk");
	}
	else
		self SendError("MoreMoney");
}

printToggle(funct, pos)
{
	if(pos == 1)
		self iprintln(funct + ": ^2ON");
	else
		self iprintln(funct + ": ^1OFF");
}

verificationToColor(status)
{
        if (status == "human")
                return "^2";
        if (status == "zombie")
                return "^1";
        else
                return "^7";
}

givePlayerCash(ammount, player)
{
	player.money += ammount;
	player iprintln("^5" + self.name + "^7 has given you ^2$" + ammount);
	self iprintln("^2You have given ^5" + player.name + "^2$" + ammount);
}

givePlayerHealth(ammount, player)
{
	player.health += ammount;
	player.maxhealth = player.health;
	if (!player.healthMonitor)
		player thread MonitorHealth();
	player iprintln("^5" + self.name + "^7 has given you ^1 " + ammount + " health");
	self iprintln("^1You have given ^5" + player.name + "^1 " + ammount + " health");
}

givePlayerSwat(weapon, player)
{
	player takeAllWeapons();
	player giveWeapon(weapon);
	player giveWeapon("riotshield_mp");
	player giveWeapon("satchel_charge_mp");
	player switchToWeapon(weapon);
	
	player clearperks();
	player setperk("specialty_additionalprimaryweapon");
	player setperk("specialty_armorpiercing");
	player setperk("specialty_armorvest");
	player setperk("specialty_bulletaccuracy");
	player setperk("specialty_bulletdamage");
	player setperk("specialty_bulletflinch");
	player setperk("specialty_bulletpenetration");
	player setperk("specialty_deadshot");
	player setperk("specialty_delayexplosive");
	player setperk("specialty_detectexplosive");
	player setperk("specialty_disarmexplosive");
	player setperk("specialty_earnmoremomentum");
	player setperk("specialty_explosivedamage");
	player setperk("specialty_extraammo");
	player setperk("specialty_fallheight");
	player setperk("specialty_fastads");
	player setperk("specialty_fastequipmentuse");
	player setperk("specialty_fastladderclimb");
	player setperk("specialty_fastmantle");
	player setperk("specialty_fastmeleerecovery");
	player setperk("specialty_fastreload");
	player setperk("specialty_fasttoss");
	player setperk("specialty_fastweaponswitch");
	player setperk("specialty_finalstand");
	player setperk("specialty_fireproof");
	player setperk("specialty_flakjacket");
	player setperk("specialty_flashprotection");
	player setperk("specialty_gpsjammer");
	player setperk("specialty_grenadepulldeath");
	player setperk("specialty_healthregen");
	player setperk("specialty_holdbreath");
	player setperk("specialty_immunecounteruav");
	player setperk("specialty_immuneemp");
	player setperk("specialty_immunemms");
	player setperk("specialty_immunenvthermal");
	player setperk("specialty_immunerangefinder");
	player setperk("specialty_killstreak");
	player setperk("specialty_longersprint");
	player setperk("specialty_loudenemies");
	player setperk("specialty_marksman");
	player setperk("specialty_movefaster");
	player setperk("specialty_nomotionsensor");
	player setperk("specialty_noname");
	player setperk("specialty_nottargetedbyairsupport");
	player setperk("specialty_nokillstreakreticle");
	player setperk("specialty_nottargettedbysentry");
	player setperk("specialty_pin_back");
	player setperk("specialty_pistoldeath");
	player setperk("specialty_proximityprotection");
	player setperk("specialty_quickrevive");
	player setperk("specialty_quieter");
	player setperk("specialty_reconnaissance");
	player setperk("specialty_rof");
	player setperk("specialty_scavenger");
	player setperk("specialty_showenemyequipment");
	player setperk("specialty_stunprotection");
	player setperk("specialty_shellshock");
	player setperk("specialty_sprintrecovery");
	player setperk("specialty_showonradar");
	player setperk("specialty_stalker");
	player setperk("specialty_twogrenades");
	player setperk("specialty_twoprimaries");
	player setperk("specialty_unlimitedsprint");
}

killPlayer(player)
{
	if(self isHost())
	{
		if (isAlive(player))
		{
			player suicide();
		}
		self iprintln("^5" + player.name + " has been ^1killed");
	}
}

kickPlayer(player)
{
	if(self isHost())
	{
		kick(player GetEntityNumber());
		wait 0.50;
		self submenu(self.menu.previousmenu[self.menu.currentmenu]);
		self iprintln("^5" + player.name + " has been ^1kicked");
	}
}

typewritter(messagelel)
{
    foreach(player in level.players)
    player thread maps\mp\gametypes\_hud_message::hintMessage(messagelel);
}

credits()
{
foreach(player_inlevel in level.players)
{
player_inlevel thread maps\mp\gametypes\_hud_message::hintMessage("Base and Coding Made by ^6PONY ^2MODZ", 5);
wait 5;
player_inlevel thread maps\mp\gametypes\_hud_message::hintMessage("Prices Made By ^2iDragonPlays", 5);
wait 5;
}
}

CustomTeleport()
{
    if (self.money >= level.itemPrice["Human"]["General"]["Teleport"])
	if(self.CTC==0)
	{
		self thread doTeleport();
		self.money -= level.itemPrice["Human"]["General"]["Teleport"];
		self.CTC=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.CTC=0;
	}
	else
		self SendError("MoreMoney");
}
doTeleport()
{
	self beginLocationSelection( "map_mortar_selector" ); 
	self.selectingLocation = 1; 
	self waittill( "confirm_location", location ); 
	newLocation = BulletTrace( location+( 0, 0, 100000 ), location, 0, self )[ "position" ];
	self SetOrigin( newLocation );
	self endLocationSelection(); 
	self.selectingLocation = undefined;
	self iPrintLn("Teleported!");
}

ZombieKing()
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["ZKing"])
    {
    	iprintlnBold("^1Zombie ^6King ^7Incomig !!");
    	self iprintlnBold("+ ^2Speed ^7+ ^22500 Regenerating Health ^7+ New Model");
    	self.maxhealth = 2500;
		self.health = self.maxhealth;
		self setModel("defaultactor");
		self setmovespeedscale(1.3);
		weap = self getCurrentWeapon();
        self takeWeapon(weap);
		self giveWeapon("knife_ballistic_mp");
		self switchToWeapon("knife_ballistic_mp");
	    self giveMaxAmmo(self.currentWeapon);
    	self.money -= level.itemPrice["Zombie"]["General"]["ZKing"];
    }
    else
	    	self SendError("MoreMoney");
}

doallperks()
{
    if (self.money >= level.itemPrice["Human"]["Perks"]["allperks"])
	if(self.DAP==0)
	{
		self thread doPerks();
		self.money -= level.itemPrice["Human"]["Perks"]["allperks"];
		self.DAP=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.DAP=0;
	}
	else
		self SendError("MoreMoney");
}
doPerks()
{
	self clearperks();
	self setperk("specialty_additionalprimaryweapon");
	self setperk("specialty_armorpiercing");
	self setperk("specialty_armorvest");
	self setperk("specialty_bulletaccuracy");
	self setperk("specialty_bulletdamage");
	self setperk("specialty_bulletflinch");
	self setperk("specialty_bulletpenetration");
	self setperk("specialty_deadshot");
	self setperk("specialty_delayexplosive");
	self setperk("specialty_detectexplosive");
	self setperk("specialty_disarmexplosive");
	self setperk("specialty_earnmoremomentum");
	self setperk("specialty_explosivedamage");
	self setperk("specialty_extraammo");
	self setperk("specialty_fallheight");
	self setperk("specialty_fastads");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fastmeleerecovery");
	self setperk("specialty_fastreload");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_finalstand");
	self setperk("specialty_fireproof");
	self setperk("specialty_flakjacket");
	self setperk("specialty_flashprotection");
	self setperk("specialty_gpsjammer");
	self setperk("specialty_grenadepulldeath");
	self setperk("specialty_healthregen");
	self setperk("specialty_holdbreath");
	self setperk("specialty_immunecounteruav");
	self setperk("specialty_immuneemp");
	self setperk("specialty_immunemms");
	self setperk("specialty_immunenvthermal");
	self setperk("specialty_immunerangefinder");
	self setperk("specialty_killstreak");
	self setperk("specialty_longersprint");
	self setperk("specialty_loudenemies");
	self setperk("specialty_marksman");
	self setperk("specialty_movefaster");
	self setperk("specialty_nomotionsensor");
	self setperk("specialty_noname");
	self setperk("specialty_nottargetedbyairsupport");
	self setperk("specialty_nokillstreakreticle");
	self setperk("specialty_nottargettedbysentry");
	self setperk("specialty_pin_back");
	self setperk("specialty_pistoldeath");
	self setperk("specialty_proximityprotection");
	self setperk("specialty_quickrevive");
	self setperk("specialty_quieter");
	self setperk("specialty_reconnaissance");
	self setperk("specialty_rof");
	self setperk("specialty_scavenger");
	self setperk("specialty_showenemyequipment");
	self setperk("specialty_stunprotection");
	self setperk("specialty_shellshock");
	self setperk("specialty_sprintrecovery");
	self setperk("specialty_showonradar");
	self setperk("specialty_stalker");
	self setperk("specialty_twogrenades");
	self setperk("specialty_twoprimaries");
	self setperk("specialty_unlimitedsprint");
	self iPrintln("All Perks ^2Set");
}

unlimitedammonoreload()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["unlimitedammonoreload"])
	if(self.uanr==0)
	{
		self thread unlimited_ammogg();
		self.money -= level.itemPrice["Human"]["Weapons"]["unlimitedammonoreload"];
		self.uanr=1;
	}
	else
	{
		self notify("Endnoreload");
		self.uanr=0;
	}
	else	
		self SendError("MoreMoney");
}
unlimited_ammogg()
{
    self endon( "disconnect" );
    self endon( "death" );

    for(;;)
    {
        wait 0.1;

        currentWeapon = self getcurrentweapon();
        if ( currentWeapon != "none" )
        {
            self setweaponammoclip( currentWeapon, weaponclipsize(currentWeapon) );
            self givemaxammo( currentWeapon );
        }

        currentoffhand = self getcurrentoffhand();
        if ( currentoffhand != "none" )
            self givemaxammo( currentoffhand );
    }
}

giveGhost()
{
	weap = self getCurrentWeapon();
	self takeWeapon(self getCurrentWeapon());
	self giveWeapon( weap, 0, true ( 29, 0, 0, 0, 0 ));
	self switchToWeapon( weap );
}
giveDiamond()
{
	weap = self getCurrentWeapon();
	self takeWeapon(self getCurrentWeapon());
	self giveWeapon( weap, 0, true ( 16, 0, 0, 0, 0 ));
	self switchToWeapon( weap );
}

GameDvars()
{
   SetDvar("ui_allow_teamchange", 0);
   SetDvar("ui_allow_classchange", 0);
   SetDvar("party_autoteams", 0);
   SetDvar("scr_teambalance", 0);
   SetDvar("scr_killcam_time", 15);
   SetDvar("ui_errorTitle", "^1Zombieland^5V2.5");
   SetDvar("ui_errorMessage", "Thank You for Playing my Zombieland \n^3YAY!");
   SetDvar("ui_errorMessageDebug", "-^6PONY^2MODZ");
}

SpeedX2()
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["2XSPD"])
    {
        self setmovespeedscale(1.5);
        self iPrintln("You are a Fast Zombie!!");
        weap = self getcurrentweapon();
		self takeweapon(weap);
		self giveweapon("knife_ballistic_mp");
		self switchtoweapon("knife_ballistic_mp");
        self.money -= level.itemPrice["Zombie"]["General"]["2XSPD"];
    }
	else
		self SendError("MoreMoney");
}

Zombie_EMP()
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["ZombieEMP"])
	{
	self iPrintln("Humans ^2Successfully ^7EMPd");
			self.money -= level.itemPrice["Zombie"]["General"]["ZombieEMP"];
	self giveWeapon( "emp_mp" );
	self switchToWeapon( "emp_mp" );
}
	else
		self SendError("MoreMoney");
	}

toggle_lightGun()
{
	if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])

	    if(self.lightgun==true||self.lightstuf)
	    {
		    self endon("death"); 
            self endon("WeaponChange");
            weap = self getcurrentweapon();//dont gives a 3rd gun
	        self takeweapon(weap);
		    self.lightstuf=booleanOpposite(self.lightstuf);
	        self iPrintln(booleanReturnVal(self.lightstuf,"Idiot..","Electric Gun ^2BOUGHT"));
	        self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		    self thread lightGun();
		    self notify("GiveNewWeapon");
		    self.lightgun=false;
	    }
	else
		self SendError("MoreMoney");
}
lightGun()
{
	self endon("death");
	self endon("disconnect");
	self endon("lightgunend");
	self endon("WeaponChange");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("vector_mp+silencer",0,true(44,0,0,0,0));
	self switchToWeapon("vector_mp+silencer");
	self.lightupgun=loadfx("weapon/emp/fx_emp_explosion_equip");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getCurrentWeapon() == "vector_mp+silencer")
		{
			vec2=anglestoforward(self getPlayerAngles());
			e1nd =(vec2[0] * 200000,vec2[1] * 200000,vec2[2] * 200000);
			SPLOSIONlocation1=BulletTrace(self gettagorigin("tag_eye"),self gettagorigin("tag_eye")+ e1nd,0,self)["position"];
			playfx(self.lightupgun,SPLOSIONlocation1);
			RadiusDamage(SPLOSIONlocation1,80,80,80,self);
			earthquake(0.3,1,SPLOSIONlocation1,150);
		}
		wait 0.001;
	}
}

ToggleMustangGun()
{
	if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])

	    if(self.TMG==true||self.mustG)
	    {
		    self endon("death");
            weap = self getcurrentweapon();//dont gives a 3rd gun
	        self takeweapon(weap);
		    self.mustG=booleanOpposite(self.mustG);
	        self iPrintln(booleanReturnVal(self.mustG,"idiot...","Mustang And Sally ^2BOUGHT"));
		    self thread mustangbro();
		    self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		    self notify("GiveNewWeapon");
		    self.TMG=false;
	    }
	else
		self SendError("MoreMoney");
}
mustangbro()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("fnp45_dw_mp",0,true(15,0,0,0,0));
	self switchtoweapon("fnp45_dw_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="fnp45_dw_mp") 
		MagicBullet("m32_wager_mp",self getEye(),self traceBullet(),self);
	}
}

ToggleZVX1337()
{
	if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])

	    if(self.zvx==true||self.mustzvx)
	    {
		    self.mustzvx=booleanOpposite(self.mustzvx);
	        self iPrintln(booleanReturnVal(self.mustzvx,"^1Idiot.. ^7already had this Gun","ZVX1337 ^2Purchased"));
		    self thread ZVX1337bro();
		    self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		    self notify("GiveNewWeapon");
		    self.zvx=false;
	    }
	    else
	    {
		    self notify("zvxend");
		    self takeWeapon("saiga12_mp+dualclip");
		    self.zvx=true;
	    }
	    else
		self SendError("MoreMoney");
}
ZVX1337bro()
{
	self endon("disconnect");
	self endon("zvxend");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("saiga12_mp+dualclip",0,true(16,0,0,0,0));
	self switchtoweapon("saiga12_mp+dualclip");
	self givemaxammo("saiga12_mp+dualclip");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="saiga12_mp+dualclip") 
		MagicBullet("straferun_gun_mp",self getEye(),self traceBullet(),self);
	}
}

hatchetExecutioner()
{
	self endon("disconnect");
	self endon("death");
	self endon("stopHatchetExecutioner");
	
	if(self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	{
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self iprintln("^2Tomahawk Exocutioner ^7Purchased Successfully");
		
		weap = self getcurrentweapon();//dont gives a 3rd gun
	    self takeweapon(weap);
		self giveWeapon("judge_mp", 0, true(18, 0, 0, 0, 0));
		self switchToWeapon("judge_mp");
		
		for(;;)
        {
			if(self getCurrentWeapon() == "judge_mp")
			{
				self waittill("weapon_fired");
                GrenadeDirection = VectorNormalize(anglesToForward(self getPlayerAngles()));
                Velocity = VectorScale(GrenadeDirection, 5000);
                self MagicGrenadeType("hatchet_mp", self getEye(), Velocity, 2);
			}
			wait 0.01;
        }
	}
	else
		self SendError("MoreMoney");
}

ThunGun()
{
	self endon("disconnect");
	self endon ("death");
	
	if(self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	{
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		level.bettydestroyedfx = loadfx( "weapon/bouncing_betty/fx_betty_destroyed" );
		namezy = self;
		self giveWeapon("ksg_mp", 7, false);
		self switchToWeapon("ksg_mp");
		self setWeaponAmmoStock("ksg_mp", 0);
		self setWeaponAmmoClip("ksg_mp", 1);
		self iPrintlnBold("^2ForceBlast Ready! ^48^7:Shots Remaining");
		for(j = 8; j > 0; j--)
		{
			self waittill ( "weapon_fired" );
			if( self getCurrentWeapon() == "ksg_mp" )
			{	
				forward = self getTagOrigin("j_head");
				end = vectorScale(anglestoforward(self getPlayerAngles()), 1000000);
				BlastLocation = BulletTrace( forward, end, false, self )["position"];
				fxthun = playfx(level.bettydestroyedfx, self getTagOrigin("tag_weapon_right"));
				fxthun.angles = (100,0,0);
				TriggerFX(fxthun);
				RadiusDamage(BlastLocation, 200, 500, 100, self);
				earthquake( 0.9, 0.9, self.origin, 600 );
				PlayRumbleOnPosition( "grenade_rumble", self.origin );
				foreach(player in level.players)
				{
					if(player.team != self.team)
					{
						if(Distance(self.origin, player.origin) < 600)
						{
							player thread ThunDamage();
						}
					}
				}
				self switchToWeapon("ksg_mp");
				wait 0.8;
				wait .5;
				bulletz = (j - 1);
				self iPrintlnBold("^2ForceBlast Ready. ^4" + bulletz + "^7:Shots Remaining");
				self setWeaponAmmoStock("ksg_mp", 0);
				self setWeaponAmmoClip("ksg_mp", 1);
				self switchToWeapon("ksg_mp");
			}	
			else
			{
				j++;
			}
		}
		self takeWeapon( "ksg_mp" );
		wait 2;
		self notify ("THUNGONE");
	}
	else
		self SendError("MoreMoney");
}

ThunDamage()
{
	self endon("disconnect");
	for(m = 4; m > 0; m--)
	{	
		self setvelocity(self getvelocity()+(250,250,250));
	wait .1;
	}
	self setvelocity(0,0,0);
	wait 7;
}

ToggleDragonGun()
{
	if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])

	    if(self.TMG==true||self.mustG)
	    {
		    self.mustG=booleanOpposite(self.mustG);
	        self iPrintln(booleanReturnVal(self.mustG,"^1Idiot.. ^7already had this Gun","Dragons Breath ^2Purchased"));
		    self thread DragonGun();
		    self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		    self notify("GiveNewWeapon");
		    self.TMG=false;
	    }
	    else
	    {
		    self notify("TMGend");
		    self takeWeapon("svu_mp+acog");
		    self.TMG=true;
	    }
	    else
		self SendError("MoreMoney");
}
DragonGun()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("svu_mp+acog",0,true(32,0,0,0,0));
	self switchtoweapon("svu_mp+acog");
	self givemaxammo("svu_mp+acog");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="svu_mp+acog") 
		MagicBullet("ai_tank_drone_rocket_mp",self getEye(),self traceBullet(),self);
	}
}

doSwarmMiniGun()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	if(self.SM==0)
	{
		self thread SwarmMiniGun();
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self.SM=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.SM=0;
	}
	else
		self SendError("MoreMoney");
}
SwarmMiniGun()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("minigun_wager_mp",0,true(15,0,0,0,0));
	self switchtoweapon("minigun_wager_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="minigun_wager_mp") 
		MagicBullet("missile_swarm_projectile_mp",self getEye(),self traceBullet(),self);
	}
}

doBK()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	if(self.BK==0)
	{
		self thread Boomknife();
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self.BK=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.BK=0;
	}
	else
		self SendError("MoreMoney");
}
Boomknife()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("knife_ballistic_mp",0,true(15,0,0,0,0));
	self switchtoweapon("knife_ballistic_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="knife_ballistic_mp") 
		MagicBullet("usrpg_mp",self getEye(),self traceBullet(),self);
	}
}

doRM()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	if(self.RM==0)
	{
		self thread rocketmagnum();
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self.RM=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.RM=0;
	}
	else
		self SendError("MoreMoney");
}
rocketmagnum()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("judge_mp",0,true(15,0,0,0,0));
	self switchtoweapon("judge_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="judge_mp") 
		MagicBullet("ai_tank_drone_rocket_mp",self getEye(),self traceBullet(),self);
	}
}

GiveDefaultGun()
{
self takeallweapons();
wait 0.1;
self iprintln("defaultweapon_mp ^2given");
self giveweapon("defaultweapon_mp");
self giveMaxAmmo("defaultweapon_mp");
self giveweapon("fnp45_mp");
self giveweapon("judge_mp");
self giveweapon("870mcs_mp");
self giveweapon("knife_mp");
self giveweapon("tar21_mp");
self giveweapon("hatchet_mp");
self giveweapon("flash_grenade_mp");
self switchToWeapon("defaultweapon_mp");
self thread MonitorDefault();
}
MonitorDefault()
{
self endon("death");
self endon("disconnect");
for(;;)
{
if(self changeseatButtonPressed() && self GetCurrentWeapon() == "fnp45_mp" || self GetCurrentWeapon() == "judge_mp" || self GetCurrentWeapon() == "870mcs_mp" || self GetCurrentWeapon() == "tar21_mp")
{
wait 0.1;
self switchToWeapon("defaultweapon_mp");
wait 1;
}
wait 0.05;
}
}

nope()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("peacekeeper_mp+mms+silencer+steadyaim",0,true(31,0,0,0,0));
	self switchtoweapon("peacekeeper_mp+mms+silencer+steadyaim");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="peacekeeper_mp+mms+silencer+steadyaim") 
		MagicBullet("dsr50_mp",self getEye(),self traceBullet(10000),self);
	}
}

doPM()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	if(self.exterminator==0)
	{
		self thread nope();
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self.exterminator=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.exterminator=0;
	}
	else
		self SendError("MoreMoney");
}

Dash()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	weap = self getcurrentweapon();//dont gives a 3rd gun
	self takeweapon(weap);
	self giveWeapon("kard_mp+silencer+dualclip",0,true(24,0,0,0,0));
	self switchtoweapon("kard_mp+silencer+dualclip");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="kard_mp+silencer+dualclip") 
		MagicBullet("minigun_wager_mp",self getEye(),self traceBullet(),self);
	}
}

MLP()
{
    if (self.money >= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"])
	if(self.gg==0)
	{
		self thread Dash();
		self.money -= level.itemPrice["Human"]["Weapons"]["Wonder Weapons"];
		self.gg=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.gg=0;
	}
	else
		self SendError("MoreMoney");
}

doJetPack()
{
	if (self.money >= level.itemPrice["Human"]["Special"]["JetPack"])
    {
	    self.backpack=booleanOpposite(self.backpack);
    	self iPrintln(booleanReturnVal(self.backpack,"Jump [{+gostand}] then Hold [{+usereload}]","Jump [{+gostand}] then Hold [{+usereload}] + Back Protector"));
	    self.money -= level.itemPrice["Human"]["Special"]["JetPack"];
    	self thread StartJetPack();
	}
	else
	    	self SendError("MoreMoney");
}
StartJetPack()
{
	self endon("death");
	self endon("disconnect");
	self.jetboots= 75;
	self attach("projectile_hellfire_missile","tag_stowed_back");
	for(i=0;;i++)
	{
		if(self.menu.open == false) if(self usebuttonpressed()&& self.jetboots>0)
		{
			self playsound("veh_huey_chaff_explo_npc");
			playFX(level._effect[ "flak20_fire_fx" ],self getTagOrigin("J_Ankle_RI"));
			playFx(level._effect[ "flak20_fire_fx" ],self getTagOrigin("J_Ankle_LE"));
			earthquake(.15,.2,self gettagorigin("j_spine4"),30);
			self.jetboots--;
			if(self getvelocity()[2]<225) self setvelocity(self getvelocity()+(0,0,60));
		}
		if(self.jetboots<75 &&!self usebuttonpressed()) self.jetboots++;
		wait .02;
	}
}

doMW3IMS()
{
    if (self.money >= level.itemPrice["Human"]["Equipment"]["mw3ims"])
	if(self.imw==0)
	{
		self thread IMSMW3();
		self.money -= level.itemPrice["Human"]["Equipment"]["mw3ims"];
		self.imw=1;
	}
	else
	{
		self notify("EndAutoAim");
		self.imw=0;
	}
	else
		self SendError("MoreMoney");
}
IMSMW3()
{
self endon("disconnect");
o = self;
offset = (50,0,10);
ims = spawn("script_model", self.origin + offset);
ims setModel( "t6_wpn_turret_sentry_gun_red" );
ims.angles = (90,0,0);
s = "fhj18_mp";
    
    for(;;)
    {
    foreach(p in level.players){
    d = distance(ims.origin,p.origin);
        if (level.teambased){
            if ((p!=o)&&(p.pers["team"]!=self.pers["team"]))
            if(d<250)
                if (isAlive(p)) p thread imsxpl(ims,o,p,s);
        }else{
            if(p!=o)
            if(d<250)
                if (isAlive(p)) p thread imsxpl(ims,o,p,s);
        }
        wait 0.3;
    }
    }
wait 600;
self notify("noims");
} 

imsxpl(obj,me,noob,bullet)
{
me endon("noims");
    while(1)
    {
            MagicBullet(bullet,obj.origin,noob.origin,me);
            wait 2;
            break;
    }
    }

doAimbots()
{
    if (self.money >= level.itemPrice["Human"]["Special"]["aimbotfair"])
	if(self.aimF==0)
	{
		self thread Aimbot();
		self.money -= level.itemPrice["Human"]["Special"]["aimbotfair"];
		self.aimF=1;
		self iPrintln("^1Fair ^7AimBot [^2ON^7]");
        wait 20;//20 seconds
 		self notify("Endfairaimbot");
		self.aimF=0;
		self iPrintln("^1Fair ^7AimBot [^1OFF^7]");
	}
	else
		self SendError("MoreMoney");
}
Aimbot()
{
	self endon("death");
	self endon("disconnect");
	self endon("Endfairaimbot");
	lo=-1;
	self.fire=0;
	self.PNum=0;
	self thread WeapFire();
	for(;;)
	{
		wait 0.01;
		if(self AdsButtonPressed())
		{
			for(i=0;i<level.players.size;i++)
			{
				if(getdvar("g_gametype")!="dm")
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("tag_eye"),0,self))lo=level.players[i] gettagorigin("tag_eye");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("tag_eye"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
				else
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("tag_eye"),0,self))lo=level.players[i] gettagorigin("tag_eye");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("tag_eye"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
			}
			if(lo!=-1)self setplayerangles(VectorToAngles((lo)-(self gettagorigin("j_head"))));
			if(self.fire==1)
			{
				MagicBullet(self getcurrentweapon(),lo+(0,0,10),lo,self);
			}
		}
		lo=-1;
	}
}
WeapFire()
{
	self endon("disconnect");
	self endon("death");
	self endon("Endfairaimbot");
	for(;;)
	{
		self waittill("weapon_fired");
		self.fire=1;
		wait 0.05;
		self.fire=0;
	}
}	

doAimbotunfair()
{
    if (self.money >= level.itemPrice["Human"]["Special"]["aimbotunfair"])
	if(self.aimU==0)
	{
		self thread aimBotunfair();
		self.money -= level.itemPrice["Human"]["Special"]["aimbotunfair"];
		self.aimU=1;
		self iPrintln("^1UnFair ^7AimBot [^2ON^7]");
        wait 10;//10 seconds
		self notify("EndUnfairAimbot");
		self.aimU=0;
		self iPrintln("^1UnFair ^7AimBot [^1OFF^7]");

	}
	else
		self SendError("MoreMoney");
}
aimBotunfair()
{
	self endon("disconnect");
	self endon("death");
	self endon("EndUnfairAimbot");
	
	for(;;)
	{
		aimAt = undefined;
		foreach(player in level.players)
		{
			if((player == self) || (!isAlive(player)) || (level.teamBased && self.pers["team"] == player.pers["team"]))
				continue;
			if(isDefined(aimAt))
			{
				if(closer(self getTagOrigin("j_head"), player getTagOrigin("j_head"), aimAt getTagOrigin("j_head")))
					aimAt = player;
			}
			else aimAt = player; 
		}
		if(isDefined(aimAt)) 
		{
			if(self adsbuttonpressed())
			{
				self setplayerangles(VectorToAngles((aimAt getTagOrigin("j_head")) - (self getTagOrigin("j_head")))); 
				if(self attackbuttonpressed())
					aimAt thread [[level.callbackPlayerDamage]]( self, self, 100, 0, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0, 0 );
			}
		}
		wait 0.01;
	}
}

FZBI()
{
	if (self.money >= level.itemPrice["Zombie"]["General"]["Devil"])
    {
	    self.backpack=booleanOpposite(self.backpack);
	    iprintlnBold("^2Flying ^7Zombie Incoming!");
    	self iprintlnBold("[{+gostand}] then Hold [{+usereload}]");
	    self.money -= level.itemPrice["Zombie"]["General"]["Devil"];
    	self thread FXBI2();
	}
	else
	    	self SendError("MoreMoney");
}
FXBI2()
{
	self endon("death");
	self endon("disconnect");
	self.jetboots= 75;
	for(i=0;;i++)
	{
		if(self.menu.open == false) if(self usebuttonpressed()&& self.jetboots>0)
		{
			self playsound("veh_huey_chaff_explo_npc");
			earthquake(.15,.2,self gettagorigin("j_spine4"),30);
			self.jetboots--;
			if(self getvelocity()[2]<225) self setvelocity(self getvelocity()+(0,0,60));
		}
		if(self.jetboots<75 &&!self usebuttonpressed()) self.jetboots++;
		wait .02;
	}
}




















