// Wipeout Pure
// #ID = 3224

// $A8C9D4: Pointer for [32-bit] Total Time in Race
//          
//          +1000118
function pointerForTotalTimeInRace() => dword(0xA8C9D4)


// $A8E1BC: [32-bit] Segment on Track?
//          
//          00 = Starting point
//          01 = Finish line crossed
function segmentOnTrack() => dword(0xA8E1BC)

// $A8E1C0: [32-bit] Segment on Track?
//          
//          00 = Starting point
//          01 = Finish Line Crossed
function segmentOnTrack() => dword(0xA8E1C0)



// $B17798: pointer [32-bit] (found by suXin) (& 0x1ffffff)
//          + 0x21C4 - zones cleared [16-bit]
//          + 0x21C6 - perfect zones cleared [16-bit]
//          + 0x21C8 - laps cleared [16-bit]
//          + 0x21CA - perfect laps cleared [16-bit]
//          + 0x21D0 - score [32-bit signed]
function pointerFoundBySuxin0x1ffffff() => dword(0xB17798)

// $B7202C: [Float] Current Timer (Time Trial)
function currentTimerTimeTrial() => float(0xB7202C)

// $B72034: [Float] Time Trial: Best Lap
function timeTrialBestLap() => float(0xB72034)

// $B72094: [32-bit] Time Trial: Lap Count
function timeTrialLapCount() => dword(0xB72094)

// $B72D78: [32-bit] Player Position
function playerPosition() => dword(0xB72D78)




// $EA3920: [224-bit] ASCII For Game State
//          
//          When state changes, unsused spots are taken up by letters from the previous state. 00s are used to split up the actual state from the leftovers.
//          
//          List of Valid ASCII:
//          
//          Language Selection (4C 61 6E 67 75 61 67 65 20 53 65 6C 65 63 74 69 6F 6E)
//          
//          Developer Publisher Screen (44 65 76 65 6C 6F 70 65 72 20 50 75 62 6C 69 73 68 65 72 20 53 63 72 65 65 6E)
//          
//          MemoryStickWarning (4D 65 6D 6F 72 79 53 74 69 63 6B 57 61 72 6E 69 6E 67)
//          
//          FMV Intro (46 4D 56 20 49 6E 74 72 6F)
//          
//          Title Screen (54 69 74 6C 65 20 53 63 72 65 65 6E)
//          
//          Profile Manager (50 72 6F 66 69 6C 65 20 4D 61 6E 61 67 65 72)
//          
//          NameSetup (4E 61 6D 65 53 65 74 75 70)
//          
//          DeleteDataTop (44 65 6C 65 74 65 44 61 74 61 54 6F 70)
//          
//          ProfileLoad (50 72 6F 66 69 6C 65 4C 6F 61 64)
//          
//          Main Menu (4D 61 69 6E 20 4D 65 6E 75)
//          
//          Race End Results (52 61 63 65 20 45 6E 64 20 52 65 73 75 6C 74 73)
//          
//          Race End Race Standing (52 61 63 65 20 45 6E 64 20 52 61 63 65 20 53 74 61 6E 64 69 6E 67)
//          
//          Race End Tournament Standing (52 61 63 65 20 45 6E 64 20 54 6F 75 72 6E 61 6D 65 6E 74 20 53 74 61 6E 64 69 6E 67)
//          
//          Race End Save (52 61 63 65 20 45 6E 64 20 53 61 76 65)
//          
//          Load Next Race (4C 6F 61 64 20 4E 65 78 74 20 52 61 63 65)
//          
//          Demo InGame (44 65 6D 6F 20 49 6E 47 61 6D 65)
//          
//          InGame (49 6E 47 61 6D 65)
//          
//          Kill Game (4B 69 6C 6C 20 47 61 6D 65)
//          
//          InGame Restart (49 6E 47 61 6D 65 20 52 65 73 74 61 72 74)
function asciiForGameState() => byte(0xEA3920)
function asciiForGameState() => dword(0xEA3920)
// $EC1DBC: [32-bit] Main Menu Selection
//          
//          00 = Single Player
//          01 = Multiplayer
//          02 = Profile
//          03 = Download
function mainMenuSelection() => dword(0xEC1DBC)
// $EC3D30: [32-bit] Single Player Mode Select?
//          
//          00 = Single Race
//          01 = Tournament
//          02 = Time Trial
//          03 = Zone
//          04 = Free Play
function singlePlayerModeSelect() => dword(0xEC3D6C)

// $EF6320: [32-bit] Class Selection?
//          
//          00 = Vector
//          01 = Venom
//          02 = Flash
//          03 = Rapier
//          04 = Phantom

// $EF635C: [32-bit] Class Selection?
//          
//          00 = Vector
//          01 = Venom
//          02 = Flash
//          03 = Rapier
//          04 = Phantom
function classSelection() => dword(0xEF635C)

// $EF7D40: [32-bit] League Selection? (Single Race/Time Trial)
//          
//          00 = Alpha
//          01 = Beta
//          02 = Classic

// $EF7D7C: [32-bit] League Selection? (Single Race/Time Trial)
//          
//          00 = Alpha
//          01 = Beta
//          02 = Classic
function leagueSelectionSingleRaceTimeTrial() => dword(0xEF7D7C)

// $EFC180: [32-bit] Tournament Selection?
//          
//          00 = Alpha
//          01 = Beta
//          02 = Classic
//          03 = Ascension
function tournamentSelection() => dword(0xEFC180)

// $EFC1BC: [32-bit] Tournament Selection?
//          
//          00 = Alpha
//          01 = Beta
//          02 = Classic
//          03 = Ascension
function tournamentSelection() => dword(0xEFC1BC)

// $F005C0: [32-bit] Track Selection
//          
//          Alpha
//          00 = Vineta K
//          01 = Modesto Heights
//          02 = Chenghou Project
//          03 = Blue Ridge
//          
//          Beta
//          00 = Sinucit
//          01 = Citta Nuova
//          02 = Sebenco Climb
//          03 = Sol 2
//          
//          Classic
//          00 = Karbonis
//          01 = Sagarmatha
//          02 = Manor Top
//          03 = Mandrashee

// $F005FC: [32-bit] Track Selection
//          
//          Alpha
//          00 = Vineta K
//          01 = Modesto Heights
//          02 = Chenghou Project
//          03 = Blue Ridge
//          
//          Beta
//          00 = Sinucit
//          01 = Citta Nuova
//          02 = Sebenco Climb
//          03 = Sol 2
//          
//          Classic
//          00 = Karbonis
//          01 = Sagarmatha
//          02 = Manor Top
//          03 = Mandrashee
function trackSelection() => dword(0xF005FC)

// $F04C40: [32-bit] Zone: Track Selection
//          
//          00 = Pro Tozo
//          01 = Mallavol
//          02 = Coridon 12
//          03 = Syncopia
function zoneTrackSelection() => dword(0xF04C40)

// $F04C7C: [32-bit] Zone: Track Selection
//          
//          00 = Pro Tozo
//          01 = Mallavol
//          02 = Coridon 12
//          03 = Syncopia
function zoneTrackSelection() => dword(0xF04C7C)

// $F09080: [32-bit] Team Selection (found by televandalist)
//          
//          Team Selected
//          0x00=Feisar
//          0x01=Auricom
//          0x02=Qirex
//          0x03=AG Systems
//          0x04=Piranha
//          0x05=Assegai
//          0x06=Triakis
//          0x07=Harimau
//          0x08=Zone
//          09=Medievil
function teamSelectionFoundByTelevandalist() => dword(0xF09080)

// $F090BC: [32-bit] Team Selection (found by televandalist)
//          
//          Team Selected
//          0x00=Feisar
//          0x01=Auricom
//          0x02=Qirex
//          0x03=AG Systems
//          0x04=Piranha
//          0x05=Assegai
//          0x06=Triakis
//          0x07=Harimau
//          0x08=Zone
//          09=Medievil
function teamSelectionFoundByTelevandalist() => dword(0xF090BC)

// $F0D25C: [32-bit] Livery
//          
//          00 = Off
//          01 = On
function livery() => dword(0xF0D25C)


