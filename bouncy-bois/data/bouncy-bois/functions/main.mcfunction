execute as @e store result score @s xBounce run data get entity @s Motion[0] 1000
execute as @e store result score @s yBounce run data get entity @s Motion[1] 1000
execute as @e store result score @s zBounce run data get entity @s Motion[2] 1000
execute as @e at @s unless block ~-.7 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s xBounce *= -1 bounceConst
execute as @e at @s unless block ~.7 ~ ~ air store result entity @s Motion[0] double 0.001 run scoreboard players operation @s xBounce *= -1 bounceConst
execute as @e at @s unless block ~ ~ ~-.7 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s zBounce *= -1 bounceConst
execute as @e at @s unless block ~ ~ ~.7 air store result entity @s Motion[2] double 0.001 run scoreboard players operation @s zBounce *= -1 bounceConst
execute as @e at @s unless block ~ ~-.7 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s yBounce *= -1 bounceConst
execute as @e at @s unless block ~ ~.7 ~ air store result entity @s Motion[1] double 0.001 run scoreboard players operation @s yBounce *= -1 bounceConst