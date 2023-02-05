// 1001 Blockbusters (DSi)
// #ID = 22404
// Game ID
function gameid()=> tbyte(0xffe00c)==0x4f494b
// Save Slots
ActiveSlot=dword(0x1ad8b8)
// Any Rank Achievements
function AnyRank(start, end){
      sum = 0
      for level in range (start, end)
      {
             sum = sum + bit1(level) + bit2(level)
      }
      return sum == (end-start) +1&& prev(sum) < (end-start)+1
}
function anyrank(levels,world,points,start,end)
{
achievement(
title= world + levels, 
description="Complete Levels " + levels + " in " + world + "[Any Rank]",
points=points,
trigger= 
gameid() && ActiveSlot == 1 && AnyRank(start, end) ||
gameid() && ActiveSlot == 2 && AnyRank(start +0x420, end+0x420) ||
gameid() && ActiveSlot == 3 && AnyRank(start +0x840, end+0x840) 
)
}
// World 1 - Any Rank
anyrank("1-10",   "Greece ",1,0x2a37a0,0x2a37a9)
anyrank("11-20",  "Greece ",1,0x2A37AA,0x2A37B3)
anyrank("21-30",  "Greece ",1,0x2A37B4,0x2A37BD)
anyrank("31-40",  "Greece ",1,0x2A37BE,0x2A37C7)
anyrank("41-50",  "Greece ",1,0x2A37C8,0x2A37D1)
anyrank("51-60",  "Greece ",1,0x2A37D2,0x2A37DB)
anyrank("61-70",  "Greece ",1,0x2A37DC,0x2A37E5)
anyrank("71-80",  "Greece ",1,0x2A37E6,0x2A37EF)
anyrank("81-90",  "Greece ",1,0x2A37F0,0x2A37F9)
anyrank("91-100", "Greece ",1,0x2A37FA,0x2A3803)
anyrank("101-110","Greece ",1,0x2A3804,0x2A380D)
anyrank("111-120","Greece ",1,0x2A380E,0x2A3817)
anyrank("121-130","Greece ",1,0x2A3818,0x2A3821)
anyrank("131-140","Greece ",1,0x2A3822,0x2A382B)
anyrank("141-150","Greece ",1,0x2A382C,0x2A3835)
anyrank("151-160","Greece ",1,0x2A3836,0x2A383F)
anyrank("161-170","Greece ",1,0x2A3840,0x2A3849)
anyrank("171-180","Greece ",1,0x2A384A,0x2A3853)
anyrank("181-190","Greece ",1,0x2A3854,0x2A385D)
anyrank("191-200","Greece ",1,0x2A385E,0x2A3867)
anyrank("201-210","Greece ",1,0x2A3868,0x2A3871)
anyrank("211-220","Greece ",1,0x2A3872,0x2A387B)
anyrank("221-230","Greece ",1,0x2A387C,0x2A3885)
anyrank("231-240","Greece ",1,0x2A3886,0x2A388F)
anyrank("241-250","Greece ",1,0x2A3890,0x2A3899)
// World 2 - Any Rank
anyrank("1-10",   "Stone ",1,0x2a389b,0x2a38a4)
anyrank("11-20",  "Stone ",1,0x2A38A5,0x2A38AE)
anyrank("21-30",  "Stone ",1,0x2A38AF,0x2A38B8)
anyrank("31-40",  "Stone ",1,0x2A38B9,0x2A38C2)
anyrank("41-50",  "Stone ",1,0x2A38C3,0x2A38CC)
anyrank("51-60",  "Stone ",1,0x2A38CD,0x2A38D6)
anyrank("61-70",  "Stone ",1,0x2A38D7,0x2A38E0)
anyrank("71-80",  "Stone ",1,0x2A38E1,0x2A38EA)
anyrank("81-90",  "Stone ",1,0x2A38EB,0x2A38F4)
anyrank("91-100", "Stone ",1,0x2A38F5,0x2A38FE)
anyrank("101-110","Stone ",1,0x2A38FF,0x2A3908)
anyrank("111-120","Stone ",1,0x2A3909,0x2A3912)
anyrank("121-130","Stone ",1,0x2A3913,0x2A391C)
anyrank("131-140","Stone ",1,0x2A391D,0x2A3926)
anyrank("141-150","Stone ",1,0x2A3927,0x2A3930)
anyrank("151-160","Stone ",1,0x2A3931,0x2A393A)
anyrank("161-170","Stone ",1,0x2A393B,0x2A3944)
anyrank("171-180","Stone ",1,0x2A3945,0x2A394E)
anyrank("181-190","Stone ",1,0x2A394F,0x2A3958)
anyrank("191-200","Stone ",1,0x2A3959,0x2A3962)
anyrank("201-210","Stone ",1,0x2A3963,0x2A396C)
anyrank("211-220","Stone ",1,0x2A396D,0x2A3976)
anyrank("221-230","Stone ",1,0x2A3977,0x2A3980)
anyrank("231-240","Stone ",1,0x2A3981,0x2A398A)
anyrank("241-250","Stone ",1,0x2A398B,0x2A3994)
// World 3 - Any Rank
anyrank("1-10",   "Candy ",1,0x2a3996,0x2a399f)
anyrank("11-20",  "Candy ",1,0x2A39A0,0x2A39A9)
anyrank("21-30",  "Candy ",1,0x2A39AA,0x2A39B3)
anyrank("31-40",  "Candy ",1,0x2A39B4,0x2A39BD)
anyrank("41-50",  "Candy ",1,0x2A39BE,0x2A39C7)
anyrank("51-60",  "Candy ",1,0x2A39C8,0x2A39D1)
anyrank("61-70",  "Candy ",1,0x2A39D2,0x2A39DB)
anyrank("71-80",  "Candy ",1,0x2A39DC,0x2A39E5)
anyrank("81-90",  "Candy ",1,0x2A39E6,0x2A39EF)
anyrank("91-100", "Candy ",1,0x2A39F0,0x2A39F9)
anyrank("101-110","Candy ",1,0x2A39FA,0x2A3A03)
anyrank("111-120","Candy ",1,0x2A3A04,0x2A3A0D)
anyrank("121-130","Candy ",1,0x2A3A0E,0x2A3A17)
anyrank("131-140","Candy ",1,0x2A3A18,0x2A3A21)
anyrank("141-150","Candy ",1,0x2A3A22,0x2A3A2B)
anyrank("151-160","Candy ",1,0x2A3A2C,0x2A3A35)
anyrank("161-170","Candy ",1,0x2A3A36,0x2A3A3F)
anyrank("171-180","Candy ",1,0x2A3A40,0x2A3A49)
anyrank("181-190","Candy ",1,0x2A3A4A,0x2A3A53)
anyrank("191-200","Candy ",1,0x2A3A54,0x2A3A5D)
anyrank("201-210","Candy ",1,0x2A3A5E,0x2A3A67)
anyrank("211-220","Candy ",1,0x2A3A68,0x2A3A71)
anyrank("221-230","Candy ",1,0x2A3A72,0x2A3A7B)
anyrank("231-240","Candy ",1,0x2A3A7C,0x2A3A85)
anyrank("241-250","Candy ",1,0x2A3A86,0x2A3A8F)
// World 4 - Any Rank
anyrank("1-10",   "Forest ",1,0x2a3a91,0x2a3a9a)
anyrank("11-20",  "Forest ",1,0x2A3A9B,0x2A3AA4)
anyrank("21-30",  "Forest ",1,0x2A3AA5,0x2A3AAE)
anyrank("31-40",  "Forest ",1,0x2A3AAF,0x2A3AB8)
anyrank("41-50",  "Forest ",1,0x2A3AB9,0x2A3AC2)
anyrank("51-60",  "Forest ",1,0x2A3AC3,0x2A3ACC)
anyrank("61-70",  "Forest ",1,0x2A3ACD,0x2A3AD6)
anyrank("71-80",  "Forest ",1,0x2A3AD7,0x2A3AE0)
anyrank("81-90",  "Forest ",1,0x2A3AE1,0x2A3AEA)
anyrank("91-100", "Forest ",1,0x2A3AEB,0x2A3AF4)
anyrank("101-110","Forest ",1,0x2A3AF5,0x2A3AFE)
anyrank("111-120","Forest ",1,0x2A3AFF,0x2A3B08)
anyrank("121-130","Forest ",1,0x2A3B09,0x2A3B12)
anyrank("131-140","Forest ",1,0x2A3B13,0x2A3B1C)
anyrank("141-150","Forest ",1,0x2A3B1D,0x2A3B26)
anyrank("151-160","Forest ",1,0x2A3B27,0x2A3B30)
anyrank("161-170","Forest ",1,0x2A3B31,0x2A3B3A)
anyrank("171-180","Forest ",1,0x2A3B3B,0x2A3B44)
anyrank("181-190","Forest ",1,0x2A3B45,0x2A3B4E)
anyrank("191-200","Forest ",1,0x2A3B4F,0x2A3B58)
anyrank("201-210","Forest ",1,0x2A3B59,0x2A3B62)
anyrank("211-220","Forest ",1,0x2A3B63,0x2A3B6C)
anyrank("221-230","Forest ",1,0x2A3B6D,0x2A3B76)
anyrank("231-240","Forest ",1,0x2A3B77,0x2A3B80)
anyrank("241-251","Forest ",1,0x2A3B81,0x2a3b8b)

// Gold  Rank Achievements
function GoldRank(start, end){
      sum = 0
      for level in range (start, end)
      {
             sum = sum + byte(level)/5
      }
      return sum == (end-start) +1 && prev(sum) < (end-start) +1
}
function goldrank(levels,world,points,start,end)
{
achievement(
title= "Gold " + world + levels, 
description="Obtain Gold Stars in Levels " + levels + " in " + world,
points=points,
trigger= 
gameid() && ActiveSlot == 1 && GoldRank(start, end) ||
gameid() && ActiveSlot == 2 && GoldRank(start +0x420, end+0x420) ||
gameid() && ActiveSlot == 3 && GoldRank(start +0x840, end+0x840) 
)
}
// Gold Ranks - World 1
goldrank("1-10",   "Greece ",5,0x2a37a0,0x2a37a9)
goldrank("11-20",  "Greece ",5,0x2A37AA,0x2A37B3)
goldrank("21-30",  "Greece ",5,0x2A37B4,0x2A37BD)
goldrank("31-40",  "Greece ",5,0x2A37BE,0x2A37C7)
goldrank("41-50",  "Greece ",5,0x2A37C8,0x2A37D1)
goldrank("51-60",  "Greece ",5,0x2A37D2,0x2A37DB)
goldrank("61-70",  "Greece ",5,0x2A37DC,0x2A37E5)
goldrank("71-80",  "Greece ",5,0x2A37E6,0x2A37EF)
goldrank("81-90",  "Greece ",5,0x2A37F0,0x2A37F9)
goldrank("91-100", "Greece ",5,0x2A37FA,0x2A3803)
goldrank("101-110","Greece ",5,0x2A3804,0x2A380D)
goldrank("111-120","Greece ",5,0x2A380E,0x2A3817)
goldrank("121-130","Greece ",5,0x2A3818,0x2A3821)
goldrank("131-140","Greece ",5,0x2A3822,0x2A382B)
goldrank("141-150","Greece ",5,0x2A382C,0x2A3835)
goldrank("151-160","Greece ",5,0x2A3836,0x2A383F)
goldrank("161-170","Greece ",5,0x2A3840,0x2A3849)
goldrank("171-180","Greece ",5,0x2A384A,0x2A3853)
goldrank("181-190","Greece ",5,0x2A3854,0x2A385D)
goldrank("191-200","Greece ",5,0x2A385E,0x2A3867)
goldrank("201-210","Greece ",5,0x2A3868,0x2A3871)
goldrank("211-220","Greece ",5,0x2A3872,0x2A387B)
goldrank("221-230","Greece ",5,0x2A387C,0x2A3885)
goldrank("231-240","Greece ",5,0x2A3886,0x2A388F)
goldrank("241-250","Greece ",5,0x2A3890,0x2A3899)
// Gold Ranks - World 2
goldrank("1-10",   "Stone ",5,0x2a389b,0x2a38a4)
goldrank("11-20",  "Stone ",5,0x2A38A5,0x2A38AE)
goldrank("21-30",  "Stone ",5,0x2A38AF,0x2A38B8)
goldrank("31-40",  "Stone ",5,0x2A38B9,0x2A38C2)
goldrank("41-50",  "Stone ",5,0x2A38C3,0x2A38CC)
goldrank("51-60",  "Stone ",5,0x2A38CD,0x2A38D6)
goldrank("61-70",  "Stone ",5,0x2A38D7,0x2A38E0)
goldrank("71-80",  "Stone ",5,0x2A38E1,0x2A38EA)
goldrank("81-90",  "Stone ",5,0x2A38EB,0x2A38F4)
goldrank("91-100", "Stone ",5,0x2A38F5,0x2A38FE)
goldrank("101-110","Stone ",5,0x2A38FF,0x2A3908)
goldrank("111-120","Stone ",5,0x2A3909,0x2A3912)
goldrank("121-130","Stone ",5,0x2A3913,0x2A391C)
goldrank("131-140","Stone ",5,0x2A391D,0x2A3926)
goldrank("141-150","Stone ",5,0x2A3927,0x2A3930)
goldrank("151-160","Stone ",5,0x2A3931,0x2A393A)
goldrank("161-170","Stone ",5,0x2A393B,0x2A3944)
goldrank("171-180","Stone ",5,0x2A3945,0x2A394E)
goldrank("181-190","Stone ",5,0x2A394F,0x2A3958)
goldrank("191-200","Stone ",5,0x2A3959,0x2A3962)
goldrank("201-210","Stone ",5,0x2A3963,0x2A396C)
goldrank("211-220","Stone ",5,0x2A396D,0x2A3976)
goldrank("221-230","Stone ",5,0x2A3977,0x2A3980)
goldrank("231-240","Stone ",5,0x2A3981,0x2A398A)
goldrank("241-250","Stone ",5,0x2A398B,0x2A3994)
// Gold Ranks - World 3
goldrank("1-10",   "Candy ",5,0x2a3996,0x2a399f)
goldrank("11-20",  "Candy ",5,0x2A39A0,0x2A39A9)
goldrank("21-30",  "Candy ",5,0x2A39AA,0x2A39B3)
goldrank("31-40",  "Candy ",5,0x2A39B4,0x2A39BD)
goldrank("41-50",  "Candy ",5,0x2A39BE,0x2A39C7)
goldrank("51-60",  "Candy ",5,0x2A39C8,0x2A39D1)
goldrank("61-70",  "Candy ",5,0x2A39D2,0x2A39DB)
goldrank("71-80",  "Candy ",5,0x2A39DC,0x2A39E5)
goldrank("81-90",  "Candy ",5,0x2A39E6,0x2A39EF)
goldrank("91-100", "Candy ",5,0x2A39F0,0x2A39F9)
goldrank("101-110","Candy ",5,0x2A39FA,0x2A3A03)
goldrank("111-120","Candy ",5,0x2A3A04,0x2A3A0D)
goldrank("121-130","Candy ",5,0x2A3A0E,0x2A3A17)
goldrank("131-140","Candy ",5,0x2A3A18,0x2A3A21)
goldrank("141-150","Candy ",5,0x2A3A22,0x2A3A2B)
goldrank("151-160","Candy ",5,0x2A3A2C,0x2A3A35)
goldrank("161-170","Candy ",5,0x2A3A36,0x2A3A3F)
goldrank("171-180","Candy ",5,0x2A3A40,0x2A3A49)
goldrank("181-190","Candy ",5,0x2A3A4A,0x2A3A53)
goldrank("191-200","Candy ",5,0x2A3A54,0x2A3A5D)
goldrank("201-210","Candy ",5,0x2A3A5E,0x2A3A67)
goldrank("211-220","Candy ",5,0x2A3A68,0x2A3A71)
goldrank("221-230","Candy ",5,0x2A3A72,0x2A3A7B)
goldrank("231-240","Candy ",5,0x2A3A7C,0x2A3A85)
goldrank("241-250","Candy ",5,0x2A3A86,0x2A3A8F)
// Gold Ranks - World 4
goldrank("1-10",   "Forest ",5,0x2a3a91,0x2a3a9a)
goldrank("11-20",  "Forest ",5,0x2A3A9B,0x2A3AA4)
goldrank("21-30",  "Forest ",5,0x2A3AA5,0x2A3AAE)
goldrank("31-40",  "Forest ",5,0x2A3AAF,0x2A3AB8)
goldrank("41-50",  "Forest ",5,0x2A3AB9,0x2A3AC2)
goldrank("51-60",  "Forest ",5,0x2A3AC3,0x2A3ACC)
goldrank("61-70",  "Forest ",5,0x2A3ACD,0x2A3AD6)
goldrank("71-80",  "Forest ",5,0x2A3AD7,0x2A3AE0)
goldrank("81-90",  "Forest ",5,0x2A3AE1,0x2A3AEA)
goldrank("91-100", "Forest ",5,0x2A3AEB,0x2A3AF4)
goldrank("101-110","Forest ",5,0x2A3AF5,0x2A3AFE)
goldrank("111-120","Forest ",5,0x2A3AFF,0x2A3B08)
goldrank("121-130","Forest ",5,0x2A3B09,0x2A3B12)
goldrank("131-140","Forest ",5,0x2A3B13,0x2A3B1C)
goldrank("141-150","Forest ",5,0x2A3B1D,0x2A3B26)
goldrank("151-160","Forest ",5,0x2A3B27,0x2A3B30)
goldrank("161-170","Forest ",5,0x2A3B31,0x2A3B3A)
goldrank("171-180","Forest ",5,0x2A3B3B,0x2A3B44)
goldrank("181-190","Forest ",5,0x2A3B45,0x2A3B4E)
goldrank("191-200","Forest ",5,0x2A3B4F,0x2A3B58)
goldrank("201-210","Forest ",5,0x2A3B59,0x2A3B62)
goldrank("211-220","Forest ",5,0x2A3B63,0x2A3B6C)
goldrank("221-230","Forest ",5,0x2A3B6D,0x2A3B76)
goldrank("231-240","Forest ",5,0x2A3B77,0x2A3B80)
goldrank("241-251","Forest ",5,0x2A3B81,0x2A3B8B)
// Leaderboard shit i need for the leaderboard shit
function score()=> dword(0x1a9eac)
function world()=> byte(0x1ad8bc)
function levelW()=> byte(0x1ad8bd)
function ingame()=> byte(0x1ad94c) 
function levelcomplete()=> byte(0x1ad94e)
function timer()=> byte(0x1aa2d8)
// Leaderboards - High Score
function leaderboard_hs(worldID,wrld,wrldtxt)
{
    for level in range(0x1,0xfa)
    {
        leaderboard(
            title= worldID + wrldtxt + "-" + level + " - Score",
            description= worldID + wrldtxt + "-" + level + " - High Score [No Pausing]",
            start= gameid() && ingame()==1 && world()==wrld && levelW()==level,
            cancel=ingame()==0,
            submit=levelcomplete()==1,
            value=score()
                   )
    }
}            
    
leaderboard_hs("Greece ",1,"1")
leaderboard_hs("Stone ",2,"2")
leaderboard_hs("Candy ",3,"3")
leaderboard_hs("Forest ",4,"4")
leaderboard(
            title= "Forest 4-251 - Score",
            description= "Forest 4-251 - High Score [No Pausing]",
            start= gameid() && ingame()==1 && world()==4 && levelW()==0xfb,
            cancel=ingame()==0,
            submit=levelcomplete()==1,
            value=score()
                   )                
// Leaderboards - Speedruns
function leaderboard_time(worldID,wrld,wrldtxt)
{
    for level in range(0x1,0xfa)
    {
        leaderboard(
            title= worldID + wrldtxt + "-" + level + " - Time",
            description= worldID + wrldtxt + "-" + level + " - Speedrun [No Pausing]",
            start= gameid() && ingame()==1 && world()==wrld && levelW()==level,
            cancel=ingame()==0,
            submit=levelcomplete()==1,
            value=timer(),
            format="MILLISECS",
            lower_is_better=true
                   )
    }
}            
leaderboard_time("Greece ",1,"1")    
leaderboard_time("Stone ",2,"2")
leaderboard_time("Candy ",3,"3")
leaderboard_time("Forest ",4,"4")
leaderboard(
            title= "Forest 4-251 - Time",
            description= "Forest 4-251 - Speedrun [No Pausing]",
            start= gameid() && ingame()==1 && world()==4 && levelW()==0xfb,
            cancel=ingame()==0,
            submit=levelcomplete()==1,
            value=timer(),
            format="MILLISECS",
            lower_is_better=true
                   )





