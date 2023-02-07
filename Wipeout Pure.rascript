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
ClassNames = [" (Vector) "," (Venom) "," (Flash) "," (Rapier) "," (Phantom) "]
// Achievemenents!
function laptimes_ach(tn,cn,desc_time,class,league,track,time)
{
    achievement(
        title= TrackNames[tn] + ClassNames[cn] + "Lap Time",
        description= "In Time Trial mode, beat a time of " + desc_time + " in " + TrackNames[tn] + ClassNames[cn],
        points=5,
        trigger=
        StateCheckLT() &&
        SinglePlayer() &&
        TimeTrialMode() &&
        class &&
        league && track &&
        LapTime(time) &&
        TimeLapCheck() &&
        LapCheck()
    )
}
// Vineta K 
laptimes_ach(0,0,"0:35:00",Vector(), Alpha(),Track1(),35.0)
laptimes_ach(0,1,"0:33:00",Venom(),  Alpha(),Track1(),33.0)
laptimes_ach(0,2,"0:30:00",Flash(),  Alpha(),Track1(),30.0)
laptimes_ach(0,3,"0:25:00",Rapier(), Alpha(),Track1(),25.0)
laptimes_ach(0,4,"0:22:00",Phantom(),Alpha(),Track1(),22.0)
// Modesto Heights 
laptimes_ach(1,0,"0:41:00",Vector(), Alpha(),Track2(),41.0)
laptimes_ach(1,1,"0:36:00",Venom(),  Alpha(),Track2(),36.0)
laptimes_ach(1,2,"0:32:00",Flash(),  Alpha(),Track2(),32.0)
laptimes_ach(1,3,"0:29:00",Rapier(), Alpha(),Track2(),29.0)
laptimes_ach(1,4,"0:26:00",Phantom(),Alpha(),Track2(),26.0)
// Chenghou Project
laptimes_ach(2,0,"0:48:00",Vector(), Alpha(),Track3(),48.0)
laptimes_ach(2,1,"0:41:00",Venom(),  Alpha(),Track3(),41.0)
laptimes_ach(2,2,"0:37:00",Flash(),  Alpha(),Track3(),37.0)
laptimes_ach(2,3,"0:33:00",Rapier(), Alpha(),Track3(),33.0)
laptimes_ach(2,4,"0:30:00",Phantom(),Alpha(),Track3(),30.0)
// Blue Ridge
laptimes_ach(3,0,"0:47:00",Vector(), Alpha(),Track4(),47.0)
laptimes_ach(3,1,"0:42:00",Venom(),  Alpha(),Track4(),42.0)
laptimes_ach(3,2,"0:38:00",Flash(),  Alpha(),Track4(),38.0)
laptimes_ach(3,3,"0:34:00",Rapier(), Alpha(),Track4(),34.0)
laptimes_ach(3,4,"0:30:00",Phantom(),Alpha(),Track4(),30.0)
// Sinucit
laptimes_ach(4,0,"0:59:00",Vector(), Beta(),Track1(),59.0)
laptimes_ach(4,1,"0:52:00",Venom(),  Beta(),Track1(),52.0)
laptimes_ach(4,2,"0:48:00",Flash(),  Beta(),Track1(),48.0)
laptimes_ach(4,3,"0:44:00",Rapier(), Beta(),Track1(),44.0)
laptimes_ach(4,4,"0:38:00",Phantom(),Beta(),Track1(),38.0)
// Citta Nuova
laptimes_ach(5,0,"0:56:00",Vector(), Beta(),Track2(),56.0)
laptimes_ach(5,1,"0:51:00",Venom(),  Beta(),Track2(),51.0)
laptimes_ach(5,2,"0:46:00",Flash(),  Beta(),Track2(),46.0)
laptimes_ach(5,3,"0:42:00",Rapier(), Beta(),Track2(),42.0)
laptimes_ach(5,4,"0:38:00",Phantom(),Beta(),Track2(),38.0)
// Sebenco Climb
laptimes_ach(6,0,"0:46:00",Vector(), Beta(),Track3(),46.0)
laptimes_ach(6,1,"0:42:00",Venom(),  Beta(),Track3(),42.0)
laptimes_ach(6,2,"0:38:00",Flash(),  Beta(),Track3(),38.0)
laptimes_ach(6,3,"0:34:00",Rapier(), Beta(),Track3(),34.0)
laptimes_ach(6,4,"0:30:00",Phantom(),Beta(),Track3(),30.0)
// Sol 2
laptimes_ach(7,0,"0:42:00",Vector(), Beta(),Track4(),42.0)
laptimes_ach(7,1,"0:38:00",Venom(),  Beta(),Track4(),38.0)
laptimes_ach(7,2,"0:34:00",Flash(),  Beta(),Track4(),34.0)
laptimes_ach(7,3,"0:30:00",Rapier(), Beta(),Track4(),30.0)
laptimes_ach(7,4,"0:26:00",Phantom(),Beta(),Track4(),26.0)
// Karbonis
laptimes_ach(8,0,"0:35:00",Vector(), Classic(),Track1(),35.0)
laptimes_ach(8,1,"0:32:00",Venom(),  Classic(),Track1(),32.0)
laptimes_ach(8,2,"0:29:00",Flash(),  Classic(),Track1(),29.0)
laptimes_ach(8,3,"0:27:00",Rapier(), Classic(),Track1(),27.0)
laptimes_ach(8,4,"0:25:00",Phantom(),Classic(),Track1(),25.0)
// Sagarmatha
laptimes_ach(9,0,"0:41:00",Vector(), Classic(),Track2(),41.0)
laptimes_ach(9,1,"0:38:00",Venom(),  Classic(),Track2(),38.0)
laptimes_ach(9,2,"0:35:00",Flash(),  Classic(),Track2(),35.0)
laptimes_ach(9,3,"0:32:00",Rapier(), Classic(),Track2(),32.0)
laptimes_ach(9,4,"0:29:00",Phantom(),Classic(),Track2(),29.0)
// Manor Top
laptimes_ach(10,0,"0:42:00",Vector(), Classic(),Track3(),42.0)
laptimes_ach(10,1,"0:39:00",Venom(),  Classic(),Track3(),39.0)
laptimes_ach(10,2,"0:37:00",Flash(),  Classic(),Track3(),37.0)
laptimes_ach(10,3,"0:34:00",Rapier(), Classic(),Track3(),34.0)
laptimes_ach(10,4,"0:31:00",Phantom(),Classic(),Track3(),31.0)
// Mandrashee
laptimes_ach(11,0,"0:37:00",Vector(), Classic(),Track4(),37.0)
laptimes_ach(11,1,"0:34:00",Venom(),  Classic(),Track4(),34.0)
laptimes_ach(11,2,"0:31:00",Flash(),  Classic(),Track4(),31.0)
laptimes_ach(11,3,"0:28:00",Rapier(), Classic(),Track4(),28.0)
laptimes_ach(11,4,"0:25:00",Phantom(),Classic(),Track4(),25.0)

///////////////////////////////////////////////////////////////
function lap()=>dword(0x00b72094)
function cancel()=>dword(0x00ea3924)==0x5220656d
function blt()=>float(0x00b72034)
// Leaderboards - Lap Times
function leaderboards_blt(tn,cn,class,league,track,lap)
{
    leaderboard(
    title= TrackNames[tn] + ClassNames[cn] + "- Time Trial (Lap)",
    description= TrackNames[tn] + ClassNames[cn] + "Best Lap Time",
        start=
        SinglePlayer() &&
        TimeTrialMode() &&
        class && league && track &&
        prev(lap())==0 && lap()==1,
        cancel=
        cancel(),
        submit=
        prev(lap())==lap && lap()>lap,
        value=
        blt(),
        format="SECS",
        lower_is_better=true
    )
}
///// Alpha
// Vineta K 
leaderboards_blt(0,0,Vector() ,Alpha(),Track1(),3)
leaderboards_blt(0,1,Venom()  ,Alpha(),Track1(),3)
leaderboards_blt(0,2,Flash()  ,Alpha(),Track1(),4)
leaderboards_blt(0,3,Rapier() ,Alpha(),Track1(),4)
leaderboards_blt(0,4,Phantom(),Alpha(),Track1(),5)
// Modesto Heights
leaderboards_blt(1,0,Vector() ,Alpha(),Track2(),3)
leaderboards_blt(1,1,Venom()  ,Alpha(),Track2(),3)
leaderboards_blt(1,2,Flash()  ,Alpha(),Track2(),4)
leaderboards_blt(1,3,Rapier() ,Alpha(),Track2(),4)
leaderboards_blt(1,4,Phantom(),Alpha(),Track2(),5)
// Chenghou Project
leaderboards_blt(2,0,Vector() ,Alpha(),Track3(),3)
leaderboards_blt(2,1,Venom()  ,Alpha(),Track3(),3)
leaderboards_blt(2,2,Flash()  ,Alpha(),Track3(),4)
leaderboards_blt(2,3,Rapier() ,Alpha(),Track3(),4)
leaderboards_blt(2,4,Phantom(),Alpha(),Track3(),5)
// Blue Ridge
leaderboards_blt(3,0,Vector() ,Alpha(),Track4(),3)
leaderboards_blt(3,1,Venom()  ,Alpha(),Track4(),3)
leaderboards_blt(3,2,Flash()  ,Alpha(),Track4(),4)
leaderboards_blt(3,3,Rapier() ,Alpha(),Track4(),4)
leaderboards_blt(3,4,Phantom(),Alpha(),Track4(),5)
///// Beta
// Sunucit
leaderboards_blt(4,0,Vector() ,Beta(),Track1(),3)
leaderboards_blt(4,1,Venom()  ,Beta(),Track1(),3)
leaderboards_blt(4,2,Flash()  ,Beta(),Track1(),4)
leaderboards_blt(4,3,Rapier() ,Beta(),Track1(),4)
leaderboards_blt(4,4,Phantom(),Beta(),Track1(),5)
// Citta Nuova
leaderboards_blt(5,0,Vector() ,Beta(),Track2(),3)
leaderboards_blt(5,1,Venom()  ,Beta(),Track2(),3)
leaderboards_blt(5,2,Flash()  ,Beta(),Track2(),4)
leaderboards_blt(5,3,Rapier() ,Beta(),Track2(),4)
leaderboards_blt(5,4,Phantom(),Beta(),Track2(),5)
// Sebenco Climb
leaderboards_blt(6,0,Vector() ,Beta(),Track3(),3)
leaderboards_blt(6,1,Venom()  ,Beta(),Track3(),3)
leaderboards_blt(6,2,Flash()  ,Beta(),Track3(),4)
leaderboards_blt(6,3,Rapier() ,Beta(),Track3(),4)
leaderboards_blt(6,4,Phantom(),Beta(),Track3(),5)
// Sol 2
leaderboards_blt(7,0,Vector() ,Beta(),Track4(),3)
leaderboards_blt(7,1,Venom()  ,Beta(),Track4(),3)
leaderboards_blt(7,2,Flash()  ,Beta(),Track4(),4)
leaderboards_blt(7,3,Rapier() ,Beta(),Track4(),4)
leaderboards_blt(7,4,Phantom(),Beta(),Track4(),5)
///// Classic
// Karbonis
leaderboards_blt(8,0,Vector() ,Classic(),Track1(),3)
leaderboards_blt(8,1,Venom()  ,Classic(),Track1(),3)
leaderboards_blt(8,2,Flash()  ,Classic(),Track1(),4)
leaderboards_blt(8,3,Rapier() ,Classic(),Track1(),4)
leaderboards_blt(8,4,Phantom(),Classic(),Track1(),5)
// Sagarmatha
leaderboards_blt(9,0,Vector() ,Classic(),Track2(),3)
leaderboards_blt(9,1,Venom()  ,Classic(),Track2(),3)
leaderboards_blt(9,2,Flash()  ,Classic(),Track2(),4)
leaderboards_blt(9,3,Rapier() ,Classic(),Track2(),4)
leaderboards_blt(9,4,Phantom(),Classic(),Track2(),5)
// Manor Top
leaderboards_blt(10,0,Vector() ,Classic(),Track3(),3)
leaderboards_blt(10,1,Venom()  ,Classic(),Track3(),3)
leaderboards_blt(10,2,Flash()  ,Classic(),Track3(),4)
leaderboards_blt(10,3,Rapier() ,Classic(),Track3(),4)
leaderboards_blt(10,4,Phantom(),Classic(),Track3(),5)
// Mandrashee
leaderboards_blt(11,0,Vector() ,Classic(),Track4(),3)
leaderboards_blt(11,1,Venom()  ,Classic(),Track4(),3)
leaderboards_blt(11,2,Flash()  ,Classic(),Track4(),4)
leaderboards_blt(11,3,Rapier() ,Classic(),Track4(),4)
leaderboards_blt(11,4,Phantom(),Classic(),Track4(),5)


























