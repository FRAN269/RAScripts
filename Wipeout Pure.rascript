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
function TimeLapCheck()=> trigger_when(dword(0x00b72034)!=float(0))
function LapCheck()=> trigger_when(dword(0x00b72094)>prev(dword(0x00b72094)))
// Lap Time Function
function LapTime(time)=> float(0x00b72034)<=float(time)
// Titles, Descriptions, and other shit
TrackNames = ["Vineta K","Modesto Heights","Chenghou Project","Blue Ridge","Sinucit","Citta Nuova","Sebenco Climb","Sol 2","Karbonis","Sagarmatha","Manor Top","Mandrashee"]
ClassNames = ["Vector","Venom","Flash","Rapier","Phantom"]
// Dictionary 

Laps = 
{
   
}






