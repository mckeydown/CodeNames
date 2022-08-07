-- CodeNames V0.17

-- Lays's Image --
do
    local keyToId = {}
    local keyToIdPlayer = {}
    
    local addImage = tfm.exec.addImage
    local removeImage = tfm.exec.removeImage
    
    ui._imageCleanup = function(name)
        if keyToIdPlayer[name] then
            keyToIdPlayer[name] = nil
        end
    end
    
    ui.addImage = function(key, imageId, target, x, y, name, ...)
        if name == "*" then
            for pname in pairs(tfm.get.room.playerList) do
                ui.addImage(key, imageId, target, x, y, pname, ...)
            end

            return
        end

        local id = addImage(imageId, target, x, y, name, ...)
        
        if id then
            if name then
                keyToIdPlayer[name] = keyToIdPlayer[name] or {}
                
                -- Removes previous image
                if keyToIdPlayer[name][key] then
                    removeImage(keyToIdPlayer[name][key])
                end
                
                keyToIdPlayer[name][key] = id
            else
                -- Removes previous image
                if keyToId[key] then
                    removeImage(keyToId[key])
                end
                
                keyToId[key] = id
            end
        end
    end
    
    ui.removeImage = function(key, name, ...)
        if name == "*" then
            for pname in pairs(tfm.get.room.playerList) do
                ui.removeImage(key, pname, ...)
            end

            return
        end

        local id
        
        if name then
            id = keyToIdPlayer[name] and keyToIdPlayer[name][key]
        else
            id = keyToId[key]
        end
        
        if id then
            removeImage(id, ...)
            
            if name then
                keyToIdPlayer[name][key] = nil
            else
                keyToId[key] = nil
            end
        end
    end
end


words = {
    en = {"Acne","Acre","Addendum","Advertise","Aircraft","Aisle","Alligator","Alphabetize","America","Ankle","Apathy","Applause","Applesauc","Application","Archaeologist","Aristocrat","Arm","Armada","Asleep","Astronaut","Athlete","Atlantis","Aunt","Avocado","Baby-Sitter","Backbone","Bag","Baguette","Bald","Balloon","Banana","Banister","Baseball","Baseboards","Basketball","Bat","Battery","Beach","Beanstalk","Bedbug","Beer","Beethoven","Belt","Bib","Bicycle","Big","Bike","Billboard","Bird","Birthday","Bite","Blacksmith","Blanket","Bleach","Blimp","Blossom","Blueprint","Blunt","Blur","Boa","Boat","Bob","Bobsled","Body","Bomb","Bonnet","Book","Booth","Bowtie","Box","Boy","Brainstorm","Brand","Brave","Bride","Bridge","Broccoli","Broken","Broom","Bruise","Brunette","Bubble","Buddy","Buffalo","Bulb","Bunny","Bus","Buy","Cabin","Cafeteria","Cake","Calculator","Campsite","Can","Canada","Candle","Candy","Cape","Capitalism","Car","Cardboard","Cartography","Cat","Cd","Ceiling","Cell","Century","Chair","Chalk","Champion","Charger","Cheerleader","Chef","Chess","Chew","Chicken","Chime","China","Chips","Chocolate","Church","Circus","Clay","Cliff","Cloak","Clockwork","Clown","Clue","Coach","Coal","Coaster","Cog","Cold","College","Comfort","Computer","Cone","Constrictor","Continuum","Conversation","Cook","Coop","Cord","Corduroy","Cot","Cough","Cow","Cowboy","Crayon","Cream","Crisp","Criticize","Crow","Cruise","Crumb","Crust","Cuff","Curtain","Cuticle","Czar","Dad","Dart","Dawn","Day","Deep","Defect","Dent","Dentist","Desk","Dictionary","Dimple","Dirty","Dismantle","Ditch","Diver","Doctor","Dog","Doghouse","Doll","Dominoes","Door","Dot","Drain","Draw","Dream","Dress","Drink","Drip","Drums","Dryer","Duck","Dump","Dunk","Dust","Ear","Eat","Ebony","Elbow","Electricity","Elephant","Elevator","Elf","Elm","Engine","England","Ergonomic","Escalator","Eureka","Europe","Evolution","Extension","Eyebrow","Fan","Fancy","Fast","Feast","Fence","Feudalism","Fiddle","Figment","Finger","Fire","First","Fishing","Fix","Fizz","Flagpole","Flannel","Flashlight","Flock","Flotsam","Flower","Flu","Flush","Flutter","Fog","Foil","Football","Forehead","Forever","Fortnight","France","Freckle","Freight","Fringe","Frog","Frown","Gallop","Game","Garbage","Garden","Gasoline","Gem","Ginger","Gingerbread","Girl","Glasses","Goblin","Gold","Goodbye","Grandpa","Grape","Grass","Gratitude","Gray","Green","Guitar","Gum","Gumball","Hair","Half","Handle","Handwriting","Hang","Happy","Hat","Hatch","Headache","Heart","Hedge","Helicopter","Hem","Hide","Hill","Hockey","Homework","Honk","Hopscotch","Horse","Hose","Hot","House","Houseboat","Hug","Humidifier","Hungry","Hurdle","Hurt","Hut","Ice","Implode","Inn","Inquisition","Intern","Internet","Invitation","Ironic","Ivory","Ivy","Jade","Japan","Jeans","Jelly","Jet","Jig","Jog","Journal","Jump","Key","Killer","Kilogram","King","Kitchen","Kite","Knee","Kneel","Knife","Knight","Koala","Lace","Ladder","Ladybug","Lag","Landfill","Lap","Laugh","Laundry","Law","Lawn","Lawnmower","Leak","Leg","Letter","Level","Lifestyle","Ligament","Light","Lightsaber","Lime","Lion","Lizard","Log","Loiterer","Lollipop","Loveseat","Loyalty","Lunch","Lunchbox","Lyrics","Machine","Macho","Mailbox","Mammoth","Mark","Mars","Mascot","Mast","Matchstick","Mate","Mattress","Mess","Mexico","Midsummer","Mine","Mistake","Modern","Mold","Mom","Monday","Money","Monitor","Monster","Mooch","Moon","Mop","Moth","Motorcycle","Mountain","Mouse","Mower","Mud","Music","Mute","Nature","Negotiate","Neighbor","Nest","Neutron","Niece","Night","Nightmare","Nose","Oar","Observatory","Office","Oil","Old","Olympian","Opaque","Opener","Orbit","Organ","Organize","Outer","Outside","Ovation","Overture","Pail","Paint","Pajamas","Palace","Pants","Paper","Paper","Park","Parody","Party","Password","Pastry","Pawn","Pear","Pen","Pencil","Pendulum","Penis","Penny","Pepper","Personal","Philosopher","Phone","Photograph","Piano","Picnic","Pigpen","Pillow","Pilot","Pinch","Ping","Pinwheel","Pirate","Plaid","Plan","Plank","Plate","Platypus","Playground","Plow","Plumber","Pocket","Poem","Point","Pole","Pomp","Pong","Pool","Popsicle","Population","Portfolio","Positive","Post","Princess","Procrastinate","Protestant","Psychologist","Publisher","Punk","Puppet","Puppy","Push","Puzzle","Quarantine","Queen","Quicksand","Quiet","Race","Radio","Raft","Rag","Rainbow","Rainwater","Random","Ray","Recycle","Red","Regret","Reimbursement","Retaliate","Rib","Riddle","Rim","Rink","Roller","Room","Rose","Round","Roundabout","Rung","Runt","Rut","Sad","Safe","Salmon","Salt","Sandbox","Sandcastle","Sandwich","Sash","Satellite","Scar","Scared","School","Scoundrel","Scramble","Scuff","Seashell","Season","Sentence","Sequins","Set","Shaft","Shallow","Shampoo","Shark","Sheep","Sheets","Sheriff","Shipwreck","Shirt","Shoelace","Short","Shower","Shrink","Sick","Siesta","Silhouette","Singer","Sip","Skate","Skating","Ski","Slam","Sleep","Sling","Slow","Slump","Smith","Sneeze","Snow","Snuggle","Song","Space","Spare","Speakers","Spider","Spit","Sponge","Spool","Spoon","Spring","Sprinkler","Spy","Square","Squint","Stairs","Standing","Star","State","Stick","Stockholder","Stoplight","Stout","Stove","Stowaway","Straw","Stream","Streamline","Stripe","Student","Sun","Sunburn","Sushi","Swamp","Swarm","Sweater","Swimming","Swing","Tachometer","Talk","Taxi","Teacher","Teapot","Teenager","Telephone","Ten","Tennis","Thief","Think","Throne","Through","Thunder","Tide","Tiger","Time","Tinting","Tiptoe","Tiptop","Tired","Tissue","Toast","Toilet","Tool","Toothbrush","Tornado","Tournament","Tractor","Train","Trash","Treasure","Tree","Triangle","Trip","Truck","Tub","Tuba","Tutor","Television","Twang","Twig","Twitterpated","Type","Unemployed","Upgrade","Vest","Vision","Wag","Water","Watermelon","Wax","Wedding","Weed","Welder","Whatever","Wheelchair","Whiplash","Whisk","Whistle","White","Wig","Will","Windmill","Winter","Wish","Wolf","Wool","World","Worm","Wristwatch","Yardstick","Zamboni","Zen","Zero","Zipper","Zombie","Zone","Zoo"},
    tr = {"POKER", "EJDERHA", "SAVAŞ", "BAL", "BOMBA", "KUMARHANE", "GÖKDELEN", "SATÜRN", "UZAYLI", "KIRBAÇ", "ANTARTİKA", "KARDAN ADAM", "KONSER", "ÇİKOLATA", "JET", "MİLYONER", "DİNOZOR", "KORSAN", "DÜDÜK", "PENGUEN", "ÖRÜMCEK", "FÜZE", "KONSOLOSLUK", "TABANCA", "HASTALIK", "AJAN", "PRENSES", "DAHİ", "HIRSIZ", "OPERA", "ŞÖVALYE", "STADYUM", "LİMUZİN", "HAYALET", "KAMYONET", "DONDURMA", "LAZER", "ÖLÜM", "HASTANE", "AMBULANS", "AHTAPOT", "HELİKOPTER", "KANGURU", "MİKROSKOP", "TARZAN", "KAHRAMAN", "TELESKOP", "PARAŞÜT", "KAYNANA", "NEMRUT", "UYDU", "MELEK", "ROBOT", "AZRAİL", "CADI", "MEZARCI", "DALGIÇ", "ZEHİR", "KÖPRÜ", "ATEŞ", "MASA", "BALİNA", "AY", "BALIK", "DOKTOR", "CAMİ", "KEMER", "HEMŞİRE", "RÜZGAR", "ÇİZME", "PARK", "ALBÜM", "SİMİT", "TAŞ", "ŞOK", "BEYAZ", "HESAP", "KUPON", "MORS", "PALET", "REJİM", "PARTİ", "MAKAS", "KÖSTEBEK", "TAMPON", "PİLİÇ", "MANTAR", "ÖRGÜ", "NUMARA", "KUYRUK", "ALAY", "MACUN", "TARLA", "SATIR", "CEP", "PİKE", "SIRT", "TOPUZ", "TULUM", "POSTA", "TERAZİ", "SİTE", "VİZE", "TORPİL", "KAPTAN", "ATLAS", "KÜME", "CİLT", "BOY", "KURŞUN", "BANKO", "MAT", "BOĞAZ", "DİYET", "DOĞRU", "DÖVİZ", "KÖPEK", "AT", "AYAKKABI", "SANDALYE", "TAHT", "BUZ", "ALTIN", "ÇATAL", "ZAMAN", "FLÜT", "FENER", "YASTIK", "TESBİH", "ASKER", "PİRAMİT", "HALAT", "YILDIZ", "OCAK", "EKMEK", "YÜREK", "BLOK", "KUPA", "İĞNE", "DON", "ÖRTÜ", "KABUK", "BAYRAM", "PERDE", "BALTA", "YAKA", "DÜĞME", "AĞIZ", "ETİKET", "EL", "YATAK", "DUVAR", "KULE", "KART", "BAĞ", "YAY", "ORTA", "İNTERNET", "KAYMAK", "PAS", "DAMAT", "DELİK", "NİŞAN", "KUVVET", "ANAHTAR", "MOTOR", "DALGA", "AKIM", "BAŞ", "İSKELE", "ÇEKİRDEK", "KAZA", "DÜŞ", "KAZIK", "PUL", "DAİRE", "AĞ", "KANAL", "İSTANBUL", "AVUSTRALYA", "KIBRIS", "TOKYO", "MISIR", "REKLAM", "KAVURMA", "MOSKOVA", "DÖVME", "MEVLANA", "HOLLYWOOD", "BİZANS", "ROMA", "ARABESK", "NİNJA", "LAZ", "MANGO", "ALMANYA", "DEVLET", "AMERİKA", "MEZOPOTAMYA", "İNGİLTERE", "SURVİVOR", "KRİZ", "MECNUN", "EŞKİYA", "NAL", "GULYABANİ", "İRAN", "BERLİN", "KARINCA", "AVRUPA", "HİNDİSTAN", "ÇEYİZ", "EVEREST", "KALPAZAN", "PEKİN", "KARTAL", "PAZI", "BAKLAVA", "HİTİT", "YAŞ", "ATLET", "DİZİ", "BASKI", "DERECE", "DOLU", "TABLET", "YEŞİL", "ALEM", "MARŞ", "KUŞAK", "BOZUK", "MAKARA", "AĞAÇ", "BOT", "ZAR", "ORDU", "GÖÇ", "SERVİS", "MARS", "GÖBEK", "FESTİVAL", "OMURGA", "ÇATI", "DÜMEN", "İZ", "TAKIM", "ÇAY", "KANUN", "FAN", "FIRÇA", "KAHVE", "TAVLA", "GÜL", "ANA", "KOCA", "MASKARA", "PAZAR", "TEZ", "MAYA", "UŞAK", "MEMUR", "KEPÇE", "BEYİN", "KLASİK", "KOVAN", "PALA", "SOĞUK", "ASLAN", "TOP", "BANKA", "GÖZ", "HAVA", "TAVŞAN", "PASTA", "ELBİSE", "ÇİMEN", "CÜCE", "ORMAN", "ARABA", "ELDİVEN", "BERE", "BENZİN", "AŞÇI", "AYI", "KEDİ", "HAYAT", "PİRİNÇ", "DEV", "YÜZ", "PLAJ", "OTEL", "SU", "KAĞIT", "SOLUCAN", "AVUKAT", "BİLİM ADAMI", "DANS", "HAVUÇ", "SEPET", "GECE", "PAMUK", "AYAK", "FARE", "BIÇAK", "TİYATRO", "POLİS", "GEMİ", "PİLOT", "PARMAK", "ÖĞRETMEN", "ŞİŞE", "GÜN", "KRAL", "BARDAK", "ELMAS", "DİŞ", "KOPYA", "DARBE", "FİLM", "GIRGIR", "ARPACIK", "HORTUM", "IZGARA", "TORPİDO", "KEPEK", "GICIK", "KESE", "KISIR", "KOLON", "KULAÇ", "GAZİNO", "FELEK", "KAVAL", "KİTAP", "TIP", "KAYNAK", "GARAJ", "PAÇA", "LASTİK", "SAZ", "SET", "FAR", "KUTU", "KANEPE", "MAKAM", "ŞANS", "MERKEZ", "ÜNLÜ", "DEVİR", "DÜĞÜN", "TABLO", "GÖLGE", "GAZ", "KALE", "HAZİNE", "KÖY", "MODA", "HAVUZ", "MAGAZİN", "KÜPE", "FATURA", "SAYFA", "ÇAMAŞIR", "TUR", "AMAZON", "SAHTE", "OYUNCAK", "SIRA", "FORM", "KARE", "KAŞ", "SANDIK", "ACI", "TREN", "SOSYETE", "ÖRGÜT", "SÖZ", "UÇAK", "ADET", "BALKON", "ÇOBAN", "AYNA", "KURU", "DELİ", "YAZ", "NOT", "BÖLÜM", "ŞERİT", "YUNANİSTAN", "HÜCRE", "MEZUNİYET", "FAUL", "LONDRA", "MUCİZE", "TEMEL", "AFRİKA", "BİLYE", "YAĞMUR", "KUYU", "KANAT"}
}

translations = {
    tr = {
        red = "red",
        blue = "blue",
        blueTurn = "<b><p align='center'><font color='#ffffff'>BLUE TEAM'S TURN </b></p></font>",
        redTurn = "<b><p align='center'><font color='#ffffff'>RED TEAM'S TURN</b></p></font>",
        opponentSetting = "<p align='right'><font size='10' color='#FFFFFF'>CONFIRM OPPONENT'S CLUE</font></p>",
        timeSetting = "<p align='right'><font size='10' color='#FFFFFF'>TIME LIMIT</font></p>",
        startButton = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>START</font></p>",
        joinButton = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>JOIN</a></b></font></p>",
        clueConfirmation = "<p align='center'>The opponent's clue is <b>%s</b> and <b>%d</b> do you confirm it?</p>"

    },

    en = {
        red = "kırmızı",
        blue = "mavi",
        blueTurn = "<b><p align='center'><font color='#ffffff'>MAVİ TAKIMIN SIRASI </b></p></font>",
        redTurn = "<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIMIN SIRASI </b></p></font>",
        opponentSetting = "<p align='right'><font size='10' color='#FFFFFF'>RAKİP İÇİN İPUCU ONAYI</font></p>",
        timeSetting = "<p align='right'><font size='10' color='#FFFFFF'>SÜRE SINIRI</font></p>",
        startButton = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>BAŞLAT</font></p>",
        joinButton = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>KATIL</a></b></font></p>",
        clueConfirmation = "<p align='center'>Rakibin verdiği ipucu <b>%s</b> ve <b>%d</b> kabul edilebilir mi?</p>"

    }
}


images = {
    cards = {
    red = "18234254e67.png", 
    blue = "18234259ab2.png",
    yellow = "1823425e7b6.png",
    black = "182342634af.png"
    },

    join = { red = "18256983759.png", blue = "18256979f5d.png" },
    settings = { on = "1826568f84b.png", off = "1826569445c.png" },

    card_selected = {
        red = "18248860660.png",
        blue = "1824885ba5f.png",
        yellow = "1824886525e.png",
        black = "18248856e5f.png",
    },

    red_clues = "18248848a60.png",
    blue_clues = "18248830e77.png",
    blue_line = "18256975389.png",
    red_line = "1825697eb5c.png",
    red_circle = "18248852260.png",
    blue_circle = "1824883a65e.png",
    blue_operatives = "18248835a7e.png",
    blue_spymasters = "18248869e5d.png",
    red_operatives = "1824884d65e.png",
    red_spymasters = "18248869e5d.png",
    clue_input = "18234271bb2.png",
    vote_sign = "1824886ea60.png",
    game_logs = "18248843e60.png",
    time_bg = "1826569dc5b.png",
}

textAreas = {
    join_blue_operative = 26,
    join_red_operative = 27,
    join_blue_spymaster = 28,
    join_red_spymaster = 29,
    leave_blue_op = 30,
    leave_red_op = 31,
    update_blue_spy = 32,
    update_red_spy = 33,
    clue_text = 34,
    clue_number = 35,
    game_log = 36,
    clue_log = 37,
    turn_text = 38,
    opponent_setting = 39,
    time_settings = 40,
    opponent_button = 41,
    time_button = 42,
    start_button = 43,
    room_admin = 44,
    room_admin_info = 45,
    blue_count = 46,
    red_count = 47,
    time = 48
}

cards = {
    {position = {x = 110, y = 30}, color = "", id = 1, word = "", covered = false},
    {position = {x = 230, y = 30}, color = "", id = 2, word = "", covered = false},
    {position = {x = 350, y = 30}, color = "", id = 3, word = "", covered = false},
    {position = {x = 470, y = 30}, color = "", id = 4, word = "", covered = false},
    {position = {x = 590, y = 30}, color = "", id = 5, word = "", covered = false},
    
    {position = {x = 110, y = 70}, color = "", id = 6, word = "", covered = false},
    {position = {x = 230, y = 70}, color = "", id = 7, word = "", covered = false},
    {position = {x = 350, y = 70}, color = "", id = 8, word = "", covered = false},
    {position = {x = 470, y = 70}, color = "", id = 9, word = "", covered = false},
    {position = {x = 590, y = 70}, color = "", id = 10, word = "", covered = false},
    
    {position = {x = 110, y = 110}, color = "", id = 11, word = "", covered = false},
    {position = {x = 230, y = 110}, color = "", id = 12, word = "", covered = false},
    {position = {x = 350, y = 110}, color = "", id = 13, word = "", covered = false},
    {position = {x = 470, y = 110}, color = "", id = 14, word = "", covered = false},
    {position = {x = 590, y = 110}, color = "", id = 15, word = "", covered = false},
    
    {position = {x = 110, y = 150}, color = "", id = 16, word = "", covered = false},
    {position = {x = 230, y = 150}, color = "", id = 17, word = "", covered = false},
    {position = {x = 350, y = 150}, color = "", id = 18, word = "", covered = false},
    {position = {x = 470, y = 150}, color = "", id = 19, word = "", covered = false},
    {position = {x = 590, y = 150}, color = "", id = 20, word = "", covered = false},
    
    {position = {x = 110, y = 190}, color = "", id = 21, word = "", covered = false},
    {position = {x = 230, y = 190}, color = "", id = 22, word = "", covered = false},
    {position = {x = 350, y = 190}, color = "", id = 23, word = "", covered = false},
    {position = {x = 470, y = 190}, color = "", id = 24, word = "", covered = false},
    {position = {x = 590, y = 190}, color = "", id = 25, word = "", covered = false},
}


gameState = {
    -- 0 Lobby, 1 Game Started, 2 Give Clue
    status = 0,
    guessCount = 0,
    blueTurn = false,
    redTurn = false,
    firstTurn = true,
    canVote = false,
    canGiveClue = true,
}

settings = { clue = false, time = false, }

admins = {["Mckeydown#0000"] = true}
roomAdmin = nil

voted = {}
teams = {}
operatives = {red = {}, blue = {}}
spymasters = {}
clues = {red = {}, blue={}}
gameLog = {}
keys = {gameLogKey = {}, clueLogKey = {}}

blueVoteCount = #operatives["blue"] / 2
redVoteCount = #operatives["red"] / 2

roomLang = tfm.get.room.language
if translations[roomLang] == nil then roomLang = "en" end


tfm.exec.disableAutoShaman(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
system.disableChatCommandDisplay()
tfm.exec.disableMortCommand(true)
tfm.exec.newGame(7911404)

function gameStatus()
    checkRoomAdmin()
    if gameState.status == 0 then
        for n, player in pairs(tfm.get.room.playerList) do 
            if tfm.get.room.name:lower():match(n:lower()) then roomAdmin = n end
        end
        loadGameUI()
    end

    if gameState.status == 1 then
        tfm.exec.newGame(7911404)
        loadGameUI()
    end
end

function startGame(name)
    if roomAdmin ~= name then return end
    local checkOperatives = (#operatives["blue"] and #operatives["red"]) >= 0 and true
    local checkSpymasters = (spymasters["blue"] and spymasters["red"]) ~= nil and true
    
    if checkOperatives and checkSpymasters then
        gameState.status = 1
        gameStatus()
    end
end

function eventNewGame()
    if gameState.status == 0 then return end

    for n, player in pairs(tfm.get.room.playerList) do 
        system.bindKeyboard(n, 69, false) system.bindKeyboard(n, 81, false) 
        if tfm.get.room.name:lower():match(n:lower()) then 
            roomAdmin = n
        end
    end

    if settings.time then tfm.exec.setGameTime(240) end

    local size = math.floor(#words.tr / 25)
    roundWords = {} roundCardTypes = {}

    redCount = math.random(8,9) blueCount = nil

    if redCount == 8 then blueCount = 9 gameState.blueTurn = true
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].blueTurn),nil,310,373,180,nil,"0x000","0x000",0.5) 
    else 
        blueCount = 8 gameState.redTurn = true 
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].redTurn),nil,310,373,180,nil,"0x000","0x000",0.5) 
    end

    math.randomseed(4)
    for i = 1, 25 do table.insert(roundWords, words.tr[math.random(1 + size * (i - 1), size * i)]) end
    -- math.randomseed(os.time())
    table.shuffle(roundWords)
    for i=1, 25 do roundCardTypes[i] = i end

    selectRoundCards(1, "black")
    selectRoundCards(7, "yellow")
    selectRoundCards(blueCount, "blue")
    selectRoundCards(redCount, "red")
    showRoundCards(false)
    showRoundCards(true, spymasters["red"])
    showRoundCards(true, spymasters["blue"])
    updateCardsCount()
    
    gameState.status = 2
end

function eventNewPlayer(n)
    checkRoomAdmin()
    loadGameUI(n)
    updatePlayerTeam("red", false, n)
    updatePlayerTeam("blue", false, n)

    if gameState.status >= 1 then 
        system.bindKeyboard(n, 69, false) system.bindKeyboard(n, 81, false)
        showRoundCards(false, n)
        updateCardsCount(n)
    end
end

function eventPlayerLeft(n)
    leaveRequest(n)
    if n == roomAdmin then
        roomAdmin = nil
        checkRoomAdmin()
    end
end

function selectRoundCards(count, color)
    for i = 1, count do
        cardNumber = math.random(#roundCardTypes)
        cards[roundCardTypes[cardNumber]].color = color
        table.remove(roundCardTypes, cardNumber)
    end
end

function showRoundCards(showTrueColors, name)
    for i=1, 25 do
        cardsIMG = (showTrueColors or cards[i].covered) and images.cards[cards[i].color] or images.cards["yellow"]
        ui.addTextArea(cards[i].id, string.format("<p align='center'><font color='#000000'><b><a href='event:selectCard'>%s</a></b></font></p>",roundWords[i]), name, cards[i].position.x,cards[i].position.y+6, 100, 30,"0x000","0x000",true)
        ui.addImage("card"..i, cardsIMG, "_"..i+100, cards[i].position.x, cards[i].position.y, name)
    end
end

function eventLoop(elapsedTime, remainingTime)
    if gameState.status == 0 then return end
    if settings.time == false then return end
    local x = gameState.blueTurn and 30 or 725
    ui.addTextArea(textAreas.time,string.format("<p align='center'>%d</p>", remainingTime/1000) ,nil,x,105,50,nil,"0x000","0x000",1)

    if remainingTime < 1 and gameState.status == 2 then
        changeTurn()
    end

    if remainingTime < 1 and gameState.status == 3 then
        changeTurn()
    end

    if remainingTime < 1 and gameState.status == 4 then
        clueConfirmed = true
        checkClue(currentClueNum, currentClueText, currentPlayer) 
        return
    end
end

function loadGameUI(name)
    print(name)
    ui.addImage("blueteamoperatives", images.blue_operatives, "_26", 20, 240,name)
    ui.addImage("redteamoperatives", images.red_operatives, "_34", 670, 240,name)
    ui.addImage("bluespymasters", images.blue_spymasters, "_32", 20, 355,name)
    ui.addImage("redspymaster", images.red_spymasters, "_39", 690, 355,name) 
    ui.addImage("bluespymasterline", images.blue_line, "_33", 20, 370,name,1,0.9) 
    ui.addImage("redspymasterline", images.red_line, "_40", 660, 370,name,1,0.9) 
    for i = 0, 3 do ui.addImage("blueline"..i, images.blue_line, "_27", 20, 270 + i * 20,name,1,0.9) ui.addImage("redline"..i, images.red_line, "_35", 660, 270 + i * 20,name,1,0.9) end

    if gameState.status == 0 then
    ui.addImage("settings", "1826569905c.png", "_42", 235, 270,name,1,1)
    ui.addImage("opponent_setting", images.settings.off, "_42", 508, 297,name,1,1)
    ui.addImage("time_setting", images.settings.off, "_42", 508, 343,name,1,1)
    ui.addTextArea(textAreas.opponent_setting, string.format(translations[roomLang].opponentSetting),name,370,293,120,nil,"0x000","0x000",1)
    ui.addTextArea(textAreas.time_settings, string.format(translations[roomLang].timeSetting),name,370,345,120,nil,"0x000","0x000",1)
    ui.addTextArea(textAreas.opponent_button, string.format("<p align='center'><font size='13' color='#FFFFFF'><a href='event:settings'>         </font></p>"),name,510,297,45,nil,"0x000","0x000",1)
    ui.addTextArea(textAreas.time_button, string.format("<p align='center'><font size='13' color='#FFFFFF'><a href='event:settings'>         </font></p>"),name,510,343,45,nil,"0x000","0x000",1)
    ui.addTextArea(textAreas.start_button, string.format(translations[roomLang].startButton),name,272,356,nil,nil,"0x000","0x000",1)

    ui.addImage("blueJoinButton", images.join.blue, "_42", 150, 270,name,1,0.9)
    ui.addImage("redJoinButton", images.join.red, "_44", 590, 270,name,1,0.9)
    ui.addTextArea(textAreas.join_blue_operative, string.format(translations[roomLang].joinButton),name,155,270,50,20,"0x000","0x000",1)
    ui.addTextArea(textAreas.join_red_operative, string.format(translations[roomLang].joinButton),name,595,270,50,20,"0x000","0x000",1)
    ui.addImage("join_blue_spymaster", images.join.blue, "_43", 150, 370,name,1,0.9) 
    ui.addImage("join_red_spymaster", images.join.red, "_45", 590, 370,name,1,0.9)
    ui.addTextArea(textAreas.join_blue_spymaster, string.format(translations[roomLang].joinButton),name,155,370,50,20,"0x000","0x000",1)
    ui.addTextArea(textAreas.join_red_spymaster, string.format(translations[roomLang].joinButton),name,595,370,50,20,"0x000","0x000",1)

    elseif gameState.status >= 1 then
        ui.removeTextArea(textAreas.opponent_setting, name)
        ui.removeTextArea(textAreas.time_settings, name)
        ui.removeTextArea(textAreas.opponent_button, name)
        ui.removeTextArea(textAreas.time_button, name)
        ui.removeTextArea(textAreas.start_button, name)
        ui.removeTextArea(textAreas.join_blue_operative, name)
        ui.removeTextArea(textAreas.join_red_operative, name)
        ui.removeTextArea(textAreas.join_blue_spymaster, name)
        ui.removeTextArea(textAreas.join_red_spymaster, name)
        ui.removeImage("blueJoinButton",name)
        ui.removeImage("redJoinButton",name)
        ui.removeImage("settings",name)
        ui.removeImage("opponent_setting",name)
        ui.removeImage("time_setting",name)

        ui.addImage("clue", images.clue_input, "_41", 300, 260,name)

        ui.addImage("bluecardscount", images.blue_circle, "_47", 30, 40,name,1, 1)
        ui.addImage("redcardscount", images.red_circle, "_47", 725, 40,name,1, 1)

        if settings.time then 
            ui.addImage("blueTime", images.time_bg, "_42", 20, 100,name,1,1)
            ui.addImage("redTime", images.time_bg, "_44", 715, 100,name,1,1)
        end
    end
end

function updatePlayerTeam(t, isSpymaster, n)
    local x = { blue = 150, red = 590 } local y = {270,290,310,330}

    local opCount = #operatives[t]
    local joinButton = t.."JoinButton"
    local taID = textAreas["join_"..t.."_operative"]
    local joinSpy = "join_"..t.."_spymaster"
    
    if isSpymaster then ui.removeImage(joinSpy,nil) ui.removeImage(joinSpy,n) ui.removeTextArea(textAreas[joinSpy], nil) end

    if isSpymaster and spymasters[t] then updatePlayerNames(t,n,isSpymaster) return end

    if gameState.status == 0 then
    ui.removeImage(joinButton,n)
    ui.addImage(joinButton, images.join[t], "_44", x[t], y[opCount+1],nil,1,0.9)
    ui.addTextArea(taID, string.format(translations[roomLang].joinButton),nil,x[t]+5,y[opCount+1],50,20,"0x000","0x000",1)
    end
    if opCount == 4 then ui.removeTextArea(taID, nil) ui.removeImage(joinButton,n) end
    
    updatePlayerNames(t,n)
end

function updatePlayerNames(team,name)
    blueVoteCount = #operatives["blue"] / 2
    redVoteCount = #operatives["red"] / 2

    local updateOperatives = table.concat(operatives[team], '</a>\n<a href="event:leaveTeam">')
    local operativeID = textAreas["leave_"..team.."_op"]
    local spymasterID = textAreas["update_"..team.."_spy"]
    
    local x = team == "blue" and 20 or 660

    ui.addTextArea(operativeID, string.format("<textformat leading='7'><font color='#ffffff'><p align='center'><a href='event:leaveTeam'>%s</a></p></font></textformat>",updateOperatives),nil,x,270,120,200,"0x000","0x000",true)
    ui.addTextArea(spymasterID, string.format("<p align='center'><font color='#000000'><b>%s</b></font></p>", spymasters[team] or ""),nil,x,370,120,30,"0x000","0x000",1)
end


function joinRequest(name, playerTeam, isSpymaster)
    if teams[name] then return end
    if isSpymaster and spymasters[playerTeam] then return end

    teams[name] = playerTeam
    if isSpymaster then spymasters[playerTeam] = name 
    else
    table.insert(operatives[playerTeam], name)
    end

    updatePlayerTeam(playerTeam, isSpymaster, name)
end

function leaveRequest(name)
    if not teams[name] then return end

    local playerTeam = teams[name]
    if spymasters[playerTeam] == name then return end

    teams[name] = nil

    local opIndex = table.index(operatives[playerTeam], name)
    table.remove(operatives[playerTeam], opIndex)

    updatePlayerTeam(playerTeam)
end


function eventTextAreaCallback(id, name, e)
    if e == "joinTeam" and gameState.status == 0 then
        if id == textAreas.join_blue_operative then joinRequest(name, "blue", id == 28 or id == 29) end
        if id == textAreas.join_red_operative then joinRequest(name, "red", id == 28 or id == 29) end
        if id == textAreas.join_blue_spymaster then joinRequest(name, "blue", id == 28 or id == 29) end
        if id == textAreas.join_red_spymaster then joinRequest(name, "red", id == 28 or id == 29) end
    end

    if e == "leaveTeam" and gameState.status == 0 then
        if id == textAreas.leave_blue_op then leaveRequest(name) end
        if id == textAreas.leave_red_op then leaveRequest(name) end
    end

    if e == "selectCard" then voteCard(id,name) end

    if e == "settings" then changeSettings(id == textAreas.opponent_button, name) end

    if e == "startGame" and roomAdmin == name then startGame(name) end

    if e == "roomAdmin" and roomAdmin == nil then roomAdmin = name ui.removeTextArea(textAreas.room_admin, nil) ui.removeTextArea(textAreas.room_admin_info, nil) end

    if e == "infoRoomAdmin" then print("The room admin can change the settings and start the game at any time.") end
end

function changeSettings(isClueSettings, name)
    if roomAdmin ~= name then return end
    if isClueSettings then settings.clue = not settings.clue else settings.time = not settings.time end

    local image = isClueSettings and "opponent_setting" or "time_setting"
    local clueButton = settings.clue and images.settings.on or images.settings.off
    local timeButton = settings.time and images.settings.on or images.settings.off
    local button = image == "opponent_setting" and clueButton or timeButton
    local y = isClueSettings and 297 or 343

    ui.addImage(image, button, "_42", 508, y,nil,1,1)
end

function eventChatCommand(playerName, cmd) 
    if admins[playerName] then
     if cmd == "skip" then changeTurn() return 
     elseif cmd == "lobby" then resetGame() return end
    end

    if roomAdmin == playerName then
        if cmd == "resetgame" then resetGame() tfm.exec.chatMessage(string.format("<R> %s oyunu yeniden başlattı. </R>"), nil) return end
    end



    if gameState.status ~= 2 then return end
    if not gameState.canGiveClue then return end
    if operatives[teams[playerName]] == playerName then return end
    if spymasters[teams[playerName]] ~= playerName then return end
    if gameState.redTurn == false and spymasters["red"] == playerName or gameState.blueTurn == false and spymasters["blue"] == playerName then return end
    currentClueNum = 0 currentClueText = nil

    local args = {}
    for arg in cmd:gmatch('%S+') do args[1+#args]=arg end
    clueTxt = args[1] clueNumber = (tonumber(args[2]))

    if clueNumber == nil or clueNumber < 1 then clueNumber = 1 end

    checkThisWord = string.upper(clueTxt:gsub('i', 'İ'))
    local checkClueWord = table.index(roundWords, checkThisWord)
    if roundWords[checkClueWord] == checkThisWord or roundWords[checkClueWord] == clueTxt then return end

    currentClueNum = clueNumber currentClueText = clueTxt currentPlayer = playerName

    checkClue(currentClueNum, currentClueText, playerName)
end

clueConfirmed = false
function checkClue(clueNum, clueText, name)
    local whichspy = spymasters["red"] == name and spymasters["blue"] or spymasters["red"]

    if settings.clue and clueConfirmed == false then
        gameState.status = 4
        tfm.exec.setGameTime(30)
        ui.addPopup(1, 1, string.format(translations[roomLang].clueConfirmation, clueText, clueNum), whichspy, 280, 250, 250, true)
        ui.addTextArea(textAreas.turn_text, string.format("%s verilen ipucunun geçerli olup olmadığına karar veriyor..", whichspy),nil,200,373,nil,nil,"0x000","0x000",1) 
        return
    end

    if redCount >= clueNum or blueCount >= clueNum then
        addClue(clueText, clueNum, name)
        gameState.canGiveClue = false
        gameState.canVote = true
        ui.addPopup(1, 1, "", whichspy, 50000, 50000, 10, true)
        gameState.status = 3
    else
        print("The clue number can't be greater than remaining cards count.")
    end
end

function addClue(clueText, clueNum, playerName)
    if spymasters[teams[playerName]] ~= playerName then return end
    if settings.clue then clueConfirmed = false end
    local teamClue = clues[teams[playerName]]
    local colorCode = teams[playerName] == "red" and "#C70039" or "#3284a3"
    
    table.insert(teamClue, 1, string.format("The clue is <b>%s</b> and <b>%d</b> times.", clueText, clueNum))
    addGameLog(string.format("<b><font color='%s'>%s</b></font>'s clue is <font color='%s'><b>%s</b></font> and <b><font color='%s'>%d</b></font> times.", colorCode, spymasters[teams[playerName]],colorCode, clueText, colorCode,clueNum))
    setCurrentClue(clueText, clueNum, nil, colorCode)
    gameState.canGiveClue = false
    if settings.time then tfm.exec.setGameTime(120) end
end

function setCurrentClue(clueText, clueNum, playerName, colorCode)
    ui.addTextArea(textAreas.clue_text, string.format("<font color='%s'><b>%s</font></b>",colorCode, clueText),playerName,310,288,170,20,"0X000","0X000",1)
    ui.addTextArea(textAreas.clue_number,string.format("<p align='center'><font color='%s'><b>%d</font></b></p>",colorCode, clueNum),playerName,485,288,20,20,"0x000","0x000",1)
end

function stopThinking()
end

voteImages = {}
function voteCard(cardID, name)
    if gameState.status ~= 3 then return end
    if spymasters[teams[name]] == name then return end
    if gameState.canVote == false then return end
    local card = cards[cardID]
    local votes = voted[cardID] or 0
    local whoseTurn = gameState.redTurn and "red" or "blue"

    if card.covered or clueNumber < 1 then return end
    if voted[name .. "|" .. cardID] then return end

    if teams[name] ~= whoseTurn then return end

    local checkVoteCount = teams[name] == "red" and redVoteCount or blueVoteCount
    
    ui.addImage("vote"..cardID.."-"..votes, images.vote_sign, "_800", card.position.x + 5 + (votes) * 15, card.position.y - 5, nil, 1, 1)
    table.insert(voteImages, "vote"..cardID.."-"..votes)

    voted[cardID] = votes + 1
    voted[name .. "|" .. cardID] = true
    
    if voted[cardID] > checkVoteCount then
        pickedCard(cardID, name)
    end
end

function pickedCard(cardID, name)
    local card = cards[cardID]
    local replaceimg = images.card_selected[card.color]
    local textcolor = card.color == "red" and "8f2b1c" or "3284a3"

    ui.addTextArea(cardID, string.format("<font color='#ffffff'><p align='center'><b>%s</b></p></font>", roundWords[cardID]), nil, card.position.x, card.position.y+6, 100, 30,card.color,"0x000",1)
    ui.addImage("card"..cardID, replaceimg, "_"..cardID+200, card.position.x, card.position.y, nil)
    card.covered = true

        if card.color == "yellow" then clueNumber = 0 
        elseif card.color == "black" then gameOver(teams[name], true) return
        elseif card.color == "red" then redCount = redCount - 1 
        elseif card.color == "blue" then blueCount = blueCount -1 
        end

        if card.color == teams[name] then 
        clueNumber = clueNumber - 1 
        else 
        clueNumber = 0 
        end
        updateCardsCount()

    if redCount < 1 then gameOver(teams[name]) return
    elseif blueCount < 1 then gameOver(teams[name]) return
    elseif clueNumber < 1 then changeTurn(cardID, name) gameState.status = 2 end
end


function updateCardsCount(n)
    ui.addTextArea(textAreas.blue_count, string.format("<p align='center'><b><font size='25' color='#FFFFFF'>%d</p></b></font>", blueCount),n,30,46,50,nil,"0x000","0x000",1)
    ui.addTextArea(textAreas.red_count, string.format("<p align='center'><b><font size='25' color='#FFFFFF'>%d</p></b></font>", redCount),n,725,46,50,nil,"0x000","0x000",1)
end


function changeTurn(cardID, name)
    noLimit = 0
    ui.updateTextArea(textAreas.clue_text, "<font color='#000000'><b> Thinking... </b></font>", nil)
    ui.updateTextArea(textAreas.clue_number, "-", nil)

    for i = 1, #voteImages do ui.removeImage(voteImages[i], nil) end
    voteImages = {}
    voted = {}

    if gameState.redTurn then
        gameState.redTurn = false
        gameState.blueTurn = true
        ui.addTextArea(textAreas.turn_text, string.format(string.format(translations[roomLang].blueTurn)),nil,175,370,450,40,0,0,1)
        
    else
        gameState.blueTurn = false
        gameState.redTurn = true
        ui.addTextArea(textAreas.turn_text, string.format(string.format(translations[roomLang].redTurn)),nil,175,370,450,40,0,0,1)
    end
    gameState.canGiveClue = true gameState.firstTurn = false gameState.canVote = false gameState.status = 2
    if settings.time then tfm.exec.setGameTime(180) end
end

function gameOver(team, isBlack)
    gameState.redTurn = false
    gameState.blueTurn = false
    if isBlack then ui.addTextArea(textAreas.turn_text, string.format("<b><p align='center'><font color='#ffffff'>%s TAKIM SİYAH KARTI BULARAK OYUNU KAYBETTİ! </b></p></font>", team),nil,310,373,180,nil,"0x000","0x000",0.5) return end
    if redCount == 0 then
        ui.addTextArea(textAreas.turn_text, string.format("<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIM KAZANDI! </b></p></font>"),nil,310,373,180,nil,"0x000","0x000",0.5)
    elseif blueCount == 0 then
        ui.addTextArea(textAreas.turn_text, string.format("<b><p align='center'><font color='#ffffff'>MAVİ TAKIM KAZANDI! </b></p></font>"),nil,310,373,180,nil,"0x000","0x000",0.5)
    end
    showRoundCards(true)
end


function addGameLog(message)
    table.insert(gameLog, 1, message)
    gameLogList = table.concat(gameLog, '\n')
end

function teamClueLog(name, team)
    local cLogsID = teams[name].."logs"
    local img = images[teams[name].."_clues"]

    if keys.clueLogKey[name] then
    local showClue = table.concat(clues[teams[name]],'\n')
    ui.addTextArea(textAreas.clue_log, string.format("<p align='right'><font color='#FFFFFF'>%s</p></font>", showClue or ""),name,260,280,280,100,"0x000","0x000",1,true)
    ui.addImage(cLogsID, img, ":999", 225, 241, name)
    else
    ui.removeImage(cLogsID, name)
    ui.removeTextArea(textAreas.clue_log, name)
    end
end

function eventKeyboard(name, key, down)
    if key == 69 then
        keys.gameLogKey[name] = not keys.gameLogKey[name]
        if keys.gameLogKey[name] then
            ui.addImage("gamelogs", images.game_logs, ":999", 225, 20, name)
            ui.addTextArea(textAreas.game_log, string.format("<font size='10' color='#000000'><b>%s</b></font>", gameLogList or ""),name,260,30,200,65,"0x000","0x000",1, true) 
        else
            ui.removeImage("gamelogs", name)
            ui.removeTextArea(textAreas.game_log, name)
        end
    end

    if key == 81 then
        if not teams[name] then return end
        keys.clueLogKey[name] = not keys.clueLogKey[name]
        teamClueLog(name, teams[name])
    end
end

noLimit = 0
function eventPopupAnswer(id, name, answer)
    if id == 1 and answer == "yes" then
        clueConfirmed = true
        ui.addTextArea(textAreas.turn_text, string.format("Verilen ipucu geçerli! %s takım seçim yapabilir.", translations[roomLang][teams[currentPlayer]]),nil,260,373,nil,nil,"0x000","0x000",1) 
        checkClue(currentClueNum, currentClueText, currentPlayer)
    end

    if id == 1 and answer == "no" then
        noLimit = noLimit + 1
        clueConfirmed = false
        ui.addTextArea(textAreas.turn_text, string.format("Verilen ipucu geçersiz! %d hakkınız kaldı.", 3-noLimit),nil,310,373,nil,nil,"0x000","0x000",1) 
        if settings.time then tfm.exec.setGameTime(60) end 
        if noLimit == 3 then changeTurn() end
        gameState.status = 2
    end
end

function checkRoomAdmin()
    if roomAdmin ~= nil then return end

    for n, player in pairs(tfm.get.room.playerList) do 
        if tfm.get.room.name:lower():match(n:lower()) then roomAdmin = n end
    end

    if roomAdmin == nil then
        ui.addTextArea(textAreas.room_admin, string.format("<a href='event:roomAdmin'><b>GET ROOM ADMIN</b></a>"),nil,20,25,nil,nil,0,0,1) 
        ui.addTextArea(textAreas.room_admin_info, string.format("<a href='event:infoRoomAdmin'><font size='9'>[?]</font></a>"),nil,140,20,nil,nil,0,0,1) 
    end
end

function resetGame()
    for i, v in pairs(textAreas) do ui.removeTextArea(textAreas[i]) end
    for i = 1, 25 do ui.removeTextArea(cards[i].id) ui.removeImage("card"..i, nil) end

    voted = {}
    teams = {}
    operatives = {red = {}, blue = {}}
    spymasters = {}
    clues = {red = {}, blue={}}
    gameLog = {}
    gameState = {status = 0, guessCount = 0, blueTurn = false, redTurn = false, firstTurn = true, canVote = false, canGiveClue = true}
    settings = { clue = false, time = false, }

    gameState.status = 0
    tfm.exec.newGame(7911404)
    gameStatus()
end


function table.index(tbl, val) for i=1, #tbl do if tbl[i] == val then return i end end end
function table.shuffle(tbl) local j, t for i=1, #tbl do j = math.random(#tbl) t = tbl[i] tbl[i] = tbl[j] tbl[j] = t end end

gameStatus()