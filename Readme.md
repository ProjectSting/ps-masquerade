
## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu

qb-usable-accessories - https://github.com/ProjectSting/qb-usable-accessories

```
## Insert into @qb-core/shared/jobs.lua 
```
QBShared.Jobs = {
    ["masquerade"] = {
		label = "Masquerade",
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
