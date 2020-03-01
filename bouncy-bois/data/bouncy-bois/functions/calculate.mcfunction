execute store result score @s 4p5.bounce.x run data get entity @s Motion[0] 1000
execute store result score @s 4p5.bounce.y run data get entity @s Motion[1] 1000
execute store result score @s 4p5.bounce.z run data get entity @s Motion[2] 1000
execute unless block ~-.5 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s 4p5.bounce.x *= -1 4p5.bounce.const
execute unless block ~.5 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s 4p5.bounce.x *= -1 4p5.bounce.const
execute unless block ~ ~ ~-.5 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s 4p5.bounce.z *= -1 4p5.bounce.const
execute unless block ~ ~ ~.5 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s 4p5.bounce.z *= -1 4p5.bounce.const
execute unless block ~ ~-.5 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s 4p5.bounce.y *= -1 4p5.bounce.const
execute unless block ~ ~.5 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s 4p5.bounce.y *= -1 4p5.bounce.const
