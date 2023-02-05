// Arcade Bowling (DSi)
// #ID = 22403

// $054FE4: Game State [32-bit]
//          0x04=Main Menu
//          0x07=High Score
//          0x18=Pre-Game Start
//          0x0b=In-Game
//          0x1b=Game End
function gamestate() => dword(0x054FE4)

// $055094: Game Mode [32-bit]
//          0x00=Classic
//          0x01=Progressive
function gamemode()=>dword(0x055094)

// $05502C: Led Screen Messages ID [32-bit]
//          0x00=10 Points
//          0x01=20 Points
//          0x02=30 Points
//          0x03=40 Points
//          0x04=50 Points
//          0x05=100 Points
//          0x06=150 Points
//          0x07=200 Points
//          0x08=250 Points
//          0x09=500 Points
//          0x0a=Awesome
//          0x0b=Way 2 Roll
//          0x0c=Mad Skillz
//          0x0d=Money Shot
//          0x0e= Ready, Set, Go!
//          0x0f=Game Over
//          0x12=Progressive Goal Achieved
//          0x13=Next Goal
//          0x14=Goal
//          0xff=Main Menu
function idforstuff() => dword(0x05502C)

// $055054: Pause [32-bit]
//          0x01=Paused
function pause() => dword(0x055054)

// $055088: Full Score [32-bit]
function score() => dword(0x055088)

// $FFE000: [ASCII] Game ID 
function gameid() => dword(0xFFE000)==0x41435241 &&
                     dword(0xFFE004)==0x42204544 &&
                     dword(0xFFE008)==0x004c574f &&
                     dword(0xFFE00C)==0x4542344b

// Achievements
function achievements(title,description,points,gamemode,score)
{
    achievement(
    title=title,
    description=description,
    points=points,
    trigger=
    gameid() &&
    gamestate()==0x0b &&
    gamemode()==gamemode &&
    prev(score())<=score &&
    score()>score
    )
}
// Classic Mode          
achievements("Framed"                ,"Beat Roger's score of 150 in classic mode"      ,1,0,150)                     
achievements("Mame Wen"              ,"Beat Auntie Mame's score of 160 in classic mode",1,0,160)                     
achievements("Dolla' Dolla'"         ,"Beat Bill's score of 170 in classic mode"       ,1,0,170)                      
achievements("Sewy!"                 ,"Beat Nasir's score of 200 in classic mode"      ,1,0,200)                      
achievements("He's Cheating!"        ,"Beat Garry's score of 209 in classic mode"      ,5,0,209)                      
achievements("Just For You"          ,"Beat Fran's score of 300 in classic mode"       ,10,0,300)                      
achievements("Truly Ballin'"         ,"Beat a crazy score of 400 in classic mode"      ,25,0,400) 
// Progressive Mode
achievements("Donkey Konga"           ,"Beat Seth's score of 2510 in progressive mode"  ,1,1,2510)                     
achievements("The Eld Special Returns","Beat Nathan's score of 2710 in progressive mode",1,1,2710)                     
achievements("Cheers"                 ,"Beat Kelsey's score of 3110 in progressive mode",1,1,3110)                      
achievements("Get Back To The Mines"  ,"Beat Steve's score of 3200 in progressive mode" ,1,1,3200)                      
achievements("Sandler Returns"         ,"Beat Adam's score of 3210 in progressive mode"  ,5,1,3210)                      
achievements("Never Too Much"         ,"Beat Fran's score of 3500 in progressive mode"  ,10,1,3500)                      
achievements("Can You Really Ball??"   ,"Beat a crazy score of 4000 in progressive mode" ,25,1,4000)

// Misc Achievements
function misc(title,description,points,stuff) 
{
    achievement(
        title=title,
        description=description,
        points=points,
        trigger=
        gameid() &&
        gamestate()==0x0b &&
        prev(idforstuff())!=stuff &&
        idforstuff()==stuff         
    )
}                    
misc("100 Pointer","Score 100 Points with one Ball",3,0x05)                     
misc("Forbidden 150","Score 150 Points with one Ball",4,0x06) 
misc("Double Hundred","Score 200 Points with one Ball",5,0x07) 
misc("Max Score!","Score 250 Points with one Ball",10,0x08) 
misc("I Lied.","Score 500 Points with one Ball",25,0x09)                      

// Leaderboards
function leaderboards(mode,gamemode)
{
    leaderboard(
        title=mode + " - High Score",
        description="High Score for " + mode + "mode",
        start=
        gameid() &&
        prev(gamestate())==0x18 &&
        gamestate()==0x0b &&
        gamemode()==gamemode,
        cancel=
        pause()==1,
        submit=
        prev(gamestate())==0x19 &&
        gamestate()==0x1b,
        value=score()
    )
}              
leaderboards("Classic",0)
leaderboards("Progressive",1)                     
                     
                     
                     