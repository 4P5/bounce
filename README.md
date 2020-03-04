**/!\\ WARNING /!\\
This pack is highly destructive. Any entity in your world, such as pets, will most likely die. It will also cause quite a lot of lag (although it is optimized).

A datapack that makes everything bounce!

This datapack was a fun side project I made. Currently it makes everything in the world bounce (including things that probably shouldn't, like paintings)

Try it out by throwing an item/shooting a projectile onto the ground. It should reverse its direction, "bounce"ing.

I'll hopefully add some new features to this, for example:
  * Bouncy pearls. A craftable ender pearl that bounces. There would be some way of making it stop, like sneaking.
  * Selective bouncing. Only some entities would bounce, like slimeballs.
  * Optimizations, such as running once every 5 ticks to save on performance.
  * Grenades. Specifically, bouncy ones! (actually already have code for this :P)
   
**Here's an explanation if you want to know how it works:

Main function (runs on a 20hz clock)

    execute at @a as @e[distance=..40,tag=!global.ignore] at @s run function bouncy-bois:calculate
    
At the coordinates of every player in the world, as anything within 40 blocks and without the `global.ignore` tag, run the calculation function.

Calculation function!

    [1] execute store result score @s 4p5.bounce.x run data get entity @s Motion[0] 1000 [2]

    [2] execute unless block ~.5 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s 4p5.bounce.x *= -1

Aaah, maths! Don't worry though, it's actually quite simple.

[1] Store whatever the following command's result is, into a score. In this case, the variable 4p5.bounce.x. The command is getting this entity's current `Motion[]` NBT.

[2] If the block 0.5 blocks in the X axis (relative to the item/snowball/painting/otherworldly-celestial-being that's running it) is not air (meaning it's a block that it can collide with), then (storing the result into this entity's `Motion[]`) reverse the score. We reverse it by multiplying it by -1, which I'm told adds a `-` sign at the start. I have to do the stuff with scales as scoreboards don't currently support decimals.

And that's it!

This is just the maths for one of the coordinates, there's 5 more `execute unless block`s and 2 more `execute store result`s, however they basically look the same, with different coordinates.
