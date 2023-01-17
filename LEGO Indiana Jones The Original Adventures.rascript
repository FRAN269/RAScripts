// LEGO Indiana Jones: The Original Adventures
// #ID = 20675
// third script, wahoo!
// i got better between the last two hopefully this is readable 
// for whoever is reading this in the future
// also hi 


// Save Protection
SaveProtection= dword(0x00496568)!=0xffffffff
// Cheat Protection
Extras = [
    0x0048682c,
    0x00486844,
    0x0048685c,
    0x00486874,
    0x0048688c,
    0x004868a4,
    0x004868bc,
    0x004868d4,
    0x004868ec,
    0x00486904,
    0x0048691c,
    0x00486934,
    0x0048694c,
    0x00486964,
    0x0048697c,
    0x00486994,
    0x004869ac,
    0x004869c4,
]
function EXTRAS(Extras)
{
    return sum_of(Extras,f => byte(f)) >= 1
}
// Level ID 
Level1=dword(0x00496568)!=1
Level2=dword(0x00496568)!=2
Level3=dword(0x00496568)!=3
Level4=dword(0x00496568)!=4
Level5=dword(0x00496568)!=5
Level6=dword(0x00496568)!=6
Level7=dword(0x00496568)!=8
Level8=dword(0x00496568)!=9
Level9=dword(0x00496568)!=10
Level10=dword(0x00496568)!=11
Level11=dword(0x00496568)!=12
Level12=dword(0x00496568)!=13
Level13=dword(0x00496568)!=15
Level14=dword(0x00496568)!=16
Level15=dword(0x00496568)!=17
Level16=dword(0x00496568)!=18
Level17=dword(0x00496568)!=19
Level18=dword(0x00496568)!=20

// Free Play Flags AKA what i'm gonna use for regular progression achievements
// Variables
Mission1 =  0x004f691f
Mission2 =  0x004f692f
Mission3 =  0x004f693f
Mission4 =  0x004f694f
Mission5 =  0x004f695f
Mission6 =  0x004f696f
Mission7 =  0x004f698f
Mission8 =  0x004f699f
Mission9 =  0x004f69af
Mission10 = 0x004f69bf
Mission11 = 0x004f69cf
Mission12 = 0x004f69df
Mission13 = 0x004f69ff
Mission14 = 0x004f6a0f
Mission15 = 0x004f6a1f
Mission16 = 0x004f6a2f
Mission17 = 0x004f6a3f
Mission18 = 0x004f6a4f
// Array
Missions = [
Mission1,
Mission2,
Mission3,
Mission4,
Mission5,
Mission6,
Mission7,
Mission8,
Mission9,
Mission10,
Mission11,
Mission12,
Mission13,
Mission14,
Mission15,
Mission16,
Mission17,
Mission18,
]
// Special Levels
YoungIndy =    0x004f6a6f
AncientCity = 0x004f6a7f
Warehouse =    0x004f6a8f
// Treasures 
// Variables
Mission1T=0x004f6921
Mission2T=0x004f6931
Mission3T=0x004f6941
Mission4T=0x004f6951
Mission5T=0x004f6961
Mission6T=0x004f6971
Mission7T=0x004f6991
Mission8T=0x004f69a1
Mission9T=0x004f69b1
Mission10T=0x004f69c1
Mission11T=0x004f69d1
Mission12T=0x004f69e1
Mission13T=0x004f6a01
Mission14T=0x004f6a11
Mission15T=0x004f6a21
Mission16T=0x004f6a31
Mission17T=0x004f6a41
Mission18T=0x004f6a51
// Array
Treasures = [
Mission1T,
Mission2T,
Mission3T,
Mission4T,
Mission5T,
Mission6T,
Mission7T,
Mission8T,
Mission9T,
Mission10T,
Mission11T,
Mission12T,
Mission13T,
Mission14T,
Mission15T,
Mission16T,
Mission17T,
Mission18T,
]
// Red Bricks
// Variables
Mission1RB=0x004f6923
Mission2RB=0x004f6933
Mission3RB=0x004f6943
Mission4RB=0x004f6953
Mission5RB=0x004f6963
Mission6RB=0x004f6973
Mission7RB=0x004f6993
Mission8RB=0x004f69a3
Mission9RB=0x004f69b3
Mission10RB=0x004f69c3
Mission11RB=0x004f69d3
Mission12RB=0x004f69e3
Mission13RB=0x004f6a03
Mission14RB=0x004f6a13
Mission15RB=0x004f6a23
Mission16RB=0x004f6a33
Mission17RB=0x004f6a43
Mission18RB=0x004f6a53
// Array
RedParcels =[
Mission1RB,
Mission2RB,
Mission3RB,
Mission4RB,
Mission5RB,
Mission6RB,
Mission7RB,
Mission8RB,
Mission9RB,
Mission10RB,
Mission11RB,
Mission12RB,
Mission13RB,
Mission14RB,
Mission15RB,
Mission16RB,
Mission17RB,
Mission18RB,
]
// Extras Purchased
Extras1=bit1(0x004f6e04)+bit2(0x004f6e04)+bit3(0x004f6e04)+bit4(0x004f6e04)+bit5(0x004f6e04)+bit6(0x004f6e04)+bit7(0x004f6e04)
Extras2=bitcount(0x004f6e05)
Extras3=bitcount(0x004f6e06)
Extras4=bit0(0x004f6e07)
// True Adventurer
// Variables
Mission1TA=0x004f691c
Mission2TA=0x004f692c
Mission3TA=0x004f693c
Mission4TA=0x004f694c
Mission5TA=0x004f695c
Mission6TA=0x004f696c
Mission7TA=0x004f698c
Mission8TA=0x004f699c
Mission9TA=0x004f69ac
Mission10TA=0x004f69bc
Mission11TA=0x004f69cc
Mission12TA=0x004f69dc
Mission13TA=0x004f69fc
Mission14TA=0x004f6a0c
Mission15TA=0x004f6a1c
Mission16TA=0x004f6a2c
Mission17TA=0x004f6a3c
Mission18TA=0x004f6a4c
// Array
TrueAdventurer = [
Mission1TA,
Mission2TA,
Mission3TA,
Mission4TA,
Mission5TA,
Mission6TA,
Mission7TA,
Mission8TA,
Mission9TA,
Mission10TA,
Mission11TA,
Mission12TA,
Mission13TA,
Mission14TA,
Mission15TA,
Mission16TA,
Mission17TA,
Mission18TA,
]
// Characters Unlocked
// Variable
CharacterUnlocked1=0x004f6f04
CharacterUnlocked2=0x004f6f05
CharacterUnlocked3=0x004f6f06
CharacterUnlocked4=0x004f6f07
CharacterUnlocked5=0x004f6f08
CharacterUnlocked6=0x004f6f09
CharacterUnlocked7=0x004f6f0a
CharacterUnlocked8=0x004f6f0b
CharacterUnlocked9=0x004f6f0c
CharacterUnlocked10=0x004f6f0d
CharacterUnlocked11=0x004f6f0e
CharacterUnlocked12=0x004f6f0f
CharacterUnlocked13=0x004f6f11
CharacterUnlocked14=0x004f6f13
CharacterUnlocked15=0x004f6f14
CharacterUnlocked16=0x004f6f15
CharacterUnlocked17=0x004f6f16
CharacterUnlocked18=0x004f6f1d
CharacterUnlocked19=0x004f6f1e
CharacterUnlocked20=0x004f6f1f
CharacterUnlocked21=0x004f6f21
CharacterUnlocked22=0x004f6f26
CharacterUnlocked23=0x004f6f27
CharacterUnlocked24=0x004f6f28
CharacterUnlocked25=0x004f6f29
CharacterUnlocked26=0x004f6f2a
CharacterUnlocked27=0x004f6f2c
CharacterUnlocked28=0x004f6f2d
CharacterUnlocked29=0x004f6f2e
CharacterUnlocked30=0x004f6f30
CharacterUnlocked31=0x004f6f31
CharacterUnlocked32=0x004f6f34
CharacterUnlocked33=0x004f6f35
CharacterUnlocked34=0x004f6f37
CharacterUnlocked35=0x004f6f39
CharacterUnlocked36=0x004f6f3a
CharacterUnlocked37=0x004f6f3b
CharacterUnlocked38=0x004f6f3d
CharacterUnlocked39=0x004f6f3e
CharacterUnlocked40=0x004f6f3f
CharacterUnlocked41=0x004f6f40
CharacterUnlocked42=0x004f6f41
CharacterUnlocked43=0x004f6f42
CharacterUnlocked44=0x004f6f43
CharacterUnlocked45=0x004f6f48
CharacterUnlocked46=0x004f6f4c
CharacterUnlocked47=0x004f6f50
CharacterUnlocked48=0x004f6f51
CharacterUnlocked49=0x004f6f52
CharacterUnlocked50=0x004f6f53
CharacterUnlocked51=0x004f6f54
CharacterUnlocked52=0x004f6f55
CharacterUnlocked53=0x004f6f56
CharacterUnlocked54=0x004f6f57
CharacterUnlocked55=0x004f6f58
CharacterUnlocked56=0x004f6f59
CharacterUnlocked57=0x004f6f5d
CharacterUnlocked58=0x004f6f60
CharacterUnlocked59=0x004f6f64
CharacterUnlocked60=0x004f6f65
CharacterUnlocked61=0x004f6f6a
CharacterUnlocked62=0x004f6f6b
CharacterUnlocked63=0x004f6f71
CharacterUnlocked64=0x004f6f73
CharacterUnlocked65=0x004f6f74
CharacterUnlocked66=0x004f6f75
CharacterUnlocked67=0x004f6f79
CharacterUnlocked68=0x004f6f7a
CharacterUnlocked69=0x004f6f7b
CharacterUnlocked70=0x004f6f7c
CharacterUnlocked71=0x004f6f7d
CharacterUnlocked72=0x004f6f7f
CharacterUnlocked73=0x004f6f80
CharacterUnlocked74=0x004f6f8a
CharacterUnlocked75=0x004f6f8b
CharacterUnlocked76=0x004f6f8d
CharacterUnlocked77=0x004f6f91
CharacterUnlocked78=0x004f6f92
CharacterUnlocked79=0x004f6f94
CharacterUnlocked80=0x004f6f95
CharacterUnlocked81=0x004f6f96
CharacterUnlocked82=0x004f6f97
CharacterUnlocked83=0x004f6f99
CharacterUnlocked84=0x004f6fdf
CharacterUnlocked85=0x004f6fe0
// Array
CharacterUnlocked = [
CharacterUnlocked1,
CharacterUnlocked2,
CharacterUnlocked3,
CharacterUnlocked4,
CharacterUnlocked5,
CharacterUnlocked6,
CharacterUnlocked7,
CharacterUnlocked8,
CharacterUnlocked9,
CharacterUnlocked10,
CharacterUnlocked11,
CharacterUnlocked12,
CharacterUnlocked13,
CharacterUnlocked14,
CharacterUnlocked15,
CharacterUnlocked16,
CharacterUnlocked17,
CharacterUnlocked18,
CharacterUnlocked19,
CharacterUnlocked20,
CharacterUnlocked21,
CharacterUnlocked22,
CharacterUnlocked23,
CharacterUnlocked24,
CharacterUnlocked25,
CharacterUnlocked26,
CharacterUnlocked27,
CharacterUnlocked28,
CharacterUnlocked29,
CharacterUnlocked30,
CharacterUnlocked31,
CharacterUnlocked32,
CharacterUnlocked33,
CharacterUnlocked34,
CharacterUnlocked35,
CharacterUnlocked36,
CharacterUnlocked37,
CharacterUnlocked38,
CharacterUnlocked39,
CharacterUnlocked40,
CharacterUnlocked41,
CharacterUnlocked42,
CharacterUnlocked43,
CharacterUnlocked44,
CharacterUnlocked45,
CharacterUnlocked46,
CharacterUnlocked47,
CharacterUnlocked48,
CharacterUnlocked49,
CharacterUnlocked50,
CharacterUnlocked51,
CharacterUnlocked52,
CharacterUnlocked53,
CharacterUnlocked54,
CharacterUnlocked55,
CharacterUnlocked56,
CharacterUnlocked57,
CharacterUnlocked58,
CharacterUnlocked59,
CharacterUnlocked60,
CharacterUnlocked61,
CharacterUnlocked62,
CharacterUnlocked63,
CharacterUnlocked64,
CharacterUnlocked65,
CharacterUnlocked66,
CharacterUnlocked67,
CharacterUnlocked68,
CharacterUnlocked69,
CharacterUnlocked70,
CharacterUnlocked71,
CharacterUnlocked72,
CharacterUnlocked73,
CharacterUnlocked74,
CharacterUnlocked75,
CharacterUnlocked76,
CharacterUnlocked77,
CharacterUnlocked78,
CharacterUnlocked79,
CharacterUnlocked80,
CharacterUnlocked81,
CharacterUnlocked82,
CharacterUnlocked83,
CharacterUnlocked84,
CharacterUnlocked85,
]
// Star Wars Hidden Characters
C3PO=         bit0(0x004f705c)
LukeSkywalker=bit1(0x004f705c)
Chewbaca=     bit2(0x004f705c)
R2D2=         bit3(0x004f705c)
PrincessLeia= bit4(0x004f705c)
// Progression Achievements
function PROGRESSION(UniqueTitle,MissionTitle,MissionFlag,LevelID,cheevoid)
{
    achievement(
        title=UniqueTitle,
        description="Complete the mission: " + MissionTitle + "(No Red Extras Allowed)" ,
        points=5,
        id= cheevoid,
        trigger=prev(byte(MissionFlag))==0 && byte(MissionFlag)==1
        && disable_when(EXTRAS(Extras), until=LevelID)
    )
}
PROGRESSION("The Classic",            "\"The Lost Temple\"",         Mission1,Level1,280214)
PROGRESSION("Take a Hike",            "\"Into the Mountains\"",      Mission2,Level2,280215)
PROGRESSION("Danger Zone",            "\"City of Danger\"",          Mission3,Level3,280216)
PROGRESSION("Bonfire Ahead",          "\"Well of Souls\"",           Mission4,Level4,280217)
PROGRESSION("Exclamation Ark",        "\"Pursuing the Ark\"",        Mission5,Level5,280218)
PROGRESSION("Juice Reward",           "\"Opening the Ark\"",         Mission6,Level6,280219)
PROGRESSION("Parasite",               "\"Shanghai Showdown\"",       Mission7,Level7,280220)
PROGRESSION("Don't Tell",             "\"Pankot Secrets\"",          Mission8,Level8,280221)
PROGRESSION("Kali Uchis' Temple",     "\"The Temple of Kali\"",      Mission9,Level9,280222)
PROGRESSION("Django",                 "\"Free the Slaves\"",         Mission10,Level10,280223)
PROGRESSION("Creeper! Oh Man!",       "\"Escape the Mines\"",        Mission11,Level11,280224)
PROGRESSION("Tai Lung",               "\"Battle on the Bridge\"",    Mission12,Level12,280225)
PROGRESSION("Where's Waldo?",         "\"The Hunt for Sir Richard\"",Mission13,Level13,280226)
PROGRESSION("It's a-me! Indy!",       "\"Castle Rescue\"",           Mission14,Level14,280227)
PROGRESSION("Mad Max",                "\"Motorcycle Escape\"",       Mission15,Level15,280228)
PROGRESSION("To Infinity and Beyond!","\"Trouble in the Sky\"",      Mission16,Level16,280229)
PROGRESSION("Dunes",                  "\"Desert Ambush\"",           Mission17,Level17,280230)
PROGRESSION("One Last Job",           "\"Temple of the Grail\"",     Mission18,Level18,280231)
function PROGRESSION_special(UniqueTitle,MissionTitle,MissionFlag)
{
    achievement(
        title=UniqueTitle,
        description="Complete the special mission: " + MissionTitle ,
        points=10,
        trigger=SaveProtection && prev(byte(MissionFlag))==0 && byte(MissionFlag)==1
    )
}
PROGRESSION_special("Flashback",              "\"Young Indy\"",              YoungIndy)
PROGRESSION_special("Last Remnants",          "\"Ancient City\"",            AncientCity)
PROGRESSION_special("Here in My Garage",      "\"Warehouse\"",               Warehouse)
// All Treasures
function AllTreasures(Treasures)
{
 return measured(sum_of(Treasures,f => byte(f)) == length(Treasures)*10) &&
        sum_of(Treasures,f => prev(byte(f))) == length(Treasures)*10 - 1
}

achievement(
    title="Master Raider",
    description="Unlock every treasure in the game!",
    points=25,
    trigger= SaveProtection && AllTreasures(Treasures)
)
// All Characters
function AllCharacters(CharacterUnlocked)
{
 return measured(sum_of(CharacterUnlocked,f => bit0(f)) == length(CharacterUnlocked)) &&
        sum_of(CharacterUnlocked,f => prev(bit0(f))) == length(CharacterUnlocked) - 1
}

achievement(
    title="Master Seducer",
    description="Purchase and unlock every character in the game!",
    points=25,
    trigger= SaveProtection && AllCharacters(CharacterUnlocked)
)
// All Red Parcels
function AllRedParcels(RedParcels)
{
 return measured(sum_of(RedParcels,f => byte(f)) == length(RedParcels)) &&
        sum_of(RedParcels,f => prev(byte(f))) == length(RedParcels) - 1
}

achievement(
    title="Master Collector",
    description="Collect every Red Parcel in the game!",
    points=25,
    trigger= SaveProtection && AllRedParcels(RedParcels)
)
// All Extras
achievement(
    title="Master Cheater",
    description="Purchase every Extra in the game!",
    points=25,
    trigger= SaveProtection && prev(Extras1 + Extras2 + Extras3 + Extras4)<=23 && measured(Extras1 + Extras2 + Extras3 + Extras4==24)
)
// All True Adventurer
function AllTrueAdventurer(TrueAdventurer)
{
 return measured(sum_of(TrueAdventurer,f => byte(f)) == length(TrueAdventurer)) &&
        sum_of(TrueAdventurer,f => prev(byte(f))) == length(TrueAdventurer) - 1
}

achievement(
    title="Master Adventurer",
    description="Obtain the True Adventurer rank in every level!",
    points=25,
    trigger= SaveProtection && AllTrueAdventurer(TrueAdventurer)
)
// Star Wards Hidden Characters!
achievement(
    title="My parts are showing?",
    description="Find C3PO!",
    points=5,
    trigger= SaveProtection && prev(C3PO)==0 && C3PO==1
)
achievement(
    title="The Force Is Strong In My Family",
    description="Find Luke Skywalker!",
    points=5,
    trigger= SaveProtection && prev(LukeSkywalker)==0 && LukeSkywalker==1
)
achievement(
    title="*Chewbacca Noises*",
    description="Find Chewbacca!",
    points=5,
    trigger= SaveProtection && prev(Chewbaca)==0 && Chewbaca==1
)
achievement(
    title="Beep Boop",
    description="Find R2D2!",
    points=5,
    trigger= SaveProtection && prev(R2D2)==0 && R2D2==1
)
achievement(
    title="You're My Only Hope",
    description="Find Princess Leia!",
    points=5,
    trigger= SaveProtection && prev(PrincessLeia)==0 && PrincessLeia==1
)
// Unlock Han Solo!
achievement(
    title="Never Tell Me the Odds",
    description="Unlock Han Solo!",
    points=10,
    trigger= SaveProtection && prev(bit0(0x004f6f05))==0 && bit0(0x004f6f05)==1
)


























