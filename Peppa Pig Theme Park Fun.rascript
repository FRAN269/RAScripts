// Peppa Pig: Theme Park Fun
// #ID = 22038

// Store Bitflags
PROFILE1P1=0x259610
PROFILE1P2=0x259611
PROFILE1P3=0x259612



ACTIVESAVESLOT=0x22d254
OFFSET=0xA0
// Save Protection
function save_slot() => dword(0x22d254)
function save_protection() => prev(save_slot()) != 0xffffffff && save_slot() == prev(save_slot())
// Store AddSource Chain
function STOREADDSOURCECHAIN(deltacount,memcount)
{
    return prev(bitcount(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P1))+
             prev(bitcount(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P2))+
             prev(bit0(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3))+
             prev(bit1(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3))+
             prev(bit2(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3))+
             prev(bit3(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3))==deltacount &&
             bitcount(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P1)+
             bitcount(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P2)+
             bit0(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3)+
             bit1(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3)+
             bit2(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3)+
             bit3(dword(ACTIVESAVESLOT)*OFFSET+PROFILE1P3)==memcount
}
// Store Achievements

achievement(
    title="First Toy",
    description="Purchase your first item in the store!",
    points=2,
    trigger= STOREADDSOURCECHAIN(0,1) && save_protection()
)
achievement(
    title="Just One More Mom!",
    description="Purchase 50% of the items in the store!",
    points=5,
    trigger= STOREADDSOURCECHAIN(9,10) && save_protection()
)
achievement(
    title="You’ve Got a Friend in Me",
    description="Purchase all the items in the store!",
    points=10,
    trigger= STOREADDSOURCECHAIN(19,20) && save_protection()
)

function save_slot() => dword(0x22d254)
function save_protection() => prev(save_slot()) != 0xffffffff && save_slot() == prev(save_slot())
base_flags = 0x25960c

achievement( //Let's Get Ready!
    "Ready for the Day!",
    "Complete Let's Get Ready!",
    points=2,
    trigger=
        save_protection() &&
        bit1(save_slot() * 0xa0  + base_flags) > prev(bit1(save_slot() * 0xa0  + base_flags))
)
achievement( //Prepare a Picnic!
    "A Meal for Kings",
    "Complete Prepare a Picnic!",
    points=2,
    trigger=
        save_protection() &&
        bit2(save_slot() * 0xa0  + base_flags) > prev(bit2(save_slot() * 0xa0  + base_flags))
)
//I spy Cheevos
//Map String Address: 0x21d38d
function map_address() => word_be(0x21d38d)
function i_spy_mode() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x1dc) 
function i_spy_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x174)
i_spy_map = 0x3033 //"03"
i_spy = 0x29
letters = 0
colors = 1
achievement(
    "Spying on Colors",
    "Complete a game of I Spy with Colors!",
    points=2,
    trigger=
        map_address() == i_spy_map &&
        i_spy_mode() == colors &&
        prev(i_spy_ticks()) == 9 &&
        i_spy_ticks() == 10
        
)
achievement(
    "Spying on Letters",
    "Complete a game of I Spy with Letters!",
    points=2,
    trigger=
        map_address() == i_spy_map &&
        i_spy_mode() == letters &&
        prev(i_spy_ticks()) == 9 &&
        i_spy_ticks() == 10
)
//Fix the Car
achievement(
    "Star Mechanic",
    "Complete Fix the Car!",
    points=2,
    trigger=
        save_protection() &&
        bit5(save_slot() * 0xa0  + base_flags) > prev(bit2(save_slot() * 0xa0  + base_flags))
)
// Mend the Map
puzzle_winflag=dword(0x2b5dd4)
puzzle_size=dword(0x22d2c4)
puzzle_map=0x3036
function yolepuzzle(title,description,points,size)
{
    achievement(
        title=title,
        description=description,
        points=points,
        trigger=
        map_address() == puzzle_map &&
        puzzle_size == size &&
        prev(puzzle_winflag)==0 &&
        puzzle_winflag==1
        
    )
}
yolepuzzle("Jig",  "Complete the 4 piece puzzle in Mend the Map",1,0)
yolepuzzle("Saw","Complete the 6 piece puzzle in Mend the Map",3,1)
yolepuzzle("Swag?",  "Complete the 9 piece puzzle in Mend the Map",5,2)

function timed_cheevo(ticks, timer) => //Use for achievements when checking timed mode completion.
        
        timer != -1 &&
        prev(ticks) == 9 &&
        ticks == 10


//See-Saw
see_saw = 0x3131
function see_saw_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x1f8)
function see_saw_timer() => float((dword(0x1f8cd0) & 0x1ffffff)  + 0x1fc)
achievement(
    "Weighing Our Options",
    "Complete the See-saw game in Timed mode!",
    points=5,
    trigger=
        map_address() == see_saw &&
        timed_cheevo(see_saw_timer(), see_saw_ticks())
)

//Bumper Cars
bumper_car = 0x3136
function bumper_car_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x16c)
function bumper_car_timer() => float((dword(0x1f8cd0) & 0x1ffffff)  + 0x17c)
achievement(
    "Bumpin' Pigs",
    "Complete the Bumper Cars game in Timed mode!",
    points=5,
    trigger=
        map_address() == bumper_car &&
        timed_cheevo(bumper_car_ticks(), bumper_car_timer()) 
               
)
//Ice Cream
function ice_cream_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x250)
function ice_cream_timer() => float((dword(0x1f8cd0) & 0x1ffffff)  + 0x258)
ice_cream = 0x3139
achievement(
    "Service With a Smile",
    "Complete the Ice Cream game in Timed mode!",
    points=5,
    trigger=
        map_address() == ice_cream &&
        timed_cheevo(ice_cream_ticks(), ice_cream_timer())
)
//Tea Cup Ride
tea_cup = 0x3134
function tea_cup_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x18c)
achievement(
    "A Twisty Ride!",
    "Complete the Tea Cup Ride game!",
    points=5,
    trigger=
        map_address() == tea_cup &&
        prev(tea_cup_ticks()) == 9 &&
        tea_cup_ticks() == 10
)
//Picnic
picnic = 0x3230
function picnic_ticks() => dword((dword(0x1f8cd0) & 0x1ffffff)  + 0x174)
function picnic_timer() => float((dword(0x1f8cd0) & 0x1ffffff)  + 0x170)
achievement(
    "The Picnic of Ages",
    "Complete the Picnic game in Timed mode!",
    points=5,
    trigger=
        map_address() == picnic &&
        timed_cheevo(picnic_ticks(), picnic_timer())
)
screen_rp = {
    0x3031:"Let's Get Ready", //Done
    0x3032:"Prepare a Picnic", //Done
    0x3033:"I Spy", //Done
    0x3035:"Fix the Car!", //Done
    0x3036:"Mend the Map", //FRAN - Done
    0x3038:"Train Ride", //?
    0x3039:"Musical Water Fountain", //FRAN - Todo
    0x3131:"See-Saw", //Done
    0x3132:"Water Cannon", //FRAN - Todo
    0x3133:"Trampolines", //FRAN - Todo
    0x3134:"Tea Cup Ride", //Done
    0x3135:"Hot Air Balloon",
    0x3136:"Bumper Cars", //Done
    0x3138:"Candy Floss", //FRAN
    0x3139:"Ice Cream", //Done
    0x3230:"Picnic", //Done
    0x3231:"Remote Controlled Cars",
    0x3232:"Shop" //Done - FRAN
    
}
rich_presence_display("{0}",
    rich_presence_lookup("Map", map_address(), screen_rp, "In Menu...")
)





