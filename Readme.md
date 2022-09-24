
## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu



```

## Insert into @qb-core/shared/items.lua 

    -- [[  MASKS  ]] --
    ['monkeymask']  				 = {['name'] = 'monkeymask', 				    ['label'] = 'Monkeymask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_3.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
    ['skullmask']  					 = {['name'] = 'skullmask', 				    ['label'] = 'Skullmask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_2.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
    ['balaclava']  					 = {['name'] = 'balaclava', 				    ['label'] = 'Balaclava',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_57.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
    ['scarecrowmask']  				 = {['name'] = 'scarecrowmask', 				['label'] = 'Scarecrowmask',  	        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'scarecrowmask.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
    ['terrorwit']  				     = {['name'] = 'terrorwit', 				    ['label'] = 'Pig Mask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_1.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['hockeymask']  				 = {['name'] = 'hockeymask', 				    ['label'] = 'Hockeymask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_4.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['sok']  				         = {['name'] = 'sok', 				            ['label'] = 'Red Sock Mask',  	        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_32.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},	
	['clown']  						 = {['name'] = 'clown', 				        ['label'] = 'Clown Mask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_95.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['noselong']  					 = {['name'] = 'noselong', 				        ['label'] = 'Long Nose',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_12.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['tshirtmask']  				 = {['name'] = 'tshirtmask', 				    ['label'] = 'Tshirtmask',  		        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_54.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['zak']  						 = {['name'] = 'zak', 				            ['label'] = 'Bag Mask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_49.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['gorilla']  					 = {['name'] = 'gorilla', 				        ['label'] = 'Gorilla Mask',  	        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_96.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['paard']  						 = {['name'] = 'paard', 				        ['label'] = 'Horse Mask',  	            ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_97.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
    ['paardu']  					 = {['name'] = 'paardu', 				        ['label'] = 'Uinicorn Mask',  	        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_98.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},
	['skullr']  					 = {['name'] = 'skullr', 				        ['label'] = 'No Skin Mask',  	        ['weight'] = 1,  		['type'] = 'item',  	['image'] = 'Clothing_1_99.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,    ['combinable'] = nil, 	['description'] = ''},

```
QBShared.Items = {
	

```

## Insert Contents of ps-masquerade/Images into @qb-inventory/HTML/Images


## Insert into @qb-core/shared/jobs.lua 
```
QBShared.Jobs = {
    ["masquerade"] = {
		label = "Limey\'s Juice Shop",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 75 --edit depending on your economy
            },
			['1'] = {
                name = "Worker",
                payment = 100 --edit depending on your economy
            },
            ['3'] = {
                name = "manager",
                payment = 150 --edit depending on your economy
            },
			['4'] = {
                name = "Owner",
                isboss = true,
                payment = 200 --edit depending on your economy
            },
        },
	},
}		
```
