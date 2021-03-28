//---------------------------------------------------------------------------------------
//  FILE:   XComDownloadableContentInfo_WOTC_StartWithHeroWeapons.uc                                    
//           
//	Use the X2DownloadableContentInfo class to specify unique mod behavior when the 
//  player creates a new campaign or loads a saved game.
//  
//---------------------------------------------------------------------------------------
//  Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------

class X2DownloadableContentInfo_WOTC_StartWithHeroWeapons extends X2DownloadableContentInfo;


static event OnLoadedSavedGame(){}


static event InstallNewCampaign(XComGameState StartState){}

static event OnPostTemplatesCreated()
{
	local X2ItemTemplateManager				AllItems;			//holder for all items
	
	local X2ItemTemplate					CurrentItem;		//current thing to focus on
	local X2WeaponTemplate					CurrentWeapon;		//current thing to focus on
	local X2PairedWeaponTemplate			CurrentShard;		//current thing to focus on

	AllItems			= class'X2ItemTemplateManager'.static.GetItemTemplateManager();

	// Allow Templar Gauntlets
	CurrentItem = AllItems.FindItemTemplate('ShardGauntlet_CV');
	CurrentShard = X2PairedWeaponTemplate (CurrentItem);
	if (CurrentShard != none)
	{
		CurrentShard.StartingItem = true;
	}

	// Allow Auto-Pistols
	CurrentItem = AllItems.FindItemTemplate('Sidearm_CV');
	CurrentWeapon = X2WeaponTemplate (CurrentItem);
	if (CurrentWeapon != none)
	{
		CurrentWeapon.StartingItem = true;
	}

	// Allow Ripjacks
	CurrentItem = AllItems.FindItemTemplate('WristBlade_CV');
	CurrentShard = X2PairedWeaponTemplate (CurrentItem);
	if (CurrentShard != none)
	{
		CurrentShard.StartingItem = true;
	}

	// Allow Bullpups
	CurrentItem = AllItems.FindItemTemplate('Bullpup_CV');
	CurrentWeapon = X2WeaponTemplate (CurrentItem);
	if (CurrentWeapon != none)
	{
		CurrentWeapon.StartingItem = true;
	}

	// Allow Vektors
	CurrentItem = AllItems.FindItemTemplate('VektorRifle_CV');
	CurrentWeapon = X2WeaponTemplate (CurrentItem);
	if (CurrentWeapon != none)
	{
		CurrentWeapon.StartingItem = true;
	}

	// Allow Claymore - even if it is a dummy weapon
	CurrentItem = AllItems.FindItemTemplate('Reaper_Claymore');
	CurrentWeapon = X2WeaponTemplate (CurrentItem);
	if (CurrentWeapon != none)
	{
		CurrentWeapon.StartingItem = true;
	}
}