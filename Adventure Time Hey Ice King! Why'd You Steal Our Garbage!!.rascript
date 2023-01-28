// Adventure Time: Hey Ice King! Why'd You Steal Our Garbage?!!
// #ID = 16621

// wahoo 

////// Save Slots and Inventory
// Save Slot and Offset
ActiveSaveSlot=0x0de94c
OffsetSaveSlot=0xa8
// Inventory
// Variables
Inv1=0x0de972
Inv2=0x0de973
Inv3=0x0de974
Inv4=0x0de975
Inv5=0x0de976
Inv6=0x0de977
Inv7=0x0de978
Inv8=0x0de979
Inv9=0x0de97a
Inv10=0x0de97b
Inv11=0x0de97c
Inv12=0x0de97d
Inv13=0x0de97e
Inv14=0x0de97f
Inv15=0x0de980
Inv16=0x0de981
Inv17=0x0de982
Inv18=0x0de983
Inv19=0x0de984
Inv20=0x0de985
Inv21=0x0de986
Inv22=0x0de987
Inv23=0x0de988
Inv24=0x0de989
Inv25=0x0de98a
Inv26=0x0de98b
Inv27=0x0de98c
Inv28=0x0de98d
Inv29=0x0de98e
Inv30=0x0de98f
Inv31=0x0de990
Inv32=0x0de991
Inv33=0x0de992
Inv34=0x0de993
Inv35=0x0de994
Inv36=0x0de995
Inv37=0x0de996
Inv38=0x0de997
Inv39=0x0de998
Inv40=0x0de999
// Array
Inventory = [
Inv1,
Inv2,
Inv3,
Inv4,
Inv5,
Inv6,
Inv7,
Inv8,
Inv9,
Inv10,
Inv11,
Inv12,
Inv13,
Inv14,
Inv15,
Inv16,
Inv17,
Inv18,
Inv19,
Inv20,
Inv21,
Inv22,
Inv23,
Inv24,
Inv25,
Inv26,
Inv27,
Inv28,
Inv29,
Inv30,
Inv31,
Inv32,
Inv33,
Inv34,
Inv35,
Inv36,
Inv37,
Inv38,
Inv39,
Inv40,
]
// Test Juicer
function INVCHECK_ITEMBEINGUSED(INVSLOT,ITEM) => 

byte(byte(ActiveSaveSlot)*OffsetSaveSlot) && prev(byte(Inventory[INVSLOT]))==ITEM && byte(Inventory[INVSLOT])==0

achievement(
    title="Borgir",
    description="Eat the burger",
    points=0,
    trigger= INVCHECK_ITEMBEINGUSED(0,0x28) ||
             INVCHECK_ITEMBEINGUSED(1,0x28)
)













































