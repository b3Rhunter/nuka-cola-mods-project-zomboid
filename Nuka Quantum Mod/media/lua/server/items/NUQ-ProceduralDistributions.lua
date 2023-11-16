local function preDistributionMerge()

    ProceduralDistributions.list.BurgerKitchenFridge = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10,
            "MeatPatty", 8,
            "MeatPatty", 8,
            "MeatPatty", 8,
            "MeatPatty", 8,
            "Processedcheese", 10,
            "Processedcheese", 10,
            "farming.Bacon", 4,
            "farming.Bacon", 4,
            "farming.Tomato", 6,
            "farming.Tomato", 6,
            "Lettuce", 6,
            "Lettuce", 6,
            "Onion", 6,
            "Onion", 6,
            "Pickles", 6,
            "Pickles", 6,
        }
    }

    ProceduralDistributions.list.FridgeSoda = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10,
            "Pop", 4,
            "Pop", 4,
            "Pop2", 4,
            "Pop2", 4,
            "Pop3", 4,
            "Pop3", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,        
        }
    }

    ProceduralDistributions.list.FridgeOther = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10,
            "Milk", 4,
            "Milk", 4,
            "EggCarton", 2,
            "EggCarton", 2,
            "Butter", 4,
            "Processedcheese", 4,
            "Processedcheese", 4,
            "Yoghurt", 4,
            "Yoghurt", 4,
            "JuiceBox", 4,
            "JuiceBox", 4,
            "Mustard", 4,
            "Ketchup", 4,
            "farming.MayonnaiseFull", 4,
            "farming.RemouladeFull", 1,        
        }
    }

    ProceduralDistributions.list.GigamartBottles = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10, 
            "WaterBottleFull", 8,
            "WaterBottleFull", 8,
            "WaterBottleFull", 8,
            "WaterBottleFull", 8,
            "WaterBottleFull", 8,
            "WaterBottleFull", 8,
            "PopBottle", 10,
            "PopBottle", 10,
            "PopBottle", 10,
            "PopBottle", 10,
            "PopBottle", 10,
            "PopBottle", 10,
        }
    }

    ProceduralDistributions.list.SpiffosKitchenFridge = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10, 
            "MeatPatty", 10,
            "MeatPatty", 10,
            "MeatPatty", 10,
            "MeatPatty", 10,
            "Processedcheese", 8,
            "Processedcheese", 8,
            "farming.Bacon", 8,
            "farming.Bacon", 8,
            "farming.Tomato", 8,
            "farming.Tomato", 8,
            "Lettuce", 8,
            "Lettuce", 8,
            "Onion", 8,
            "Onion", 8,
            "Pickles", 6,
            "Pickles", 6,
        }
    }

    ProceduralDistributions.list.TheatreDrinks = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10, 
            "Pop", 8,
            "Pop", 8,
            "Pop2", 8,
            "Pop2", 8,
            "Pop3", 8,
            "Pop3", 8,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,
        }
    }

    ProceduralDistributions.list.StoreShelfDrinks = {
        rolls = 4,
        items = {
            "NUQ.NukaColaQuantum", 10, 
            "Pop", 4,
            "Pop", 4,
            "Pop2", 4,
            "Pop2", 4,
            "Pop3", 4,
            "Pop3", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "PopBottle", 4,
            "WaterBottleFull", 4,
            "WaterBottleFull", 4,
        }
    }


end
Events.OnPreDistributionMerge.Add(preDistributionMerge);