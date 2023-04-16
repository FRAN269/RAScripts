// Armored Core 2
// #ID = 3316
// Save Protection
function SaveProtection()=> dword(0x004244c0)!=0x0023d9f8
// Difficulty
function Normal()=> byte(0x003b8ce0)
function Hard()=>   byte(0x003b8ce0)
// Achievement %
function HundredCompletion()=> prev(dword(0x003b8c98))<0x41 && dword(0x003b8c98)>=0x41
function SeventyFiveCompletion()=> prev(dword(0x003b8c98))<0x31 && dword(0x003b8c98)>=0x31
function FiftyCompletion()=> prev(dword(0x003b8c98))<0x20 && dword(0x003b8c98)>=0x20
function TwentyFiveCompletion()=> prev(dword(0x003b8c98))<0x10 && dword(0x003b8c98)>=0x10
// Human Plus
HumanPlus=word(0x003b8c86)
// Assembly Parts 
// i am listening to 100 gecs as i write this shit is banging (just thought you should know)
// Head
Head = [0x004135F0,0x004135F1,0x004135F2,0x004135F3,0x004135F1,0x004135F2,0x004135F3,0x004135F4,0x004135F2,0x004135F3,0x004135FA,0x004135FB,]
// Cores
Core = [0x00413630,0x00413631,0x00413632,0x00413633,0x00413634,0x00413635,]
// Arms
Arms = [0x00413670,0x00413671,0x00413672,0x00413673,0x00413674,0x00413675,0x00413676,0x00413677,0x00413678,0x00413679,0x0041367A,
0x0041367B,0x0041367C,0x0041367D,0x0041367E,0x0041367F,0x00413680,0x00413681,0x00413682,0x00413683,0x00413684,0x00413685,0x00413686,]
// Legs
Legs = [0x004136b0,0x004136B1,0x004136B2,0x004136B3,0x004136B4,0x004136B5,0x004136B6,0x004136B7,0x004136B8,0x004136B9,0x004136BA,0x004136BB,
0x004136BC,0x004136BD,0x004136BE,0x004136BF,0x004136C0,0x004136C1,0x004136C2,0x004136C3,0x004136C4,0x004136C5,0x004136C6,0x004136C7,
0x004136C8,0x004136C9,0x004136CA,0x004136CB,0x004136CC,0x004136CD,0x004136CE,]
// Booster
Booster = [0x004136f0,0x004136F1,0x004136F2,0x004136F3,0x004136F4,0x004136F5,0x004136F6,]
// FCS
FCS = [0x00413730,0x00413731,0x00413732,0x00413733,0x00413734,0x00413735,0x00413736,0x00413737,0x00413738,0x00413739,]
// Generator
Generator = [0x00413770,0x00413771,0x00413772,0x00413773,0x00413774,0x00413775,0x00413776,0x00413777,]
// Radiator
Radiator = [0x004137b0,0x004137B1,0x004137B2,0x004137B3,0x004137B4,0x004137B5,0x004137B6,0x004137B7,]
// Inside
Inside = [0x004137f0,0x004137F1,0x004137F2,0x004137F3,0x004137F4,0x004137F5,0x004137F6,]
// Extension 
Extension = [0x00413830,0x00413831,0x00413832,0x00413833,0x00413834,0x00413835,0x00413836,0x00413837,]
// Back Unit
BackUnit = [0x00413870,0x00413871,0x00413872,0x00413873,0x00413874,0x00413875,0x00413876,0x00413877,0x00413878,0x00413879,0x0041387A,
0x0041387B,0x0041387C,0x0041387D,0x0041387E,0x0041387F,0x00413880,0x00413881,0x00413882,0x00413883,0x00413884,0x00413885,0x00413886,
0x00413887,0x00413888,0x00413889,0x0041388A,0x0041388B,0x0041388C,0x0041388D,0x0041388E,0x0041388F,]
// Arm Unit R
ArmUnitR = [0x004138f0,0x004138F1,0x004138F2,0x004138F3,0x004138F4,0x004138F5,0x004138F6,0x004138F7,0x004138F8,0x004138F9,0x004138FA,0x004138FB,
0x004138FC,0x004138FD,0x004138FE,0x004138FF,0x00413900,0x00413901,0x00413902,0x00413903,0x00413904,0x00413905,0x00413906,0x00413907,0x00413908,]
// Arm Unit L 
ArmUnitL = [0x00413930,0x00413931,0x00413932,0x00413933,0x00413934,0x00413935,0x00413936,0x00413937,0x00413938,]
// Optional Parts
OptionalParts = [0x00413970,0x00413971,0x00413972,0x00413973,0x00413974,0x00413975,0x00413976,0x00413977,0x00413978,0x00413979,0x0041397A,
0x0041397B,0x0041397C,0x0041397D,0x0041397E,0x0041397F,]
// Missions 
Missions = [bit1(0x003b8d50),bit1(0x003b8d51),bit1(0x003b8d52),bit1(0x003b8d53),bit1(0x003b8d54),bit1(0x003b8d56),bit1(0x003b8d57),bit1(0x003b8d58),bit1(0x003b8d59),
bit1(0x003b8d5a),bit1(0x003b8d5b),bit1(0x003b8d5c),bit1(0x003b8d5d),bit1(0x003b8d5e),bit1(0x003b8d5f),bit1(0x003b8d60),bit1(0x003b8d61),bit1(0x003b8d62),
bit1(0x003b8d63),bit1(0x003b8d64),bit1(0x003b8d65),bit1(0x003b8d66),bit1(0x003b8d67),bit1(0x003b8d68),bit1(0x003b8d69),bit1(0x003b8d6a),bit1(0x003b8d6b),
bit1(0x003b8d6c),bit1(0x003b8d6d),bit1(0x003b8d6e),bit1(0x003b8d6f),bit1(0x003b8d70),bit1(0x003b8d71),bit1(0x003b8d72),bit1(0x003b8d73),bit1(0x003b8d74),    ]
// Arena 
Arena = [bit0(0x003b8da1),bit0(0x003b8da2),bit0(0x003b8da3),bit0(0x003b8da4),bit0(0x003b8da5),bit0(0x003b8da6),bit0(0x003b8da7),bit0(0x003b8da8),bit0(0x003b8da9),
bit0(0x003b8daa),bit0(0x003b8dab),bit0(0x003b8dac),bit0(0x003b8dad),bit0(0x003b8dae),bit0(0x003b8daf),bit0(0x003b8db0),bit0(0x003b8db1),bit0(0x003b8db2),
bit0(0x003b8db3),bit0(0x003b8db4),bit0(0x003b8db5),bit0(0x003b8db6),bit0(0x003b8db7),bit0(0x003b8db8),bit0(0x003b8db9),bit0(0x003b8dba),bit0(0x003b8dbb),
bit0(0x003b8dbc),bit0(0x003b8dbd),bit0(0x003b8dbe),bit0(0x003b8dbf),bit0(0x003b8dc0),bit0(0x003b8dc1),bit0(0x003b8dc2),bit0(0x003b8dc3),bit0(0x003b8dc4),
bit0(0x003b8dc5),bit0(0x003b8dc6),bit0(0x003b8dc7),bit0(0x003b8dc8),bit0(0x003b8dc9),bit0(0x003b8dca),bit0(0x003b8dcb),bit0(0x003b8dcc),bit0(0x003b8dcd),
bit0(0x003b8dce),bit0(0x003b8dcf),bit0(0x003b8dd0),bit0(0x003b8dd1),bit0(0x003b8dd2),bit0(0x003b8dd4),bit0(0x003b8dd5),bit0(0x003b8dd6),bit0(0x003b8dd7),
bit0(0x003b8dd8),bit0(0x003b8dd9),bit0(0x003b8dda),]

// Normal Progression
function NormalProgression(UniqueTitle,MissionName,points,MissionCount,id)
{
    achievement(
        title=UniqueTitle,
        description="Complete the mission: " + MissionName,
        points=points,
        id=id,
        trigger=
        Normal()>=0 &&
        SaveProtection() &&
        prev(Missions[MissionCount])==0 &&
        Missions[MissionCount]==1
    )
}
NormalProgression("Time I Test","Raven Test",                                   2,0,283670)
NormalProgression("Tank!","MR Suprression",                                     5,1,283671)
NormalProgression("Psycho Killer","Elminiate Informer",                         5,2,283672)
NormalProgression("Gravity","Defend the Bridge",                                5,3,283673)
NormalProgression("Vendetta","Attack Rektena Installation",                     5,4,283674)
NormalProgression("Lay Down The Law","Remove Disorder Units",                   5,5,283675)
NormalProgression("Scavengers","Capture Cargo",                                 5,6,283676)
NormalProgression("Push A Button","Defuse Explosives",                          5,7,283677)
NormalProgression("Flag Is Raised","Defend Arden River Lab",                    5,8,283678)
NormalProgression("Connected","Spaceport Escort",                               5,9,283679)
NormalProgression("Venide","Assist Malea Base",                                 5,10,283680)
NormalProgression("Rusting Steel","Escort Train",                               5,11,283681)
NormalProgression("Mechanied Memories","Guard Secret Information",              5,12,283682)
NormalProgression("Dirty Worker","Ground-Based Attack",                         5,13,283683)
NormalProgression("Blue Magnoria","Save Water-Generation Plant",                5,14,283684)
NormalProgression("Demolition","Assault Underwater Base",                       5,15,283685)
NormalProgression("One Day","Rescue Research Team",                             5,16,283686)
NormalProgression("Trickster","Arden River Invasion",                           5,17,283687)
NormalProgression("Smasher","Infiltrate Radar Base",                            5,18,283688)
NormalProgression("Enemy In Sight","Destroy Radar Base",                        5,19,283689)
NormalProgression("Jumbling","Stop the Surface Weapon",                         5,20,283690)
NormalProgression("Forgive An Angel","Guard HQ Rooftop",                        5,21,283691)
NormalProgression("Peek A Boo","Attack Research Team",                          5,22,283692)
NormalProgression("Shutter","Destroy Containers",                               5,23,283693)
NormalProgression("Stain","Recover Stolen Files",                               5,24,283694)
NormalProgression("Armeria","Escort Submarine",                                 5,25,283695)
NormalProgression("Programming Is Uncontrolled","Investigate Murakumo Dome",    5,26,283696)
NormalProgression("The Mother Will Comes Again","Underground Railway",          5,27,283697)
NormalProgression("A Pacifist","Abort Missile Launch",                          5,28,283698)
NormalProgression("Air","VIP Escort",                                           5,29,283699)
NormalProgression("Grip","Zio City Suppression",                                5,30,283700)
NormalProgression("X Axis","Underground Lab",                                   5,31,283701)
NormalProgression("Repetition","Spacestation Assault",                          5,32,283702)
NormalProgression("Roundabout","Eliminate Leos Klein",                          5,33,283703)
NormalProgression("Lapse of Time","Infiltrate STAI Battleship",                 5,34,283704)
NormalProgression("Phobos","Phobos",                                            10,35,283705)
// Hard Progression
function HardProgression(UniqueTitle,MissionName,points,MissionCount,id)
{
    achievement(
        title=UniqueTitle,
        description="Complete the mission: " + MissionName + " [Hard] [No Human Plus]",
        points=points,
        id=id,
        trigger=
        Hard()==0x01 &&
        HumanPlus==0x0000 &&
        SaveProtection() &&
        prev(Missions[MissionCount])==0 &&
        Missions[MissionCount]==1
    )
}
HardProgression("Born Yesterday","Raven Test",                              5,0,283706)
HardProgression("Under Pressure","MR Suprression",                          5,1,283707)
HardProgression("Informer","Elminiate Informer",                            5,2,283708)
HardProgression("Burning Bridges","Defend the Bridge",                      5,3,283709)
HardProgression("Shoota","Attack Rektena Installation",                     5,4,283710)
HardProgression("Do It Again","Remove Disorder Units",                      5,5,283711)
HardProgression("Going Bad","Capture Cargo",                                5,6,283712)
HardProgression("Nobody Talk","Defuse Explosives",                          5,7,283713)
HardProgression("Arden River War","Defend Arden River Lab",                 5,8,283714)
HardProgression("Rockstar Made","Spaceport Escort",                         5,9,283715)
HardProgression("Got It On Me","Assist Malea Base",                         5,10,283716)
HardProgression("Follow the Damn Train","Escort Train",                     5,11,283717)
HardProgression("Backstage Passses","Guard Secret Information",             5,12,283718)
HardProgression("Earfhquake","Ground-Based Attack",                         5,13,283719)
HardProgression("Fiji","Save Water-Generation Plant",                       5,14,283720)
HardProgression("Subnautica","Assault Underwater Base",                     5,15,283721)
HardProgression("In Control","Rescue Research Team",                        10,16,283722)
HardProgression("Sussus Amogus","Arden River Invasion",                     10,17,283723)
HardProgression("I Was Never There","Infiltrate Radar Base",                10,18,283724)
HardProgression("Hawk Em","Destroy Radar Base",                             10,19,283725)
HardProgression("No Problem","Stop the Surface Weapon",                     10,20,283726)
HardProgression("Savior","Guard HQ Rooftop",                                10,21,283727)
HardProgression("Silent Hill","Attack Research Team",                       10,22,283728)
HardProgression("Lock It Up","Destroy Containers",                          10,23,283729)
HardProgression("Stolen Goods","Recover Stolen Files",                      10,24,283730)
HardProgression("Drip Or Drown","Escort Submarine",                         10,25,283731)
HardProgression("Cash In Cash Out","Investigate Murakumo Dome",             10,26,283732)
HardProgression("Final Warning","Underground Railway",                      10,27,283733)
HardProgression("Came and Saw","Abort Missile Launch",                      10,28,283734)
HardProgression("Flex Up","VIP Escort",                                     10,29,283735)
HardProgression("We Miss Zio","Zio City Suppression",                       10,30,283736)
HardProgression("Tints","Underground Lab",                                  10,31,283737)
HardProgression("Moon Relate","Spacestation Assault",                       10,32,283738)
HardProgression("Armed And Dangerous","Eliminate Leos Klein",               10,33,283739)
HardProgression("Ghost","Infiltrate STAI Battleship",                       10,34,283740)
HardProgression("Crime Pays","Phobos",                                      50,35,283741)
// Normal Arena
function NormalArena(UniqueTitle,ArenaAC,points,ArenaCount,id)
{
    achievement(
        title=UniqueTitle,
        description="Defeat " + ArenaAC,
        points=points,
        id=id,
        trigger=
        Normal()>=0 &&
        SaveProtection() &&
        prev(Arena[ArenaCount])==0 &&
        Arena[ArenaCount]==1
    )
}
NormalArena("Matthias","Matthias",                           1,56,283742)
NormalArena("Riot","Riot",                                   1,55,283743)
NormalArena("Falcon VIII","Falcon VIII",                     1,54,283744)
NormalArena("The Veteran","The Veteran",                     1,53,283745)
NormalArena("Scarlet","Scarlet",                             1,52,283746)
NormalArena("Lost Lamb","Lost Lamb",                         1,51,283747)
NormalArena("Co-op","Co-op",                                 1,50,283748)
NormalArena("Chris Mura","Chris Mura",                       1,49,283749)
NormalArena("Light Seeker","Light Seeker",                   1,48,283750)
NormalArena("Hustler Two","Hustler Two",                     1,47,283751)
NormalArena("Living Dead","Living Dead",                     1,46,283752)
NormalArena("Splurge","Splurge",                             1,45,283753)
NormalArena("Tomboy","Tomboy",                               1,44,283754)
NormalArena("Phaethon","Phaethon",                           1,43,283755)
NormalArena("Venom","Venom",                                 1,42,283756)
NormalArena("Werehound","Werehound",                         1,41,283757)
NormalArena("Grudge","Grudge",                               1,40,283758)
NormalArena("Pyschedelic","Pyschedelic",                     1,39,283759)
NormalArena("The Engineer","The Engineer",                   1,38,283760)
NormalArena("Prophet","Prophet",                             1,37,283761)
NormalArena("Pollux","Pollux",                               1,36,283762)
NormalArena("Death Merchant","Death Merchant",               1,35,283763)
NormalArena("Funnel","Funnel",                               1,23,283764)
NormalArena("Malpractice","Malpractice",                     1,33,283765)
NormalArena("Castor","Castor",                               1,32,283766)
NormalArena("Time Keeper","Time Keeper",                     1,31,283767)
NormalArena("Amnesia","Amnesia",                             1,30,283768)
NormalArena("Chimera","Chimera",                             1,29,283769)
NormalArena("Hades","Hades",                                 1,28,283770)
NormalArena("Cerberus","Cerberus",                           1,27,283771)
NormalArena("Dr. Simon","Dr. Simon",                         1,26,283772)
NormalArena("Grenstone","Grenstone",                         1,25,283773)
NormalArena("Cruel Justice","Cruel Justice",                 1,24,283774)
NormalArena("Blood Striker","Blood Striker",                 1,34,283775)
NormalArena("Divine Bloom","Divine Bloom",                   1,22,283776)
NormalArena("Super Sonic","Super Sonic",                     1,16,283777)
NormalArena("SAMSARA","SAMSARA",                             1,20,283778)
NormalArena("Hellos","Hellos",                               1,19,283779)
NormalArena("Bulk","Bulk",                                   1,18,283780)
NormalArena("Helzehen","Helzehen",                           1,17,283781)
NormalArena("Higher Force","Higher Force",                   1,21,283782)
NormalArena("Ever Fighter","Ever Fighter",                   1,15,283783)
NormalArena("Suave","Suave",                                 1,14,283784)
NormalArena("Ken Hayabusa","Ken Hayabusa",                   1,13,283785)
NormalArena("Stoic","Stoic",                                 1,12,283786)
NormalArena("Brazen","Brazen",                               1,11,283787)
NormalArena("No. 1111","No. 1111",                           1,10,283788)
NormalArena("Strung","Strung",                               2,9,283789)
NormalArena("Merciless","Merciless",                         2,8,283790)
NormalArena("Dreadnought","Dreadnought",                     2,7,283791)
NormalArena("Rose","Rose",                                   2,6,283792)
NormalArena("Isotope","Isotope",                             2,5,283793)
NormalArena("The Animal","The Animal",                       5,4,283794)
NormalArena("D. Sebastian","D. Sebastian",                   5,3,283795)
NormalArena("Lion Heart","Lion Heart",                       5,2,283796)
NormalArena("Prisoner No. B-24715","Prisoner No. B-24715",   5,1,283797)
NormalArena("Ares","Ares",                                   10,0,283798)
// Hard Arena
function HardArena(UniqueTitle,ArenaAC,points,ArenaCount,id)
{
    achievement(
        title=UniqueTitle,
        description="Defeat " + ArenaAC + " [Hard] [No Human Plus]",
        points=points,
        id=id,
        trigger=
        Hard()==0x01 &&
        HumanPlus==0x0000 &&
        SaveProtection() &&
        prev(Arena[ArenaCount])==0 &&
        Arena[ArenaCount]==1
    )
}
HardArena("Matthias +","Matthias",                           3,56,283799)
HardArena("Riot +","Riot",                                   3,55,283800)
HardArena("Falcon VIII +","Falcon VIII",                     3,54,283801)
HardArena("The Veteran +","The Veteran",                     3,53,283802)
HardArena("Scarlet +","Scarlet",                             3,52,283803)
HardArena("Lost Lamb +","Lost Lamb",                         3,51,283804)
HardArena("Co-op +","Co-op",                                 3,50,283805)
HardArena("Chris Mura +","Chris Mura",                       3,49,283806)
HardArena("Light Seeker +","Light Seeker",                   3,48,283807)
HardArena("Hustler Two +","Hustler Two",                     3,47,283808)
HardArena("Living Dead +","Living Dead",                     3,46,283809)
HardArena("Splurge +","Splurge",                             3,45,283810)
HardArena("Tomboy +","Tomboy",                               3,44,283811)
HardArena("Phaethon +","Phaethon",                           3,43,283812)
HardArena("Venom +","Venom",                                 3,42,283813)
HardArena("Werehound +","Werehound",                         3,41,283814)
HardArena("Grudge +","Grudge",                               3,40,283815)
HardArena("Pyschedelic +","Pyschedelic",                     3,39,283816)
HardArena("The Engineer +","The Engineer",                   3,38,283817)
HardArena("Prophet +","Prophet",                             3,37,283818)
HardArena("Pollux +","Pollux",                               3,36,283819)
HardArena("Death Merchant +","Death Merchant",               3,35,283820)
HardArena("Funnel +","Funnel",                               3,23,283821)
HardArena("Malpractice +","Malpractice",                     3,33,283822)
HardArena("Castor +","Castor",                               3,32,283823)
HardArena("Time Keeper +","Time Keeper",                     3,31,283824)
HardArena("Amnesia +","Amnesia",                             3,30,283825)
HardArena("Chimera +","Chimera",                             3,29,283826)
HardArena("Hades +","Hades",                                 3,28,283827)
HardArena("Cerberus +","Cerberus",                           3,27,283828)
HardArena("Dr. Simon +","Dr. Simon",                         3,26,283829)
HardArena("Grenstone +","Grenstone",                         3,25,283830)
HardArena("Cruel Justice +","Cruel Justice",                 3,24,283831)
HardArena("Blood Striker +","Blood Striker",                 3,34,283832)
HardArena("Divine Bloom +","Divine Bloom",                   3,22,283833)
HardArena("Super Sonic +","Super Sonic",                     3,16,283834)
HardArena("SAMSARA +","SAMSARA",                             3,20,283835)
HardArena("Hellos +","Hellos",                               3,19,283836)
HardArena("Bulk +","Bulk",                                   3,18,283837)
HardArena("Helzehen +","Helzehen",                           3,17,283838)
HardArena("Higher Force +","Higher Force",                   3,21,283839)
HardArena("Ever Fighter +","Ever Fighter",                   3,15,283840)
HardArena("Suave +","Suave",                                 3,14,283841)
HardArena("Ken Hayabusa +","Ken Hayabusa",                   3,13,283842)
HardArena("Stoic +","Stoic",                                 3,12,283843)
HardArena("Brazen +","Brazen",                               3,11,283844)
HardArena("No. 1111 +","No. 1111",                           3,10,283845)
HardArena("Strung +","Strung",                               5,9,283846)
HardArena("Merciless +","Merciless",                         5,8,283847)
HardArena("Dreadnought +","Dreadnought",                     5,7,283848)
HardArena("Rose +","Rose",                                   5,6,283849)
HardArena("Isotope +","Isotope",                             5,5,283850)
HardArena("The Animal +","The Animal",                       10,4,283851)
HardArena("D. Sebastian +","D. Sebastian",                   10,3,283852)
HardArena("Lion Heart +","Lion Heart",                       10,2,283853)
HardArena("Prisoner No. B-24715 +","Prisoner No. B-24715",   10,1,283854)
HardArena("Ares +","Ares",                                   25,0,283855)
// Achievement % Achievements
function AchievementPercentageAchievements(functionP,points,title,description,id) 
{
    achievement(
        title= title,
        description= description,
        points= points,
        id=id,
        trigger=
        functionP && SaveProtection()
    )
}
AchievementPercentageAchievements(TwentyFiveCompletion(),5,"Beginner","Reach 25% Completion",283856)
AchievementPercentageAchievements(FiftyCompletion(),10,"Half-Decent","Reach 50% Completion",283857)
AchievementPercentageAchievements(SeventyFiveCompletion(),25,"Veteran","Reach 75% Completion",283858)
AchievementPercentageAchievements(HundredCompletion(),50,"True Raven","Reach 100% Completion",283859)
// Part Collection Achievements
function AllParts(Part)
{
    return function AllParts(Part)
   {
return measured(sum_of(Part,f => byte(f)/byte(f)) == length(Part)) &&
        sum_of(Part,f => prev(byte(f)/byte(f))) == length(Part) - 1
   }
}
function AchievementParts(title,description,points,Part,id)
{
    achievement(
        title=title,
        description=description,
        points=points,
        id=id,
        trigger=
        AllParts(Part) && SaveProtection()
    )
}
AchievementParts("Big Brain","Collect all Heads",25,Head,283860)
AchievementParts("To The Core","Collect all Cores",25,Core,283861)
AchievementParts("Army","Collect all Arms",25,Arms,283862)
AchievementParts("Long Legged Larry","Collect all Legs",25,Legs,283863)
AchievementParts("Boosted","Collect all Boosters",25,Booster,283864)
AchievementParts("Heating Up","Collect all FCS parts",25,FCS,283865)
AchievementParts("Generation I","Collect all Generators",25,Generator,283866)
AchievementParts("Rad","Collect all Radiators",25,Radiator,283867)
AchievementParts("Pixar","Collect all Inside parts",25,Inside,283868)
AchievementParts("Extended Clip","Collect all Extensions",25,Extension,283869)
AchievementParts("Eyes Behind You","Collect all Back Units",25,BackUnit,283870)
AchievementParts("Right Handed","Collect all right Arm Units",25,ArmUnitR,283871)
AchievementParts("Left Handed","Collect all left Arm Units",25,ArmUnitL,283872)
AchievementParts("Not So Optional","Collect all Optional parts",25,OptionalParts,283873)
// Human Plus Achievement
achievement(
    title="Human +",
    description="Obtain a Human Plus upgrade by going below 50k Cr",
    points=2,
    id=283874,
    trigger=
    prev(HumanPlus)==0 && HumanPlus==1 && SaveProtection()
)
