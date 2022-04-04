Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0  -- max height of the shop zone
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2',
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero',
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 't20',
                chosenVehicle = 't20',
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            }
        },
    },
   ['luxury'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['aston'] = 'Aston Martin',
            ['audi'] = 'Audi',
            ['bentley'] ='Bentley',
            ['bmw'] ='BMW',
            ['bugatti'] ='Bugatti',
            ['cadillac'] = 'Cadillac',
            ['chevrolet'] = 'Chevrolet',
            ['dodge'] = 'Dodge',
            ['dacia'] = 'Dacia',
            ['ferrari'] = 'Ferrari',
            ['ford'] ='Ford',
            ['honda'] = 'Honda',
            ['italdesign'] = 'Italdesign',
            ['jaguar'] ='Jaguar',
            ['jeep'] = 'Jeep',
            ['koenigsegg'] = 'Koenigsegg',
            ['lamborghini'] = 'Lamborghini',
            ['lexus'] = 'Lexus',
            ['landrover'] = 'Land Rover',
            ['lotus'] = 'Lotus',
            ['quartz'] = 'Quartz',
            ['maserati'] = 'Maserati',
            ['mazda'] = 'Mazda',
            ['mclaren'] ='McLaren',
            ['mercedesbenz'] = 'Mercedes-Benz',
            ['mercedesamg'] = 'Mercedes-AMG',
            ['mitsubishi'] = 'Mitsubishi',
            ['nissan'] = 'Nissan',
            ['porsche'] ='Porsche',
            ['peugeot'] = 'Peugeot',
            ['rangerover'] ='Range Rover',
            ['renault'] = 'Renault',
            ['rollsroyce'] = 'Rolls-Royce',
            ['subaru'] = 'Subaru',
            ['suzuki'] = 'Suzuki',
            ['tesla'] = 'Tesla',
            ['toyota'] = 'Toyota',
            ['volkswagen'] = 'Volkswagen',
            ['volvo'] = 'Volvo',
            ['wmotors'] = 'W-Motors'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 36.91 - 1.0, 205.08),
                defaultVehicle = 'pcs18',
                chosenVehicle = 'pcs18',
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 36.91 - 1.0, 247.08),
                defaultVehicle = 'skyline',
                chosenVehicle = 'skyline',
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 36.91 - 1.0, 297.12),
                defaultVehicle = 'levante',
                chosenVehicle = 'levante',
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 36.91, 56.44),
                defaultVehicle = 'katana',
                chosenVehicle = 'katana',
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 36.91, 55.63),
                defaultVehicle = 'katana',
                chosenVehicle = 'katana',
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 36.91, 53.24),
                defaultVehicle = 'katana',
                chosenVehicle = 'katana',
            },
        }
    }, -- Add your next table under this comma
    ['policeshop'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(423.42358398438, -992.18719482422),
                vector2(423.42514038086, -972.08856201172),
                vector2(461.10162353516, -972.08874511718),
                vector2(461.1015625, -974.20886230468),
                vector2(463.89752197266, -974.69567871094),
                vector2(464.27737426758, -992.18640136718)
            },
            ['minZ'] = 23.729675292968,
            ['maxZ'] = 27.604892730712
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'Polisfordon',
        ['showBlip'] = false,  --- true or false
        ['Categories'] = {
            ['police'] = 'Polisfordon'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(436.52, -987.75, 25.07),
        ['ReturnLocation'] = vector3(436.52, -987.75, 25.07),
        ['VehicleSpawn'] = vector4(431.33, -985.94, 25.07, 179.94),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(441.87, -990.83, 25.07, 91.07),
                defaultVehicle = 'police',
                chosenVehicle = 'police',
            },
            [2] = {
                coords = vector4(441.59, -985.02, 25.07, 90.35),
                defaultVehicle = 'police2',
                chosenVehicle = 'police2',
            },
            [3] = {
                coords = vector4(441.67, -979.37, 25.07, 90.1),
                defaultVehicle = 'fbi',
                chosenVehicle = 'fbi',
            },
        }
    }
}

