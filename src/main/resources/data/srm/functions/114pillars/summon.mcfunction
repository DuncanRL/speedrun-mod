forceload add 42 0
forceload add 33 24
forceload add 12 39
forceload add -13 39
forceload add -34 24
forceload add -42 -1
forceload add -34 -25
forceload add -13 -40
forceload add 12 -40
forceload add 33 -25

forceload add 31 -25
forceload add 42 -1
forceload add 31 24
forceload add -32 24
forceload add -42 1
forceload add -32 -25

summon area_effect_cloud 42 250 0 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud 33 250 24 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud 12 250 39 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud -13 250 39 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud -34 250 24 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud -42 250 -1 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud -34 250 -25 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud -13 250 -40 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud 12 250 -40 {Tags:["Pillar"],Duration:1000}
summon area_effect_cloud 33 250 -25 {Tags:["Pillar"],Duration:1000}

scoreboard players set pillarsdone srm 1