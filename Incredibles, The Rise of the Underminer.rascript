// Incredibles, The: Rise of the Underminer
// #ID = 21706

// yo le first script, Anic and I like doing multi-region support which is why every achievement has alts depending on the region!
// DON'T LAUGH

//Serial Checks

US = dword(0x005a0d4c)==0x53554c53 && dword(0x005a0d54)==0x3b37312e
EU1 = dword(0x005a114c)==0x53454c53 && dword(0x005a1154)==0x3b33372e
EU2 = dword(0x005a114c)==0x53454c53 && dword(0x005a1154)==0x3b34372e
RU = dword(0x005a19cc)==0x53454c53 && dword(0x005a19d4)==0x3b38352e
JP = dword(0x005a19cc)==0x4d504c53 && dword(0x005a19d4)==0x3b38342e

//Offsets

EUOFF = dword(0x400)
RUOFF = dword(0xC80)

// Cheat Protection

USCH_LEVELLOCKSMITH = dword(0x596afc)
USCH_MRIMASTER = dword(0x596db4)
USCH_FROZMASTER = dword(0x596db8)
USCH_WHYMUSTWEFIGHT = byte(0x5ae46f)
USCH_THISISTOOHARD = bit6(0x00596561)

EUCH_LEVELLOCKSMITH = dword(0x596efc)
EUCH_MRIMASTER = dword(0x5971b4)
EUCH_FROZMASTER = dword(0x5971b8)
EUCH_WHYMUSTWEFIGHT = byte(0x5AE86F)
EUCH_THISISTOOHARD = bit6(0x00596961)

RUCH_LEVELLOCKSMITH = dword(0x59777c)
RUCH_MRIMASTER = dword(0x597a34)
RUCH_FROZMASTER = dword(0x597a38)
RUCH_WHYMUSTWEFIGHT = byte(0x5AF0EF)
RUCH_THISISTOOHARD = bit6(0x005971e1)

function US_CHEATPROTECTION () => USCH_LEVELLOCKSMITH  + USCH_THISISTOOHARD + USCH_WHYMUSTWEFIGHT==0
function EU_CHEATPROTECTION () => EUCH_LEVELLOCKSMITH  + EUCH_THISISTOOHARD + EUCH_WHYMUSTWEFIGHT==0
function RU_CHEATPROTECTION () => RUCH_LEVELLOCKSMITH  + RUCH_THISISTOOHARD + RUCH_WHYMUSTWEFIGHT==0

// Save Protection

US_SaveProtection = byte(0x00595cec)!=4
EU_SaveProtection = byte(0x005960ec)!=4
RU_SaveProtection = byte(0x0059696c)!=4

//MissionID

US_MissionID= dword(0x00596e08)
EU_MissionID= dword(0x00597208) 
RU_MissionID= dword(0x00597a88)

US_Pointer=   0x00596e1c
EU_Pointer=   0x0059721c
RU_Pointer=   0x00597a9c
PointerOffset =   0xfe5c
PointerOffset2 =   0x105ac
// Missions (US)

USM1 = 0x0065e6b4
USM2 = 0x0065e6e4
USM3 = 0x0065e714
USM4 = 0x0065e744
USM5 = 0x0065e774
USM6 = 0x0065e7a4
USM7 = 0x0065e7d4
USM8 = 0x0065e804
USM9 = 0x0065e834
USM10 = 0x0065e864
USM11 = 0x0065e894
USM12 = 0x0065e8c4
USM13 = 0x0065e8f4
USM14 = 0x0065e924
USM15 = 0x0065e954
USM16 = 0x0065e984
USM17 = 0x0065e9b4
USM18 = 0x0065e9e4
USM19 = 0x0065ea14
USM20 = 0x0065ea44

// Missions (EU1,EU2)

EUM1 = 0x0065eab4
EUM2 = 0x0065eae4
EUM3 = 0x0065eb14
EUM4 = 0x0065eb44
EUM5 = 0x0065eb74
EUM6 = 0x0065eba4
EUM7 = 0x0065ebd4
EUM8 = 0x0065ec04
EUM9 = 0x0065ec34
EUM10 = 0x0065ec64
EUM11 = 0x0065ec94
EUM12 = 0x0065ecc4
EUM13 = 0x0065ecf4
EUM14 = 0x0065ed24
EUM15 = 0x0065ed54
EUM16 = 0x0065ed84
EUM17 = 0x0065edb4
EUM18 = 0x0065ede4
EUM19 = 0x0065ee14
EUM20 = 0x0065ee44

// Missions (RU,JP)

RUM1 = 0x0065f3b4
RUM2 = 0x0065f3e4
RUM3 = 0x0065f414
RUM4 = 0x0065f444
RUM5 = 0x0065f474
RUM6 = 0x0065f4a4
RUM7 = 0x0065f4d4
RUM8 = 0x0065f504
RUM9 = 0x0065f534
RUM10 = 0x0065f564
RUM11 = 0x0065f594
RUM12 = 0x0065f5c4
RUM13 = 0x0065f5f4
RUM14 = 0x0065f624
RUM15 = 0x0065f654
RUM16 = 0x0065f684
RUM17 = 0x0065f6b4
RUM18 = 0x0065f6e4
RUM19 = 0x0065f714 
RUM20 = 0x0065f744

// Progression (US)

USM1UNL = prev(bit1(USM1))==0 && bit1(USM1)==1
USM2UNL = prev(bit1(USM2))==0 && bit1(USM2)==1
USM3UNL = prev(bit1(USM3))==0 && bit1(USM3)==1
USM4UNL = prev(bit1(USM4))==0 && bit1(USM4)==1
USM5UNL = prev(bit1(USM5))==0 && bit1(USM5)==1
USM6UNL = prev(bit1(USM6))==0 && bit1(USM6)==1
USM7UNL = prev(bit1(USM7))==0 && bit1(USM7)==1
USM8UNL = prev(bit1(USM8))==0 && bit1(USM8)==1
USM9UNL = prev(bit1(USM9))==0 && bit1(USM9)==1
USM10UNL = prev(bit1(USM10))==0 && bit1(USM10)==1
USM11UNL = prev(bit1(USM11))==0 && bit1(USM11)==1
USM12UNL = prev(bit1(USM12))==0 && bit1(USM12)==1
USM13UNL = prev(bit1(USM13))==0 && bit1(USM13)==1
USM14UNL = prev(bit1(USM14))==0 && bit1(USM14)==1
USM15UNL = prev(bit1(USM15))==0 && bit1(USM15)==1
USM16UNL = prev(bit1(USM16))==0 && bit1(USM16)==1
USM17UNL = prev(bit1(USM17))==0 && bit1(USM17)==1
USM18UNL = prev(bit1(USM18))==0 && bit1(USM18)==1
USM19UNL = prev(bit1(USM19))==0 && bit1(USM19)==1
USM20UNL = prev(bit1(USM20))==0 && bit1(USM20)==1

//Progression (EU1,EU2)

EUM1UNL = prev(bit1(EUM1))==0 && bit1(EUM1)==1
EUM2UNL = prev(bit1(EUM2))==0 && bit1(EUM2)==1
EUM3UNL = prev(bit1(EUM3))==0 && bit1(EUM3)==1
EUM4UNL = prev(bit1(EUM4))==0 && bit1(EUM4)==1
EUM5UNL = prev(bit1(EUM5))==0 && bit1(EUM5)==1
EUM6UNL = prev(bit1(EUM6))==0 && bit1(EUM6)==1
EUM7UNL = prev(bit1(EUM7))==0 && bit1(EUM7)==1
EUM8UNL = prev(bit1(EUM8))==0 && bit1(EUM8)==1
EUM9UNL = prev(bit1(EUM9))==0 && bit1(EUM9)==1
EUM10UNL = prev(bit1(EUM10))==0 && bit1(EUM10)==1
EUM11UNL = prev(bit1(EUM11))==0 && bit1(EUM11)==1
EUM12UNL = prev(bit1(EUM12))==0 && bit1(EUM12)==1
EUM13UNL = prev(bit1(EUM13))==0 && bit1(EUM13)==1
EUM14UNL = prev(bit1(EUM14))==0 && bit1(EUM14)==1
EUM15UNL = prev(bit1(EUM15))==0 && bit1(EUM15)==1
EUM16UNL = prev(bit1(EUM16))==0 && bit1(EUM16)==1
EUM17UNL = prev(bit1(EUM17))==0 && bit1(EUM17)==1
EUM18UNL = prev(bit1(EUM18))==0 && bit1(EUM18)==1
EUM19UNL = prev(bit1(EUM19))==0 && bit1(EUM19)==1
EUM20UNL = prev(bit1(EUM20))==0 && bit1(EUM20)==1

//Progression (RU,JP)

RUM1UNL = prev(bit1(RUM1))==0 && bit1(RUM1)==1
RUM2UNL = prev(bit1(RUM2))==0 && bit1(RUM2)==1
RUM3UNL = prev(bit1(RUM3))==0 && bit1(RUM3)==1
RUM4UNL = prev(bit1(RUM4))==0 && bit1(RUM4)==1
RUM5UNL = prev(bit1(RUM5))==0 && bit1(RUM5)==1
RUM6UNL = prev(bit1(RUM6))==0 && bit1(RUM6)==1
RUM7UNL = prev(bit1(RUM7))==0 && bit1(RUM7)==1
RUM8UNL = prev(bit1(RUM8))==0 && bit1(RUM8)==1
RUM9UNL = prev(bit1(RUM9))==0 && bit1(RUM9)==1
RUM10UNL = prev(bit1(RUM10))==0 && bit1(RUM10)==1
RUM11UNL = prev(bit1(RUM11))==0 && bit1(RUM11)==1
RUM12UNL = prev(bit1(RUM12))==0 && bit1(RUM12)==1
RUM13UNL = prev(bit1(RUM13))==0 && bit1(RUM13)==1
RUM14UNL = prev(bit1(RUM14))==0 && bit1(RUM14)==1
RUM15UNL = prev(bit1(RUM15))==0 && bit1(RUM15)==1
RUM16UNL = prev(bit1(RUM16))==0 && bit1(RUM16)==1
RUM17UNL = prev(bit1(RUM17))==0 && bit1(RUM17)==1
RUM18UNL = prev(bit1(RUM18))==0 && bit1(RUM18)==1
RUM19UNL = prev(bit1(RUM19))==0 && bit1(RUM19)==1
RUM20UNL = prev(bit1(RUM20))==0 && bit1(RUM20)==1

// Goals (US)

USM1GI = prev(bit2(USM1)+bit3(USM1)+bit4(USM1)+bit5(USM1))<=3 && bit2(USM1)+bit3(USM1)+bit4(USM1)+bit5(USM1)==4
USM2GI = prev(bit2(USM2)+bit3(USM2)+bit4(USM2)+bit5(USM2))<=3 && bit2(USM2)+bit3(USM2)+bit4(USM2)+bit5(USM2)==4
USM3GI = prev(bit2(USM3)+bit3(USM3)+bit4(USM3)+bit5(USM3))<=3 && bit2(USM3)+bit3(USM3)+bit4(USM3)+bit5(USM3)==4
USM4GI = prev(bit2(USM4)+bit3(USM4)+bit4(USM4)+bit5(USM4))<=3 && bit2(USM4)+bit3(USM4)+bit4(USM4)+bit5(USM4)==4
USM5GI = prev(bit2(USM5)+bit3(USM5)+bit4(USM5)+bit5(USM5))<=3 && bit2(USM5)+bit3(USM5)+bit4(USM5)+bit5(USM5)==4
USM6GI = prev(bit2(USM6)+bit3(USM6)+bit4(USM6)+bit5(USM6))<=3 && bit2(USM6)+bit3(USM6)+bit4(USM6)+bit5(USM6)==4
USM7GI = prev(bit2(USM7)+bit3(USM7)+bit4(USM7)+bit5(USM7))<=3 && bit2(USM7)+bit3(USM7)+bit4(USM7)+bit5(USM7)==4
USM8GI = prev(bit2(USM8)+bit3(USM8)+bit4(USM8)+bit5(USM8))<=3 && bit2(USM8)+bit3(USM8)+bit4(USM8)+bit5(USM8)==4
USM9GI = prev(bit2(USM9)+bit3(USM9)+bit4(USM9)+bit5(USM9))<=3 && bit2(USM9)+bit3(USM9)+bit4(USM9)+bit5(USM9)==4
USM10GI = prev(bit2(USM10)+bit3(USM10)+bit4(USM10)+bit5(USM10))<=3 && bit2(USM10)+bit3(USM10)+bit4(USM10)+bit5(USM10)==4
USM11GI = prev(bit2(USM11)+bit3(USM11)+bit4(USM11)+bit5(USM11))<=3 && bit2(USM11)+bit3(USM11)+bit4(USM11)+bit5(USM11)==4
USM12GI = prev(bit2(USM12)+bit3(USM12)+bit4(USM12)+bit5(USM12))<=3 && bit2(USM12)+bit3(USM12)+bit4(USM12)+bit5(USM12)==4
USM13GI = prev(bit2(USM13)+bit3(USM13)+bit4(USM13)+bit5(USM13))<=3 && bit2(USM13)+bit3(USM13)+bit4(USM13)+bit5(USM13)==4
USM14GI = prev(bit2(USM14)+bit3(USM14)+bit4(USM14)+bit5(USM14))<=3 && bit2(USM14)+bit3(USM14)+bit4(USM14)+bit5(USM14)==4
USM15GI = prev(bit2(USM15)+bit3(USM15)+bit4(USM15)+bit5(USM15))<=3 && bit2(USM15)+bit3(USM15)+bit4(USM15)+bit5(USM15)==4
USM16GI = prev(bit2(USM16)+bit3(USM16)+bit4(USM16)+bit5(USM16))<=3 && bit2(USM16)+bit3(USM16)+bit4(USM16)+bit5(USM16)==4
USM17GI = prev(bit2(USM17)+bit3(USM17)+bit4(USM17)+bit5(USM17))<=3 && bit2(USM17)+bit3(USM17)+bit4(USM17)+bit5(USM17)==4
USM18GI = prev(bit2(USM18)+bit3(USM18)+bit4(USM18)+bit5(USM18))<=3 && bit2(USM18)+bit3(USM18)+bit4(USM18)+bit5(USM18)==4
USM19GI = prev(bit2(USM19)+bit3(USM19)+bit4(USM19)+bit5(USM19))<=3 && bit2(USM19)+bit3(USM19)+bit4(USM19)+bit5(USM19)==4
USM20GI = prev(bit2(USM20)+bit3(USM20)+bit4(USM20)+bit5(USM20))<=3 && bit2(USM20)+bit3(USM20)+bit4(USM20)+bit5(USM20)==4

// Goals (EU1,EU2)

EUM1GI = prev(bit2(EUM1)+bit3(EUM1)+bit4(EUM1)+bit5(EUM1))<=3 && bit2(EUM1)+bit3(EUM1)+bit4(EUM1)+bit5(EUM1)==4
EUM2GI = prev(bit2(EUM2)+bit3(EUM2)+bit4(EUM2)+bit5(EUM2))<=3 && bit2(EUM2)+bit3(EUM2)+bit4(EUM2)+bit5(EUM2)==4
EUM3GI = prev(bit2(EUM3)+bit3(EUM3)+bit4(EUM3)+bit5(EUM3))<=3 && bit2(EUM3)+bit3(EUM3)+bit4(EUM3)+bit5(EUM3)==4
EUM4GI = prev(bit2(EUM4)+bit3(EUM4)+bit4(EUM4)+bit5(EUM4))<=3 && bit2(EUM4)+bit3(EUM4)+bit4(EUM4)+bit5(EUM4)==4
EUM5GI = prev(bit2(EUM5)+bit3(EUM5)+bit4(EUM5)+bit5(EUM5))<=3 && bit2(EUM5)+bit3(EUM5)+bit4(EUM5)+bit5(EUM5)==4
EUM6GI = prev(bit2(EUM6)+bit3(EUM6)+bit4(EUM6)+bit5(EUM6))<=3 && bit2(EUM6)+bit3(EUM6)+bit4(EUM6)+bit5(EUM6)==4
EUM7GI = prev(bit2(EUM7)+bit3(EUM7)+bit4(EUM7)+bit5(EUM7))<=3 && bit2(EUM7)+bit3(EUM7)+bit4(EUM7)+bit5(EUM7)==4
EUM8GI = prev(bit2(EUM8)+bit3(EUM8)+bit4(EUM8)+bit5(EUM8))<=3 && bit2(EUM8)+bit3(EUM8)+bit4(EUM8)+bit5(EUM8)==4
EUM9GI = prev(bit2(EUM9)+bit3(EUM9)+bit4(EUM9)+bit5(EUM9))<=3 && bit2(EUM9)+bit3(EUM9)+bit4(EUM9)+bit5(EUM9)==4
EUM10GI = prev(bit2(EUM10)+bit3(EUM10)+bit4(EUM10)+bit5(EUM10))<=3 && bit2(EUM10)+bit3(EUM10)+bit4(EUM10)+bit5(EUM10)==4
EUM11GI = prev(bit2(EUM11)+bit3(EUM11)+bit4(EUM11)+bit5(EUM11))<=3 && bit2(EUM11)+bit3(EUM11)+bit4(EUM11)+bit5(EUM11)==4
EUM12GI = prev(bit2(EUM12)+bit3(EUM12)+bit4(EUM12)+bit5(EUM12))<=3 && bit2(EUM12)+bit3(EUM12)+bit4(EUM12)+bit5(EUM12)==4
EUM13GI = prev(bit2(EUM13)+bit3(EUM13)+bit4(EUM13)+bit5(EUM13))<=3 && bit2(EUM13)+bit3(EUM13)+bit4(EUM13)+bit5(EUM13)==4
EUM14GI = prev(bit2(EUM14)+bit3(EUM14)+bit4(EUM14)+bit5(EUM14))<=3 && bit2(EUM14)+bit3(EUM14)+bit4(EUM14)+bit5(EUM14)==4
EUM15GI = prev(bit2(EUM15)+bit3(EUM15)+bit4(EUM15)+bit5(EUM15))<=3 && bit2(EUM15)+bit3(EUM15)+bit4(EUM15)+bit5(EUM15)==4
EUM16GI = prev(bit2(EUM16)+bit3(EUM16)+bit4(EUM16)+bit5(EUM16))<=3 && bit2(EUM16)+bit3(EUM16)+bit4(EUM16)+bit5(EUM16)==4
EUM17GI = prev(bit2(EUM17)+bit3(EUM17)+bit4(EUM17)+bit5(EUM17))<=3 && bit2(EUM17)+bit3(EUM17)+bit4(EUM17)+bit5(EUM17)==4
EUM18GI = prev(bit2(EUM18)+bit3(EUM18)+bit4(EUM18)+bit5(EUM18))<=3 && bit2(EUM18)+bit3(EUM18)+bit4(EUM18)+bit5(EUM18)==4
EUM19GI = prev(bit2(EUM19)+bit3(EUM19)+bit4(EUM19)+bit5(EUM19))<=3 && bit2(EUM19)+bit3(EUM19)+bit4(EUM19)+bit5(EUM19)==4
EUM20GI = prev(bit2(EUM20)+bit3(EUM20)+bit4(EUM20)+bit5(EUM20))<=3 && bit2(EUM20)+bit3(EUM20)+bit4(EUM20)+bit5(EUM20)==4


// Goals (RU,JP)

RUM1GI = prev(bit2(RUM1)+bit3(RUM1)+bit4(RUM1)+bit5(RUM1))<=3 && bit2(RUM1)+bit3(RUM1)+bit4(RUM1)+bit5(RUM1)==4
RUM2GI = prev(bit2(RUM2)+bit3(RUM2)+bit4(RUM2)+bit5(RUM2))<=3 && bit2(RUM2)+bit3(RUM2)+bit4(RUM2)+bit5(RUM2)==4
RUM3GI = prev(bit2(RUM3)+bit3(RUM3)+bit4(RUM3)+bit5(RUM3))<=3 && bit2(RUM3)+bit3(RUM3)+bit4(RUM3)+bit5(RUM3)==4
RUM4GI = prev(bit2(RUM4)+bit3(RUM4)+bit4(RUM4)+bit5(RUM4))<=3 && bit2(RUM4)+bit3(RUM4)+bit4(RUM4)+bit5(RUM4)==4
RUM5GI = prev(bit2(RUM5)+bit3(RUM5)+bit4(RUM5)+bit5(RUM5))<=3 && bit2(RUM5)+bit3(RUM5)+bit4(RUM5)+bit5(RUM5)==4
RUM6GI = prev(bit2(RUM6)+bit3(RUM6)+bit4(RUM6)+bit5(RUM6))<=3 && bit2(RUM6)+bit3(RUM6)+bit4(RUM6)+bit5(RUM6)==4
RUM7GI = prev(bit2(RUM7)+bit3(RUM7)+bit4(RUM7)+bit5(RUM7))<=3 && bit2(RUM7)+bit3(RUM7)+bit4(RUM7)+bit5(RUM7)==4
RUM8GI = prev(bit2(RUM8)+bit3(RUM8)+bit4(RUM8)+bit5(RUM8))<=3 && bit2(RUM8)+bit3(RUM8)+bit4(RUM8)+bit5(RUM8)==4
RUM9GI = prev(bit2(RUM9)+bit3(RUM9)+bit4(RUM9)+bit5(RUM9))<=3 && bit2(RUM9)+bit3(RUM9)+bit4(RUM9)+bit5(RUM9)==4
RUM10GI = prev(bit2(RUM10)+bit3(RUM10)+bit4(RUM10)+bit5(RUM10))<=3 && bit2(RUM10)+bit3(RUM10)+bit4(RUM10)+bit5(RUM10)==4
RUM11GI = prev(bit2(RUM11)+bit3(RUM11)+bit4(RUM11)+bit5(RUM11))<=3 && bit2(RUM11)+bit3(RUM11)+bit4(RUM11)+bit5(RUM11)==4
RUM12GI = prev(bit2(RUM12)+bit3(RUM12)+bit4(RUM12)+bit5(RUM12))<=3 && bit2(RUM12)+bit3(RUM12)+bit4(RUM12)+bit5(RUM12)==4
RUM13GI = prev(bit2(RUM13)+bit3(RUM13)+bit4(RUM13)+bit5(RUM13))<=3 && bit2(RUM13)+bit3(RUM13)+bit4(RUM13)+bit5(RUM13)==4
RUM14GI = prev(bit2(RUM14)+bit3(RUM14)+bit4(RUM14)+bit5(RUM14))<=3 && bit2(RUM14)+bit3(RUM14)+bit4(RUM14)+bit5(RUM14)==4
RUM15GI = prev(bit2(RUM15)+bit3(RUM15)+bit4(RUM15)+bit5(RUM15))<=3 && bit2(RUM15)+bit3(RUM15)+bit4(RUM15)+bit5(RUM15)==4
RUM16GI = prev(bit2(RUM16)+bit3(RUM16)+bit4(RUM16)+bit5(RUM16))<=3 && bit2(RUM16)+bit3(RUM16)+bit4(RUM16)+bit5(RUM16)==4
RUM17GI = prev(bit2(RUM17)+bit3(RUM17)+bit4(RUM17)+bit5(RUM17))<=3 && bit2(RUM17)+bit3(RUM17)+bit4(RUM17)+bit5(RUM17)==4
RUM18GI = prev(bit2(RUM18)+bit3(RUM18)+bit4(RUM18)+bit5(RUM18))<=3 && bit2(RUM18)+bit3(RUM18)+bit4(RUM18)+bit5(RUM18)==4
RUM19GI = prev(bit2(RUM19)+bit3(RUM19)+bit4(RUM19)+bit5(RUM19))<=3 && bit2(RUM19)+bit3(RUM19)+bit4(RUM19)+bit5(RUM19)==4
RUM20GI = prev(bit2(RUM20)+bit3(RUM20)+bit4(RUM20)+bit5(RUM20))<=3 && bit2(RUM20)+bit3(RUM20)+bit4(RUM20)+bit5(RUM20)==4

// Move Upgrades
// Frozone (US)
US_ICEPUNCH = dword(0x0065a2ec)
US_ICEGLIDE = dword(0x0065a2f0)
US_FREEZERAY = dword(0x0065a2f4)
US_FROHEALTH = dword(0x0065a2f8)
US_FROSUPERMOVE = dword(0x0065a2fc)
// Frozone (EU)
EU_ICEPUNCH = dword(0x0065a6ec)
EU_ICEGLIDE = dword(0x0065a6f0)
EU_FREEZERAY = dword(0x0065a6f4)
EU_FROHEALTH = dword(0x0065a6f8)
EU_FROSUPERMOVE = dword(0x0065a6fc)
// Frozone (RU)
RU_ICEPUNCH = dword(0x0065afec)
RU_ICEGLIDE = dword(0x0065aff0)
RU_FREEZERAY = dword(0x0065aff4)
RU_FROHEALTH = dword(0x0065aff8)
RU_FROSUPERMOVE = dword(0x0065affc)
// Frozone All Upgrades check (US)
USFROMOVESCHECK_FULL = prev(
US_ICEPUNCH+
US_ICEGLIDE+
US_FREEZERAY+
US_FROHEALTH+
US_FROSUPERMOVE)==9 && 
US_ICEPUNCH+
US_ICEGLIDE+
US_FREEZERAY+
US_FROHEALTH+
US_FROSUPERMOVE==10
// Frozone All Upgrades check (EU)
EUFROMOVESCHECK_FULL = prev(
EU_ICEPUNCH+
EU_ICEGLIDE+
EU_FREEZERAY+
EU_FROHEALTH+
EU_FROSUPERMOVE)==9 && 
EU_ICEPUNCH+
EU_ICEGLIDE+
EU_FREEZERAY+
EU_FROHEALTH+
EU_FROSUPERMOVE==10
// Frozone All Upgrades check (RU)
RUFROMOVESCHECK_FULL = prev(
RU_ICEPUNCH+
RU_ICEGLIDE+
RU_FREEZERAY+
RU_FROHEALTH+
RU_FROSUPERMOVE)==9 && 
RU_ICEPUNCH+
RU_ICEGLIDE+
RU_FREEZERAY+
RU_FROHEALTH+
RU_FROSUPERMOVE==10
// Mr. Incredible (US)
US_POWERPUNCH = dword(0x0065b62c)
US_INCREDISLAM = dword(0x0065b630)
US_THROW = dword(0x0065b634)
US_MRIHEALTH = dword(0x0065b638)
US_MRISUPERMOVE = dword(0x0065b63c)
// Mr. Incredible (EU)
EU_POWERPUNCH = dword(0x0065ba2c)
EU_INCREDISLAM = dword(0x0065ba30)
EU_THROW = dword(0x0065ba34)
EU_MRIHEALTH = dword(0x0065ba38)
EU_MRISUPERMOVE = dword(0x0065ba3c)
// Mr. Incredible (RU)
RU_POWERPUNCH = dword(0x0065c32c)
RU_INCREDISLAM = dword(0x0065c330)
RU_THROW = dword(0x0065c334)
RU_MRIHEALTH = dword(0x0065c338)
RU_MRISUPERMOVE = dword(0x0065c33c)
// Mr. Incredible All Upgrades check (US)
USMRIMOVESCHECK_FULL = prev(
    US_POWERPUNCH+
    US_INCREDISLAM+
    US_THROW+
    US_MRIHEALTH+
    US_MRISUPERMOVE)==9 && 
    US_POWERPUNCH+
    US_INCREDISLAM+
    US_THROW+
    US_MRIHEALTH+
    US_MRISUPERMOVE==10
// Mr. Incredible All Upgrades check (EU)
EUMRIMOVESCHECK_FULL = prev(
    EU_POWERPUNCH+
    EU_INCREDISLAM+
    EU_THROW+
    EU_MRIHEALTH+
    EU_MRISUPERMOVE)==9 && 
    EU_POWERPUNCH+
    EU_INCREDISLAM+
    EU_THROW+
    EU_MRIHEALTH+
    EU_MRISUPERMOVE==10
// Mr. Incredible All Upgrades check (RU)
RUMRIMOVESCHECK_FULL = prev(
    RU_POWERPUNCH+
    RU_INCREDISLAM+
    RU_THROW+
    RU_MRIHEALTH+
    RU_MRISUPERMOVE)==9 && 
    RU_POWERPUNCH+
    RU_INCREDISLAM+
    RU_THROW+
    RU_MRIHEALTH+
    RU_MRISUPERMOVE==10
// Any move upgraded check (US)
US_ANYMOVECHECK = prev(
US_ICEPUNCH+
US_ICEGLIDE+
US_FREEZERAY+
US_FROHEALTH+
US_FROSUPERMOVE+
US_POWERPUNCH+
US_INCREDISLAM+
US_THROW+
US_MRIHEALTH+
US_MRISUPERMOVE)==0
&& 
US_ICEPUNCH+
US_ICEGLIDE+
US_FREEZERAY+
US_FROHEALTH+
US_FROSUPERMOVE+
US_POWERPUNCH+
US_INCREDISLAM+
US_THROW+
US_MRIHEALTH+
US_MRISUPERMOVE==1 
// Any move upgraded check (EU)
EU_ANYMOVECHECK = prev(
EU_ICEPUNCH+
EU_ICEGLIDE+
EU_FREEZERAY+
EU_FROHEALTH+
EU_FROSUPERMOVE+
EU_POWERPUNCH+
EU_INCREDISLAM+
EU_THROW+
EU_MRIHEALTH+
EU_MRISUPERMOVE)==0
&& 
EU_ICEPUNCH+
EU_ICEGLIDE+
EU_FREEZERAY+
EU_FROHEALTH+
EU_FROSUPERMOVE+
EU_POWERPUNCH+
EU_INCREDISLAM+
EU_THROW+
EU_MRIHEALTH+
EU_MRISUPERMOVE==1 
// Any move upgraded check (RU)
RU_ANYMOVECHECK = prev(
RU_ICEPUNCH+
RU_ICEGLIDE+
RU_FREEZERAY+
RU_FROHEALTH+
RU_FROSUPERMOVE+
RU_POWERPUNCH+
RU_INCREDISLAM+
RU_THROW+
RU_MRIHEALTH+
RU_MRISUPERMOVE)==0
&& 
RU_ICEPUNCH+
RU_ICEGLIDE+
RU_FREEZERAY+
RU_FROHEALTH+
RU_FROSUPERMOVE+
RU_POWERPUNCH+
RU_INCREDISLAM+
RU_THROW+
RU_MRIHEALTH+
RU_MRISUPERMOVE==1 





//im in so much pain right now
DESC = "Complete the mission: "
MissionName = [
"Underminer Threat",
"Digging Deeper",
"Sludge Station",
"Blizzard Backdoor",
"Magnomizer Guardian",
"Magnomizer",
"Giant Robot Factory",
"The Crustodian",
"Underwater Station",
"The Corrupterator",
"Last Ditch Effort",
"Metroville Melee (Nuts and Bolts)",
"Metroville Melee (Protect the Scientists)",
"Metroville Melee (Return the Favor)",
"Furious Frozen Fight (Nuts and Bolts)",
"Furious Frozen Fight (Helping Hand)",
"Furious Frozen Fight (Protect the Scientists)",
"Mechanical Mayhem (Nuts and Bolts)",
"Mechanical Mayhem (Protect the Scientists)",
"Mechanical Mayhem (Pull the Plug)"]

function ProgressionAchievements (UniqueName,count,missioncount,cheevoid)

{
    achievement(
       title = UniqueName,
       description = DESC + MissionName[count],
       points = 3,
       id = cheevoid,
       trigger = US && US_MissionID==missioncount && prev(dword(dword(US_Pointer)+PointerOffset))==0 && dword(dword(US_Pointer)+PointerOffset)==1  && US_CHEATPROTECTION() 
             || EU1 && EU_MissionID==missioncount && prev(dword(dword(EU_Pointer)+PointerOffset))==0 && dword(dword(EU_Pointer)+PointerOffset)==1  && EU_CHEATPROTECTION()
             || EU2 && EU_MissionID==missioncount && prev(dword(dword(EU_Pointer)+PointerOffset))==0 && dword(dword(EU_Pointer)+PointerOffset)==1  && EU_CHEATPROTECTION()
              || RU && RU_MissionID==missioncount && prev(dword(dword(RU_Pointer)+PointerOffset))==0 && dword(dword(RU_Pointer)+PointerOffset)==1  && RU_CHEATPROTECTION()
              || JP && RU_MissionID==missioncount && prev(dword(dword(RU_Pointer)+PointerOffset))==0 && dword(dword(RU_Pointer)+PointerOffset)==1  && RU_CHEATPROTECTION()
 )
}

ProgressionAchievements("The Sequel Before the Sequel",         0,1,277834)
ProgressionAchievements("Rosie Perez",                          1,2,277835)
ProgressionAchievements("Find The Grimer",                      2,3,277836)
ProgressionAchievements("The Fro-Zone",                         3,4,277837)
ProgressionAchievements("Mr. Magnomizer",                       4,5,277838)
ProgressionAchievements("Metal Gear?",                          5,6,277839)
ProgressionAchievements("Straight to the Core",                 6,7,277840)
ProgressionAchievements("No Crust, Thanks",                     7,8,277841)
ProgressionAchievements("Atlantis",                             8,9,277842)
ProgressionAchievements("Yes, That’s His Name",                 9,10,277843)
ProgressionAchievements("Last Dance",                           10,11,277844)
ProgressionAchievements("The Metroville Massacre",              11,12,277845)
ProgressionAchievements("My Hero!",                             12,13,277846)
ProgressionAchievements("Be Gone Underminer!",                  13,14,277847)
ProgressionAchievements("Frozone in Time",                      14,15,277848)
ProgressionAchievements("Where Is My Supersuit?",               15,16,277849)
ProgressionAchievements("Ice Cold",                             16,17,277850)
ProgressionAchievements("Roboco-op",                            17,18,277851)
ProgressionAchievements("My Heroes!",                           18,19,277852)




achievement(
       title = "One Last Job",
       description = DESC + MissionName[19],
       points = 3,
       trigger = US && dword(0x596e08)==20 && prev(dword(dword(US_Pointer)+PointerOffset2))==0 && dword(dword(US_Pointer)+PointerOffset2)==1 && US_CHEATPROTECTION()
             || EU1 && dword(0x597208)==20 && prev(dword(dword(EU_Pointer)+PointerOffset2))==0 && dword(dword(EU_Pointer)+PointerOffset2)==1 && EU_CHEATPROTECTION()
             || EU2 && dword(0x597208)==20 && prev(dword(dword(EU_Pointer)+PointerOffset2))==0 && dword(dword(EU_Pointer)+PointerOffset2)==1 && EU_CHEATPROTECTION()
              || RU && dword(0x597a88)==20 && prev(dword(dword(RU_Pointer)+PointerOffset2))==0 && dword(dword(RU_Pointer)+PointerOffset2)==1 && RU_CHEATPROTECTION()
              || JP && dword(0x597a88)==20 && prev(dword(dword(RU_Pointer)+PointerOffset2))==0 && dword(dword(RU_Pointer)+PointerOffset2)==1 && RU_CHEATPROTECTION()
)




function CoupleGoalsAchievements (number,count,USGOALS,EUGOALS,RUGOALS,idnumber)

{
    achievement(
       title = "Couple Goals " + number,
       description = "Complete all of Frozone and Mr. Incredible's goals in " + MissionName[count],
       id = idnumber,
       points = 5,
       trigger = US && USGOALS && US_SaveProtection && US_CHEATPROTECTION()
       || EU1 && EUGOALS && EU_SaveProtection && EU_CHEATPROTECTION()
       || EU2 && EUGOALS && EU_SaveProtection && EU_CHEATPROTECTION()
       || RU && RUGOALS && RU_SaveProtection && RU_CHEATPROTECTION()
       || JP && RUGOALS && RU_SaveProtection && RU_CHEATPROTECTION()
 )
}


CoupleGoalsAchievements("I",    0, USM1GI, EUM1GI, RUM1GI,277856)
CoupleGoalsAchievements("II",   1, USM2GI, EUM2GI, RUM2GI,277857)
CoupleGoalsAchievements("III",  2, USM3GI, EUM3GI, RUM3GI,277858)
CoupleGoalsAchievements("IV",   3, USM4GI, EUM4GI, RUM4GI,277859)
CoupleGoalsAchievements("V",    4, USM5GI, EUM5GI, RUM5GI,277860)
CoupleGoalsAchievements("VI",   5, USM6GI, EUM6GI, RUM6GI,277861)
CoupleGoalsAchievements("VII",  6, USM7GI, EUM7GI, RUM7GI,277862)
CoupleGoalsAchievements("VIII", 7, USM8GI, EUM8GI, RUM8GI,277863)
CoupleGoalsAchievements("IX",   8, USM9GI, EUM9GI, RUM9GI,277864)
CoupleGoalsAchievements("X",    9, USM10GI,EUM10GI,RUM10GI,277865)
CoupleGoalsAchievements("XI",   10,USM11GI,EUM11GI,RUM11GI,277866)
CoupleGoalsAchievements("XII",  11,USM12GI,EUM12GI,RUM12GI,277867)
CoupleGoalsAchievements("XIII", 12,USM13GI,EUM13GI,RUM13GI,277868)
CoupleGoalsAchievements("XIV",  13,USM14GI,EUM14GI,RUM14GI,277869)
CoupleGoalsAchievements("XV",   14,USM15GI,EUM15GI,RUM15GI,277870)
CoupleGoalsAchievements("XVI",  15,USM16GI,EUM16GI,RUM16GI,277871)
CoupleGoalsAchievements("XVII", 16,USM17GI,EUM17GI,RUM17GI,277872)
CoupleGoalsAchievements("XVIII",17,USM18GI,EUM18GI,RUM18GI,277873)
CoupleGoalsAchievements("XIX",  18,USM19GI,EUM19GI,RUM19GI,277874)
CoupleGoalsAchievements("XX",   19,USM20GI,EUM20GI,RUM20GI,277875)



achievement(
    
    title="Maximum Power!", description="Obtain all of Mr. Incredible's upgrades", points=10, id=277876,
    trigger = US && USMRIMOVESCHECK_FULL && US_SaveProtection && US_CHEATPROTECTION() ||
              EU1 && EUMRIMOVESCHECK_FULL && EU_SaveProtection && EU_CHEATPROTECTION() ||
              EU2 && EUMRIMOVESCHECK_FULL && EU_SaveProtection && EU_CHEATPROTECTION() ||
              RU && RUMRIMOVESCHECK_FULL && RU_SaveProtection && RU_CHEATPROTECTION() ||
              JP && RUMRIMOVESCHECK_FULL && RU_SaveProtection && RU_CHEATPROTECTION() 
)


achievement(
    
    title="Ice Ice Baby!", description="Obtain all of Frozone's upgrades", points=10, id=277877,
    trigger = US && USFROMOVESCHECK_FULL && US_SaveProtection && US_CHEATPROTECTION() ||
              EU1 && EUFROMOVESCHECK_FULL && EU_SaveProtection && EU_CHEATPROTECTION() ||
              EU2 && EUFROMOVESCHECK_FULL && EU_SaveProtection && EU_CHEATPROTECTION() ||
              RU && RUFROMOVESCHECK_FULL && RU_SaveProtection && RU_CHEATPROTECTION() ||
              JP && RUFROMOVESCHECK_FULL && RU_SaveProtection && RU_CHEATPROTECTION() 
)


achievement(
    
    title="First Upgrade", description="Upgrade any move for the first time", points=2, id=277878,
    trigger = US && US_ANYMOVECHECK && US_SaveProtection && US_CHEATPROTECTION() ||
              EU1 && EU_ANYMOVECHECK && EU_SaveProtection && EU_CHEATPROTECTION() ||
              EU2 && EU_ANYMOVECHECK && EU_SaveProtection && EU_CHEATPROTECTION() ||
              RU && RU_ANYMOVECHECK && RU_SaveProtection && RU_CHEATPROTECTION() ||
              JP && RU_ANYMOVECHECK && RU_SaveProtection && RU_CHEATPROTECTION() 
)





























