// Arcade Hoops Basketball (DSi)
// #ID = 22351
// [ASCII] [32-bit] Game ID
function gameid()=> dword(0xffe000)==0x41435241 && dword(0xffe004)==0x48204544
// $0E7610: Time [32-bit]
function time() => dword(0x0E7610)
// $0E75E8: Score [32-bit]
function score() => dword(0xe75e8)
// $0E75E4: Game Mode [32-bit]
//          0x02=Classic
//          0x03=Progressive
//          0x04=3-Pt. Classic
function gamemode() => dword(0xe75e4)
// $0E75C8: State ID [32-bit]
//          0x04=Main Menu
//          0x07=High Scores
//          0x10=Pre-Game Start
//          0x0b=Game Start/In-Game
//          0x0f=Timer Over
function state() => dword(0xe75c8)
// $0E75AC: Pause [32-bit]
//          0x01=Paused
function pause() => dword(0xe75ac)

// Achievements
function scoreachievements(title,name,points,score,gamemode,modename)
{
    achievement(
        title=title,
        description="Beat " + name + " score in " + modename + " mode",
        points=points,
        trigger=
        gameid() &&
        prev(score())<=score &&
        score()>score &&
        gamemode()==gamemode &&
        state()==0x0b
    )
}
scoreachievements("The Rona",                        "Veronica's",1,22,2, "Classic")
scoreachievements("Don't Cry",                       "Jennifer's",1,24,2, "Classic")
scoreachievements("You Got The Moves",               "Mike's",    1,26,2, "Classic")
scoreachievements("Billionaire",                     "Bill's",    1,28,2, "Classic")
scoreachievements("My Mod Now",                      "Garry's",   5,30,2, "Classic")
scoreachievements("Special Someone",                 "Fran's 60",10,60,2, "Classic")

scoreachievements("Donkey Kong is Ballin'",          "Seth's",     1,102,2,"Progressive")
scoreachievements("Eldridge Special",                "Nathan's",   1,110,2,"Progressive")
scoreachievements("Boss",                            "Kelsey's",   1,118,2,"Progressive")
scoreachievements("Miner's Challenge",               "Steve's",    1,126,2,"Progressive")
scoreachievements("The Sandler",                     "Adam's",     5,134,2,"Progressive")
scoreachievements("You Are Ballin'",                 "Fran's 170",10,170,2,"Progressive")

scoreachievements("Return of The Mike",              "Mike's",    1,48,3, "3-Pt. Classic")
scoreachievements("Animal Crossover",                "Isabelle's",1,51,3, "3-Pt. Classic")
scoreachievements("We'll Meet Again",                "Lynn's",    1,54,3, "3-Pt. Classic")
scoreachievements("This Ain't Tennis",               "Roger's",   1,57,3, "3-Pt. Classic")
scoreachievements("What's The Deal With Basketball?","Jerry's",   5,60,3, "3-Pt. Classic")
scoreachievements("I Gave Up After This",            "Fran's 99", 10,99,3,"3-Pt. Classic")
// Leaderboards
function leaderboards(mode,gamemode)
{
    leaderboard(
        title=mode + " - High Score",
        description="High Score for " + mode + "mode",
        start=
        gameid() &&
        prev(state())==0x10 &&
        state()==0x0b &&
        gamemode()==gamemode,
        cancel=
        pause()==1,
        submit=
        prev(state())==0x0b &&
        state()==0x0f,
        value=score()
    )
}
leaderboards("Classic"     ,2)
leaderboards("Progressive" ,3)
leaderboards("3-Pt Classic",4)









