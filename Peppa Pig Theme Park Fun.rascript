// Peppa Pig: Theme Park Fun
// #ID = 22038

// Store Bitflags
PROFILE1P1=0x259610
PROFILE1P2=0x259611
PROFILE1P3=0x259612



ACTIVESAVESLOT=0x22d254
OFFSET=0xA0

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
    trigger= STOREADDSOURCECHAIN(0,1)
)
achievement(
    title="Just One More Mom!",
    description="Purchase 50% of the items in the store!",
    points=5,
    trigger= STOREADDSOURCECHAIN(9,10)
)
achievement(
    title="You’ve Got a Friend in Me",
    description="Purchase all the items in the store!",
    points=10,
    trigger= STOREADDSOURCECHAIN(19,20)
)
