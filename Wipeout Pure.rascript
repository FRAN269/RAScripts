// Wipeout Pure
// #ID = 3224
// can't believe i'm actually doing another wipeout game
// okaaaay letsgo

//State Check
function StateCheckLT()=> dword(0x00ea3920)==0x61476e49 && word(0x00ea3924)==0x656d
//Single Player Check
function SinglePlayer()=> dword(0x00ec1d80)==0x00
//Time Trial Mode Check
function TimeTrialMode()=> dword(0x00ec3d30)==0x02
//Class Checks
function Vector()=> dword(0x00ef6320)==0x00
function Venom()=> dword(0x00ef6320)==0x01
function Flash()=> dword(0x00ef6320)==0x02
function Rapier()=> dword(0x00ef6320)==0x03
function Phantom()=> dword(0x00ef6320)==0x04
//League and Track Checks
//League
function Alpha()=> dword(0x00ef7d40)==0x00
function Beta()=> dword(0x00ef7d40)==0x01
function Classic()=> dword(0x00ef7d40)==0x02
// Tracks
function Track1()=> dword(0x00f005c0)==0x00
function Track2()=> dword(0x00f005c0)==0x01
function Track3()=> dword(0x00f005c0)==0x02
function Track4()=> dword(0x00f005c0)==0x03
// Trigger Flag Checks
function TimeLapCheck()=> trigger_when(float(0x00b72034)!=0.0)
function LapCheck()=> trigger_when(dword(0x00b72094)>prev(dword(0x00b72094)))
// Lap Time Function
function LapTime(time)=> float(0x00b72034)<=time
// Titles, Descriptions, and other shit
TrackNames = ["Vineta K","Modesto Heights","Chenghou Project","Blue Ridge","Sinucit","Citta Nuova","Sebenco Climb","Sol 2","Karbonis","Sagarmatha","Manor Top","Mandrashee"]
ClassNames = [" (Vector)"," (Venom)"," (Flash)"," (Rapier)"," (Phantom)"]
// Actual Tracks I guess
VinetaK =         dword(0x00a8f76c)==0x3d 
ModestoHeights =  dword(0x00a8f76c)==0x2e 
ChenghouProject = dword(0x00a8f76c)==0x36 
BlueRidge =       Alpha() && dword(0x00a8f76c)==0x1e 
Sinucit =         dword(0x00a8f76c)==0x1c 
SebencoClimb =    dword(0x00a8f76c)==0x33
Sol2 =            dword(0x00a8f76c)==0x3e
Karbonis =        dword(0x00a8f76c)==0x1b 
Sagarmatha =      Classic() && dword(0x00a8f76c)==0x1e 
CittaNuova =      dword(0x00a8f76c)==0x3a 
ManorTop =        dword(0x00a8f76c)==0x22 
Mandrashee =      dword(0x00a8f76c)==0x24 
// Achievemenents!
function laptimes_ach(tn,cn,desc_time,class,track,time)
{
    achievement(
        title= TrackNames[tn] + ClassNames[cn] + " Lap Time",
        description= "In Time Trial mode, beat a time of " + desc_time + " in " + TrackNames[tn] + ClassNames[cn],
        points=5,
        trigger=
        StateCheckLT() &&
        SinglePlayer() &&
        TimeTrialMode() &&
        class &&
        track &&
        LapTime(time) &&
        TimeLapCheck() &&
        LapCheck()
    )
}
// Vineta K 
laptimes_ach(0,0,"0:35:00",Vector(), VinetaK,35.0)
laptimes_ach(0,1,"0:33:00",Venom(),  VinetaK,33.0)
laptimes_ach(0,2,"0:30:00",Flash(),  VinetaK,30.0)
laptimes_ach(0,3,"0:25:00",Rapier(), VinetaK,25.0)
laptimes_ach(0,4,"0:22:00",Phantom(),VinetaK,22.0)
// Modesto Heights 
laptimes_ach(1,0,"0:41:00",Vector(), ModestoHeights,41.0)
laptimes_ach(1,1,"0:36:00",Venom(),  ModestoHeights,36.0)
laptimes_ach(1,2,"0:32:00",Flash(),  ModestoHeights,32.0)
laptimes_ach(1,3,"0:29:00",Rapier(), ModestoHeights,29.0)
laptimes_ach(1,4,"0:26:00",Phantom(),ModestoHeights,26.0)
// Chenghou Project
laptimes_ach(2,0,"0:48:00",Vector(), ChenghouProject,48.0)
laptimes_ach(2,1,"0:41:00",Venom(),  ChenghouProject,41.0)
laptimes_ach(2,2,"0:37:00",Flash(),  ChenghouProject,37.0)
laptimes_ach(2,3,"0:33:00",Rapier(), ChenghouProject,33.0)
laptimes_ach(2,4,"0:30:00",Phantom(),ChenghouProject,30.0)
// Blue Ridge
laptimes_ach(3,0,"0:47:00",Vector(), BlueRidge,47.0)
laptimes_ach(3,1,"0:42:00",Venom(),  BlueRidge,42.0)
laptimes_ach(3,2,"0:38:00",Flash(),  BlueRidge,38.0)
laptimes_ach(3,3,"0:34:00",Rapier(), BlueRidge,34.0)
laptimes_ach(3,4,"0:30:00",Phantom(),BlueRidge,30.0)
// Sinucit
laptimes_ach(4,0,"0:59:00",Vector(), Sinucit,59.0)
laptimes_ach(4,1,"0:52:00",Venom(),  Sinucit,52.0)
laptimes_ach(4,2,"0:48:00",Flash(),  Sinucit,48.0)
laptimes_ach(4,3,"0:44:00",Rapier(), Sinucit,44.0)
laptimes_ach(4,4,"0:38:00",Phantom(),Sinucit,38.0)
// Citta Nuova
laptimes_ach(5,0,"0:56:00",Vector(), CittaNuova,56.0)
laptimes_ach(5,1,"0:51:00",Venom(),  CittaNuova,51.0)
laptimes_ach(5,2,"0:46:00",Flash(),  CittaNuova,46.0)
laptimes_ach(5,3,"0:42:00",Rapier(), CittaNuova,42.0)
laptimes_ach(5,4,"0:38:00",Phantom(),CittaNuova,38.0)
// Sebenco Climb
laptimes_ach(6,0,"0:46:00",Vector(), SebencoClimb,46.0)
laptimes_ach(6,1,"0:42:00",Venom(),  SebencoClimb,42.0)
laptimes_ach(6,2,"0:38:00",Flash(),  SebencoClimb,38.0)
laptimes_ach(6,3,"0:34:00",Rapier(), SebencoClimb,34.0)
laptimes_ach(6,4,"0:30:00",Phantom(),SebencoClimb,30.0)
// Sol 2
laptimes_ach(7,0,"0:42:00",Vector(), Sol2,42.0)
laptimes_ach(7,1,"0:38:00",Venom(),  Sol2,38.0)
laptimes_ach(7,2,"0:34:00",Flash(),  Sol2,34.0)
laptimes_ach(7,3,"0:30:00",Rapier(), Sol2,30.0)
laptimes_ach(7,4,"0:26:00",Phantom(),Sol2,26.0)
// Karbonis
laptimes_ach(8,0,"0:35:00",Vector(), Karbonis,35.0)
laptimes_ach(8,1,"0:32:00",Venom(),  Karbonis,32.0)
laptimes_ach(8,2,"0:29:00",Flash(),  Karbonis,29.0)
laptimes_ach(8,3,"0:27:00",Rapier(), Karbonis,27.0)
laptimes_ach(8,4,"0:25:00",Phantom(),Karbonis,25.0)
// Sagarmatha
laptimes_ach(9,0,"0:41:00",Vector(), Sagarmatha,41.0)
laptimes_ach(9,1,"0:38:00",Venom(),  Sagarmatha,38.0)
laptimes_ach(9,2,"0:35:00",Flash(),  Sagarmatha,35.0)
laptimes_ach(9,3,"0:32:00",Rapier(), Sagarmatha,32.0)
laptimes_ach(9,4,"0:29:00",Phantom(),Sagarmatha,29.0)
// Manor Top
laptimes_ach(10,0,"0:42:00",Vector(), ManorTop,42.0)
laptimes_ach(10,1,"0:39:00",Venom(),  ManorTop,39.0)
laptimes_ach(10,2,"0:37:00",Flash(),  ManorTop,37.0)
laptimes_ach(10,3,"0:34:00",Rapier(), ManorTop,34.0)
laptimes_ach(10,4,"0:31:00",Phantom(),ManorTop,31.0)
// Mandrashee
laptimes_ach(11,0,"0:37:00",Vector(), Mandrashee,37.0)
laptimes_ach(11,1,"0:34:00",Venom(),  Mandrashee,34.0)
laptimes_ach(11,2,"0:31:00",Flash(),  Mandrashee,31.0)
laptimes_ach(11,3,"0:28:00",Rapier(), Mandrashee,28.0)
laptimes_ach(11,4,"0:25:00",Phantom(),Mandrashee,25.0)

///////////////////////////////////////////////////////////////
function lap()=>dword(0x00b72094)
function cancel()=>dword(0x00ea3924)==0x5220656d || dword(0x00ea3924)==0x6d614720
function blt()=>float(0x00b72034)
// Leaderboards - Lap Times
function leaderboards_blt(tn,cn,class,track,lap)
{
    leaderboard(
    title= TrackNames[tn] + ClassNames[cn] + " - Time Trial (Lap)",
    description= TrackNames[tn] + ClassNames[cn] + " Best Lap Time",
        start=
        dword(0x00ea3924)!=0x476e4920 &&
        SinglePlayer() &&
        TimeTrialMode() &&
        class && 
        track &&
        lap()>prev(lap()),
        cancel=
        cancel(),
        submit=
        prev(lap())>0 &&
        lap()>1,
        value=
        blt(),
        format="SECS",
        lower_is_better=true
    )
}
///// Alpha
// Vineta K 
leaderboards_blt(0,0,Vector() ,VinetaK,3)
leaderboards_blt(0,1,Venom()  ,VinetaK,3)
leaderboards_blt(0,2,Flash()  ,VinetaK,4)
leaderboards_blt(0,3,Rapier() ,VinetaK,4)
leaderboards_blt(0,4,Phantom(),VinetaK,5)
// Modesto Heights
leaderboards_blt(1,0,Vector() ,ModestoHeights,3)
leaderboards_blt(1,1,Venom()  ,ModestoHeights,3)
leaderboards_blt(1,2,Flash()  ,ModestoHeights,4)
leaderboards_blt(1,3,Rapier() ,ModestoHeights,4)
leaderboards_blt(1,4,Phantom(),ModestoHeights,5)
// Chenghou Project
leaderboards_blt(2,0,Vector() ,ChenghouProject,3)
leaderboards_blt(2,1,Venom()  ,ChenghouProject,3)
leaderboards_blt(2,2,Flash()  ,ChenghouProject,4)
leaderboards_blt(2,3,Rapier() ,ChenghouProject,4)
leaderboards_blt(2,4,Phantom(),ChenghouProject,5)
// Blue Ridge
leaderboards_blt(3,0,Vector() ,BlueRidge,3)
leaderboards_blt(3,1,Venom()  ,BlueRidge,3)
leaderboards_blt(3,2,Flash()  ,BlueRidge,4)
leaderboards_blt(3,3,Rapier() ,BlueRidge,4)
leaderboards_blt(3,4,Phantom(),BlueRidge,5)
///// Beta
// Sunucit
leaderboards_blt(4,0,Vector() ,Sinucit,3)
leaderboards_blt(4,1,Venom()  ,Sinucit,3)
leaderboards_blt(4,2,Flash()  ,Sinucit,4)
leaderboards_blt(4,3,Rapier() ,Sinucit,4)
leaderboards_blt(4,4,Phantom(),Sinucit,5)
// Citta Nuova
leaderboards_blt(5,0,Vector() ,CittaNuova,3)
leaderboards_blt(5,1,Venom()  ,CittaNuova,3)
leaderboards_blt(5,2,Flash()  ,CittaNuova,4)
leaderboards_blt(5,3,Rapier() ,CittaNuova,4)
leaderboards_blt(5,4,Phantom(),CittaNuova,5)
// Sebenco Climb
leaderboards_blt(6,0,Vector() ,SebencoClimb,3)
leaderboards_blt(6,1,Venom()  ,SebencoClimb,3)
leaderboards_blt(6,2,Flash()  ,SebencoClimb,4)
leaderboards_blt(6,3,Rapier() ,SebencoClimb,4)
leaderboards_blt(6,4,Phantom(),SebencoClimb,5)
// Sol 2
leaderboards_blt(7,0,Vector() ,Sol2,3)
leaderboards_blt(7,1,Venom()  ,Sol2,3)
leaderboards_blt(7,2,Flash()  ,Sol2,4)
leaderboards_blt(7,3,Rapier() ,Sol2,4)
leaderboards_blt(7,4,Phantom(),Sol2,5)
///// Classic
// Karbonis
leaderboards_blt(8,0,Vector() ,Karbonis,3)
leaderboards_blt(8,1,Venom()  ,Karbonis,3)
leaderboards_blt(8,2,Flash()  ,Karbonis,4)
leaderboards_blt(8,3,Rapier() ,Karbonis,4)
leaderboards_blt(8,4,Phantom(),Karbonis,5)
// Sagarmatha
leaderboards_blt(9,0,Vector() ,Sagarmatha,3)
leaderboards_blt(9,1,Venom()  ,Sagarmatha,3)
leaderboards_blt(9,2,Flash()  ,Sagarmatha,4)
leaderboards_blt(9,3,Rapier() ,Sagarmatha,4)
leaderboards_blt(9,4,Phantom(),Sagarmatha,5)
// Manor Top
leaderboards_blt(10,0,Vector() ,ManorTop,3)
leaderboards_blt(10,1,Venom()  ,ManorTop,3)
leaderboards_blt(10,2,Flash()  ,ManorTop,4)
leaderboards_blt(10,3,Rapier() ,ManorTop,4)
leaderboards_blt(10,4,Phantom(),ManorTop,5)
// Mandrashee
leaderboards_blt(11,0,Vector() ,Mandrashee,3)
leaderboards_blt(11,1,Venom()  ,Mandrashee,3)
leaderboards_blt(11,2,Flash()  ,Mandrashee,4)
leaderboards_blt(11,3,Rapier() ,Mandrashee,4)
leaderboards_blt(11,4,Phantom(),Mandrashee,5)
///////////////////////////////////////////////////////
// Leaderboards - Full Time
function ft()=>float(tbyte(0x00a8c9d4)+0x01000118)
function leaderboards_ft(tn,cn,class,track,lap)
{
    leaderboard(
    title= TrackNames[tn] + ClassNames[cn] + " - Time Trial (Full Time)",
    description= TrackNames[tn] + ClassNames[cn] + " Best Full Time",
        start=
        dword(0x00ea3924)!=0x476e4920 &&
        SinglePlayer() &&
        TimeTrialMode() &&
        class && 
        track &&
        prev(lap())==0 &&
        lap()==1,
        cancel=
        cancel(),
        submit=
        prev(lap())==lap &&
        lap()>lap,
        value=
        ft(),
        format="SECS",
        lower_is_better=true
    )
}
///// Alpha
// Vineta K 
leaderboards_ft(0,0,Vector() ,VinetaK,3)
leaderboards_ft(0,1,Venom()  ,VinetaK,3)
leaderboards_ft(0,2,Flash()  ,VinetaK,4)
leaderboards_ft(0,3,Rapier() ,VinetaK,4)
leaderboards_ft(0,4,Phantom(),VinetaK,5)
// Modesto Heights
leaderboards_ft(1,0,Vector() ,ModestoHeights,3)
leaderboards_ft(1,1,Venom()  ,ModestoHeights,3)
leaderboards_ft(1,2,Flash()  ,ModestoHeights,4)
leaderboards_ft(1,3,Rapier() ,ModestoHeights,4)
leaderboards_ft(1,4,Phantom(),ModestoHeights,5)
// Chenghou Project
leaderboards_ft(2,0,Vector() ,ChenghouProject,3)
leaderboards_ft(2,1,Venom()  ,ChenghouProject,3)
leaderboards_ft(2,2,Flash()  ,ChenghouProject,4)
leaderboards_ft(2,3,Rapier() ,ChenghouProject,4)
leaderboards_ft(2,4,Phantom(),ChenghouProject,5)
// Blue Ridge
leaderboards_ft(3,0,Vector() ,BlueRidge,3)
leaderboards_ft(3,1,Venom()  ,BlueRidge,3)
leaderboards_ft(3,2,Flash()  ,BlueRidge,4)
leaderboards_ft(3,3,Rapier() ,BlueRidge,4)
leaderboards_ft(3,4,Phantom(),BlueRidge,5)
///// Beta
// Sunucit
leaderboards_ft(4,0,Vector() ,Sinucit,3)
leaderboards_ft(4,1,Venom()  ,Sinucit,3)
leaderboards_ft(4,2,Flash()  ,Sinucit,4)
leaderboards_ft(4,3,Rapier() ,Sinucit,4)
leaderboards_ft(4,4,Phantom(),Sinucit,5)
// Citta Nuova
leaderboards_ft(5,0,Vector() ,CittaNuova,3)
leaderboards_ft(5,1,Venom()  ,CittaNuova,3)
leaderboards_ft(5,2,Flash()  ,CittaNuova,4)
leaderboards_ft(5,3,Rapier() ,CittaNuova,4)
leaderboards_ft(5,4,Phantom(),CittaNuova,5)
// Sebenco Climb
leaderboards_ft(6,0,Vector() ,SebencoClimb,3)
leaderboards_ft(6,1,Venom()  ,SebencoClimb,3)
leaderboards_ft(6,2,Flash()  ,SebencoClimb,4)
leaderboards_ft(6,3,Rapier() ,SebencoClimb,4)
leaderboards_ft(6,4,Phantom(),SebencoClimb,5)
// Sol 2
leaderboards_ft(7,0,Vector() ,Sol2,3)
leaderboards_ft(7,1,Venom()  ,Sol2,3)
leaderboards_ft(7,2,Flash()  ,Sol2,4)
leaderboards_ft(7,3,Rapier() ,Sol2,4)
leaderboards_ft(7,4,Phantom(),Sol2,5)
///// Classic
// Karbonis
leaderboards_ft(8,0,Vector() ,Karbonis,3)
leaderboards_ft(8,1,Venom()  ,Karbonis,3)
leaderboards_ft(8,2,Flash()  ,Karbonis,4)
leaderboards_ft(8,3,Rapier() ,Karbonis,4)
leaderboards_ft(8,4,Phantom(),Karbonis,5)
// Sagarmatha
leaderboards_ft(9,0,Vector() ,Sagarmatha,3)
leaderboards_ft(9,1,Venom()  ,Sagarmatha,3)
leaderboards_ft(9,2,Flash()  ,Sagarmatha,4)
leaderboards_ft(9,3,Rapier() ,Sagarmatha,4)
leaderboards_ft(9,4,Phantom(),Sagarmatha,5)
// Manor Top
leaderboards_ft(10,0,Vector() ,ManorTop,3)
leaderboards_ft(10,1,Venom()  ,ManorTop,3)
leaderboards_ft(10,2,Flash()  ,ManorTop,4)
leaderboards_ft(10,3,Rapier() ,ManorTop,4)
leaderboards_ft(10,4,Phantom(),ManorTop,5)
// Mandrashee
leaderboards_ft(11,0,Vector() ,Mandrashee,3)
leaderboards_ft(11,1,Venom()  ,Mandrashee,3)
leaderboards_ft(11,2,Flash()  ,Mandrashee,4)
leaderboards_ft(11,3,Rapier() ,Mandrashee,4)
leaderboards_ft(11,4,Phantom(),Mandrashee,5)

// Functions
pointer=tbyte(0xa8c9d4)
ftime=float(pointer + 0x01000118)
function fulltime(time)=>ftime<=time

function LapCheck(LAP)=> trigger_when(prev(dword(0x00b72094))==LAP) && 
                      trigger_when(dword(0x00b72094)>LAP) 
ClassNames2 = ["Vector","Venom","Flash","Rapier","Phantom"]
// Gold Times 
function goldtimes_ach(tn,cn,desc_time,class,track,time,pts,LAP)
{
    achievement(
        title= TrackNames[tn] + " (" + ClassNames2[cn] + ")" + " Gold Time",
        description= "Get a time of " + desc_time + " or better in " + TrackNames[tn] + "'s " + ClassNames2[cn] + " Time Trial",
        points=pts,
        trigger=
        StateCheckLT() &&
        SinglePlayer() &&
        TimeTrialMode() &&
        class &&
        track &&
        fulltime(time) &&
        LapCheck(LAP)
    )
}
// Sinucit
goldtimes_ach(4,0,"3:14:00",Vector(), Sinucit,194.0,3,3)
goldtimes_ach(4,1,"2:44:00",Venom(),  Sinucit,164.0,3,3)
goldtimes_ach(4,2,"3:14:00",Flash(),  Sinucit,194.0,5,4)
goldtimes_ach(4,3,"2:44:00",Rapier(), Sinucit,164.0,5,4)
goldtimes_ach(4,4,"3:16:00",Phantom(),Sinucit,196.0,10,5)
// Citta Nuova
goldtimes_ach(5,0,"2:50:00",Vector(), CittaNuova,170.0,3,3)
goldtimes_ach(5,1,"2:29:00",Venom(),  CittaNuova,149.0,3,3)
goldtimes_ach(5,2,"3:04:00",Flash(),  CittaNuova,184.0,5,4)
goldtimes_ach(5,3,"2:44:00",Rapier(), CittaNuova,164.0,5,4)
goldtimes_ach(5,4,"3:10:00",Phantom(),CittaNuova,190.0,10,5)
// Sebenco Climb
goldtimes_ach(6,0,"2:21:00",Vector(), SebencoClimb,141.0,3,3)
goldtimes_ach(6,1,"2:02:00",Venom(),  SebencoClimb,122.0,3,3)
goldtimes_ach(6,2,"2:29:00",Flash(),  SebencoClimb,149.0,5,4)
goldtimes_ach(6,3,"2:14:00",Rapier(), SebencoClimb,134.0,5,4)
goldtimes_ach(6,4,"2:38:00",Phantom(),SebencoClimb,158.0,10,5)
// Sol 2
goldtimes_ach(7,0,"2:16:00",Vector(), Sol2,136.0,3,3)
goldtimes_ach(7,1,"1:55:00",Venom(),  Sol2,115.0,3,3)
goldtimes_ach(7,2,"2:15:00",Flash(),  Sol2,135.0,5,4)
goldtimes_ach(7,3,"1:55:00",Rapier(), Sol2,115.0,5,4)
goldtimes_ach(7,4,"2:16:00",Phantom(),Sol2,136.0,10,5)
// Karbonis
goldtimes_ach(8,0,"1:46:00",Vector(), Karbonis,106.0,3,3)
goldtimes_ach(8,1,"1:33:00",Venom(),  Karbonis,93.0,3,3)
goldtimes_ach(8,2,"1:51:00",Flash(),  Karbonis,111.0,5,4)
goldtimes_ach(8,3,"1:40:00",Rapier(), Karbonis,100.0,5,4)
goldtimes_ach(8,4,"2:01:00",Phantom(),Karbonis,121.0,10,5)
// Sagarmatha
goldtimes_ach(9,0,"2:06:00",Vector(), Sagarmatha,126.0,3,3)
goldtimes_ach(9,1,"1:50:00",Venom(),  Sagarmatha,110.0,3,3)
goldtimes_ach(9,2,"2:09:00",Flash(),  Sagarmatha,129.0,5,4)
goldtimes_ach(9,3,"1:52:00",Rapier(), Sagarmatha,112.0,5,4)
goldtimes_ach(9,4,"2:09:00",Phantom(),Sagarmatha,129.0,10,5)
// Manor Top
goldtimes_ach(10,0,"2:15:00",Vector(), ManorTop,135.0,3,3)
goldtimes_ach(10,1,"1:57:00",Venom(),  ManorTop,117.0,3,3)
goldtimes_ach(10,2,"2:22:00",Flash(),  ManorTop,142.0,5,4)
goldtimes_ach(10,3,"2:04:00",Rapier(), ManorTop,124.0,5,4)
goldtimes_ach(10,4,"2:28:00",Phantom(),ManorTop,148.0,10,5)
// Mandrashee
goldtimes_ach(11,0,"1:53:00",Vector(), Mandrashee,113.0,3,3)
goldtimes_ach(11,1,"1:35:00",Venom(),  Mandrashee,95.0,3,3)
goldtimes_ach(11,2,"1:53:00",Flash(),  Mandrashee,113.0,5,4)
goldtimes_ach(11,3,"1:40:00",Rapier(), Mandrashee,100.0,5,4)
goldtimes_ach(11,4,"1:55:00",Phantom(),Mandrashee,115.0,10,5)






















