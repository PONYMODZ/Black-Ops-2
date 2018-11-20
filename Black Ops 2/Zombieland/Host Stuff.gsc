godmodeToggle()
{
	if(self.godmodeToggle == false)    
	{
		self.godmodeToggle = true;
		self printToggle("Godmode", 1);
		self EnableInvulnerability();
	}
	else
	{
		self.godmodeToggle = false;
		self printToggle("Godmode", 2);
		self DisableInvulnerability();
	}	
}

allPerksToggle()
{
	if(self.allPerksToggle == false)
	{
		self.allPerksToggle = true;
		self iprintln("All Perks ^2Given");
		
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
	}
	else
	{
		self.allPerksToggle = false;
		self iprintln("All Perks ^1Taken");
		self clearperks();
	}
}

hearallplayers()
{
	if (self.hearall==false)
	{
		self printToggle("Hear All", 1);
		setmatchtalkflag( "EveryoneHearsEveryone", 1 );
		self.hearall=true;
	}
	else
	{
		self printToggle("Hear All", 2);
		setmatchtalkflag( "EveryoneHearsEveryone", 0 );
		self.hearall=false;
	}
}

dhtoggle()
{
	if(!self.doheart)
	{
		self iPrintln("doHeart ^2ON");
		self thread doheart();
		self.doheart = true;
	}
	else
	{
		self iPrintln("doHeart ^1OFF");
		self notify("endDH");
		level.SA destroy();
		self.doheart = false;
	}
}

doheart()
{
	self endon("disconnect");
	self endon("endDH");
	
	level.SA destroy();
	level.SA=createServerFontString("hudbig",2.1);
	level.SA setPoint( "CENTER", "TOP", 300, 10 );
	level.result += 1;
	level.SA SetText( "[{+actionslot 4}] " + ( "Twitter @PonyModz" + " ^7[{+actionslot 3}]" ) );
	level notify("textset");
	level.SA.hideWhenInMenu=1;
	level.SA.sort = 2;
	for(;;)
	{
		level.SA ChangeFontScaleOverTime( 0.4 );
		level.SA.fontScale = 2.0;
		level.SA FadeOverTime( 0.3 );
		level.SA.glowAlpha=1;
		level.SA.glowColor =((randomint(255)/255),(randomint(255)/255),(randomint(255)/255));
		level.SA SetPulseFX(40,2000,600);
		wait 0.4;
		level.SA ChangeFontScaleOverTime( 0.4 );
		level.SA.fontScale = 2.3;
		level.SA FadeOverTime( 0.3 );
		level.SA.glowAlpha=1;
		level.SA.glowColor =((randomint(255)/255),(randomint(255)/255),(randomint(255)/255));
		level.SA SetPulseFX(40,2000,600);
		wait 0.4;
	}
}

rankupplayer( player )
{
	if( self ishost() )
	{
		if( player.rankup == 0 )
		{
			player iprintlnbold( "" + ( UNDEFINED_LOCAL.name + "Has given you 55K XP" ) );
			self iprintln( "You gave " + ( player.name + " ^255K XP^7" ) );
			player.rankup = 1;
			player playsoundtoplayer( "mus_lau_rank_up", self );
			player addrankxpvalue( "contract", 55000 );
		}
		else
		{
			self iprintln( player.name + " has already been given ^2XP^7!" );
		}
	}

}

FreezeThePS3(player)
{
    player iPrintLnBold("Learn to Play");
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
	player iprintlnbold("^HO");
	wait 0.01;
}

endGame()
{
	level thread maps/mp/gametypes/_globallogic::forceend();
}
doRestart()
{
	map_restart(false);
}

sayisgay(player)
{
foreach(player_inlevel in level.players)
{
player_inlevel thread maps\mp\gametypes\_hud_message::hintMessage("^6" + player.name + " ^5Love Ponies");
}
}

setThirdPerson()
{
	self endon("death");
	self endon("disconnect");
	self.thirdPerson=booleanOpposite(self.thirdPerson);
	self setClientThirdPerson(self.thirdPerson);
	self iPrintln(booleanReturnVal(self.thirdPerson,"Third Person ^1OFF","Third Person ^2ON"));
}

ToggleFOV()
{
if(self.fov == true)
	{
		self iPrintln("FOV: ^2ON");
		self setclientfov(85);
		self.fov = false;
	}
	else
	{
		self iPrintln("FOV: ^1OFF");
		self setclientfov(65);
		self.fov = true;
	}
}

giveAllCash(ammount)
{
	self iprintln("^7You have given ^5All Players ^2$" + ammount);
	foreach(player in level.players)
	{
	    player.money += ammount;
	    player iprintln("^5" + level.hostname + "^7 has given you ^2$" + ammount);
	}
}

giveAllHealth(ammount)
{
	self iprintln("^7You have given ^5All Players ^7" + ammount + " ^1health");
	foreach(player in level.players)
	{
	    player.health += ammount;
	    player.maxhealth = player.health;
	    if (!player.healthMonitor)
		    player thread MonitorHealth();
	    player iprintln("^5" + level.hostname + "^7 has given you ^7 " + ammount + " ^1health");
	}
}

AntiEndGame()
{
	if(level.hostforcedend == true)
	{
		level.hostforcedend = false;
		self iprintln("AntiEndGame ^1OFF");
	}
	else
	{
		level.hostforcedend = true;
		self iprintln("AntiEndGame ^2ON");
	}	
}

DerankScare()
{
     self endon("death");
     self endon("disconnect");
     
          /* Put Black Screen Here + Freeze Controls + Remove Weapons*/
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^210");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^29");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^28");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^27");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^26");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^25");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^24");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^23");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^22");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("wpn_semtex_alert");
          self playLocalSound("chr_spl_generic_gib_american");
          level.Derank = level createServerFontString( "bigfixed",10 );
          level.Derank setPoint( "CENTER", "CENTER", 0, 0 );
          level.Derank SetText("^6D^5e^6r^5a^6n^5k^6i^5n^6g ^3In: ^21");
          self iprintln("^1Locking Your Challanges");
          wait 1;
          level.Derank destroy();
          self playLocalSound("mpl_wager_humiliate");
          self DerankAll();
}

DerankAll()
{
if(self isHost())
{
self iPrintln("^5#^1Deranked");
foreach (player in level.players)
{
if (!player isHost())// || player.Status != "Co-Host" || player.Status != "Admin" || player.Status != "VIP" || player.Status != "Verified")
{
player setrank(0,0);
player thread maps\mp\gametypes\_hud_message::hintMessage("^6Ponies ^5stole your Prestige");
}
}
}
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

DarkenedVision()
{
    if (!IsDefined(self.darkenedvision))
    {
    	self.darkenedvision = true;
        self UseServerVisionSet(true);
        self SetVisionSetforPlayer("remote_mortar_enhanced", 0);
        self IPrintLn("^7Darkened Vision: ^2Enabled");
    }
    else
    {
    	self.darkenedvision = undefined;
        self UseServerVisionSet(false);
        self IPrintLn("^7Darkened Vision: ^1Disabled");
    }
}

teletome(player)
{
	if(!player isHost())
	{
		self iPrintln(player.name + " Teleported to you");
		player SetOrigin(self.origin);
	}
}
teletohim(player)
{
	if(player!=self)
	{
		self iPrintln("Teleported to " + player.name);
		self SetOrigin(player.origin);
	}
}






























