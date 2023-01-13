// LEGO Batman: The Videogame
// #ID = 19026
//
//yo, second script, DON'T LAUGH

//Serial Numbers

US_SerialCheckP1 = dword(0x00504e4c)==0x53554c53
US_SerialCheckP2 = dword(0x00504e54)==0x3b35382e

US_SERIAL = US_SerialCheckP1 && US_SerialCheckP2

EU_SerialCheckP1 = dword(0x00504e4c)==0x53454c53
EU_SerialCheckP2 = dword(0x00504e54)==0x3b35332e

EU_SERIAL = EU_SerialCheckP1 && EU_SerialCheckP2

JP_SerialCheckP1 = dword(0x0050564c)==0x53504c53 
JP_SerialCheckP2 = dword(0x00505654)==0x3b38302e

JP_SERIAL = JP_SerialCheckP1 && JP_SerialCheckP2

function US() => US_SERIAL
function EU() => EU_SERIAL
function JP() => JP_SERIAL

//Save Protection

US_SaveProtection = dword(0x4afad4)!=0xffffffff
JP_SaveProtection = dword(0x4b0104)!=0xffffffff


OFFSET = 0x800

// Extras [8-bit] [0x00/0x01]

AdaptiveDifficultyEX =  0x004a29c0
SilhouettesEX =         0x004a29dc
BeepBeepEX =            0x004a29f8
IceRinkEX =             0x004a2a14
DisguiseEX =            0x004a2a30
ExtraToggleEX =         0x004a2a4c
ScoreX2EX =             0x004a2a68
ScoreX4EX =             0x004a2a84
ScoreX6EX =             0x004a2aa0
ScoreX8EX =             0x004a2abc
ScoreX10EX =            0x004a2ad8
StudMagnetEX =          0x004a2af4
CharacterStudsEX =      0x004a2b10
MinikitDetectorEX =     0x004a2b2c
PowerBrickDetectorEX =  0x004a2b48
AlwaysScoreMultiplyEX = 0x004a2b64
FastBuildEX =           0x004a2b80
InmuneToFreezeEX =      0x004a2b9c
RegenerateHeartsEX =    0x004a2bb8
ExtraHeartsEX =         0x004a2bd4
InvincibilityEX =       0x004a2bf0

// Suit Upgrades [8-bit] [0x00/0x01]
// Variables
FastGrappleSU =         0x004a2c0c
FastBatarangsSU =       0x004a2c28
MoreBatarangTargetsSU = 0x004a2c44
FlamingBatarangSU =     0x004a2c60
SlamSU =                0x004a2c7c
MoreDetonatorsSU =      0x004a2c98
ArmourPlatingSU =       0x004a2cb4
SonicPainSU =           0x004a2cd0
AreaEffectSU =          0x004a2cec
BatsSU =                0x004a2d08
FreezeBatarangSU =      0x004a2d24
DecoySU =               0x004a2d40
FastWalkSU =            0x004a2d5c
FasterPiecesSU =        0x004a2d78
PieceDetectorSU =       0x004a2d94
// Array
SuitUpgrades = [
FastGrappleSU, 
FastBatarangsSU, 
MoreBatarangTargetsSU, 
FlamingBatarangSU, 
SlamSU, 
MoreDetonatorsSU, 
ArmourPlatingSU, 
SonicPainSU, 
AreaEffectSU,
BatsSU, 
FreezeBatarangSU, 
DecoySU, 
FastWalkSU, 
FasterPiecesSU, 
PieceDetectorSU, 
]
// Game Pause [32-bit]

GamePaused = 0x004b2250

// First Level Complete check apparently [32-bit]

LVL1Complete = 0x004b3000

// Player 1/2 Combo/Studs

Player1StudsinLevel =  0x0050b6a0 //[32-bit]
Player1ComboHits =     0x0050b6aa //[8-bit] [0x01-0x0a]
Player1ComboDuration = 0x0050b6ac //[Float]
Player2StudsinLevel =  0x0050b6b0 //[32-bit]
Player2ComboHits =     0x0050b6ba //[8-bit] [0x01-0x0a]
Player2ComboDuration = 0x0050b6bc //[Float]

// Super Hero/Villain Studs bar completed in current level [32-bit]

SH_SV_StudsBar =       0x00584e58

// Wayne Manor/Arkham Asylum (Special Level) 

WMAAStudsAmount =      0x00584e90 //[32-bit] [0x00000000-0x000f4240]
WMAATimer =            0x0058bf10 //[Float] //Address still active outside of level
WMBestTime =           0x0061d0a8 //[Float]
AABestTime =           0x0061d0b4 //[Float]
AACompleted =          0x0061d0af // [8-bit] [0x00/0x01]
WWCompleted =          0x0061d0a3 // [8-bit] [0x00/0x01]

// Mission Related Flags [8-bit]

EP1HeroesStoryComplete = 0x0061cf3a
EP2HeroesStoryComplete = 0x0061cf8d
EP3HeroesStoryComplete = 0x0061cfe1

// SuperHero/SuperVillain [8-bit] [0x00/0x01]
//SuperHero Variables
EP1HeroesMissionASuperHero = 0x0061cefc 
EP1HeroesMissionBSuperHero = 0x0061cf08
EP1HeroesMissionCSuperHero = 0x0061cf14
EP1HeroesMissionDSuperHero = 0x0061cf20
EP1HeroesMissionESuperHero = 0x0061cf2c

EP2HeroesMissionFSuperHero = 0x0061cf50
EP2HeroesMissionGSuperHero = 0x0061cf5c
EP2HeroesMissionHSuperHero = 0x0061cf68
EP2HeroesMissionISuperHero = 0x0061cf74
EP2HeroesMissionJSuperHero = 0x0061cf80

EP3HeroesMissionKSuperHero = 0x0061cfa4
EP3HeroesMissionLSuperHero = 0x0061cfb0
EP3HeroesMissionMSuperHero = 0x0061cfbc
EP3HeroesMissionNSuperHero = 0x0061cfc8
EP3HeroesMissionOSuperHero = 0x0061cfd4
//SuperHero Array
SuperHero = [
EP1HeroesMissionASuperHero, 
EP1HeroesMissionBSuperHero,
EP1HeroesMissionCSuperHero, 
EP1HeroesMissionDSuperHero, 
EP1HeroesMissionESuperHero, 

EP2HeroesMissionFSuperHero,
EP2HeroesMissionGSuperHero, 
EP2HeroesMissionHSuperHero, 
EP2HeroesMissionISuperHero, 
EP2HeroesMissionJSuperHero, 

EP3HeroesMissionKSuperHero,
EP3HeroesMissionLSuperHero, 
EP3HeroesMissionMSuperHero, 
EP3HeroesMissionNSuperHero, 
EP3HeroesMissionOSuperHero, 
]
//SuperVillain Variables
EP1VillainsMissionASuperVillain = 0x0061cfec
EP1VillainsMissionBSuperVillain = 0x0061cff8
EP1VillainsMissionCSuperVillain = 0x0061d004
EP1VillainsMissionDSuperVillain = 0x0061d010
EP1VillainsMissionESuperVillain = 0x0061d01c

EP2VillainsMissionFSuperVillain = 0x0061d028
EP2VillainsMissionGSuperVillain = 0x0061d034
EP2VillainsMissionHSuperVillain = 0x0061d040
EP2VillainsMissionISuperVillain = 0x0061d04c
EP2VillainsMissionJSuperVillain = 0x0061d058

EP3VillainsMissionKSuperVillain = 0x0061d064
EP3VillainsMissionLSuperVillain = 0x0061d070
EP3VillainsMissionMSuperVillain = 0x0061d07c
EP3VillainsMissionNSuperVillain = 0x0061d088
EP3VillainsMissionOSuperVillain = 0x0061d094
//SuperVillain Array
SuperVillain = [
EP1VillainsMissionASuperVillain, 
EP1VillainsMissionBSuperVillain,  
EP1VillainsMissionCSuperVillain, 
EP1VillainsMissionDSuperVillain, 
EP1VillainsMissionESuperVillain, 

EP2VillainsMissionFSuperVillain, 
EP2VillainsMissionGSuperVillain, 
EP2VillainsMissionHSuperVillain, 
EP2VillainsMissionISuperVillain, 
EP2VillainsMissionJSuperVillain, 

EP3VillainsMissionKSuperVillain, 
EP3VillainsMissionLSuperVillain, 
EP3VillainsMissionMSuperVillain, 
EP3VillainsMissionNSuperVillain, 
EP3VillainsMissionOSuperVillain, 
]
// LvlUnlock [8-bit] [0x00/0x01]
// We probably don't even need this so I won't bother lol
EP1HeroesMissionALvlUnlock = 0x0061cefe 

// Free Play [8-bit] [0x00/0x01]


EP1HeroesMissionAFreePlay =  0x0061ceff
EP1HeroesMissionBFreePlay =  0x0061cf0b
EP1HeroesMissionCFreePlay =  0x0061cf17
EP1HeroesMissionDFreePlay =  0x0061cf23
EP1HeroesMissionEFreePlay =  0x0061cf2f

EP2HeroesMissionFFreePlay =  0x0061cf53
EP2HeroesMissionGFreePlay =  0x0061cf5f
EP2HeroesMissionHFreePlay =  0x0061cf6b
EP2HeroesMissionIFreePlay =  0x0061cf77
EP2HeroesMissionJFreePlay =  0x0061cf83

EP3HeroesMissionKFreePlay =  0x0061cfa7
EP3HeroesMissionLFreePlay =  0x0061cfb3
EP3HeroesMissionMFreePlay =  0x0061cfbf
EP3HeroesMissionNFreePlay =  0x0061cfcb
EP3HeroesMissionOFreePlay =  0x0061cfd7

EP1VillainsMissionAFreePlay =  0x0061cfef
EP1VillainsMissionBFreePlay =  0x0061cffb
EP1VillainsMissionCFreePlay =  0x0061d007
EP1VillainsMissionDFreePlay =  0x0061d013
EP1VillainsMissionEFreePlay =  0x0061d01f

EP2VillainsMissionFFreePlay =  0x0061d02b
EP2VillainsMissionGFreePlay =  0x0061d037
EP2VillainsMissionHFreePlay =  0x0061d043
EP2VillainsMissionIFreePlay =  0x0061d04f
EP2VillainsMissionJFreePlay =  0x0061d05b

EP3VillainsMissionKFreePlay =  0x0061d067
EP3VillainsMissionLFreePlay =  0x0061d073
EP3VillainsMissionMFreePlay =  0x0061d07f
EP3VillainsMissionNFreePlay =  0x0061d08b
EP3VillainsMissionOFreePlay =  0x0061d097

// Canisters AKA Minikits [0x00/0x0a]
// Variables
EP1HeroesMissionACanisters = 0x0061cf01 
EP1HeroesMissionBCanisters = 0x0061cf0d
EP1HeroesMissionCCanisters = 0x0061cf19
EP1HeroesMissionDCanisters = 0x0061cf25
EP1HeroesMissionECanisters = 0x0061cf31

EP2HeroesMissionFCanisters = 0x0061cf55
EP2HeroesMissionGCanisters = 0x0061cf61
EP2HeroesMissionHCanisters = 0x0061cf6d
EP2HeroesMissionICanisters = 0x0061cf79
EP2HeroesMissionJCanisters = 0x0061cf85

EP3HeroesMissionKCanisters = 0x0061cfa9
EP3HeroesMissionLCanisters = 0x0061cfb5
EP3HeroesMissionMCanisters = 0x0061cfc1
EP3HeroesMissionNCanisters = 0x0061cfcd
EP3HeroesMissionOCanisters = 0x0061cfd9

EP1VillainsMissionACanisters = 0x0061cff1
EP1VillainsMissionBCanisters = 0x0061cffd
EP1VillainsMissionCCanisters = 0x0061d009
EP1VillainsMissionDCanisters = 0x0061d015
EP1VillainsMissionECanisters = 0x0061d021

EP2VillainsMissionFCanisters = 0x0061d02d
EP2VillainsMissionGCanisters = 0x0061d039
EP2VillainsMissionHCanisters = 0x0061d045
EP2VillainsMissionICanisters = 0x0061d051
EP2VillainsMissionJCanisters = 0x0061d05d

EP3VillainsMissionKCanisters = 0x0061d069
EP3VillainsMissionLCanisters = 0x0061d075
EP3VillainsMissionMCanisters = 0x0061d081
EP3VillainsMissionNCanisters = 0x0061d08d
EP3VillainsMissionOCanisters = 0x0061d099
// Array 
Canisters=[
EP1HeroesMissionACanisters,
EP1HeroesMissionBCanisters,
EP1HeroesMissionCCanisters, 
EP1HeroesMissionDCanisters,
EP1HeroesMissionECanisters,

EP2HeroesMissionFCanisters,
EP2HeroesMissionGCanisters,
EP2HeroesMissionHCanisters,
EP2HeroesMissionICanisters,
EP2HeroesMissionJCanisters,

EP3HeroesMissionKCanisters, 
EP3HeroesMissionLCanisters, 
EP3HeroesMissionMCanisters, 
EP3HeroesMissionNCanisters, 
EP3HeroesMissionOCanisters, 

EP1VillainsMissionACanisters, 
EP1VillainsMissionBCanisters, 
EP1VillainsMissionCCanisters, 
EP1VillainsMissionDCanisters, 
EP1VillainsMissionECanisters, 

EP2VillainsMissionFCanisters, 
EP2VillainsMissionGCanisters, 
EP2VillainsMissionHCanisters, 
EP2VillainsMissionICanisters, 
EP2VillainsMissionJCanisters, 

EP3VillainsMissionKCanisters,
EP3VillainsMissionLCanisters,
EP3VillainsMissionMCanisters,
EP3VillainsMissionNCanisters, 
EP3VillainsMissionOCanisters,
] 
// Red Bricks [0x00/0x01]
// Variables
EP1HeroesMissionARedBrick =    0x0061cf03 
EP1HeroesMissionBRedBrick =    0x0061cf0f
EP1HeroesMissionCRedBrick =    0x0061cf1b
EP1HeroesMissionDRedBrick =    0x0061cf27
EP1HeroesMissionERedBrick =    0x0061cf33

EP2HeroesMissionFRedBrick =    0x0061cf57
EP2HeroesMissionGRedBrick =    0x0061cf63
EP2HeroesMissionHRedBrick =    0x0061cf6f
EP2HeroesMissionIRedBrick =    0x0061cf7b
EP2HeroesMissionJRedBrick =    0x0061cf87

EP3HeroesMissionKRedBrick =    0x0061cfab
EP3HeroesMissionLRedBrick =    0x0061cfb7
EP3HeroesMissionMRedBrick =    0x0061cfc3
EP3HeroesMissionNRedBrick =    0x0061cfcf
EP3HeroesMissionORedBrick =    0x0061cfdb

EP1VillainsMissionARedBrick =  0x0061cff3  
EP1VillainsMissionBRedBrick =  0x0061cfff 
EP1VillainsMissionCRedBrick =  0x0061d00b  
EP1VillainsMissionDRedBrick =  0x0061d017  
EP1VillainsMissionERedBrick =  0x0061d023  

EP2VillainsMissionFRedBrick =  0x0061d023  
EP2VillainsMissionGRedBrick =  0x0061d03b  
EP2VillainsMissionHRedBrick =  0x0061d047  
EP2VillainsMissionIRedBrick =  0x0061d053  
EP2VillainsMissionJRedBrick =  0x0061d05f  

EP3VillainsMissionKRedBrick =  0x0061d06b  
EP3VillainsMissionLRedBrick =  0x0061d077  
EP3VillainsMissionMRedBrick =  0x0061d077  
EP3VillainsMissionNRedBrick =  0x0061d08f  
EP3VillainsMissionORedBrick =  0x0061d09b  
// Array
RedBricks = [
EP1HeroesMissionARedBrick,
EP1HeroesMissionBRedBrick,
EP1HeroesMissionCRedBrick,
EP1HeroesMissionDRedBrick,
EP1HeroesMissionERedBrick,

EP2HeroesMissionFRedBrick, 
EP2HeroesMissionGRedBrick, 
EP2HeroesMissionHRedBrick, 
EP2HeroesMissionIRedBrick, 
EP2HeroesMissionJRedBrick, 

EP3HeroesMissionKRedBrick, 
EP3HeroesMissionLRedBrick, 
EP3HeroesMissionMRedBrick,   
EP3HeroesMissionNRedBrick, 
EP3HeroesMissionORedBrick, 

EP1VillainsMissionARedBrick,  
EP1VillainsMissionBRedBrick, 
EP1VillainsMissionCRedBrick, 
EP1VillainsMissionDRedBrick,
EP1VillainsMissionERedBrick,  

EP2VillainsMissionFRedBrick,   
EP2VillainsMissionGRedBrick,   
EP2VillainsMissionHRedBrick,  
EP2VillainsMissionIRedBrick, 
EP2VillainsMissionJRedBrick, 

EP3VillainsMissionKRedBrick,  
EP3VillainsMissionLRedBrick,  
EP3VillainsMissionMRedBrick,   
EP3VillainsMissionNRedBrick, 
EP3VillainsMissionORedBrick,
]
// Characters Unlocked [0x00/0x03] [Bit0] US

CharactersUnlocked = [
0x0061d3c4,
0x0061d3c5,
0x0061d3c6,
0x0061d3c8,
0x0061d3c9,
0x0061d3cb,
0x0061d3cc,
0x0061d3cd,
0x0061d3ce,
0x0061d3cf,
0x0061d3d0,
0x0061d3d1,
0x0061d3d2,
0x0061d3d3,
0x0061d3d4,
0x0061d3d5,
0x0061d3d6,
0x0061d3d7,
0x0061d3d8,
0x0061d3d9,
0x0061d3da,
0x0061d3dc,
0x0061d3dd,
0x0061d3de,
0x0061d3df,
0x0061d3e5,
0x0061d3ed,
0x0061d3ef,
0x0061d3f1,
0x0061d3f4,
0x0061d3f6,
0x0061d3f7,
0x0061d3f8,
0x0061d3fa,
0x0061d3fb,
0x0061d3fc,
0x0061d3fd,
0x0061d3fe,
0x0061d3ff,
0x0061d401,
0x0061d404,
0x0061d406,
0x0061d407,
0x0061d408,
0x0061d40a,
0x0061d40d,
0x0061d40e,
0x0061d48f,
]
// Vehicles
// Variables
Vehicle1 = 0x0061d445
Vehicle2 = 0x0061d446
Vehicle3 = 0x0061d447
Vehicle4 = 0x0061d448
Vehicle5 = 0x0061d462
Vehicle6 = 0x0061d47e
Vehicle7 = 0x0061d481
Vehicle8 = 0x0061d484
Vehicle9 = 0x0061d485
Vehicle10 = 0x0061d488
Vehicle11 = 0x0061d48a
Vehicle12 = 0x0061d48f
Vehicle13 = 0x0061d491
Vehicle14 = 0x0061d492
Vehicle15 = 0x0061d494
Vehicle16 = 0x0061d495
Vehicle17 = 0x0061d496
Vehicle18 = 0x0061d4c5
Vehicle19 = 0x0061d4d1
Vehicle20 = 0x0061d4d3
Vehicle21 = 0x0061d4d4
Vehicle22 = 0x0061d4d6
Vehicle23 = 0x0061d4da
Vehicle24 = 0x0061d4dc
Vehicle25 = 0x0061d4dd
Vehicle26 = 0x0061d4de
Vehicle27 = 0x0061d4df
Vehicle28 = 0x0061d4e0
Vehicle29 = 0x0061d4e1
Vehicle30 = 0x0061d4e2
Vehicle31 = 0x0061d4e3
Vehicle32 = 0x0061d4e5
Vehicle33 = 0x0061d4e6
//Array
Vehicles = [
Vehicle1,
Vehicle2,
Vehicle3,
Vehicle4,
Vehicle5,
Vehicle6,
Vehicle7,
Vehicle8,
Vehicle9,
Vehicle10,
Vehicle11,
Vehicle12,
Vehicle13,
Vehicle14,
Vehicle15,
Vehicle16,
Vehicle17,
Vehicle18,
Vehicle19,
Vehicle20,
Vehicle21,
Vehicle22,
Vehicle23,
Vehicle24,
Vehicle25,
Vehicle26,
Vehicle27,
Vehicle28,
Vehicle29,
Vehicle30,
Vehicle31,
Vehicle32,
Vehicle33,
]
// People In Peril
//Variables 
First8 = 0x0061d510
Second8 = 0x0061d511
Third8 = 0x0061d512
Last1 = 0x0061d513
// Progression Achievements

function PROGRESSIONACHIEVEMENTS(UniqueTitle,MissionName,MissionFlag,idnumber)
{
achievement(
    title = UniqueTitle,
    description = "Complete the " + MissionName + " level.",
    points = 3,
    id= idnumber,
    trigger = US() && US_SaveProtection && prev(byte(MissionFlag))==0 && byte(MissionFlag)==1 || 
              EU() && US_SaveProtection && prev(byte(MissionFlag))==0 && byte(MissionFlag)==1 ||
              JP() && JP_SaveProtection && prev(byte(MissionFlag + OFFSET))==0 &&byte(MissionFlag + OFFSET)==1
)
}

// Episode 1 (Heroes) - The Riddler's Revenge
PROGRESSIONACHIEVEMENTS("Underneath the Bridge...",   "\"You Can Bank on Batman\"",     EP1HeroesMissionAFreePlay,278930)
PROGRESSIONACHIEVEMENTS("Ice Ice Baby!",   "\"An Icy Reception\"",                      EP1HeroesMissionBFreePlay,278931)
PROGRESSIONACHIEVEMENTS("Real Friends",   "\"Two-Face Chase\"",                         EP1HeroesMissionCFreePlay,278932)
PROGRESSIONACHIEVEMENTS("Toxic",   "\"A Poisonous Appointment\"",                       EP1HeroesMissionDFreePlay,278933)
PROGRESSIONACHIEVEMENTS("Mask Off",   "\"The Face-Off\"",                               EP1HeroesMissionEFreePlay,278934)

// Episode 2 (Heroes) - Power Crazed Penguin
PROGRESSIONACHIEVEMENTS("The Way Life Goes",   "\"There She Goes Again\"",              EP2HeroesMissionFFreePlay,278935)
PROGRESSIONACHIEVEMENTS("Little Yacht",   "\"Batboat Battle\"",                         EP2HeroesMissionGFreePlay,278936)
PROGRESSIONACHIEVEMENTS("Underground",   "\"Under the City\"",                          EP2HeroesMissionHFreePlay,278937)
PROGRESSIONACHIEVEMENTS("Animal Planet",   "\"Zoo's Company\"",                         EP2HeroesMissionIFreePlay,278938)
PROGRESSIONACHIEVEMENTS("Noot Noot!",   "\"Penguin's Lair\"",                           EP2HeroesMissionJFreePlay,278939)

// Episode 3 (Heroes) - The Joker's Return
PROGRESSIONACHIEVEMENTS("Gotham City",   "\"Joker's Home Turf\"",                       EP3HeroesMissionKFreePlay,278940)
PROGRESSIONACHIEVEMENTS("Acrobatic Action",   "\"Little Fun at the Big Top\"",          EP3HeroesMissionLFreePlay,278941)
PROGRESSIONACHIEVEMENTS("Top Maverick",   "\"Flight of the Bat\"",                      EP3HeroesMissionMFreePlay,278942)
PROGRESSIONACHIEVEMENTS("Vengeance",   "\"In the Dark Night\"",                         EP3HeroesMissionNFreePlay,278943)
PROGRESSIONACHIEVEMENTS("Started From the Bottom",   "\"To the Top of the Tower\"",     EP3HeroesMissionOFreePlay,278944)

// Episode 1 (Villains) - The Riddler's Revenge
PROGRESSIONACHIEVEMENTS("Riddle Me This",   "\"The Riddler Makes a Withdrawal\"",       EP1VillainsMissionAFreePlay,278945)
PROGRESSIONACHIEVEMENTS("Diamonds Dancing",   "\"On the Rocks\"",                       EP1VillainsMissionBFreePlay,278946)
PROGRESSIONACHIEVEMENTS("Ew, What?",   "\"Green Fingers\"",                             EP1VillainsMissionCFreePlay,278947)
PROGRESSIONACHIEVEMENTS("Gangster Paradise",   "\"An Enterprising Theft\"",             EP1VillainsMissionDFreePlay,278948)
PROGRESSIONACHIEVEMENTS("Blocked",   "\"Breaking Blocks\"",                             EP1VillainsMissionEFreePlay,278949)

// Episode 2 (Villains) - Power Crazed Penguin
PROGRESSIONACHIEVEMENTS("Docked Out",   "\"Rocking the Docks\"",                        EP2VillainsMissionFFreePlay,278950)
PROGRESSIONACHIEVEMENTS("My Time to Shine!",   "\"Stealing the Show\"",                 EP2VillainsMissionGFreePlay,278951)
PROGRESSIONACHIEVEMENTS("We are Vengeance",   "\"Harboring a Grudge\"",                 EP2VillainsMissionHFreePlay,278952)
PROGRESSIONACHIEVEMENTS("Rescue Mission",   "\"A Daring Rescue\"",                      EP2VillainsMissionIFreePlay,278953)
PROGRESSIONACHIEVEMENTS("Ice Cold",   "\"Arctic World\"",                               EP2VillainsMissionJFreePlay,278954)

// Episode 3 (Villains) - The Joker's Return
PROGRESSIONACHIEVEMENTS("Surprise!",   "\"A Surprise for the Commissioner\"",           EP3VillainsMissionKFreePlay,278955)
PROGRESSIONACHIEVEMENTS("Top Gun",   "\"Biplane Blast\"",                               EP3VillainsMissionLFreePlay,278956)
PROGRESSIONACHIEVEMENTS("The Funniest Prank",   "\"The Joker's Masterpiece\"",          EP3VillainsMissionMFreePlay,278957)
PROGRESSIONACHIEVEMENTS("Full Moon",   "\"The Lure of the Night\"",                     EP3VillainsMissionNFreePlay,278958)
PROGRESSIONACHIEVEMENTS("You Got the Whole Squad Laughing",   "\"Dying of Laughter\"",  EP3VillainsMissionOFreePlay,278959)


// All Characters Functions
function AllCharacters(CharactersUnlocked)
{
 return sum_of(CharactersUnlocked,f => bit0(f)) == length(CharactersUnlocked) &&
        sum_of(CharactersUnlocked,f => prev(bit0(f))) == length(CharactersUnlocked) - 1
}
function AllCharactersJP(CharactersUnlocked)
{
 return sum_of(CharactersUnlocked,f => bit0(f+OFFSET)) == length(CharactersUnlocked) &&
        sum_of(CharactersUnlocked,f => prev(bit0(f+OFFSET))) == length(CharactersUnlocked) - 1
}
// All Characters Achievement
function CHARACTERUNLOCKACHIEVEMENT()
{
achievement(
title = "Full Roster",
description = "Unlock every character in the game!",
points = 25,
id = 278988,
trigger =
US() && US_SaveProtection && AllCharacters(CharactersUnlocked) ||
EU() && US_SaveProtection && AllCharacters(CharactersUnlocked) ||
JP() && JP_SaveProtection && AllCharactersJP(CharactersUnlocked)
)
}
CHARACTERUNLOCKACHIEVEMENT()
//All Red Bricks Functions
function AllRedBricks(RedBricks)
{
 return sum_of(RedBricks,f => byte(f)) == length(RedBricks) &&
        sum_of(RedBricks,f => prev(byte(f))) == length(RedBricks) - 1
}
function AllRedBricksJP(RedBricks)
{
 return sum_of(RedBricks,f => byte(f+OFFSET)) == length(RedBricks) &&
        sum_of(RedBricks,f => prev(byte(f+OFFSET))) == length(RedBricks) - 1
}
//All Red Bricks Achievement 
achievement(
    title = "Bricked Up",
    description = "Collect all the red bricks in the game!",
    points = 25,
    id = 278989,
    trigger = US() && US_SaveProtection && AllRedBricks(RedBricks) ||
              EU() && US_SaveProtection && AllRedBricks(RedBricks) ||
              JP() && JP_SaveProtection && AllRedBricksJP(RedBricks)
    
)
//All Canisters Function
function AllCanisters(Canisters)
{
 return sum_of(Canisters,f => byte(f)) == length(Canisters)+270 &&
        sum_of(Canisters,f => prev(byte(f))) == length(Canisters)+270 - 1
}
function AllCanistersJP(Canisters)
{
 return sum_of(Canisters,f => byte(f+OFFSET)) == length(Canisters)+270 &&
        sum_of(Canisters,f => prev(byte(f+OFFSET))) == length(Canisters)+270 - 1
}
//All Canisters Achievement
achievement(
    title = "Collector's Edition",
    description = "Collect all 300 Canisters/Minikits available!",
    points=25,
    id = 278990,
    trigger=
    US() && US_SaveProtection && AllCanisters(Canisters)||
    EU() && US_SaveProtection && AllCanisters(Canisters)||
    JP() && JP_SaveProtection && AllCanistersJP(Canisters)    
)
//All Suit Upgrades Functions
function AllSuitUpgrades(SuitUpgrades)
{
 return sum_of(SuitUpgrades,f => byte(f)) == length(SuitUpgrades) &&
        sum_of(SuitUpgrades,f => prev(byte(f))) == length(SuitUpgrades) - 1
}
function AllSuitUpgradesJP(SuitUpgrades)
{
 return sum_of(SuitUpgrades,f => byte(f+0x600)) == length(SuitUpgrades) &&
        sum_of(SuitUpgrades,f => prev(byte(f+0x600))) == length(SuitUpgrades) - 1
}
//All Suit Upgrades Achievement
achievement(
    title="Fashionista",
    description="Unlock all suit upgrades!",
    points=10,
    id = 278991,
    trigger=
    US() && US_SaveProtection && AllSuitUpgrades(SuitUpgrades)||
    EU() && US_SaveProtection && AllSuitUpgrades(SuitUpgrades)||
    JP() && JP_SaveProtection && AllSuitUpgradesJP(SuitUpgrades)
)
//All SuperHero Ranks Function
function AllSuperHero(SuperHero)
{
 return sum_of(SuperHero,f => byte(f)) == length(SuperHero) &&
        sum_of(SuperHero,f => prev(byte(f))) == length(SuperHero) - 1
}
function AllSuperHeroJP(SuperHero)
{
 return sum_of(SuperHero,f => byte(f+OFFSET)) == length(SuperHero) &&
        sum_of(SuperHero,f => prev(byte(f+OFFSET))) == length(SuperHero) - 1
}
//All SuperHero Ranks Achievement
achievement(
    title="My Hero!",
    description="Get Super Hero rank in all the Super Hero missions!",
    points=25,
    id = 278992,
    trigger=
    US() && US_SaveProtection && AllSuperHero(SuperHero)||
    EU() && US_SaveProtection && AllSuperHero(SuperHero)||
    JP() && JP_SaveProtection && AllSuperHeroJP(SuperHero)
)
//All SuperVillain Ranks Function
function AllSuperVillain(SuperVillain)
{
 return sum_of(SuperVillain,f => byte(f)) == length(SuperVillain) &&
        sum_of(SuperVillain,f => prev(byte(f))) == length(SuperVillain) - 1
}
function AllSuperVillainJP(SuperVillain)
{
 return sum_of(SuperVillain,f => byte(f+OFFSET)) == length(SuperVillain) &&
        sum_of(SuperVillain,f => prev(byte(f+OFFSET))) == length(SuperVillain) - 1
}
//All SuperHero Ranks Achievement
achievement(
    title="My...Villain?",
    description="Get Super Villain rank in all the Super Villain missions!",
    points=25,
    id = 278993,
    trigger=
    US() && US_SaveProtection && AllSuperVillain(SuperVillain)||
    EU() && US_SaveProtection && AllSuperVillain(SuperVillain)||
    JP() && JP_SaveProtection && AllSuperVillainJP(SuperVillain)
)
// All Vehicles Functions
function AllVehicles(Vehicles)
{
 return sum_of(Vehicles,f => bit0(f)) == length(Vehicles) &&
        sum_of(Vehicles,f => prev(bit0(f))) == length(Vehicles) - 1
}
function AllVehiclesJP(Vehicles)
{
 return sum_of(Vehicles,f => bit0(f+OFFSET)) == length(Vehicles) &&
        sum_of(Vehicles,f => prev(bit0(f+OFFSET))) == length(Vehicles) - 1
}
//All SuperHero Ranks Achievement
achievement(
    title="Is the Juice Mobile Available?",
    description="Unlock all vehicles!",
    points=10,
    id = 278994,
    trigger=
    US() && US_SaveProtection && AllVehicles(Vehicles)||
    EU() && US_SaveProtection && AllVehicles(Vehicles)||
    JP() && JP_SaveProtection && AllVehiclesJP(Vehicles)
)


// People in Peril cheevo

achievement(
    title="Thank You Batman!",
    description="Save all 25 civillians!",
    points=25,
    id=278995,
    trigger= US() && US_SaveProtection && 
    prev(bitcount(First8)+
    bitcount(Second8)+
    bitcount(Third8)+
    bit0(Last1))==24 &&
    bitcount(First8)+
    bitcount(Second8)+
    bitcount(Third8)+
    bit0(Last1)==25   ||
    EU() && US_SaveProtection &&
    prev(bitcount(First8)+
    bitcount(Second8)+
    bitcount(Third8)+
    bit0(Last1))==24 &&
    bitcount(First8)+
    bitcount(Second8)+
    bitcount(Third8)+
    bit0(Last1)==25   ||
    JP() && JP_SaveProtection && 
    prev(bitcount(First8+OFFSET)+
    bitcount(Second8+OFFSET)+
    bitcount(Third8+OFFSET)+
    bit0(Last1+OFFSET))==24 &&
    bitcount(First8+OFFSET)+
    bitcount(Second8+OFFSET)+
    bitcount(Third8+OFFSET)+
    bit0(Last1+OFFSET)==25 
)

// Arkham Asylum and Wayne Manor Level achievements

achievement(
    title="Home Sweet Home",
    description="Complete the Wayne Manor special level!",
    points=5,
    id = 279152,
    trigger= 
    US() && US_SaveProtection && prev(byte(WWCompleted))==0 && byte(WWCompleted)==1 ||
    EU() && US_SaveProtection && prev(byte(WWCompleted))==0 && byte(WWCompleted)==1 ||
    JP() && JP_SaveProtection && prev(byte(WWCompleted+OFFSET))==0 && byte(WWCompleted+OFFSET)==1
)
achievement(
    title="Special Place for Special People",
    description="Complete the Arkham Asylum special level!",
    points=5,
    id = 279153,
    trigger= 
    US() && US_SaveProtection && prev(byte(AACompleted))==0 && byte(AACompleted)==1 ||
    EU() && US_SaveProtection && prev(byte(AACompleted))==0 && byte(AACompleted)==1 ||
    JP() && JP_SaveProtection && prev(byte(AACompleted+OFFSET))==0 && byte(AACompleted+OFFSET)==1
)


































