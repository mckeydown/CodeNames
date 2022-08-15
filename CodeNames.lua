-- CodeNames V0.18

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

-- en,tr,br,es,fr,ar
words = {
    tr = {"POKER", "EJDERHA", "SAVAŞ", "BAL", "BOMBA", "KUMARHANE", "GÖKDELEN", "SATÜRN", "UZAYLI", "KIRBAÇ", "ANTARTİKA", "KARDAN ADAM", "KONSER", "ÇİKOLATA", "JET", "MİLYONER", "DİNOZOR", "KORSAN", "DÜDÜK", "PENGUEN", "ÖRÜMCEK", "FÜZE", "KONSOLOSLUK", "TABANCA", "HASTALIK", "AJAN", "PRENSES", "DAHİ", "HIRSIZ", "OPERA", "ŞÖVALYE", "STADYUM", "LİMUZİN", "HAYALET", "KAMYONET", "DONDURMA", "LAZER", "ÖLÜM", "HASTANE", "AMBULANS", "AHTAPOT", "HELİKOPTER", "KANGURU", "MİKROSKOP", "TARZAN", "KAHRAMAN", "TELESKOP", "PARAŞÜT", "KAYNANA", "NEMRUT", "UYDU", "MELEK", "ROBOT", "AZRAİL", "CADI", "MEZARCI", "DALGIÇ", "ZEHİR", "KÖPRÜ", "ATEŞ", "MASA", "BALİNA", "AY", "BALIK", "DOKTOR", "CAMİ", "KEMER", "HEMŞİRE", "RÜZGAR", "ÇİZME", "PARK", "ALBÜM", "SİMİT", "TAŞ", "ŞOK", "BEYAZ", "HESAP", "KUPON", "MORS", "PALET", "REJİM", "PARTİ", "MAKAS", "KÖSTEBEK", "TAMPON", "PİLİÇ", "MANTAR", "ÖRGÜ", "NUMARA", "KUYRUK", "ALAY", "MACUN", "TARLA", "SATIR", "CEP", "PİKE", "SIRT", "TOPUZ", "TULUM", "POSTA", "TERAZİ", "SİTE", "VİZE", "TORPİL", "KAPTAN", "ATLAS", "KÜME", "CİLT", "BOY", "KURŞUN", "BANKO", "MAT", "BOĞAZ", "DİYET", "DOĞRU", "DÖVİZ", "KÖPEK", "AT", "AYAKKABI", "SANDALYE", "TAHT", "BUZ", "ALTIN", "ÇATAL", "ZAMAN", "FLÜT", "FENER", "YASTIK", "TESBİH", "ASKER", "PİRAMİT", "HALAT", "YILDIZ", "OCAK", "EKMEK", "YÜREK", "BLOK", "KUPA", "İĞNE", "DON", "ÖRTÜ", "KABUK", "BAYRAM", "PERDE", "BALTA", "YAKA", "DÜĞME", "AĞIZ", "ETİKET", "EL", "YATAK", "DUVAR", "KULE", "KART", "BAĞ", "YAY", "ORTA", "İNTERNET", "KAYMAK", "PAS", "DAMAT", "DELİK", "NİŞAN", "KUVVET", "ANAHTAR", "MOTOR", "DALGA", "AKIM", "BAŞ", "İSKELE", "ÇEKİRDEK", "KAZA", "DÜŞ", "KAZIK", "PUL", "DAİRE", "AĞ", "KANAL", "İSTANBUL", "AVUSTRALYA", "KIBRIS", "TOKYO", "MISIR", "REKLAM", "KAVURMA", "MOSKOVA", "DÖVME", "MEVLANA", "HOLLYWOOD", "BİZANS", "ROMA", "ARABESK", "NİNJA", "LAZ", "MANGO", "ALMANYA", "DEVLET", "AMERİKA", "MEZOPOTAMYA", "İNGİLTERE", "SURVİVOR", "KRİZ", "MECNUN", "EŞKİYA", "NAL", "GULYABANİ", "İRAN", "BERLİN", "KARINCA", "AVRUPA", "HİNDİSTAN", "ÇEYİZ", "EVEREST", "KALPAZAN", "PEKİN", "KARTAL", "PAZI", "BAKLAVA", "HİTİT", "YAŞ", "ATLET", "DİZİ", "BASKI", "DERECE", "DOLU", "TABLET", "YEŞİL", "ALEM", "MARŞ", "KUŞAK", "BOZUK", "MAKARA", "AĞAÇ", "BOT", "ZAR", "ORDU", "GÖÇ", "SERVİS", "MARS", "GÖBEK", "FESTİVAL", "OMURGA", "ÇATI", "DÜMEN", "İZ", "TAKIM", "ÇAY", "KANUN", "FAN", "FIRÇA", "KAHVE", "TAVLA", "GÜL", "ANA", "KOCA", "MASKARA", "PAZAR", "TEZ", "MAYA", "UŞAK", "MEMUR", "KEPÇE", "BEYİN", "KLASİK", "KOVAN", "PALA", "SOĞUK", "ASLAN", "TOP", "BANKA", "GÖZ", "HAVA", "TAVŞAN", "PASTA", "ELBİSE", "ÇİMEN", "CÜCE", "ORMAN", "ARABA", "ELDİVEN", "BERE", "BENZİN", "AŞÇI", "AYI", "KEDİ", "HAYAT", "PİRİNÇ", "DEV", "YÜZ", "PLAJ", "OTEL", "SU", "KAĞIT", "SOLUCAN", "AVUKAT", "BİLİM ADAMI", "DANS", "HAVUÇ", "SEPET", "GECE", "PAMUK", "AYAK", "FARE", "BIÇAK", "TİYATRO", "POLİS", "GEMİ", "PİLOT", "PARMAK", "ÖĞRETMEN", "ŞİŞE", "GÜN", "KRAL", "BARDAK", "ELMAS", "DİŞ", "KOPYA", "DARBE", "FİLM", "GIRGIR", "ARPACIK", "HORTUM", "IZGARA", "TORPİDO", "KEPEK", "GICIK", "KESE", "KISIR", "KOLON", "KULAÇ", "GAZİNO", "FELEK", "KAVAL", "KİTAP", "TIP", "KAYNAK", "GARAJ", "PAÇA", "LASTİK", "SAZ", "SET", "FAR", "KUTU", "KANEPE", "MAKAM", "ŞANS", "MERKEZ", "ÜNLÜ", "DEVİR", "DÜĞÜN", "TABLO", "GÖLGE", "GAZ", "KALE", "HAZİNE", "KÖY", "MODA", "HAVUZ", "MAGAZİN", "KÜPE", "FATURA", "SAYFA", "ÇAMAŞIR", "TUR", "AMAZON", "SAHTE", "OYUNCAK", "SIRA", "FORM", "KARE", "KAŞ", "SANDIK", "ACI", "TREN", "SOSYETE", "ÖRGÜT", "SÖZ", "UÇAK", "ADET", "BALKON", "ÇOBAN", "AYNA", "KURU", "DELİ", "YAZ", "NOT", "BÖLÜM", "ŞERİT", "YUNANİSTAN", "HÜCRE", "MEZUNİYET", "FAUL", "LONDRA", "MUCİZE", "TEMEL", "AFRİKA", "BİLYE", "YAĞMUR", "KUYU", "KANAT"},
    en = {"STAR","BRIDGE","FIRE","RING","HEART","HORN","SPRING","TABLE","WHALE","SEAL","MOON","BLOCK","DRILL","FISH","TUBE","GRACE","IRON","DOCTOR","ROULETTE","DEGREE","WAKE","NEEDLE","TABLET","PIE","GREEN","DRAGON","NEW YORK","AUSTRALIA","MARCH","LINE","WAR","HONEY","JAM","CHURCH","COVER","LEAD","BERMUDA","CHANGE","TOKYO","EGYPT","BEAT","RAY","BELT","CAP","LEMON","NURSE","WIND","LION","LONDON","FALL","BOOT","DICE","EYE","BOARD","SWITCH","AIR","JUPITER","HAM","BATTERY","SPINE","VET","RABBIT","AGENT","DROP","TRACK","BANK","CLIFF","BOMB","CASINO","SKYSCRAPER","STOCK","BRUSH","GRASS","SATURN","DRESS","FAN","DWARF","ALIEN","WHIP","ANTARCTICA","PUMPKIN","MOSCOW","TRIP","SNOWMAN","FOREST","CAPITAL","STRIKE","COPPER","SOUL","CANADA","CONCERT","CHOCOLATE","JET","SHAKESPEARE","CAR","SHADOW","GLOVE","LITTER","COMIC","MILLIONAIRE","PITCH","BOND","APPLE","OIL","COOK","FLY","CAST","BEAR","PIN","MINE","CHECK","BAR","COLD","HOLLYWOOD","SCREEN","PLAY","MARBLE","DINOSAUR","CAT","GAME","LIFE","LUCK","HOOK","PARK","BAT","BOLT","GREECE","DECK","YARD","CONDUCTOR","GIANT","FACE","PIRATE","BEACH","POUND","ROUND","FIELD","CYCLE","ROME","HOTEL","SPOT","MOUNT","STICK","SINK","MOLE","SCHOOL","CHICK","WATER","PAPER","SLUG","BUTTON","HIMALAYAS","NINJA","CZECH","GROUND","BUGLE","MOUTH","TAG","NUT","WORM","PENGUIN","LAWYER","SPIDER","TAIL","TICK","MINT","MISSILE","EMBASSY","PISTOL","SCIENTIST","KIWI","LOG","GERMANY","HAND","DISEASE","BED","SPY","PRINCESS","DANCE","CARROT","STATE","RACKET","GENIUS","THIEF","TRUNK","AMERICA","NOVEL","WALL","BERRY","ATLANTIS","KETCHUP","PLOT","ENGLAND","TEMPLE","MAPLE","MAIL","AFRICA","OPERA","TOWER","NIGHT","POOL","ROBIN","BAND","DUCK","HOOD","CARD","COURT","TIE","DIAMOND","CROSS","NET","FRANCE","DATE","COTTON","POINT","OLIVE","MATCH","BALL","MERCURY","BOW","FIGHTER","SHOP","SLIP","KNIGHT","PASS","STADIUM","FOOT","LIMOUSINE","CONTRACT","PLATE","MOUSE","HORSESHOE","ORGAN","KNIFE","CELL","WATCH","ARM","ROSE","MODEL","THEATER","HOLE","POST","LIGHT","TRIANGLE","BELL","LEPRECHAUN","KID","POLICE","ROCK","SCALE","GHOST","SHIP","MEXICO","CLOAK","STRAW","CALF","SHARK","DRAFT","HAWK","PRESS","VAN","ICE CREAM","BUCK","PHOENIX","FORCE","BOOM","LAB","RULER","PILOT","LASER","DEATH","LOCK","SPELL","HOSPITAL","AMBULANCE","WEB","PLASTIC","KEY","OCTOPUS","THUMB","TEACHER","PALM","CRANE","HELICOPTER","BOTTLE","FENCE","KANGAROO","JACK","EUROPE","SCORPION","MUG","SUIT","MICROSCOPE","ENGINE","WAVE","CENTAUR","STREAM","HEAD","MAMMOTH","DAY","KING","PAN","POLE","SUPERHERO","REVOLUTION","PIT","GAS","GLASS","WASHINGTON","TURKEY","QUEEN","FILE","CRICKET","WELL","FAIR","TOOTH","STAFF","BILL","SHOT","WASHER","LAP","AMAZON","SPACE","FIGURE","MASS","CHINA","SQUARE","BUFFALO","CHEST","DOG","NAIL","BERLIN","HORSE","CHARGE","SUB","INDIA","TRAIN","TELESCOPE","PLANE","PARACHUTE","PIANO","BOX","PLATYPUS","CLUB","SHOE","SERVER","CENTER","CHAIR","SOUND","COMPOUND","FILM","CROWN","OLYMPUS","BACK","NOTE","PART","TAP","ICE","SOCK","ALPS","ROOT","SATELLITE","ANGEL","CRASH","GOLD","BUG","PASTE","ROBOT","ROW","SPIKE","CODE","LOCH NESS","FORK","SWING","PORT","CIRCLE","UNICORN","TIME","LINK","FLUTE","TORCH","BEIJING","EAGLE","BARK","SNOW","IVORY","PIPE","PANTS","SOLDIER","VACUUM","WITCH","PUPIL","SMUGGLER","ORANGE","AZTEC","UNDERTAKER","SCUBA DIVER","PYRAMID","POISON","STRING"},
    fr = {"PAPIER","VISAGE","CEINTURE","ATLANTIQUE","GUERRE","CINÉMA","ANNEAU","VAMPIRE","RESTAURANT","FEU","MILLIONNAIRE","FRANÇAIS","ÉCOLE","PILOTE","MAÎTRESSE","MICROSCOPE","NEIGE","ESPION","ANGE","MIEL","CANADA","FANTÔME","LUNE","CHINE","INDIEN","BIÈRE","CASINO","PLAGE","JEU","DOCTEUR","CERCLE","AFRIQUE","CENTRE","PIED","LICORNE","DRAGON","TABLEAU","AVION","NAIN","MACHINE","BALLE","EAU","CHIEN","PARIS","ALLEMAGNE","CODE","TEMPLE","NUIT","CHEVAL","CHÂTEAU","BANQUE","CHAMP","CHOCOLAT","TROU","ANGLETERRE","CHEVALIER","BATEAU","TÊTE","DINOSAURE","MAIN","NŒUD","ALIEN","CHANCE","ÉGYPTE","COCHON","BRANCHE","ÉTOILE","SOLDAT","BOUCHE","HÔTEL","GÉNIE","ÉCHELLE","BOUTEILLE","CŒUR","AIGUILLE","HERBE","DANSE","BALEINE","KANGOUROU","AMÉRIQUE","LASER","MALADIE","ARAIGNÉE","COLLE","FORÊT","CORDE","PLACE","HÔPITAL","BÂTON","HÉROS","MARS","GAUCHE","LIEN","CHAUSSON","MORT","OISEAU","COURANT","PÔLE","POISSON","GÉANT","LONDRES","AVOCAT","CRITIQUE","IRIS","GLACE","MOULE","POÊLE","ENSEMBLE","FRAISE","CARTOUCHE","FORMULE","MINE","BAIE","JET","FIN","FOYER","BAR","LIGNE","GRUE","BOURSE","OPÉRATION","CARTE","CAFARD","CADRE","GUIDE","GARDE","DROIT","CLUB","BARRE","CANON","ÉCLAIR","BASE","VAISSEAU","CELLULE","CHAÎNE","CARREAU","DON","MARQUE","SARDINE","MOUSSE","FORT","SENS","COUPE","UNIFORME","COUVERTURE","LENTILLE","TUBE","CHEMISE","CHOU","BANDE","NEW-YORK","BON","BRETELLE","BUREAU","BOUTON","ASTÉRIX","BOÎTE","BANANE","LUNETTES","LANGUE","GRENADE","TOKYO","COQ","GORGE","COMMERCE","FRONT","MARRON","PIÈCE","MÉMOIRE","ESPACE","ÉPONGE","VOLUME","AIR","CANNE","ORANGE","ROME","CHARGE","FACTEUR","AMPOULE","RECETTE","BUT","COL","RUSSIE","BOMBE","MARCHE","CHEF","CORNE","CUISINE","HOLLYWOOD","CLÉ","PRÊT","BOULET","CYCLE","GRAIN","AUSTRALIE","FIGURE","FER","KIWI","CARRIÈRE","COUTEAU","LION","SCIENCE","PIANO","ÉGALITÉ","VOLEUR","FLÛTE","SOURIS","CANARD","TEMPS","CHAPEAU","CIRQUE","CAMEMBERT","LAIT","ROSE","ŒUF","PIRATE","PÉTROLE","PLUME","SCÈNE","SERPENT","LUXE","JUMELLES","MOUSTACHE","CHAMPAGNE","BERLIN","PRINCESSE","NOËL","VERT","HISTOIRE","VOITURE","CHAT","BAGUETTE","ZÉRO","JOURNAL","POISON","AMOUR","APPAREIL","MAGIE","MODE","BOUCHON","PARACHUTE","BŒUF","ROBE","HIMALAYA","SCHTROUMPF","BLÉ","COTON","FOU","VENT","REQUIN","POMME","TOUR","ROBOT","CLASSE","PIGEON","CROCHET","POUCE","CAFÉ","ROULETTE","JOUR","ARGENT","SORCIÈRE","ROI","RÉSISTANCE","VERRE","ŒIL","TABLE","BALLON","SOLEIL","JUNGLE","OPÉRA","HIVER","REINE","DROITE","SEPT","OR","POLICE","CITROUILLE","SATELLITE","MOLIÈRE","TERRE","TRÉSOR","AILE","FILET","MARIN","ROUGE","MOUCHE","CHASSE","SIRÈNE","PINGOUIN","ESPRIT","RÈGLE","POINT","PYRAMIDE","BÛCHE","TENNIS","NOIR","RAT","LIVRE","VIE","NINJA","PHYSIQUE","VAGUE","BÊTE","FERME","CARTON","PARTIE","VOILE","MANCHE","TITRE","FUITE","ENTRÉE","PENSÉE","CAMPAGNE","POMPE","QUEUE","PLAN","MEMBRE","ENCEINTE","QUARTIER","PLANCHE","COURONNE","ARC","ESSENCE","BANC","GEL","VASE","CABINET","ATOUT","PLAT","BALANCE","PÊCHE","TUILE","TAMBOUR","BOTTE","LOUCHE","PENDULE","PLANTE","REMISE","NUMÉRO","PESTE","MAJEUR","TIMBRE","PAGE","MENU","ASILE","LIT","SOL","SOLUTION","PALAIS","ALPES","LIQUIDE","POSTE","RELIGIEUSE","BOUGIE","LUMIÈRE","RAIE","PHARE","SORTIE","PALME","BRIQUE","GRÈCE","ESPAGNE","FEUILLE","TALON","ROULEAU","LETTRE","VISION","MANÈGE","PILE","NOTE","CHARME","PRISE","PASSE","COURSE","RÉVOLUTION","RAME","PAILLE","PATRON","SIÈGE","RADIO","ORDRE","VIN","PLATEAU","PERLE","VOL","MINEUR","TRAIT","EUROPE","SOMME","RAYON","POIRE","FARCE","RONDE","NAPOLÉON","MEUBLE","COURT","ÉTUDE","PORTABLE","TOILE"},
    es = {"ÁFRICA", "AGENTE", "AIRE", "EXTRATERRESTRE", "ALPES", "NILO", "AMBULANCIA", "AMÉRICA", "ÁNGEL", "ANTÁRTIDA", "MANZANA", "PINTA", "ATLÁNTIDA", "ARGENTINA", "AZTECA", "LOMO", "BOLA", "ESTACIÓN", "BANCO", "BARRA", "CARAVANA", "VELA", "BATERÍA", "PLAYA", "OSO", "ORDEN", "CAMA", "PEKÍN", "CAMPANA", "CINTURÓN", "BERLÍN", "BERMUDAS", "GATO", "CHULETA", "LUNA", "TABLA", "MANDO", "BOMBA", "ARCHIVO", "BLANCO", "BOTA", "BOTELLA", "ARCO", "MICRO", "PUENTE", "MONO", "AS", "BRAZO", "ÓPERA", "CORNETA", "BOTÓN", "PLUMA", "ITALIA", "TAPA", "CAPITAL", "COCHE", "CARTA", "ZANAHORIA", "CASINO", "PISTA", "SERPIENTE", "LLAMA", "CENTAURO", "CENTRO", "SILLA", "CAMBIO", "CARGA", "ALIANZA", "MALTA", "SOBRE", "JUICIO", "CHOCOLATE", "IGLESIA", "CÍRCULO", "GÓNDOLA", "CAPA", "PULSO", "CÓDIGO", "ARTÍCULO", "CASCO", "DIARIO", "CONCIERTO", "GOLFO", "TACTO", "COCINERO", "SERIE", "ALGODÓN", "CÁMARA", "PORTADA", "MONITOR", "CHOQUE", "TRAMA", "CRUZ", "CORONA", "CANTO", "CHECO", "BAILE", "COPA", "DÍA", "MUERTE", "CUBIERTA", "GRADO", "DIAMANTE", "CUBO", "DINOSAURIO", "ENFERMEDAD", "MÉDICO", "PERRO", "COMPÁS", "DRAGÓN", "VESTIDO", "CABO", "GOTA", "SEÑAL", "ENANO", "ÁGUILA", "EGIPTO", "EMBAJADA", "TARDE", "MOTOR", "INGLATERRA", "EUROPA", "OJO", "CARA", "JUDÍA", "DESTINO", "PLANTA", "PASTA", "CAMPO", "GRANADA", "FIGURA", "CABINA", "PELÍCULA", "FUEGO", "PEZ", "FLAUTA", "TANQUE", "PIE", "FUERZA", "BOSQUE", "HORCA", "FRANCIA", "PALA", "TESTIGO", "GENIO", "ALEMANIA", "FANTASMA", "GIGANTE", "VIDRIO", "GUANTE", "ORO", "BAÑO", "HIERBA", "GRECIA", "CÓLERA", "TIERRA", "BOLSA", "MANO", "DIANA", "CABEZA", "CORAZÓN", "HELICÓPTERO", "SÁHARA", "AGUJERO", "HOLLYWOOD", "MIEL", "CINTA", "GANCHO", "CUERNO", "CABALLO", "MAGIA", "HOSPITAL", "ANTORCHA", "HIELO", "HELADO", "LADRÓN", "CAZA", "MARFIL", "MAÑANA", "CURA", "SABLE", "VENUS", "CANGURO", "ROJO", "LLAVE", "POLO", "REY", "KIWI", "CUCHILLO", "CABALLERO", "CADENA", "FALDA", "LÁSER", "ABOGADO", "PENDIENTE", "CORTE", "DUENDE", "VIDA", "MUÑECA", "LIMUSINA", "LÍNEA", "YEMA", "LAGO NESS", "MINA", "DON", "RADIO", "LONDRES", "SUERTE", "LEÓN", "CAQUI", "MARCHA", "CORREDOR", "CAÑA", "MASA", "BANDA", "CACTUS", "MÉXICO", "MICROSCOPIO", "MERCURIO", "MANGO", "LENGUA", "MODELO", "MILLONARIO", "MOSCÚ", "ENFERMERA", "RATÓN", "MISIL", "BOCA", "NINJA", "BLOQUE", "AGUJA", "RED", "NOTA", "NOCHE", "JARRA", "NUEVA YORK", "PULPO", "CRESTA", "FIESTA", "PIÑA", "NARANJA", "ÓRGANO", "ACEITE", "OLIMPO", "BICHO", "PLOMO", "FUENTE", "PAPEL", "PARACAÍDAS", "PALMA", "NUDO", "PRIMA", "PIEZA", "PIRATA", "CUARTO", "PUNTA", "PINGÜINO", "PASE", "PASTEL", "MORTERO", "PILOTO", "PELOTÓN", "TUBERÍA", "PISTOLA", "FOSO", "PLANO", "TALÓN", "COCO", "PLACA", "ORNITORRINCO", "MANGA", "OBRA", "PUNTO", "GOMA", "VENENO", "PLÁTANO", "PRENSA", "PUERTO", "REINA", "LIBRA", "PRINCESA", "POLICÍA", "CARRERA", "ESTUDIO", "PIRÁMIDE", "PASO", "TECLADO", "CONEJO", "RAYO", "ANILLO", "GOLONDRINA", "REVOLUCIÓN", "ROBOT", "POTRO", "RULETA", "ROSA", "RONDA", "REGLA", "NAVE", "CLASE", "FLECHA", "ESCORPIÓN", "SATÉLITE", "FARO", "ROMA", "SATURNO", "COLUMNA", "TACO", "BALA", "PANTALLA", "FICHA", "CIENTÍFICO", "CERVANTES", "GRANO", "TIENDA", "ZAPATO", "RASCACIELOS", "PILA", "SUBMARINISTA", "PINCHO", "SIERRA", "RESERVA", "CONTRABANDISTA", "NIEVE", "VAMPIRO", "SALSA", "SOLDADO", "DAMA", "BARCO", "ESPACIO", "CANAL", "ARAÑA", "VADO", "CAJA", "CUADRO", "HOJA", "MUELLE", "ESPÍA", "ESTADIO", "METRO", "ESTRELLA", "IMÁN", "ESTADO", "DISCO", "MANCHA", "CORRIENTE", "GOLPE", "MÓDULO", "SUPERHÉROE", "SIRENA", "MAESTRO", "CUERDA", "MÁSCARA", "MESA", "TABLETA", "ETIQUETA", "COLA", "TELESCOPIO", "GRIFO", "HOTEL", "TOKIO", "PORTERO", "TEATRO", "ÍNDICE", "MARCA", "LUZ", "TORRE", "INDIA", "TIEMPO", "DELTA", "CUELLO", "FRENTE", "DIENTE", "PAVO", "TRONCO", "TUBO", "VACÍO", "CEMENTERIO", "EMPERADOR", "PICO", "FURGONETA", "TOPO", "CARRO", "UNICORNIO", "LÁTIGO", "GUERRA", "LIMA", "GUARDIA", "OLA", "LISTA", "VIENTO", "AGUA", "GUSANO", "MURO", "BALLENA", "COMETA", "ENLACE", "CROMO", "MAZO", "BRUJA"},
    pt = {"ROLETA", "DRAGÃO", "GUERRA", "DOCINHO", "BOMBA", "CASINO", "ARRANHA-CÉU", "SATURNO", "ALIENÍGENA", "CHICOTE", "ANTÁRTICA", "ESPANTALHO", "CONCERTO", "CHOCOLATE", "JATO", "MILIONÁRIO", "DINOSSAURO", "PIRATA", "TROMPA", "PINGUIM", "ARANHA", "MÍSSIL", "EMBAIXADA", "PISTOLA", "DOENÇA", "ESPIÃO", "PRINCESA", "FADA", "LADRÃO", "ÓPERA", "CAVALEIRO", "ESTÁDIO", "LIMUSINE", "FANTASMA", "FURGÃO", "SORVETE", "LASER", "MORTE", "HOSPITAL", "AMBULÂNCIA", "POLVO", "HELICÓPTERO", "CANGURU", "MICROSCÓPIO", "CENTAURO", "SUPER-HERÓI", "TELESCÓPIO", "PARA-QUEDAS", "OURIÇO", "OLIMPO", "SATÉLITE", "ANJO", "ROBÔ", "UNICÓRNIO", "BRUXA", "COVEIRO", "MERGULHADOR", "VENENO", "PONTE", "FOGO", "MESA", "BALEIA", "LUA", "PEIXE", "DOUTOR", "IGREJA", "CINTO", "ENFERMEIRA", "VENTO", "LEÃO", "OLHO", "AR", "COELHO", "BANCO", "GRAMA", "VESTIDO", "ANÃO", "FLORESTA", "CARRO", "LUVA", "MAÇÃ", "ÓLEO", "COZINHEIRO", "URSO", "GATO", "VIDA", "SORTE", "GIGANTE", "ROSTO", "PRAIA", "HOTEL", "ÁGUA", "PAPEL", "VERME", "ADVOGADO", "CIENTISTA", "DANÇA", "CENOURA", "KETCHUP", "NOITE", "ALGODÃO", "PÉ", "RATO", "FACA", "TEATRO", "POLÍCIA", "BARCO", "PILOTO", "POLEGAR", "PROFESSOR", "GARRAFA", "DIA", "REI", "VIDRO", "RAINHA", "DENTES", "CACHORRO", "CAVALO", "SAPATO", "CADEIRA", "COROA", "GELO", "OURO", "GARFO", "HORA", "FLAUTA", "TOCHA", "NEVE", "MARFIM", "SOLDADO", "PIRÂMIDE", "ESCADA", "ESTRELA", "ANEL", "BUZINA", "CORAÇÃO", "BLOCO", "TUBO", "AGULHA", "LINHA", "COBERTURA", "TABULEIRO", "INTERRUPTOR", "TELA", "PEÇA", "LOCAL", "BOTÃO", "BOCA", "FAIXA", "MÃO", "CAMA", "PAREDE", "TORRE", "CARTA", "GRAVATA", "DIAMANTE", "CRUZ", "REDE", "PONTO", "PASSE", "PLACA", "BURACO", "SINO", "FORÇA", "CHAVE", "MOTOR", "ONDA", "CORRENTE", "CABEÇA", "CABO", "CENTRO", "BATIDA", "PASTA", "CRAVO", "CÓDIGO", "CÍRCULO", "LIGAÇÃO", "CANO", "CHICAGO", "AUSTRÁLIA", "BERMUDA", "TÓQUIO", "EGITO", "LONDRES", "ESTÁTUA", "PARIS", "CANADÁ", "SHAKESPEARE", "HOLLYWOOD", "GRÉCIA", "ROMA", "HIMALAIA", "NINJA", "BRASIL", "COPACABANA", "ALEMANHA", "ESTADO", "AMÉRICA", "ATLÂNTIDA", "INGLATERRA", "MACACO", "ÁFRICA", "ENCANTO", "CERCA", "TUBARÃO", "EXAME", "MÉXICO", "GOLPE", "ESCORPIÃO", "BERLIM", "FAVELA", "ALPES", "LOCH NESS", "PEQUIM", "MONTE", "COLHER", "ASTECA", "REDENTOR", "FONTE", "SELO", "FURADOR", "GRAÇA", "FERRO", "LEITO", "ACORDE", "BARRA", "VERDE", "APERTO", "MARCHA", "CHUMBO", "AGENDA", "SUPORTE", "RAIO", "BALA", "LIMÃO", "ESPECTRO", "BOTA", "DADOS", "JUPITER", "SECRETÁRIA", "BATERIA", "ESPINHA", "NUCLEAR", "AGENTE", "BAIXA", "CONTRABANDO", "OPERAÇÃO", "ÍNDIA", "CADEIA", "CANTO", "JORNADA", "CAPITAL", "PANCADA", "COBRE", "CONTAR", "DOBRAR", "RÁDIO", "TERRA", "FANTASIA", "ELÉTRICO", "PISTA", "LANCE", "MANGA", "MINA", "FRANÇA", "BAR", "LÍQUIDO", "RUSSO", "JOGO", "TEMPO", "PARQUE", "GANHAR", "SEGURO", "SERRA", "PATO", "CONDUTOR", "LIBRA", "RODA", "CAMPO", "PILHA", "PACÍFICO", "PROVA", "FOSSA", "MÁSCARA", "CURSO", "CONTROLE", "CORTINA", "SOLO", "RECEITA", "GARRA", "LICENÇA", "FIO", "GÁS", "LEVE", "TRONCO", "ROMANCE", "GRÃO", "TRAMA", "PRAÇA", "CORREIO", "TANQUE", "BANDA", "TACO", "CURA", "CORTE", "PASSO", "CANELA", "FOLHA", "DROGA", "MERCÚRIO", "ARCO", "REVOLVER", "LOJA", "SEGREDO", "CONTRATO", "PLANTA", "PORTO", "COMPANHIA", "BRAÇO", "ÁREA", "MODELO", "LUZ", "TRIANGULO", "GAROTO", "RECIFE", "ESCAMA", "MANTO", "PALHA", "ÁGUIA", "TEIA", "ESTAÇÃO", "FALCÃO", "VELA", "BATER", "GRANADA", "BARRAGEM", "LABORATÓRIO", "REGENTE", "CACHO", "TOUPEIRA", "WASHINGTON", "SENTENÇA", "PALMA", "FORTALEZA", "REVOLUÇÃO", "TOMADA", "DURO", "METRO", "APANHAR", "PENA", "DIREITO", "VALA", "ORGÃO", "EUROPA", "TERMINAL", "LÍNGUA", "GRILO", "NASCENTE", "FEIRA", "VARA", "NOTA", "DOSE", "DEPÓSITO", "VOLTA", "AMAZONAS", "ESPAÇO", "PARTE", "MASSA", "CHINA", "ROSA", "PRESA", "CAMINHO", "CORPO", "CARGA", "MEIO", "PERU", "PLANO", "CAÇA", "CAIXA", "BASE", "SERVIDOR", "CELA", "COMPOSTO", "PLÁSTICO", "BOLSA", "TOM", "QUEDA", "MISSÃO", "MEIA", "RAIZ", "CÓLERA", "NEGATIVO", "BALANÇO", "GUARDA", "CASCA", "CALÇA", "FILME", "FIGURA", "LARANJA", "POSTO"},
    jp = {"スター","橋","火","リング","ハート","角","スプリング","タブレット","クジラ","シール","月","ブロック","ドリル","魚","チューブ","美人","鉄","医者","ルーレット","レベル","めざめ","針","ゴブレット","パイ","グリーン","ドラゴン","ニューヨーク","オーストラリア","マーチ","ライン","戦争","ハチミツ","ジャム","教会","カバー","ランプ","バミューダ","つり","東京","エジプト","ビート","ビタミン","ベルト","ホース","レモン","看護師","風","ライオン","ロンドン","デザート","ジャンプ","ダイス","目","板","スイッチ","空気","木星","ハム","バッテリー","くじ","宝","ウサギ","エージェント","ドロップ","トラック","銀行","ポケット","爆弾","カジノ","摩天楼","ストック","ジム","草原","土星","ドレス","ファン","ドワーフ","エイリアン","ムチ","南極","カボチャ","モスクワ","トリップ","雪だるま","森","タイム","ストライク","ダイヤ","ソウル","カナダ","コンサート","チョコレート","ジェット機","シェイクスピア","車","シャドウ","手袋","ライター","コミック","億万長者","クール","ボンド","リンゴ","オイル","調理師","フライ","カン","クマ","ドライブ","エース","チェック","バー","ハード","ハリウッド","スクリーン","遊び","タイガー","恐竜","ネコ","ゲーム","命","幸運","フック","キャプテン","バット","ボルト","ギリシア","デッキ","ペット","パンク","巨人","顔","海賊","浜","ポンド","ラウンド","レジェンド","サイクル","ローマ","ホテル","スポット","マウス","スティック","キャンプ","モール","ステージ","サケ","水","紙","イーグル","ボタン","ヒマラヤ","忍者","チェコ","グランド","ラッパ","くち","タグ","ナッツ","イモムシ","ペンギン","弁護士","クモ","しっぽ","ノミ","ミント","ミサイル","大使館","ピストル","科学者","キウイ","日記","ドイツ","ハンド","病気","ベッド","スパイ","プリンセス","ダンス","ニンジン","太平洋","ラケット","天才","泥棒","トランク","アメリカ","ノベル","壁","アジ","アトランティス","ケチャップ","スイカ","イギリス","ハウス","カエデ","メール","アフリカ","オペラ","タワー","夜","プール","ウグイス","バンド","カモ","フード","カード","コート","ネクタイ","スナック","クロス","ネット","フランス","デート","木綿","ポイント","オリーブ","マッチ","ボール","水星","ブレンド","ファイター","ショップ","スリップ","騎士","パス","スタジアム","足","リムジン","キリン","プレート","ネズミ","蹄鉄","オルガン","ナイフ","ハーフ","ウォッチ","ソーダ","バラ","モデル","劇場","穴","ポスト","ライト","トライアングル","ベル","カッパ","ゴム","警察","ロック","かわら","ゴースト","船","メキシコ","チョーク","ストロー","ウシ","サメ","ドラフト","タカ","プレス","ワゴン車","アイスクリーム","タイ","フェニックス","軍隊","マスク","ジャングル","ルール","パイロット","レーザー","死","レース","プリント","病院","救急車","マーク","プラスチック","カギ","タコ","親指","教師","ヤシ","ツル","ヘリコプター","ビン","フェンス","カンガルー","ジャック","ヨーロッパ","サソリ","ジョッキ","スーツ","顕微鏡","エンジン","ウェーブ","ケンタウルス","川","ヘッド","マンモス","昼","キング","パン","ポール","スーパーヒーロー","パーティー","サギ","ガス","ガラス","ワシントン","トキ","クイーン","ファイル","キーパー","ホーム","ピース","歯","スタッフ","ビル","シュート","洗濯","ラップ","アマゾン","スペース","フィギュア","マス","中国","サラダ","バッファロー","タンス","イヌ","ツメ","ベルリン","ウマ","チャージ","潜水艦","インド","鉄道","望遠鏡","飛行機","パラシュート","ピアノ","ボス","カモノハシ","クラブ","クツ","サーバー","センター","イス","サウンド","工場","フィルム","王冠","オリンピック","バス","ノート","パーツ","タップ","氷","靴下","アルプス","ルート","衛星","天使","クラッシュ","金","コップ","ペースト","ロボット","列","スパイク","コード","ネス湖","フォーク","スイング","港","サークル","ユニコーン","時間","リンク","フルート","たいまつ","北京","ワシ","皮","雪","象牙","パイプ","パンツ","兵士","掃除機","魔女","ルーム","密売人","オレンジ","アステカ","葬儀屋","スキューバダイバー","ピラミッド","毒","糸"},
    ar = {"بطريق", "غواص", "آيس كريم", "عنكبوت", "أطلس", "شبح", "سم", "جسر", "شاحنة", "كازينو", "تفاح", "أخطبوط", "زيت", "طباخ", "سيارة", "سبيكة", "قانون", "حاد", "شيك", "دب", "هدف", "قدح", "سن", "ملكة", "ملك", "كلب", "حصان", "حذاء", "علامة", "فم", "بقعة", "عمارة", "شوكولاته", "يد", "حفلة", "ثورة", "سرير", "كنغر", "بطاقة", "رخ", "مجهر", "بيضة", "شكسبير", "قصة", "أرض", "قرش", "هوليوود", "مجال", "غاز", "اشارة", "عقد", "عميل", "دكتور", "إطار", "جمعة", "عود", "عمل", "قرن", "شكل", "جناح", "فضاء", "بئر", "رصيد", "معرض", "صولجان", "صوت", "كنيسة", "كبريت", "شريط", "عبقري", "طبيب", "ربع", "مخبر", "قفل", "فيل", "بطل", "ناظور", "مظلة", "معدن", "ثعلب", "سهم", "برتقال", "خفيف", "درجة", "عضو", "صغير", "حجر", "حاجب", "عباءة", "قصبة", "قطار", "مسمار", "طيارة", "فرع", "غسالة", "سكر", "فراغ", "مسدس", "نحاس", "روح", "زهر", "خريف", "حاوية", "ليمون", "مارس", "فلافل", "شعر", "بلبل", "ربيع", "مثلث", "مانشستر", "وقت", "ألماس", "عقدة", "ناي", "أشعة", "وتر", "هرم", "حفرة", "جرس", "حمام", "مخطط", "معبد", "رسالة", "برميل", "انبوب", "قطب", "خفاش", "رأس", "ابرة", "موقف", "ظرف", "خط", "خشبة", "ميل", "عكس", "عشاء", "محامي", "عالم", "رقص", "نينجا", "تقليد", "ذراع", "حوض", "ورقة", "خال", "تيار", "محرك", "يمن", "موجة", "صليب", "مجمع", "نقطة", "رمح", "طبق", "نخلة", "حادث", "معجون", "طرف", "رشاش", "مرض", "سفارة", "صاروخ", "شفرة", "جليد", "طائرة", "جزر", "ديناصور", "صفارة", "قرصان", "أثر", "سهل", "فرشاة", "ماشية", "خيار", "مخرج", "روبوت", "كيلو", "أوبرا", "لص", "ساحة", "دورة", "ملعب", "فارس", "ليموزين", "ريح", "أسد", "حوت", "قمر", "ظل", "وحيد القرن", "قطن", "حظ", "قطة", "رباط", "سكين", "طبقة", "ليل", "زبالة", "فأرة", "روليت", "تنين", "حرب", "حلو", "قنبلة", "قمر صناعي", "برج", "ملاك", "ليزر", "موت", "مستشفى", "اسعاف", "كف", "هليكوبتر", "عين", "هواء", "أرنب", "مصرف", "حشيش", "ثوب", "قزم", "شرطة", "سفينة", "طيار", "بصمة", "معلم", "زجاجة", "يوم", "غطاء", "لوح", "مفتاح", "شاشة", "مسرحية", "دائرة", "زر", "جدار", "رابط", "سيجارة", "نيويورك", "استراليا", "خليج", "طوكيو", "هند", "حفيت", "غول", "بغداد", "صقر", "حرامي", "بابل", "مشتري", "شاورما", "طاقة", "عمود", "عمر", "رافعة", "موقع", "كأس", "قرص", "أمازون", "طبع", "نقد", "مغرب", "رمانة", "صندوق", "نادي", "خادم", "سمك", "أميرة", "مركب", "ظهر", "شبكة", "حظيرة", "فراش", "حاكم", "رسم", "خيط", "سحر", "حول", "حبل", "طرف", "أصلي", "مربع", "ثور", "غابة", "بيت", "تونس", "ملف", "حارة", "طابع", "جذع", "قرع", "شراب", "جذر", "دفاع", "صف", "ضربة", "حشرة", "ألف", "رحلة", "سروال", "اسبانيا", "المانيا", "خرطوم", "حديث", "رجل", "أفريقيا", "رصاص", "غيار", "بطن", "حمار", "عقرب", "شوكة", "صباح", "حبوب", "أخضر", "بن", "دخان", "طبلة", "نجم", "منديل", "حساب", "نعناع", "كرة", "مضرب", "طوق", "حب", "قمع", "حلبة", "زيتون", "بط", "زئبق", "قوس", "مدفع", "مركز", "لامع", "خلية", "قوة", "دودة", "وردة", "قهوة", "مصر", "لندن", "بطيخ", "موسكو", "دبي", "تركيا", "روما", "هملايا", "سور", "علم", "إمارة", "أمريكا", "أتلانتيس", "بريطانيا", "عبور", "فرنسا", "حجاب", "جني", "سودان", "أوروبا", "فندق", "ثلج", "تاج", "كرسي", "ذهب", "جاسوس", "مصباح", "مليونير", "عاج", "جندي", "مسرح", "حلقة", "بوق", "قلب", "حاجز", "شارب", "بارد", "بلاط", "لعبة", "جولة", "زحل", "غريب", "كريم", "جبل جليدي", "رجل ثلج", "حزام", "ممرضة", "طاولة", "حريق", "ماء", "طعم", "حمص", "ساحرة", "مصارع", "حياة", "شاطئ", "مهرج", "عملاق", "وجه", "قدم"},
    it = {"ROULETTE", "DRAGO", "GUERRA", "MIELE", "BOMBA", "CASINO’", "GRATTACIELO", "SATURNO", "ALIENO", "FRUSTA", "ANTARTIDE", "PUPAZZO DI NEVE", "CONCERTO", "CIOCCOLATO", "JET", "MILIONARIO", "DINOSAURO", "PIRATA", "TROMBA", "PINGUINO", "RAGNO", "MISSILE", "AMBASCIATA", "PISTOLA", "MALATTIA", "SPIA", "PRINCIPESSA", "GENIO", "LADRO", "LEGNO", "CAVALIERE", "STADIO", "LIMOUSINE", "FANTASMA", "FURGONE", "GELATO", "LASER", "MORTE", "OSPEDALE", "AMBULANZA", "PIOVRA", "ELICOTTERO", "CANGURO", "MICROSCOPIO", "CENTAURO", "ARRESTO", "TELESCOPIO", "PARACADUTE", "ORNITORINCO", "OLIMPO", "SATELLITE", "ANGELO", "ROBOT", "UNICORNO", "STREGA", "BECCHINO", "SOMMOZZATORE", "VELENO", "PONTE", "FUOCO", "TAVOLA", "BALENA", "LUNA", "PESCE", "DOTTORE", "CHIESA", "CINTURA", "INFERMIERA", "VENTO", "LEONE", "OCCHIO", "ARIA", "CONIGLIO", "BANCA", "ERBA", "VESTITO", "NANO", "FORESTA", "MACCHINA", "GUANTO", "MELA", "OLIO", "CUOCO", "ORSO", "GATTO", "VITA", "FORTUNA", "GIGANTE", "FACCIA", "SPIAGGIA", "HOTEL", "ACQUA", "CARTA", "VERME", "AVVOCATO", "SCIENZIATO", "DANZA", "CAROTA", "KETCHUP", "NOTTE", "COTONE", "PIEDE", "ISOLA", "COLTELLO", "TEATRO", "POLIZIA", "NAVE", "PILOTA", "POLLICE", "INSEGNANTE", "BOTTIGLIA", "GIORNO", "RE", "VETRO", "REGINA", "DENTE", "CANE", "CAVALLO", "SCARPA", "SEDIA", "CORONA", "GHIACCIO", "ORO", "FORCHETTA", "TEMPO", "CASA", "TORCIA", "NEVE", "AVORIO", "SOLDATO", "PIRAMIDE", "CORDA", "STELLA", "ANELLO", "CORNO", "CUORE", "BLOCCO", "CANALE", "AGO", "LINEA", "COPERTA", "BANCO", "CAMBIO", "SCHERMO", "PARTITA", "BASE", "POSTA", "BOCCA", "ETICHETTA", "MANO", "LETTO", "MURO", "TORRE", "LETTERA", "CRAVATTA", "DIAMANTE", "CROCE", "RETE", "PUNTO", "PASSO", "PIATTO", "BUCO", "CAMPANA", "FORZA", "CHIAVE", "MOTORE", "ONDA", "FLUSSO", "TESTA", "POLO", "CENTRO", "CAPO", "PASTA", "BRACCIO", "CODICE", "CERCHIO", "CAMPO", "CANNA", "NAPOLI", "AUSTRALIA", "BERMUDA", "TOKYO", "EGITTO", "LONDRA", "ZUCCA", "MOSCA", "SVIZZERA", "DANTE", "HOLLYWOOD", "GRECIA", "ROMA", "HIMALAYA", "NINJA", "SPAGHETTO", "PINOCCHIO", "GERMANIA", "STATO", "AMERICA", "ATLANTIDE", "ITALIA", "PATATA", "AFRICA", "ROSPO", "FRANCIA", "ZOCCOLO", "FOLLETTO", "MESSICO", "LUPO", "SCORPIONE", "SQUALO", "INDIA", "ALPI", "EUROPA", "PECHINO", "CONTRABBANDIERE", "AQUILA", "VENEZIA", "TORTA", "PESCA", "VERDE", "BERLINO", "RISO", "VERSO", "VIOLA", "INDICE", "BACINO", "SCAMPO", "FATTURA", "TASSO", "CALCIO", "RAGGIO", "BATTUTA", "GRADO", "COPPA", "LIMONE", "OPERA", "STIVALE", "CORSO", "STAGNO", "RADICE", "BATTERIA", "SPINA", "PIANTA", "AGENTE", "IMPOSTA", "MIGLIO", "FALANGE", "CERA", "LIRA", "COLLO", "MORA", "CAPITALE", "DADO", "VOLO", "RITMO", "ROSA", "GIOVE", "COLONNA", "COLPO", "STORIA", "LAMPO", "OMBRA", "VINO", "MINA", "TERRA", "BUSTA", "RAMO", "MAZZO", "BRONZO", "METRO", "PESO", "TURNO", "CICLO", "RUOTA", "GIOCO", "CONDUTTORE", "SCUOLA", "SCALA", "NOCE", "ZECCA", "MONTE", "MONETA", "FUSTO", "TRAMA", "LIBRO", "CORTE", "SACCO", "TEMPIO", "ACCORDO", "CODA", "SUPEREROE", "INCONTRO", "PALLA", "BOTTE", "CACCIA", "NEGOZIO", "CELLA", "APE", "MODELLO", "PANE", "MANTO", "BANDA", "RIGA", "GRU", "SPIRITO", "MAGIA", "POLLO", "TAZZA", "YETI", "MERCURIO", "FIGURA", "FETTA", "ARCO", "GAS", "FIERA", "ORGANO", "ERRORE", "GUARNIZIONE", "SQUADRA", "SPAZIO", "TIRO", "MASSA", "TRIANGOLO", "QUADRO", "MAIALE", "CARICA", "PETTO", "AEREO", "CASSA", "GIRO", "SUONO", "AREA", "PERA", "NOTA", "PARTE", "SALSA", "FILA", "MOSSA", "ANNO", "NATALE", "CHIODO", "LINGUA", "SENO", "SALE", "CATENA", "SANGUE", "CALICE", "DISCO", "DIAVOLO", "VIAGGIO", "RIVOLUZIONE", "BORSA", "TUBO", "ASSE", "SCHEDA", "POSIZIONE", "MUTANDE", "VITE", "BAFFO", "PECORA", "GUARDIA", "ZUCCHERO", "NEW YORK", "ROMBO", "PIEGA", "PORTA", "FORO", "MARMO", "PRANZO", "CAFFÈ", "COLOMBO", "PARCO", "PIANO", "AMO", "PROFILO", "TRENO", "TOPO", "FILM", "FREDDO", "BAR", "CAPELLI", "RESISTENZA", "PIASTRA", "ELEFANTE", "PIPA", "OMBELICO", "BOTTONE", "TESORO", "ALBERO", "UOVO", "VUOTO", "RADIO", "ENERGIA", "PORTO", "CORNICE", "CIMICE", "ASSASSINO", "FLAUTO", "SPADA", "KIWI"},
    ru = {"КАРАУЛ", "СТАНОК", "АГЕНТ", "ПОЛ", "ПОЛИС", "ЗАПАД", "ЮПИТЕР", "КРЕСТ", "ПРОВОДНИК", "ЯЗЫК", "ЗАМОК", "ЗАЯЦ", "КОНЕК", "СИЛА", "ПРОБКА", "ВЫСОТА", "СМЕРТЬ", "СТВОЛ", "ДРОБЬ", "ДЕКРЕТ", "ПОТОК", "СОБАКА", "ОПЕРА", "КЛЮЧ", "КОНЦЕРТ", "ГАЛОП", "МАТ", "ЭКРАН", "БЛИН", "ЗВЕЗДА", "ГРЕБЕНЬ", "АППАРАТ", "ЗОНА", "ГРИФ", "ШПИОН", "ВОР", "ПАДЕНИЕ", "ТЕЧЕНИЕ", "ВОЛНА", "НОМЕР", "ЛОЖЕ", "АВТОМАТ", "ПОКРОВ", "ИГЛА", "ЛИНИЯ", "СТОПА", "МЫШЬ", "ПРОСПЕКТ", "ПАЛЕЦ", "ПИЛОТ", "БАШНЯ", "БОЛЬНИЦА", "ТОЧКА", "РОБОТ", "ДУМА", "МАССА", "НОЧЬ", "УЧИТЕЛЬ", "БУТЫЛКА", "СУПЕРГЕРОЙ", "ЛУК", "ПЕРЧАТКА", "БАЗА", "КОШКА", "ИНСТИТУТ", "ПАССАЖ", "ТРАВА", "ПЛАТЬЕ", "ПОСОЛЬСТВО", "ЛЕВ", "КРОШКА", "БЛОК", "АНГЕЛ", "КОНТРАБАНДИСТ", "ПОМЕТ", "ЛОНДОН", "ЕДИНОРОГ", "МЕДВЕДЬ", "МЕСТО", "ПОВАР", "ВЕДЬМА", "ДЕНЬ", "ВЕК", "ВОДА", "БОТИНОК", "ПАУК", "СОСТАВ", "КОРА", "СТЕКЛО", "СНАРЯД", "ДЯТЕЛ", "БУМАГА", "МОСТ", "ПАНЕЛЬ", "АЦТЕК", "ЧАСТИЦА", "ОБЛОМ", "РОК", "ЛУНА", "ПАРК", "ФАКЕЛ", "ЯКОРЬ", "ВЕРТОЛЕТ", "ПРИЗРАК", "ЛАЗЕР", "ЖИЗНЬ", "ГОРН", "ССЫЛКА", "БЕРЛИН", "ОБРАЗ", "ТИТАН", "КРЫЛО", "КОСЯК", "КАБИНЕТ", "ПАРА", "ЯСЛИ", "ПИРАТ", "РАСТВОР", "ЗЕМЛЯ", "МОСКВА", "МИКРОСКОП", "ОТЕЛЬ", "БОЛЕЗНЬ", "ПОЛЕ", "ЭФИР", "ЛУЧ", "ОЛИМП", "АНГЛИЯ", "СНЕГОВИК", "МЕЛОЧЬ", "НАЛЕТ", "СЕРДЦЕ", "ЖИЛА", "КАВАЛЕР", "БАРЬЕР", "ЖУК", "ЛЕД", "СТОЛ", "КАЗИНО", "КРАН", "ПЕРО", "КОРОЛЬ", "МУШКА", "БОМБА", "РАЗВОД", "АФРИКА", "САЛЮТ", "КУРС", "ЕГИПЕТ", "АЛЬБОМ", "КОРОНА", "ЕВРОПА", "РУЛЕТКА", "ГЕРМАНИЯ", "ПИРАМИДА", "УРНА", "РУБАШКА", "РИМ", "КОЛОННА", "ГРЕЦИЯ", "БОЧКА", "КРУГ", "ФРАНЦИЯ", "СЕТЬ", "ПИСТОЛЕТ", "ВРЕМЯ", "ОБРЕЗ", "КУЛАК", "БОРТ", "МИР", "ТОКИО", "ГОЛОВА", "КОРОЛЕВА", "СТРЕЛА", "ВОЖДЬ", "БАНК", "ДРАКОН", "ЯД", "ПАЛАТА", "ДОКТОР", "КЛЕТКА", "ГОЛЛИВУД", "СЕКРЕТ", "ВОЙНА", "СОЛДАТ", "ОГОНЬ", "ШТАТ", "КИТАЙ", "АТЛАНТИДА", "ИНДИЯ", "АЛЬПЫ", "ПЕКИН", "СТРОЙ", "ПРОФИЛЬ", "МЕКСИКА", "ШПАГАТ", "НОРКА", "ЦЕРКОВЬ", "ТЕАТР", "АНТАРКТИДА", "ОВСЯНКА", "ПОЧКА", "КОЛОДА", "ВЕРФЬ", "ЗАПАХ", "РУКАВ", "ДЕСНА", "ПАЧКА", "УТКА", "ГАЗ", "ОСЬМИНОГ", "САНТЕХНИК", "АЗИЯ", "ПЛЯЖ", "РОД", "КОКЕТКА", "ЖУРАВЛЬ", "КАША", "ПРИШЕЛЕЦ", "РАКОВИНА", "ПОДКОВА", "МОРКОВЬ", "МАСЛО", "БЕРЕЗА", "ЧЕРВЬ", "ДИСК", "КИВИ", "БАНЯ", "ПОРОДА", "РЫСЬ", "СВИДЕТЕЛЬ", "ДАМА", "ТАРЕЛКА", "КОЛЬЦО", "КОСА", "ЛОШАДЬ", "КОЛ", "КОМАНДА", "РОГ", "ОРЕЛ", "ВИЛКА", "ВЗГЛЯД", "ЗНАК", "КЕТЧУП", "БРАК", "ПЕРЕМЕНА", "ФОРМА", "КИСТЬ", "ЦЕНТР", "ЗОЛОТО", "ШОКОЛАД", "ПРИНЦЕССА", "УТКОНОС", "ХЛОПОК", "КОРАБЛЬ", "СТАН", "МЕХАНИЗМ", "ТРУБА", "БАБОЧКА", "ТАКСА", "ПУТЬ", "ПРОКАЗА", "СТУЛ", "ПРОКАТ", "РЫБА", "ЗУБ", "САТУРН", "КАРТА", "БОКС", "ФЛЕЙТА", "ДЫРА", "ПРЕДПРИНИМАТЕЛЬ", "БРЕВНО", "ЗАНОЗА", "НОЖ", "ПРИВОД", "БИРЖА", "ПАРАШЮТ", "ПИНГВИН", "ТЕЛЕСКОП", "НЕБОСКРЕБ", "РАК", "ВАГОН", "ПЛАТА", "СПУТНИК", "ЛИМУЗИН", "НИНДЗЯ", "ИГРА", "НЯНЯ", "ОБРАЗОВАНИЕ", "СЕКЦИЯ", "КЕНТАВР", "ТУБА", "МИЛЛИОНЕР", "ПРИБОР", "АДВОКАТ", "АМЕРИКА", "ЛИПА", "УДЕЛ", "ИКРА", "ГРУША", "ДИНОЗАВР", "ПРЕДЛОЖЕНИЕ", "РАЗВОРОТ", "ШУБА", "ПОЯС", "ОБЛАСТЬ", "БЫК", "ЕРШ", "МОРОЖЕНОЕ", "ТУР", "СОЛЬ", "РЫЦАРЬ", "ЗЕБРА", "СКАТ", "ЛАД", "УДАРНИК", "КАРЛИК", "КЕНГУРУ", "ФИГА", "ВАЛ", "МЁД", "ЛЕЙКА", "КИТ", "АВСТРАЛИЯ", "ПОЛИЦИЯ", "КАМЕРА", "ВЕС", "ПЕРЕВОД", "ДУХ", "ЛАМА", "СТОЙКА", "ПРАВО", "КОСТЬ", "ЯБЛОКО", "РЕЙД", "МОТИВ", "ЭЛЬФ", "АМФИБИЯ", "ПАРТИЯ", "УЗЕЛ", "БАР", "БИЛЕТ", "ЛАСКА", "КРОЛИК", "ГВОЗДЬ", "КАМЕНЬ", "ОРГАН", "БОРОВ", "ПЛОЩАДЬ", "БАССЕЙН", "ГОРЛО", "СНЕГ", "ЛИСТ", "ОПЕРАЦИЯ", "НЬЮ ЙОРК", "ШАР", "ПАЛОЧКА", "ЛИЦО", "ВИД", "КАДР", "СТРУНА", "СРЕДА", "КРАЙ", "ТРЕУГОЛЬНИК", "ВОДОЛАЗ", "ВЕНЕЦ", "КАНАЛ", "ПУШКИН", "ФАЛАНГА", "СТУПЕНЬ", "ЛЕС", "ВЕТЕР", "СТАДИОН", "ПОДЪЕМ", "ТАНЕЦ", "АКТ", "НАРЯД", "БЕРМУДЫ", "ВОЗДУХ", "УЧЕНЫЙ", "СОВЕТ", "ГИГАНТ", "СУДЬБА", "ВИРУС", "БАЙКАЛ", "УРАЛ", "ХВОСТ", "МАШИНА", "ПОБЕГ", "НОТА", "БАТАРЕЯ", "ГЕНИЙ", "СВЕТ", "ГЛАЗ", "БОЕВИК", "СТЕНА", "ФОКУС", "ЗАЛОГ", "ГРАНАТ"},
    uk = {"АФРИКА","ФОКУС","ПОВІТРЯ","ПРИБУЛЕЦЬ","АЛЬПИ","КАВА","КАРЕТА","АМЕРИКА","АНГЕЛ","АНТАРКТИДА","ЯБЛУКО","ПЛЕЧЕ","АТЛАНТИДА","АВСТРАЛІЯ","ШЕВЧЕНКО","СПИНА","М'ЯЧ","ГРУПА","БАНК","ШУМ","КУХНЯ","КІШКА","ТУР","ПЛЯЖ","ВЕДМІДЬ","ПУНКТ","ЛОЖЕ","ПЕКІН","ДЗВІН","РЕМІНЬ","БЕРЛІН","ХОРТИЦЯ","ЛЯЩ","ДВЕРІ","БЛОК","ДОШКА","БАЛ","БОМБА","ПРОСПЕКТ","СХОДИНКА","КІСТКА","ПЛЯШКА","ПАСАЖ","ЗИМА","МІСТ","ГВОЗДИКА","СКЛАД","ДОРОГА","НЕБО","ВИНО","КНОПКА","ПРОМІНЬ","КАНАДА","ШАПКА","ГРАД","МАШИНА","КАРТА","МОРКВА","КАЗИНО","КОМАНДА","КІТ","ПОЛІС","КЕНТАВР","ЦЕНТР","КРІСЛО","БАЙКА","МУЗИКА","КІВІ","ЧЛЕН","АКЦІЯ","КИТАЙ","ШОКОЛАД","ЦЕРКВА","КОЛО","ШАЙБА","РУЧКА","КЛУБ","КОД","ФОН","ОСТРІВ","ВУХО","КОНЦЕРТ","АВТОМАТ","ПЛАТА","КУХАР","ТАКСА","БАВОВНА","СУД","КОРПУС","КРАН","АВАРІЯ","ЛЮДИНА","ХРЕСТ","КОРОНА","ЦИКЛ","УКРАЇНА","ТАНЕЦЬ","МАТ","ДЕНЬ","СМЕРТЬ","КОЛОДА","ПІСОК","ДІАМАНТ","КУЛОН","ДИНОЗАВР","ХВОРОБА","ЛІКАР","СОБАКА","СЕКЦІЯ","ДРАКОН","СУКНЯ","ГРИФ","ШАХ","АКУЛА","ГНОМ","ОРЕЛ","ЄГИПЕТ","ПОСОЛЬСТВО","ДВИГУН","АНГЛІЯ","ЄВРОПА","ОКО","ОБЛИЧЧЯ","СПИРТ","МІСЯЦЬ","ВУЗОЛ","ПАРКАН","ПОЛЕ","ПІВНІЧ","ФІГУРА","ФАЙЛ","ФІЛЬМ","ВОГОНЬ","РИБА","ФЛЕЙТА","СУПУТНИК","НОГА","СИЛА","ЛІС","ВИДЕЛКА","ФРАНЦІЯ","КУЛЯ","ГАЗ","ГЕНІЙ","НІМЕЧЧИНА","ПРИВИД","ВЕЛЕТЕНЬ","СКЛО","РУКАВИЧКА","ЗОЛОТО","ДОЛЯ","ТРАВА","ГРЕЦІЯ","ЛИСТ","ЗЕМЛЯ","ЛАМА","РУКА","СЕКРЕТ","ГОЛОВА","СЕРЦЕ","ВЕРТОЛІТ","ГІМАЛАЇ","ОТВІР","ГОЛІВУД","МЕД","ГРАНАТА","ЗАВІСА","РІГ","КІНЬ","ПІДКОВА","ЛІКАРНЯ","ГОТЕЛЬ","ЛІД","МОРОЗИВО","ІНДІЯ","КЛАС","СЛОН","ТУЗ","РІК","РАКЕТА","ЛАЙКА","КЕНГУРУ","КЕТЧУП","КЛЮЧ","РОЗЕТКА","КОРОЛЬ","КОКОС","НІЖ","ЛИЦАР","ЗАСТАВА","ЛИЦЕ","ЛАЗЕР","АДВОКАТ","СКАТ","ПОЯС","ЛЕПРЕКОН","ЖИТТЯ","СВІТЛО","ЛІМУЗИН","ЛІНІЯ","ЗВ'ЯЗОК","ДНІПРО","ТЕРМІН","КЛЕН","ЛЕВ","ВІКНО","МАТЧ","ЗЕФІР","ПОШТА","ЧАЙКА","НОТА","ТУБА","ПІСНЯ","МАСА","ВОСЬМИНІГ","МІНА","ЗАМОК","МІКРОСКОП","КОМА","ШПАГАТ","ЛОНДОН","СНАРЯД","МОДЕЛЬ","ВУГОР","ЦВЯХ","КИЇВ","БИК","МИША","РОТ","КЕЛИХ","КУТ","ГОЛКА","НЬЮ-ЙОРК","БАГАТІЙ","НІЧ","ЗУБ","МЕКСИКА","ТРИТОН","НЯНЬКА","ШЕСТЕРНЯ","ВЕЖА","НАФТА","ОЛІЯ","ОЛІМП","ОПЕРА","ЛІТО","ОРГАН","ТАРІЛКА","ПЛАЩ","АГЕНТ","ПАПІР","ПАРАШУТ","ПАРК","НІНДЗЯ","ПАС","ПАСТА","ПІНГВІН","НЕФРИТ","МІСТО","КАЛИНА","ПІЛОТ","ПАТРОН","КАНАЛ","ПІРАТ","ПІСТОЛЕТ","ЯЧМІНЬ","ВИД","ЛІТАК","ТАНК","РАУНД","КАЧКОДЗЬОБ","ГРА","МЕТР","ОЧКО","ОТРУТА","СТОВП","СІТКА","ОЗЕРО","ПОРТ","ЛАМПА","ОСІНЬ","СКЛЯНКА","ПРИНЦЕСА","ГАРБУЗ","УЧЕНЬ","ПІРАМІДА","КОРОЛЕВА","КРОЛИК","УДАЧА","ТРОЯНДА","ВЕСНА","КІЛЬЦЕ","КОЗАК","РОБОТ","ХРАМ","ЛАВА","КОРІНЬ","ПОМПА","РУЛЕТКА","СТІЛ","РЯД","КНЯЗЬ","РОЗРЯД","САТУРН","РОМАН","ШКОЛА","ВЧЕНИЙ","СКОРПІОН","ЕКРАН","СЕЛО","БОКС","СЕРВЕР","ТИК","ШЕКСПІР","СВИНКА","КОРАБЕЛЬ","ЧЕРЕВИК","МАГАЗИН","ДЗЕРКАЛО","ВАЛ","ВОДОЛАЗ","МАРКА","ЗАХІД","ХМАРОЧОС","СНІГ","СНІГОВИК","КАРТИНА","ПІП","ТАКТ","ЗВУК","КОСМОС","СХІД","ПАВУК","ПІК","СТАН","ТОЧКА","БАЛКА","ШПИГУН","КВАДРАТ","СТАДІОН","ДІМ","ЗІРКА","ІТАЛІЯ","ЗАРЯД","ШАШКА","САДОК","ПОТІК","СТОПА","СТРУНА","ТУНЕЛЬ","КОСТЮМ","СУПЕРГЕРОЙ","ШНУР","ВИМИКАЧ","ПАЛЕЦЬ","РИМ","ЕТИКЕТКА","ХВІСТ","СІК","УЧИТЕЛЬ","ТЕЛЕСКОП","ЗАВОД","ТЕАТР","ЗЛОДІЙ","ВОЇН","ЛАСКА","МОРЕ","ЧАС","ТОКІО","СПАД","ФАКЕЛ","САТЕЛІТ","ШТАТ","ПОТЯГ","ГАК","ПОЛІЦІЯ","ЛЮЛЬКА","ТРУБА","КУРКА","ГРАБАР","ОДНОРІГ","ДИМ","ФУРГОН","ТИТАН","КОСА","СТІНА","ВІЙНА","КНИЖКА","ПАРИЖ","ГОДИННИК","ВОДА","ХВИЛЯ","МЕРЕЖА","СТАНЦІЯ","КИТ","БАТІГ","ВІТЕР","ВІДЬМА","ХРОБАК","ДЖИН"},
    de = {"ROULETTE", "DRACHE", "KRIEG", "HONIG", "BOMBE", "KASINO", "WOLKENKRATZER", "SATURN", "ALIEN", "PEITSCHE", "ANTARKTIS", "SCHNEEMANN", "KONZERT", "SCHOKOLADE", "JET", "MILLIONÄR", "DINOSAURIER", "PIRAT", "HUPE", "PINGUIN", "SPINNE", "GESCHOSS", "BOTSCHAFT", "PISTOLE", "KRANKHEIT", "SPION", "PRINZESSIN", "GENIE", "DIEB", "OPER", "RITTER", "STADION", "LIMOUSINE", "GEIST", "LASTER", "LAKRITZE", "LASER", "TOD", "KRANKENHAUS", "SKELETT", "OKTOPUS", "HUBSCHRAUBER", "KÄNGURU", "MIKROSKOP", "ZENTAUR", "SUPERHELD", "TELESKOP", "FALLSCHIRM", "SCHNABELTIER", "OLYMP", "SATELLIT", "ENGEL", "ROBOTER", "EINHORN", "HEXE", "BERGSTEIGER", "TAUCHER", "GIFT", "BRÜCKE", "FEUER", "TISCH", "WAL", "MOND", "FISCH", "DOKTOR", "KIRCHE", "GÜRTEL", "ZITRONE", "WIND", "LÖWE", "AUGE", "LUFT", "HASE", "BANK", "GRAS", "AUFLAUF", "ZWERG", "WALD", "AUTO", "BURG", "APFEL", "ÖL", "KOCH", "BÄR", "KATZE", "LEBEN", "GLÜCK", "RIESE", "GESICHT", "STRAND", "HOTEL", "WASSER", "PAPIER", "WURM", "ANWALT", "FORSCHER", "TANZ", "KAROTTE", "KETCHUP", "NACHT", "MEER", "FUSS", "MAUS", "MESSER", "THEATER", "POLIZEI", "SCHIFF", "PILOT", "DAUMEN", "LEHRER", "FLASCHE", "TAG", "KÖNIG", "GLAS", "KÖNIGIN", "ZAHN", "HUND", "PFERD", "SCHUH", "STUHL", "KRONE", "EIS", "GOLD", "GABEL", "ZEIT", "FLÖTE", "FACKEL", "SCHNEE", "ELFENBEIN", "SOLDAT", "PYRAMIDE", "SCHNUR", "STERN", "RING", "HORN", "HERZ", "BALL", "KANAL", "NADEL", "LINIE", "KORB", "BLAU", "TASTE", "SCHIRM", "SPIEL", "FLECK", "KNOPF", "MUND", "AKT", "HIMALAJA", "BETT", "WAND", "TURM", "KARTE", "TOR", "RAUTE", "KREUZ", "NETZ", "PUNKT", "PASS", "FLÄCHE", "LOCH", "GLOCKE", "KRAFT", "SCHLOSS", "MASCHINE", "WELLE", "STROM", "HAUPT", "POL", "MITTEL", "JAHR", "LEIM", "SEITE", "BAU", "KREIS", "BINDUNG", "UHR", "NEW YORK", "AUSTRALIEN", "BAYERN", "TOKIO", "ÄGYPTEN", "LONDON", "MORGENSTERN", "MOSKAU", "CHINA", "SHAKESPEARE", "HOLLYWOOD", "GRIECHENLAND", "ROM", "HAND", "NINJA", "BRÖTCHEN", "KIWI", "DEUTSCHLAND", "STAAT", "AMERIKANER", "ATLANTIS", "ENGLAND", "OSTEN", "AFRIKA", "ALPEN", "FRANKREICH", "WINNETOU", "MEXIKO", "VEREIN", "FEDER", "HAMBURGER", "BERLINER", "ADLER", "EUROPA", "LOCH NESS", "PEKING", "INKA", "BECKEN", "OPTIK", "STRASSE", "ESSEN", "SIEGEL", "BART", "BLÜTE", "MOOS", "ABGABE", "BAHN", "TAFEL", "BAR", "QUARTETT", "TORTE", "TAU", "CHEMIE", "ARM", "LINSE", "KIPPE", "MELONE", "FUCHS", "BOOT", "KORN", "BANDE", "MAL", "BATTERIE", "DAME", "PFLASTER", "ERDE", "MESSE", "TON", "RÖMER", "STAMM", "BRAND", "SCHILD", "LIPPE", "MINE", "KOKS", "LÄUFER", "BUND", "ELF", "IRIS", "GANG", "PFEIFE", "KIEL", "STAR", "LEITER", "LADUNG", "BAUER", "STRUDEL", "BREMSE", "HAHN", "KAPELLE", "STRAUSS", "SATZ", "GRUND", "KATER", "MATTE", "KERZE", "WIRTSCHAFT", "DICHTUNG", "GEHALT", "CHOR", "FEIGE", "ERIKA", "MANGEL", "ROLLE", "STOCK", "DIETRICH", "SCHULE", "ENTE", "SCHOTTEN", "MARK", "LAGER", "FALL", "JURA", "NIETE", "GESCHIRR", "KNIE", "DROSSEL", "HERING", "SEKRETÄR", "DRUCKER", "BLINKER", "STIFT", "FLÜGEL", "SCHEIN", "FUNKEN", "BOCK", "PO", "ATLAS", "STEMPEL", "SCHELLE", "LEUCHTE", "UMZUG", "FINGER", "RIEGEL", "MAST", "KÄFER", "BOGEN", "WANZE", "SCHEIBE", "SCHALTER", "SCHIMMEL", "DEMO", "BEIN", "BÖRSE", "TAKT", "FLIEGE", "JÄGER", "KUNDE", "NUSS", "SCHLANGE", "TEMPO", "BACH", "VORSATZ", "GERICHT", "KAMM", "BUSCH", "PLATTE", "DECKE", "RÜCKEN", "MALER", "HEIDE", "BOXER", "REIF", "AUSDRUCK", "ZUG", "KIEFER", "WASHINGTON", "MINI", "GUT", "KOHLE", "GRAD", "BRAUSE", "VIERTEL", "RUTE", "BULLE", "FIGUR", "FEST", "ZOLL", "LOGE", "MUTTER", "RIEMEN", "VERBAND", "HUT", "WATT", "HORST", "LUXEMBURG", "BIRNE", "NOTE", "FILM", "ABSATZ", "BLATT", "MANDEL", "INDIEN", "FESSEL", "SCHALE", "AUFZUG", "QUELLE", "HARZ", "WURF", "GOLF", "ROST", "MÜHLE", "NAGEL", "TOAST", "ZYLINDER", "MUSCHEL", "WÜRFEL", "WEIDE", "KAPITÄN", "LÖSUNG", "RASEN", "ROCK", "KREBS", "FLUR", "STEUER", "ZELLE", "BARREN", "LÖFFEL", "FUTTER", "SCHUPPEN", "ORANGE", "PENSION"},
    cz = {"zima","léto","jaro","podzim","noc","světlo","déšť","sníh","vítr","mráz","vzduch","led","voda","oheň","vlna","krápník","hora","řeka","džungle","park","vrchol","louka","pole","pól","poušť","ostrov","les","jeskyně","údolí","jezero","moře","austrálie","bratislava","německo","itálie","maďar","anglie","američan","španěl","afrika","brno","holanďan","praha","čech","brazílie","rus","francie","peking","vídeň","amerika","kanada","berlín","řecko","paříž","čína","moskva","londýn","asie","velryba","pavouk","štika","savec","kočka","tučňák","kuře","liška","želva","koník","zebra","mravenec","ptakopysk","netopýr","brouk","kráva","ježek","lev","orel","medvěd","slon","los","žralok","prase","kapr","dinosaurus","krokodýl","ještěrka","klokan","papoušek","chobotnice","pes","štír","ovce","myš","tygr","květina","topol","kaktus","růže","muchomůrka","houba","kořen","sedmikráska","smrk","list","tulipán","sněženka","strom","dub","kmen","keř","tráva","hodinky","motýlek","plášť","košile","čepice","sukně","ručník","kalhoty","bačkora","bota","ponožka","kabát","brýle","prsten","klobouk","omáčka","banán","zelí","hrnec","mléko","meloun","lízátko","pomeranč","zákusek","rajče","chléb","vejce","čokoláda","třešeň","jablko","pivo","špageta","cukr","panák","polévka","salát","švestka","pánev","sůl","koření","maso","mouka","sýr","čočka","salám","víno","mrkev","knedlík","limonáda","brambora","duch","obr","drak","lochneska","démon","jednorožec","víla","vodník","čaroděj","čert","upír","kentaur","zombie","skřítek","yetti","princezna","trpaslík","kouzlo","král","pohádka","anděl","biolog","doktor","zpěvák","klaun","střelec","jezdec","prezident","policista","podnikatel","prodavač","atlet","žebrák","superhrdina","ninja","umělec","básník","karbaník","vědec","fyzik","herec","fotbalista","bankéř","lupič","kosmonaut","dělník","vojevůdce","učitel","programátor","matematik","filozof","podvodník","sedlák","nepřítel","řidič","cizinec","cestovatel","vězeň","hokejista","sestra","otec","bratr","dítě","kamarád","panna","matka","venuše","slunce","hvězda","mars","země","vesmír","měsíc","planeta","kometa","parník","koloběžka","jeřáb","auto","kamion","letadlo","kolej","silnice","raketa","vůz","autobus","motorka","kolo","vlak","lokomotiva","televize","lampa","pec","komín","zeď","klika","zrcadlo","trouba","pračka","plot","okno","koš","dveře","zvonek","talíř","robot","dělo","telefon","klávesnice","větrník","pistole","kniha","svíčka","láhev","rádio","taška","míč","koruna","počítač","kyvadlo","laser","konev","šroubek","zámek","jehla","tužka","kosa","klíč","kartáč","pila","dýka","sekera","nůž","hák","váha","hřeben","drát","hřebík","vidlička","lžíce","šroubovák","kladivo","žehlička","hůl","meč","kleště","provaz","řetěz","lopata","knihovna","cesta","mrakodrap","nemocnice","věž","hřbitov","škola","město","hospoda","brána","cirkus","dům","vesnice","hrad","úřad","kino","nádraží","obchod","plyn","sklo","papír","plastelína","stříbro","železo","láva","prach","ropa","plast","diamant","beton","guma","dřevo","uhlí","kámen","hlína","hliník","zlato","popel","radost","láska","mír","poezie","hudba","smůla","nemoc","štěstí","válka","film","hlas","zákon","smrt","hra","víra","práce","kytara","basa","trubka","flétna","klavír","srdce","ucho","zub","oko","buňka","pas","knír","zadek","víčko","noha","jazyk","koleno","hlava","nos","ruka","orgán","žebro","břicho","roh","kostka","jádro","látka","kříž","role","karta","figurka","koule","šipka","bublina","placka","tlačítko"},
    nl = {"ROULETTE","DRAAK","OORLOG","HONING","BOM","CASINO","WOLKENKRABBER","SATURNUS","ASTRONAUT","ZWEEP","ANTARCTICA","SNEEUWPOP","CONCERT","CHOCOLADE","VLIEGTUIG","MILJONAIR","DINOSAURUS","KAMELEON","TROMPET","PINGUÏN","SPIN","RAKET","AMBASSADE","PISTOOL","ZIEKTE","SPION","PRINSES","GENIE","DIEF","OPERA","RIDDER","STADION","LIMOUSINE","SPOOK","BUS","LOLLY","LASER","DOOD","ZIEKENHUIS","AMBULANCE","INKTVIS","HELIKOPTER","KANGOEROE","MICROSCOOP","PRETPARK","SUPERHELD","TELESCOOP","PARACHUTE","VAMPIER","ROTONDE","SATELLIET","ENGEL","ROBOT","EENHOORN","HEKS","KOLONIST","DUIKER","GIF","BRUG","VUUR","COBRA","WALVIS","MAAN","VIS","DOKTER","KERK","PLEISTER","ZUSTER","WIND","LEEUW","OOG","LUCHT","KONIJN","BANK","GRAS","JURK","DWERG","BOS","AUTO","HANDSCHOEN","APPEL","OLIE","KOK","BEER","POES","LEVEN","GELUK","REUS","SPIEGEL","STRAND","HOTEL","WATER","PAPIER","WORM","ADVOCAAT","WETENSCHAPPER","DANS","WORTEL","KETCHUP","NACHT","KATOEN","VOET","MUIS","MES","THEATER","AGENT","SCHIP","PILOOT","DUIM","LERAAR","FLES","DAG","KONING","GLAS","KABEL","TAND","HOND","PAARD","SCHOEN","STOEL","KROON","IJS","GOUD","VORK","TIJD","FLUIT","VLAM","SNEEUW","IVOOR","SOLDAAT","PIRAMIDE","KUBUS","STER","RING","HOORN","HART","BLOK","BUIS","NAALD","LIJN","KRIJT","BORD","BOX","SCHERM","STUK","SPOT","KNOP","MOND","ETIKET","HAND","BED","MUUR","TOREN","KAART","BAD","DIAMANT","KRUIS","NET","PUNT","NOOT","PLAAT","HOL","WIJZER","KRACHT","SLEUTEL","MACHINE","OVERGANG","STROOM","HOOFD","PAAL","CENTRUM","ONGELUK","SCHAT","SLOT","CODE","CIRKEL","LINK","PIJP","AMSTERDAM","NEDERLAND","LIMBURG","BRUSSEL","EGYPTE","LONDEN","CARNAVAL","ROTTERDAM","BELGIË","HUNEBED","HOLLYWOOD","GRIEKENLAND","ROME","ARDENNEN","NINJA","POOL","SHOARMA","DUITSLAND","PROVINCIE","AMERIKA","ATLANTIS","ENGELAND","LOEMPIA","AFRIKA","TABLET","FRANKRIJK","KLOMP","POLDER","EURO","VOETBAL","ZEELAND","BERLIJN","PIZZA","DOLFIJN","HAWAÏ","MOTOR","LAARS","CARAVAN","FRIET","ALPEN","SEIZOEN","KAMER","BLIK","VORST","IJZER","ZEGEL","LICHT","MARS","GROEN","JAM","EUROPA","LEIDING","WISSEL","AARDE","STRAAL","DEKSEL","CITROEN","ROOS","TAFEL","STAART","METER","DIJK","BATTERIJ","ARENA","BEELD","KOSTUUM","SLANG","SPOOR","GAREN","AANDEEL","VET","BLOND","SLIP","GEMEENTE","SLAG","PROEF","CLUB","SCHADUW","BENDE","STRIP","TWEELING","BAND","CHIP","TOCHT","DUIKBOOT","MIJN","VINK","VLIEG","KOUD","KNIKKER","SPEL","HAAK","KNUPPEL","KETTING","SCHEIDING","STAPEL","BAR","BUBBEL","POND","ROND","VELD","HEMEL","BOK","VEER","ZINK","FIETS","SCHRIFT","MAT","SLEE","PATROON","GROND","RUG","STAM","MUNT","GRAAD","KEGEL","UITZENDING","EIKEL","MOL","GESLACHT","TEMPEL","POMPOEN","IJSBEER","SMOKKELAAR","HAM","VLUCHT","KRUIK","VAL","SPREUK","BOEK","RAAD","BAL","PIL","ELF","BUREAU","ARM","SCHAAL","FLITS","CEL","VULKAAN","CONTRACT","CHINEES","BAAN","DIERENARTS","HAVEN","GOLF","NICHT","STEEK","MASKER","RIET","GELUID","PRIJS","SCHROEF","HAVIK","PERS","FORMULE","AS","KUIP","VIOOL","REGEL","DICHT","MASSA","WEB","ZAK","PALM","KRAAN","PASTA","TAART","GERECHT","SPIJKER","MODEL","WEEGSCHAAL","REVOLUTIE","PARIJS","GAS","SINGLE","PIANO","BESTAND","BRON","PODIUM","AANVAL","ASIEL","NETWERK","WEDSTRIJD","FILM","SCHIJF","AMAZONE","RUIMTE","BEURS","STAF","SHUTTLE","PIRAAT","KOP","STEM","GAT","KUSSEN","KAMP","TON","SPA","PAD","FIGUUR","GEZICHT","DOOS","NAGEL","PINDA","MONSTER","WAS","RECEPT","TOETS","TAP","SCHOOL","TROMMEL","KEVER","KATER","TANK","KOPER","SCHOT","HAGEL","RIEM","PUPIL","ORANJE","POST"},
    pl = {"NOS", "HOLLYWOOD", "KONCERT", "KARTA", "TOALETA", "SIANO", "RÓŻA", "TANIEC", "KALOSZ", "GROSZEK", "KORONA", "KONAR", "PŁOT", "ANTARKTYKA", "PIRAT", "MEKSYK", "NAPAD", "KRZESŁO", "SZMUGIEL", "ZŁODZIEJ", "BABKA", "TCHÓRZ", "KROPKA", "ZMYWACZ", "JĘZYK", "FRANCJA", "RZĄD", "BECZKA", "ANGLIA", "KRASNAL", "ATLANTYDA", "OPERA", "KWADRAT", "TRĄBA", "TUBA", "RAKIETA", "ZIEMIA", "ŚWINIA", "SZKOCJA", "WAGA", "ZŁOTO", "LINIA", "SZTUKA", "UCHO", "TRÓJKĄT", "STOPA", "ZAMEK", "ORZEŁ", "FOKA", "LÓD", "ŚWIERSZCZ", "SZCZYT", "PLIK", "CENTAUR", "WYBUCH", "KOLEC", "KRZYŻ", "LONDYN", "OPOKA", "GRZMOT", "JEDNOROŻEC", "JABŁKO", "FLET", "MODEL", "PÓŁNOC", "WĄŻ", "NORA", "LEW", "STÓŁ", "JATKA", "AWARIA", "DUSZA", "DANIA", "KIWI", "KOŚĆ", "USTA", "STOŁEK", "HIMALAJE", "MISTRZ", "KSIĘŻNICZKA", "SUPERBOHATER", "AMAZONKA", "BAŁWAN", "BAL", "GUMA", "RZĘSA", "KRÓLIK", "KLUCZ", "PLAŻA", "POLE", "SOCZEWKA", "MASA", "DONICE", "KLAWISZ", "KCIUK", "CHOCHLIK", "OGON", "KONTRAKT", "TRUCIZNA", "ZEBRA", "PAJĄK", "KACZOR", "OŚMIORNICA", "NIEMCY", "WACHLARZ", "GŁOWA", "RYCERZ", "RAK", "GRA", "NAUCZYCIEL", "PŁYTA", "SIŁA", "KUCHARZ", "KRET", "TABLICA", "BĄK", "TRAWA", "RUDA", "PLASTIK", "SŁUP", "KARAWAN", "DIAMENT", "ŁAWA", "NINJA", "KOŁO", "POLSKA", "PIRAMIDA", "SZCZĘŚCIE", "GIGANT", "WASZYNGTON", "POCIĄG", "ŻABKA", "POCZTA", "PAN", "KOT", "LINA", "GOŁĄB", "RAMA", "SOKÓŁ", "PODKOWA", "BUT", "KASYNO", "SZEKSPIR", "DZIEŃ", "WIATR", "REWOLUCJA", "ŚMIERĆ", "TELESKOP", "KRÓWKA", "PUPIL", "ZWOJE", "ŁOŻYSKO", "PERŁA", "LOCH NESS", "GWIAZDA", "WYDECH", "PIERŚCIEŃ", "RÓG", "MOSKWA", "RZYM", "SPLOT", "KRĘGI", "CZAR", "MIÓD", "MUCHA", "MARCHEW", "BERLIN", "PUDŁO", "DZIOBAK", "PRACA", "PUNKT", "STRONA", "TEATR", "OGIER", "WIEDŹMA", "PORT", "JOWISZ", "PAPIER", "KOD", "AMBASADA", "PEKIN", "BUDOWA", "OLIMP", "MERKURY", "DINOZAUR", "ZNAK", "ŻUK", "PRAWO", "OBSADA", "FUNT", "SKORPION", "KSIĘŻYC", "FILM", "POWIETRZE", "EKRAN", "STADION", "SZPIEG", "FRANCUZ", "GRABARZ", "PINGWIN", "KASA", "SPADEK", "CZUJKA", "ROBAK", "SMOK", "FENIKS", "MAMUT", "KORZENIE", "ŻOŁNIERZ", "PILOT", "KOSTIUM", "DWÓR", "DZIĘCIOŁ", "KOŚCIÓŁ", "KOZIOŁ", "PALETA", "BERMUDY", "ZMIANA", "WIOSNA", "TALIA", "NÓŻ", "WIDELEC", "HUMOR", "FIGURA", "PISTOLET", "PLACEK", "HOTEL", "LAKIER", "SERCE", "KANGUR", "CEBULA", "SATURN", "SKORUPA", "LASER", "MATERIAŁ", "PALUSZKI", "RĘKAWICA", "RĘKA", "FALA", "OGIEŃ", "ROBOT", "KLATKA", "SZKŁO", "BAWEŁNA", "POCIECHA", "CIEŃ", "KONTAKT", "CENTRUM", "TALERZ", "SZKOŁA", "SUKIENKA", "JAGODA", "GŁADKI", "BASEN", "WIELORYB", "GRACJA", "NOGA", "NAUKOWIEC", "KRÓLOWA", "POCHODNIA", "BOMBA", "OLEJ", "KAMIEŃ", "HOLENDER", "MOST", "STATEK", "NIEBO", "GOLF", "ŻEBRO", "DYWAN", "STOPIEŃ", "POKRYWKA", "RURA", "GAZ", "SZNUR", "CZAPA", "NUREK", "STAN", "ŚNIEG", "ŻUBR", "ORGANY", "RULETKA", "BICZ", "WOJNA", "MUR", "LOT", "TWARZ", "ŁÓDŹ", "PRAWNIK", "GUZIK", "MYSZ", "PAZUR", "POLICJA", "KOŃ", "EGIPT", "TOKIO", "KAPTUR", "OLIWA", "SZAFA", "RZUT", "KECZUP", "ZESPÓŁ", "SAMOCHÓD", "POŁĄCZENIE", "BLOK", "ŻYCIE", "OKO", "SATELITA", "MIKROSKOP", "BAR", "WSTĘP", "GÓRA", "LASKA", "PIELĘGNIARKA", "TUSZA", "AFRYKA", "SILNIK", "KRAKÓW", "WIEŻA", "REKIN", "LODY", "DOKTOR", "KOMÓRKA", "AUSTRALIA", "NOWY JORK", "ŻELAZO", "STRZAŁ", "ŚLIMAK", "CZAS", "DNO", "WKŁAD", "ORZECH", "ŁUK", "TOREBKA", "PAS", "MIEDŹ", "DZWON", "AMBULANS", "MAJ", "PASTA", "KLAMKA", "CZEKOLADA", "EUROPA", "PRZEWODNIK", "GRZYB", "SZCZYPIOR", "MAKS", "SZPITAL", "WIEŻOWIEC", "CHOROBA", "ŻURAW", "PROMIEŃ", "LIS", "DZIURA", "SIEKACZ", "DRZEWO", "TUSZ", "PODKŁAD", "FARTUCH", "ZIELEŃ", "AMERYKA", "GRECJA", "NIĆ", "DUCH", "BUTELKA", "CHINY", "SZPILKA", "MILIONER", "OBCY", "GOTYK", "HAK", "HELIKOPTER", "GNAT", "PUSTKA", "LIMUZYNA", "LAS", "IGŁA", "JAJA", "GNIAZDKO", "WODA", "STRUMIEŃ", "PIES", "POJAZD", "SPADOCHRON", "SAMOLOT", "CIAŁO", "GENIUSZ", "BELKA", "ZĄB", "NOC", "AZTEK", "RYBA", "MUSZLA", "BANK", "NEKTAR", "TRUTEŃ", "ANIOŁ", "SIEĆ", "NIEDŹWIEDŹ", "KRÓL"},
    ro = {"RULETĂ", "DRAGON", "RĂZBOI", "MIERE", "BOMBĂ", "CAZINOU", "ZGÂRIE-NORI", "SATURN", "MARŢIAN", "BICI", "ANTARCTICA", "OM DE ZĂPADĂ", "CONCERT", "CIOCOLATĂ", "AVION", "MILIONAR", "DINOZAUR", "PIRAT", "GOARNĂ", "PINGUIN", "PĂIANJEN", "PROIECTIL", "AMBASADĂ", "PISTOL", "BOALĂ", "SPION", "PRINŢESĂ", "GENIU", "HOŢ", "OPERĂ", "CAVALER", "STADION", "LIMUZINĂ", "FANTOMĂ", "FURGONETĂ", "ÎNGHEŢATĂ", "LASER", "MOARTE", "SPITAL", "AMBULANŢĂ", "CARACATIŢĂ", "ELICOPTER", "CANGUR", "MICROSCOP", "CENTAUR", "SUPEREROU", "TELESCOP", "PARAŞUTĂ", "ORNITORINC", "OLIMP", "SATELIT", "ÎNGER", "ROBOT", "UNICORN", "VRĂJITOARE", "GROPAR", "SCUFUNDĂTOR", "OTRAVĂ", "BOSTAN", "FOC", "PLACĂ", "BALENĂ", "LUNĂ", "PEŞTE", "DOCTOR", "BISERICĂ", "CUREA", "INFIRMIERĂ", "VÂNT", "LEU", "POAMĂ", "AER", "IEPURE", "BANCĂ", "IARBĂ", "ROCHIE", "PITIC", "PĂDURE", "MAŞINĂ", "MĂNUŞĂ", "MĂR", "ULEI", "BUCĂTAR", "URS", "PISICĂ", "VIAŢĂ", "NOROC", "URIAŞ", "FAŢĂ", "PLAJĂ", "HOTEL", "APĂ", "HÂRTIE", "VIERME", "AVOCAT", "CERCETĂTOR", "DANS", "MORCOV", "KETCHUP", "NOAPTE", "BUMBAC", "PICIOR", "ŞOARECE", "CUŢIT", "TEATRU", "POLIŢIE", "VAPOR", "PILOT", "DEGET", "PROFESOR", "STICLĂ", "ZI", "REGE", "GÂT", "REGINĂ", "DINTE", "CÂINE", "CAL", "PANTOF", "SCAUN", "COROANĂ", "GHEAŢĂ", "AUR", "FURCULIŢĂ", "TIMP", "FLAUT", "FĂCLIE", "ZĂPADĂ", "FILDEŞ", "SOLDAT", "PIRAMIDĂ", "COARDĂ", "STEA", "CUIB", "BANDĂ", "INIMĂ", "BLOC", "CORDON", "AC", "CARNET", "CARTE", "MASĂ", "MARE", "SOLUŢIE", "JOC", "LOC", "BUTON", "GURĂ", "ETICHETĂ", "MÂNĂ", "PAT", "ZID", "TURN", "ARTICOL", "RUG", "PANĂ", "CRUCE", "PLASĂ", "MOBIL", "PRIZĂ", "TALER", "GAURĂ", "PRAG", "FORŢĂ", "CHEIE", "TUN", "VAL", "SPUMĂ", "CAP", "POL", "CENTRU", "SCOABĂ", "PASTĂ", "CUI", "COD", "CERC", "PALMĂ", "PĂR", "BUCUREŞTI", "AUSTRALIA", "TOMIS", "TOKYO", "EGIPT", "LONDRA", "MĂMĂLIGĂ", "MOSCOVA", "CANADA", "EMINESCU", "HOLLYWOOD", "GRECIA", "ROMA", "CEAHLĂU", "NINJA", "TRANSILVANIA", "KIWI", "GERMANIA", "JUDEŢ", "AMERICA", "ATLANTIDA", "ROMÂNIA", "CORCODUŞ", "AFRICA", "ZIMBRU", "FRANŢA", "POTCOAVĂ", "PĂCALĂ", "MEXIC", "EUROPA", "SCORPION", "BERLIN", "INDIA", "CARPAŢI", "LOCH NESS", "BEIJING", "ŞOIM", "TRAFICANT", "AZTEC", "COLAC", "VARĂ", "OCHI", "CURENT", "BROASCĂ", "BAZĂ", "LAC", "PULPĂ", "TABLETĂ", "TOC", "SEMN", "MINĂ", "SOMN", "LILIAC", "GRĂTAR", "RAZĂ", "COŞ", "CORN", "BANC", "CAPRĂ", "LAMĂ", "PLUTO", "IUTE", "BATERIE", "ROŞIE", "TOBĂ", "AGENT", "CIOC", "MOŢ", "TON", "POD", "CER", "MUŞCHI", "ARTIFICIU", "CAPITAL", "BALON", "CABINĂ", "CASETĂ", "CĂMIN", "CEAS", "CENTURĂ", "CALAPOD", "LEGĂTURĂ", "CIRCUIT", "CLASĂ", "CLISĂ", "DEBIT", "DOS", "ELEMENT", "ESEU", "FARMEC", "MECI", "FIŞĂ", "SOL", "FREZĂ", "GALBEN", "GOGOAŞĂ", "FLUTURE", "GUTĂ", "INEL", "LIMBĂ", "CÂMP", "CICLU", "LIRĂ", "FUS", "BUTELIE", "CÂRTIŢĂ", "ŞAH", "FRANC", "CĂLUGĂRIŢĂ", "MARCHIZĂ", "MEDITAŢIE", "COADĂ", "CĂPUŞĂ", "MUR", "BUTUC", "RACHETĂ", "NAVETĂ", "VATRĂ", "CURSĂ", "PALAT", "BĂTĂTURĂ", "DILIGENŢĂ", "BAZIN", "ANCORĂ", "PALETĂ", "MANECHIN", "SALVARE", "LĂSTUN", "PROFIL", "PAPAGAL", "TERASĂ", "MERCUR", "ARC", "PRIMAR", "PROCES", "RADICAL", "RÂND", "ORGAN", "CELULĂ", "REGIM", "BRAŢ", "SLUJBĂ", "MODEL", "BAIE", "ROD", "ROST", "CARIERĂ", "BALANŢĂ", "SABOT", "SARCINĂ", "SCAI", "SCARĂ", "SCUT", "SENS", "PRESĂ", "FILAJ", "PHOENIX", "SONDĂ", "SANIE", "ARMĂ", "SPĂTAR", "SPOR", "STAT", "SFERĂ", "STAŢIE", "STERIL", "FENTĂ", "MUFĂ", "ANTREU", "SCOARŢĂ", "MAMUT", "ALBIE", "REVOLUŢIE", "CANAL", "GAZ", "DELAVRANCEA", "TABLĂ", "PILĂ", "TABLOU", "PUŢ", "TACÂM", "CADRU", "TAMPON", "DOZĂ", "TALIE", "ŞA", "AMAZON", "SPAŢIU", "TAMBUR", "TALPĂ", "TEASC", "PIAŢĂ", "COT", "ARBORE", "ARIE", "GENERAL", "AZIL", "TELECOMANDĂ", "PLATOU", "OCAZIE", "BOX", "DREPT", "ORDONANŢĂ", "URECHE", "COMPLEX", "PELICULĂ", "NEGRU", "NOTĂ", "PIESĂ", "ŢAP", "MEŞĂ", "RĂDĂCINĂ", "BOB", "COLOANĂ", "SPIRIT", "PORT", "CUPĂ", "CULT", "VID", "URMĂ", "SORĂ", "POST"},
    no = {"RULETT", "DRAGE", "KRIG", "HONNING", "BOMBE", "KASINO", "SKYSKRAPER", "SATURN", "ROMVESEN", "PISK", "ANTARKTIS", "SNØMANN", "KONSERT", "SJOKOLADE", "JETFLY", "MILLIONÆR", "DINOSAUR", "PIRAT", "TROMPET", "PINGVIN", "EDDERKOPP", "MISSIL", "AMBASSADE", "PISTOL", "SYKDOM", "SPION", "PRINSESSE", "GENI", "TYV", "OPERA", "RIDDER", "STADION", "LIMOUSIN", "SPØKELSE", "VAREBIL", "ISKREM", "LASER", "DØDEN", "SYKEHUS", "AMBULANSE", "BLEKKSPRUT", "HELIKOPTER", "KENGURU", "MIKROSKOP", "KENTAUR", "SUPERHELT", "TELESKOP", "FALLSKJERM", "NEBBDYR", "OLYMPIATOPP", "SATELLITT", "ENGEL", "ROBOT", "ENHJØRNING", "HEKS", "BØDDEL", "DYKKER", "MOTORSAG", "BRO", "ILD", "BORD", "HVAL", "MÅNE", "FISK", "LEGE", "KIRKE", "BELTE", "SYKEPLEIER", "VIND", "LØVE", "ØYE", "LUFT", "KANIN", "BANK", "GRESS", "DRESS", "DVERG", "SKOG", "BIL", "HANSKE", "EPLE", "OLJE", "KOKE", "BJØRN", "KATT", "LIV", "HELL", "ENORM", "FJES", "STRAND", "HOTEL", "VANN", "PAPIR", "ORM", "ADVOKAT", "FORSKER", "DANS", "GULROT", "KETCHUP", "NATT", "BOMULL", "FOT", "MUS", "KNIV", "TEATER", "POLITI", "SKIP", "PILOT", "TOMMEL", "LÆRER", "FLASKE", "DAG", "BUE", "KONGE", "DRONNING", "TANN", "HUND", "HEST", "SKO", "STOL", "KRONE", "IS", "GULL", "GAFFEL", "TID", "FLØYTE", "FAKKEL", "SNØ", "ELFENBEN", "SOLDAT", "PYRAMIDE", "TRÅD", "STJERNE", "RING", "VINGE", "HJERTE", "BLOKK", "SLANGE", "NÅL", "LINJE", "DEKKE", "BRETT", "BRYTER", "SKJERM", "STYKKE", "PRIKK", "KNAPP", "MUNN", "MERKE", "HÅND", "SENG", "VEGG", "TÅRN", "LEGG", "KNUTE", "DIAMANT", "KORS", "NETT", "POENG", "PASS", "TALLERKEN", "HULL", "BJELLE", "STYRKE", "NØKKEL", "MOTOR", "BØLGE", "STRØM", "HODE", "STANG", "SENTER", "KOLLISJON", "LIM", "SPISS", "KODE", "SIRKEL", "LENKE", "PIPE", "FJÆR", "RAMMER", "BOR", "RIS", "JERN", "SLAG", "GRADER", "RIM", "RIVE", "ARK", "KASTE", "SPAK", "KART", "SLÅ", "STRÅLE", "REGN", "ORDEN", "PASSERE", "SKUR", "KULL", "GRAV", "POST", "NEW YORK", "AUSTRALIA", "BERMUDA", "TOKYO", "EGYPT", "LONDON", "GRESSKAR", "MOSKVA", "CANADA", "SHAKESPEARE", "HOLLYWOOD", "HELLAS", "ROMA", "HIMALAYA", "NINJA", "TSJEKKISK", "KIWI", "TYSKLAND", "STAT", "AMERIKA", "ATLANTIS", "ENGLAND", "LØNNETRE", "AFRIKA", "RØDSTRUPE", "FRANKRIKE", "HESTESKO", "NISSE", "MEXICO", "EUROPA", "SKORPION", "BERLIN", "INDIA", "ALPENE", "LOCH NESS", "BEIJING", "ØRN", "SMUGLER", "AZTEK", "PAI", "DØR", "STEMME", "ENDE", "HATT", "KORT", "KAR", "DRIVER", "GLO", "TANKE", "MURER", "VIFTE", "TUR", "VISER", "PRØVE", "RASK", "MASKE", "TREKK", "FIRE", "SKILT", "EKTE", "BIND", "FLY", "TOMT", "NETTO", "MINE", "SJEKK", "BAR", "GRUNN", "REGLER", "SPILL", "KROK", "KOST", "BØNNER", "LAM", "TUNGE", "LETTE", "LUR", "BAD", "LEVER", "FULL", "SAL", "SKINKE", "TRIKK", "BY", "STRYKE", "SKINNER", "DYR", "KOSTE", "ØRE", "VEST", "VÆR", "FÅ", "ROSE", "FRI", "TINE", "VALG", "GIR", "STAV", "RETT", "MARK", "RIFT", "LEKKER", "BAND", "RUTER", "ROR", "TAPET", "GRUE", "TEMA", "ENDER", "BALL", "FINNE", "GLASS", "KJEMPE", "LEIE", "GANG", "GARN", "ROM", "ERTER", "NEVER", "RIKE", "STIGE", "MODELL", "LYS", "TRIANGEL", "UNGE", "LOKK", "VEKT", "TANG", "YR", "MASSASJE", "KOPPER", "ARMBÅND", "TANKER", "PRESSE", "LIST", "MALE", "RUNDE", "RETTER", "RÅ", "MOT", "BANKE", "HELLER", "GIFT", "VÆRE", "KRAN", "FOR", "DEKK", "SLÅTT", "BANE", "EGG", "PANNE", "LYST", "BÅT", "FANT", "HELT", "LISTE", "KJEDE", "MANUAL", "ROT", "STAMME", "REKKE", "REGNING", "SKUDD", "KAM", "SINGEL", "VISA", "TULLA", "MUTTER", "MASSE", "GAL", "RYKE", "SØKT", "KASSE", "TI", "SPORER", "SNELLE", "PÅLEGG", "ROGN", "UNDERGANG", "GODE", "SELGER", "SERVER", "MEKTIG", "OPPLAG", "SKRUE", "KRAKK", "MATTE", "KAPPER", "TAPP", "RUTE", "SKÅL", "ALT", "RO", "HUSKE", "PORT", "KRONEIS", "HEL", "PIL", "OS", "BOLLE"},
    fi = {"RULETTI", "LOHIKÄÄRME", "SOTA", "HUNAJA", "POMMI", "KASINO", "HATTU", "SATURNUS", "AVARUUSOLIO", "PIISKA", "ANTARKTIS", "LUMIUKKO", "KONSERTTI", "SUKLAA", "SUIHKUKONE", "MILJONÄÄRI", "DINOSAURUS", "MERIROSVO", "METSÄSTYS", "PINGVIINI", "HÄMÄHÄKKI", "OHJUS", "LÄHETYSTÖ", "PISTOOLI", "TAUTI", "VAKOOJA", "PRINSESSA", "NERO", "VARAS", "OOPPERA", "RITARI", "STADION", "LIMUSIINI", "AAVE", "PAKETTIAUTO", "JÄÄTELÖ", "LASER", "KUOLEMA", "SAIRAALA", "AMBULANSSI", "MUSTEKALA", "HELIKOPTERI", "KENGURU", "HOROSKOOPPI", "KENTAURI", "SANKARI", "TELESKOOPPI", "LASKUVARJO", "NOKKAELÄIN", "OLYMPOS", "SATELLIITTI", "ENKELI", "ROBOTTI", "YKSISARVINEN", "NOITA", "URAKOITSIJA", "SUKELTAJA", "MYRKKY", "SILTA", "TULI", "PÖYTÄ", "VALAS", "KUU", "KALA", "LÄÄKÄRI", "KIRKKO", "VYÖ", "HOITAJA", "TUULI", "LEIJONA", "SILMÄ", "ILMA", "KANI", "PANKKI", "NURMI", "MEKKO", "KÄÄPIÖ", "METSÄ", "AUTO", "HANSIKAS", "OMENA", "ÖLJY", "KOKKI", "KARHU", "KISSA", "ELÄMÄ", "ONNI", "JÄTTILÄINEN", "KASVOT", "UIMARANTA", "HOTELLI", "VESI", "PAPERI", "MATO", "ASIANAJAJA", "TIEDEMIES", "TANSSI", "PORKKANA", "KETSUPPI", "YÖ", "PUUVILLA", "JALKA", "HIIRI", "VEITSI", "TEATTERI", "POLIISI", "LAIVA", "LENTÄJÄ", "PEUKALO", "OPETTAJA", "PULLO", "PÄIVÄ", "KUNINGAS", "LASI", "KUNINGATAR", "HAMMAS", "KOIRA", "HEVONEN", "KENKÄ", "TUOLI", "KRUUNU", "JÄÄ", "KULTA", "HAARUKKA", "AIKA", "HUILU", "SOIHTU", "LUMI", "NORSUNLUU", "SOTILAS", "PYRAMIDI", "NARU", "TÄHTI", "RENGAS", "TORVI", "SYDÄN", "KAPPALE", "PUTKI", "NEULA", "LINJA", "KANSI", "LAUTA", "TAIVAS", "NÄYTTÖ", "PELI", "PILKKU", "NAPPI", "SUU", "MERKKI", "KÄSI", "PENKKI", "MUURI", "TORNI", "KORTTI", "SIDE", "RUUTU", "RISTI", "VERKKO", "PAIKKA", "PASSI", "LEVY", "KUOPPA", "KELLO", "VOIMA", "AVAIN", "MOOTTORI", "AALTO", "VANA", "PÄÄ", "TOLPPA", "KESKUSTA", "KOLARI", "TAHNA", "PIIKKI", "KOODI", "PIIRI", "LENKKI", "PIIPPU", "NEW YORK", "AUSTRALIA", "BAHAMA", "TOKIO", "EGYPTI", "LONTOO", "PITSA", "MOSKOVA", "KANADA", "SHAKESPEARE", "HOLLYWOOD", "KREIKKA", "ROOMA", "HIMALAJA", "NINJA", "TŠEKKI", "KIIVI", "SAKSA", "VALTIO", "AMERIKKA", "ATLANTIS", "ENGLANTI", "AFRIKKA", "VAAHTERA", "LOCH NESS", "RANSKA", "ALPIT", "TIIKERI", "LUUTTU", "MALLI", "APILA", "PEKING", "ROMMI", "TUOHI", "KOTKA", "AARRE", "PATONKI", "HALLI", "MEKSIKO", "KUUSI", "LIMA", "TABLETTI", "ASTEEKKI", "VUORI", "PUKKI", "LEHTI", "JUURI", "INTIA", "VIHREÄ", "AAVIKKO", "HARJA", "MAALI", "KALKKI", "KOURA", "SÄDE", "HAKA", "KANTA", "LIIVI", "VIINI", "TOLLO", "JOUSI", "PYKÄLÄ", "PATTERI", "RANKA", "VASARA", "LAKKA", "TORTILLA", "LOUNAS", "ARKKI", "KIELI", "ANSA", "ASEMA", "HUMALA", "JOHTO", "JÄSEN", "KANGAS", "KOLLI", "LINSSI", "PORO", "VAUVA", "BAARI", "LONKERO", "KUURO", "SÄKÄ", "TURKKI", "URA", "KUULA", "VOLTTI", "KOPPI", "LUODE", "PAKKI", "NASKALI", "KONNA", "RIIMU", "PARKKI", "KURKKU", "PATTI", "PARVI", "PYYKKI", "ÄSSÄ", "SIRKKA", "SULKU", "VIITTA", "TUUMA", "SIREENI", "KAPSELI", "ASTE", "KAISTA", "SUSHI", "KANAVA", "VIRVELI", "KILTTI", "LAUKKA", "LUKU", "PESIJÄ", "ANKARA", "KUMINA", "HUKKA", "KOI", "LASKU", "SIJA", "LAKI", "LIIKE", "LINNA", "RAITA", "ALUS", "NUIJA", "IKKUNA", "TIKKA", "VESA", "PANDA", "HELMI", "EUROOPPA", "LÄHDE", "KAUKALO", "SOLU", "SIIPI", "PÖLLÖ", "KATTO", "KAKKU", "RISKI", "VOITTO", "NAATTI", "KORVA", "PAUKKU", "VIESTI", "VAAKA", "TEHO", "JÄÄKIEKKO", "VARSI", "RAVINTOLA", "KUORI", "PILLI", "HILLO", "SANKA", "POSTI", "ARPA", "TAMMI", "VAARA", "ELO", "LAITURI", "KURKI", "PUOLA", "MARS", "RAUTA", "PALLO", "SORSA", "VARASTO", "FILMI", "KENTTÄ", "JAHTI", "LIEMI", "SALAMA", "TAHTI", "OHJELMA", "NAPA", "MATKA", "PERHO", "KOHTAUS", "HENKI", "PUHALLIN", "KATE", "IIRIS", "TISKI", "SELKÄ", "HAUKKU", "MASSA", "PÄHKINÄ", "TUOMARI", "BERLIINI", "KAATO", "OLIIVI", "SYLI", "TARHA", "KIERTO", "ALA", "ELIN", "KORI", "IGLU", "SAPARO", "AURA", "PUOMI", "TUKI", "LUOMI", "TIKKI", "PUIKKO", "KUVAAJA", "NAULA", "VARJO", "PALSTA", "ERÄ", "SARJA", "PAKKA", "AITA", "VIRTA", "VETO", "PALO", "TALJA", "RIMA", "LASTA", "SYÖTTÖ", "ÄÄNI"},
    dk = {"ROULETTE", "DRAGE", "KRIG", "HONNING", "BOMBE", "KASINO", "SKYSKRABER", "SATURN", "RUMVÆSEN", "PISK", "ANTARKTIS", "SNEMAND", "KONCERT", "CHOKOLADE", "FLY", "MILLIONÆR", "DINOSAUR", "PIRAT", "HORN", "PINGVIN", "EDDERKOP", "MISSIL", "AMBASSADE", "PISTOL", "SYGDOM", "SPION", "PRINSESSE", "GENI", "TYV", "OPERA", "RIDDER", "STADIUM", "LIMOUSINE", "SPØGELSE", "VAREVOGN", "ISPIND", "LASER", "DØD", "HOSPITAL", "AMBULANCE", "BLÆKSPRUTTE", "HELIKOPTER", "KÆNGURU", "MIKROSKOP", "KENTAUR", "SUPERHELT", "TELESKOP", "FALDSKÆRM", "NÆBDYR", "OLYMPEN", "SATELLIT", "ENGEL", "ROBOT", "ENHJØRNING", "HEKS", "BEDEMAND", "DYKKER", "GIFT", "BRO", "ILD", "BORD", "HVAL", "MÅNE", "FISK", "DOKTOR", "KIRKE", "BÆLTE", "JORDMOR", "VIND", "LØVE", "ØJE", "LUFT", "KANIN", "BANK", "GRÆS", "KJOLE", "DVÆRG", "SKOV", "BIL", "HANDSKE", "ÆBLE", "OLIE", "KOK", "BJØRN", "KAT", "LIV", "HELD", "KÆMPE", "ANSIGT", "STRAND", "HOTEL", "VAND", "PAPIR", "ORM", "ADVOKAT", "FORSKER", "DANS", "GULEROD", "KETCHUP", "NAT", "BOMULD", "FOD", "MUS", "KNIV", "TEATER", "POLITI", "SKIB", "PILOT", "TOMMELTOT", "LÆRER", "FLASKE", "DAG", "KONGE", "GLAS", "DRONNING", "TAND", "HUND", "HEST", "SKO", "STOL", "KRONE", "IS", "GULD", "GAFFEL", "TID", "FLØJTE", "FAKKEL", "ANE", "ELFENBEN", "SOLDAT", "PYRAMIDE", "SNOR", "STJERNE", "RING", "VINGE", "HJERTE", "BLOK", "SLANGE", "NÅL", "LINJE", "DÆKKE", "BRÆT", "KONTAKT", "SKÆRM", "STYKKE", "PLET", "KNAP", "MUND", "MÆRKE", "HÅND", "SENG", "VÆG", "TÅRN", "KORT", "KNUDE", "DIAMANT", "KORS", "NET", "PRIK", "PAS", "TALLERKEN", "HUL", "KLOKKE", "STYRKE", "NØGLE", "MOTOR", "BØLGE", "STRØM", "HOVED", "POL", "CENTER", "SAMMENSTØD", "LIM", "SPIDS", "KODE", "CIRKEL", "FORBINDELSE", "RØR", "NEW YORK", "AUSTRALIEN", "BERMUDA", "TOKYO", "EGYPTEN", "LONDON", "GRÆSKAR", "MOSKVA", "CANADA", "SHAKESPEARE", "HOLLYWOOD", "GRÆKENLAND", "ROM", "HIMALAYA", "NINJA", "TJEKKIET", "KIWI", "TYSKLAND", "STAT", "AMERIKA", "ATLANTIS", "ENGLAND", "AHORN", "AFRIKA", "NORD", "NISSE", "HESTESKO", "ØRN", "MEXICO", "EUROPA", "SKORPION", "BERLIN", "LIG", "MINE", "LOCH NESS", "BEIJING", "INDIEN", "SMUGLER", "GRØNLAND", "TÆRTE", "LAST", "STRYG", "SKÅL", "OPHOLD", "DØR", "KYLLING", "BUD", "TALER", "GRØN", "RÅ", "SEJ", "STAV", "PILLER", "DYR", "TØMMER", "FYR", "KLAP", "BAKKE", "BLAD", "LIME", "LYST", "SLÅ", "VID", "RAMME", "MÅL", "BED", "FOLD", "REGN", "BAR", "BLINK", "BO", "DAMP", "ENDE", "FANGE", "FED", "SKY", "HOLD", "HULE", "HØR", "SPRØD", "PRIS", "BLIND", "HELT", "HUMMER", "KALD", "FLAMME", "ALPERNE", "KAGE", "PRESSE", "STEG", "BRUD", "BROK", "ANKER", "KAJ", "SKARP", "TRÆK", "GEAR", "GODE", "GRILLE", "BAMSE", "FRANKRIG", "TAP", "PIBE", "BASSER", "VÆV", "KOST", "HOPPE", "BID", "LØB", "SNE", "FLÆKKE", "SPAR", "RUDER", "SPRINGER", "TANK", "FASTE", "PÆRE", "FULD", "SØS", "EPISODE", "JOB", "RØDE", "POOL", "SKILT", "JUICE", "KISTE", "FACADE", "FARVE", "LEVER", "LED", "RÅD", "LOD", "KILDE", "KLØ", "FLIP", "STRIBE", "TUNGE", "MASSE", "FORMEL", "FORT", "FRI", "ROSE", "FRØ", "FÆLDE", "FÅR", "GANGE", "SVALE", "GRIB", "KLØR", "SKÆG", "LEDER", "RAP", "LADE", "LEJE", "LISTE", "MAGER", "MASKE", "DRIVE", "SLAG", "KLØVER", "SPRÆKKE", "KRUMME", "KUR", "PLASTIK", "KØN", "KRAN", "ÅRE", "SLAP", "GAS", "VEST", "TRAPPE", "STOF", "LOMME", "BLOMME", "BAG", "LEGENDE", "BØRSTER", "ÆG", "TRÅD", "RUM", "URET", "SUR", "HALE", "KUVERT", "SKUFFER", "PASSER", "PAKKE", "BUKKE", "LINSE", "SNITTER", "AUTO", "BÅDE", "BØNNER", "TANG", "LUGE", "POST", "SKJOLD", "TRANG", "ARM", "VANTE", "UDE", "BEN", "RULLE", "BOKS", "TØR", "MAST", "SKUD", "KEGLE", "KLÆDE", "BUND", "NØD", "KASTE", "BOR", "KROG", "PLADE", "BLOD", "REN", "SKAT", "AND", "ÅNDER", "SLIK", "LØFTE"},
    ca = {"CALÇOT", "BOTA", "BERLÍN", "CLASSE", "APÈNDIX", "BLEDA", "CAP", "ALEMANYA", "CABINA", "BOTIFARRA", "BALENA", "COCA", "BORDA", "CAMPANA", "CACTUS", "AVIÓ", "CADIRA", "ANELL", "ADVOCAT", "BALA", "CINTA", "ANGLATERRA", "CAÇA", "CINTURÓ", "COBERTA", "AIGUA", "AIRE", "CANAL", "CARAVANA", "BOLET", "CAPGRÒS", "CENTRE", "CAPA", "CAMP", "AS", "AMPOLLA", "CASTELL", "AGENT", "CADENA", "CÀRREGA", "ÀGUILA", "BOMBA", "BLAU", "PENYA-SEGAT", "CEP", "CAU", "BOSC", "CAGANER", "BISBE", "DEU", "BANDA", "CAVALL", "AMBULÀNCIA", "CASTANYA", "CIENTÍFIC", "AMBAIXADA", "BARALLA", "CASINO", "AMÈRICA", "CARRERA", "CLOT", "ÀNGEL", "BERMUDES", "CLAU", "BLOC", "CANVI", "CARA", "CÀLCUL", "CARTA", "LLAÇ", "ANTÀRTIDA", "BESSÓ", "BATERIA", "CAPITAL", "CANYA", "BRUIXA", "BOLA", "BANC", "ÀREA", "CERCLE", "ARGENTINA", "ASTECA", "ÀFRICA", "CAQUI", "ENXANETA", "BOCA", "CENTAURE", "ARC", "AGULLA", "ARANYA", "ATLÀNTIDA", "CARRO", "CARGOL", "BARRA", "BALL", "CAIXA", "CAVALLER", "CASC", "CANGUR", "BOTÓ", "COLL", "CORDA", "ESPIA", "FRANÇA", "FOLRE", "GRALLA", "CREU", "ESTRELLA", "FITXA", "DISC", "FESTA", "GOLF", "CORONA", "FREDOLIC", "GRIPAU", "FIGURA", "CORREU", "GAMARÚS", "POU", "CUA", "GRAU", "DINOSAURE", "DENT", "DELTA", "FRANC", "BUFÓ", "ESTADI", "ENTERRAMORTS", "FOC", "DIAMANT", "ESTANY", "COTÓ", "ESCORPÍ", "DO", "GEL", "GENI", "CORNETA", "GAUDÍ", "NOU", "GRA", "FIGA", "FANTASMA", "ENTRADA", "CONTRABANDISTA", "ESPAI", "GALETA", "FURGONETA", "EGIPTE", "EMPERADOR", "CORRENT", "COLÒNIA", "GRATACEL", "CUINER", "CULLERA", "CUC", "COLUMNA", "COTXE", "CORREDOR", "GANIVET", "FUET", "FORÇA", "COMA", "CONCERT", "FONT", "GAMMA", "FLAUTA", "GEGANT", "FALANGE", "GELAT", "EUROPA", "GOTA", "FLETXA", "COPA", "DIA", "GRÈCIA", "COMPÀS", "DRAC", "EXTRATERRESTRE", "COR", "GANXO", "DAMA", "CONILL", "COCO", "CRESTA", "GAT", "EBRE", "GOS", "COP", "CODI", "ENLLAÇ", "ETIQUETA", "CROMO", "ESTACIÓ", "FORAT", "COMPOST", "FARINERA", "FALÇ", "FREQÜÈNCIA", "DIANA", "ESGLÉSIA", "MOTOR", "MÍSSIL", "MÀSCARA", "PATUFET", "LLENGUA", "MERCURI", "NIT", "VENT", "MONA", "MODEL", "MADUR", "PEL·LÍCULA", "MINA", "NIL", "MOLL", "MÀ", "MORTER", "LLEÓ", "MONTSERRAT", "LONDRES", "PASTILLA", "GUANT", "MOLLA", "PATGE", "PEÇA", "HELICÒPTER", "HOTEL", "NAN", "OLI", "MÈXIC", "NOVA YORK", "PARACAIGUDES", "NOTA", "NAU", "LLOM", "HOLLYWOOD", "PAL", "HOSPITAL", "MORT", "ORENETA", "HERBA", "MICROSCOPI", "MELIC", "PASTANAGA", "PAS", "PALMA", "MILIONARI", "MONITOR", "MARXA", "ÍNDIA", "MALTA", "PANTALLA", "ITÀLIA", "PALA", "PASTA", "LLENYA", "MAMA", "ORNITORINC", "KIWI", "ÒPERA", "ÓS", "LÍNIA", "MARCA", "PEIX", "META", "NAVALLA", "OBRA", "MUR", "ONA", "MOLA", "LLADRE", "MASSA", "MEL", "NINJA", "NUCLI", "MÒDUL", "METGE", "MALALTIA", "LLIT", "PASSIÓ", "LLUM", "LLIURA", "LÀSER", "NUS", "MOC", "MESTRE", "PARTIDA", "LIMUSINA", "GUERRA", "MARFIL", "LLUNA", "OR", "OLIMP", "MASIA", "MÀGIA", "MOSCOU", "PAPER", "ORGUE", "NEU", "MODERNISME", "PERIQUITO", "PISTA", "SÀHARA", "TAULER", "TERRA", "VIDRE", "POMA", "SAMFAINA", "SUPERHEROI", "RATPENAT", "SORT", "ULL", "PLANXA", "TERRASSA", "XOCOLATA", "SUÍS", "PLATA", "TRIBUNA", "TELESCOPI", "POP", "XARXA", "REVOLUCIÓ", "PUNT", "PRINCESA", "TAPA", "TALL", "SATÈL·LIT", "ROSA", "TEMPS", "RADI", "SANT JORDI", "POLICIA", "ROVELL", "REI", "UNICORN", "TUB", "PLATJA", "VAMPIR", "SOLDAT", "VESTIT", "SUBMARINISTA", "SET", "ROSSINYOL", "PLOM", "SABATA", "TORRE", "TORN", "ROBOT", "RONDA", "PLANTA", "PEU", "VIDA", "PORTADA", "PORTER", "PORT", "PILA", "POLZE", "PIRATA", "TROMPA", "TÒQUIO", "TEATRE", "PILAR", "PINTA", "TAULA", "TORTUGA", "TACTE", "INFERMERA", "SERRA", "VAIXELL", "SENYAL", "VERÍ", "TALP", "PISTOLA", "PUNTA", "XOC", "PINYA", "RATOLÍ", "SERP", "PIRINEUS", "TRONC", "PREMSA", "PILOT", "PENAL", "POLS", "TIÓ", "REINA", "VENUS", "PIRÀMIDE", "PEQUÍN", "ROMA", "SATURN", "PONT", "SALSA", "TARONJA", "PINGÜÍ", "SOBRE", "SIRENA", "TRUITA", "RAIG", "RULETA"},
    hu = {"BETEGSÉG", "RUHA", "SZARV", "LÉLEK", "AUTÓ", "T-REX", "SZÍV", "PILÓTA", "ÖL", "VILÁGOS", "BOLT", "TOJÁS", "KERESZT", "KÓRHÁZ", "PALACK", "SKORPIÓ", "ALMA", "RADÍR", "VÍZ", "HATÁR", "NYÚL", "ADÓ", "LABDA", "JÉG", "LŐ", "SZUPERHŐS", "MEXIKÓ", "TÁNC", "TORONY", "ANYA", "CIPŐ", "PAMUT", "PÉNZ", "ÁG", "AMERIKA", "TÉGLA", "BŐR", "INDIÁN", "LONDON", "MILLIOMOS", "PONT", "ERŐ", "KENTAUR", "BEETHOVEN", "VAD", "CSŐ", "KRÉTA", "BABA", "FOK", "JÉZUS", "MAR", "KOR", "KÉPERNYŐ", "GOMB", "KÉS", "NYIT", "KEMÉNY", "KALÓZ", "FURULYA", "HOLD", "BIRKA", "CSOKOLÁDÉ", "JÁR", "MŰ", "DENEVÉR", "MAMUT", "KÖR", "TÜSKE", "OSZLOP", "LEVEGŐ", "STADION", "TERMÉSZET", "FORMA", "BÁB", "GUMI", "CAESAR", "GYŰRŰ", "ÉLET", "VAS", "ŰR", "DOB", "ÉDES", "FIGURA", "NŐ", "RAKÉTA", "FÁKLYA", "HIDEG", "HÉT", "TÉVÉ", "TÉR", "HALÁL", "UDVAR", "HAJT", "PATKÓ", "FEDÉL", "ZEBRA", "BOSZORKÁNY", "ZÖLD", "TOLL", "SAJT", "DARU", "LÁMPA", "IDŐ", "KIRÁLY", "ALAK", "EINSTEIN", "ÜGYNÖK", "EGYENES", "FA", "MÁTYÁS", "TŰ", "SZAKÁCS", "ASZTAL", "GERINC", "SÁRKÁNY", "KONCERT", "NAPÓLEON", "VONAL", "JETI", "MACSKA", "TÖK", "NEW YORK", "SZEMÉT", "EJTŐERNYŐ", "MELEG", "HARANG", "MAJOM", "ANGLIA", "ATOM", "KORONA", "KULCS", "SZAKÍT", "HELIKOPTER", "SZÍN", "RIGÓ", "BÁLNA", "ÓRA", "OROSZLÁN", "KÖT", "TELESZKÓP", "PARK", "LAP", "CSAP", "KOCKA", "BANDA", "KAR", "HAJ", "ÁGY", "TEJ", "LÓ", "KACSACSŐRŰ", "FÖLD", "PITE", "HÚR", "SÍN", "MEZŐ", "RÓMA", "KEL", "BÁNYA", "ÚR", "SZERENCSE", "VIRÁG", "HOTEL", "SIVATAG", "TAVASZ", "MŰHOLD", "FÜL", "VITAMIN", "FEKETE", "HÓ", "OLÜMPOSZ", "CSAVAR", "MÉREG", "MOTOR", "SOR", "FŰ", "KIRÁLYNŐ", "AMAZON", "CSIRKE", "RÉPA", "CÉRNA", "SZELLEM", "KÁRPÁTOK", "GÁZ", "TÁBLA", "MER", "KÖLYÖK", "ANGYAL", "KASZINÓ", "KÖVET", "LEVES", "PIRAMIS", "KETCHUP", "EGÉR", "NÉGYZET", "PÓK", "GYÖKÉR", "ALPOK", "CSIGA", "SZÉK", "KÖNNYŰ", "TŰZ", "PART", "SHAKESPEARE", "ÖV", "ÜVEG", "PUSKA", "RULETT", "SZAKASZ", "ÜGYVÉD", "KAKTUSZ", "FAGYLALT", "MÉZ", "ISKOLA", "NYOM", "ÁLOM", "ARANY", "ANYAG", "MOSZKVA", "CSOMÓ", "SZÉL", "HOMOK", "ZSENI", "SONKA", "SZÍNHÁZ", "LÉZER", "ÉG", "KENGURU", "CÁPA", "LÉP", "BÍRÓ", "FÉREG", "MŰANYAG", "HAZA", "BERLIN", "FEJ", "HAL", "CSILLAG", "FÚJ", "TOKIÓ", "MOZI", "VÁR", "IDEGEN", "REPÜL", "POHÁR", "FORRÁS", "GYÖNGY", "PISZTOLY", "VILLA", "MALAC", "VOLT", "FUT", "KÚT", "BÚVÁR", "TETŐ", "GYÉMÁNT", "EGÉSZSÉG", "RENDŐR", "KÓD", "OPERA", "BARÁT", "MANÓ", "FAL", "AGY", "LÁZ", "PÁLYA", "NEHÉZ", "TÉRKÉP", "FOG", "TELEFON", "CHAPLIN", "ORVOS", "HERCEGNŐ", "ROBOT", "MÁSOL", "AUSZTRÁLIA", "SZÜRKE", "FELHŐ", "TANÁR", "EURÓPA", "KŐ", "ÉJSZAKA", "JEGY", "AZTÉK", "MENTŐK", "KATONA", "GAZDA", "NARANCS", "RÓZSA", "AFRIKA", "TEMPLOM", "SÖTÉT", "TISZTA", "RÁK", "BÉKA", "SZIKRA", "TEHERAUTÓ", "ZÁR", "LOCH NESS", "LÁNG", "DIÓ", "KUTYA", "KRITIKUS", "ALFÖLD", "ELEM", "HAJÓ", "TUDÓS", "NINDZSA", "ÁR", "CIRKUSZ", "ARC", "TÁNYÉR", "FÜGG", "KOPORSÓ", "ZEUSZ", "KERET", "VEZET", "TÜDŐ", "NŐVÉR", "DÉL", "ORDÍT", "OSZT", "ÚT", "SZÁJ", "BOT", "HÍD", "LÁDA", "TORTA", "FŰSZER", "BOMBA", "NADRÁG", "ÁRNYÉK", "OLAJ", "CSEMPÉSZ", "BIKA", "SZEM", "AJTÓ", "SÍR", "MAGYAR", "INDIA", "CSÖPP", "LÁB", "TÖRPE", "SZATURNUSZ", "KENYÉR", "BANK", "CSIZMA", "TAXI", "NAP", "JOGÁSZ", "MEDVE", "HATALOM", "BANÁN", "HÁLÓ", "DUNA", "MÉR", "VITORLA", "TOLVAJ", "HÁBORÚ", "KESZTYŰ", "ERDŐ", "LEVÉL", "ÁRU", "BENZIN", "GITÁR", "KÖZPONT", "KÉM", "KÖRTE", "LOVAG", "KORBÁCS", "KÁRTYA", "HOLLYWOOD", "PINGVIN", "KARD", "HÓEMBER", "PEKING", "JÁTÉK", "HULLÁM", "APRÓ", "TÁVOLSÁG", "EGYSZARVÚ", "SZÁM", "GÖRÖG", "PAPÍR", "CSATORNA", "KEREK", "UJJ", "SZOKNYA", "SAS", "MIKROSZKÓP", "SZÉN", "KORMÁNY", "MESE", "HIMALÁJA", "POLIP", "ÓRIÁS", "KÉZ", "PETŐFI", "LYUK", "ATLANTISZ"},
    ko = {"바다","용.","전쟁","꿀","폭탄","카지노","도시","토성","외계인","채찍","남극","눈사람","공연","초콜릿","전투기","부자","공룡.","해적","새우","펭귄","거미","미사일","국회","총","질병","스파이","공주","천재","도둑","오페라","기사","경기장","리무진","유령","트럭","아이스크림","레이저","죽음","병원","구급차","문어","헬리콥터","캥거루","현미경","괴물","슈퍼히어로","망원경","낙하산","오리너구리","올림포스","위성","천사","로봇","유니콘","마녀","인재","잠수부","독","다리","불","책상","고래","달","물고기","의사","교회","벨트","간호사","바람","사자","눈.","공기","토끼","은행","풀.","드레스","난쟁이","숲","차","장갑","사과","기름","요리","곰.","고양이","인생","운.","거인","얼굴","해변","호텔","물.","종이","벌레","변호사","과학자","춤","당근","케첩","밤","면","발","쥐","칼","극장","경찰","배","조종사","지문","선생님","병","방학","왕","유리","여왕","이","개","말","신발","의자","왕관","얼음","금.","수저","시간","피리","촛불","비","상아","군인","피라미드","끈","별","반지","뿔","마음","벽돌","실","바늘","책","뚜껑","보드","스위치","테이프","놀이","주름","단추","입","표","손","침대","벽","탑","카드","교복","다이아몬드","집","그물","포인트","시험","접시","구멍","벨","힘","열쇠","엔진","파도","시내","머리","막대기","방패","사고","반죽","못","코드","동그라미","지름","파이프","뉴욕","호주","버뮤다","도쿄","이집트","서울","거북","러시아","캐나다","이순신","할리우드","그리스","로마","히말라야","호랑이","체코","키위","독일","국가","미국","대한민국","영국","도장","아프리카","까치","백두산","은하수","삼국지","미소","유럽","단풍","파리","파이","필리핀","철","정도","분수","전갈","알프스","인도","모자","프랑스","고장","고개","봄","요정","단지","굴.","골.","우리","독수리","감","멕시코","나비","신","소고기","가을","기도","기자","대접","목성","김","배터리","주사위","공포","비행","팬","기미","절벽","청소","빗자루","방울","강냉이","쓰레기","모임","동안","커피","그림자","수도","사이","무대","대사","도로","요원","감기","때","여행","달팽이","동화","숙제","꼬리","이사","수입","박쥐","복","마당","기타","문제","매장","대출","위","전화","악수","고슴도치","공원","택배","선수","새","운동","술","사원","절","부대","시장","역","고리","밴드","땅콩","장비","방","팔","메일","타자","바위","조사","신부","사마귀","산","신사","벌","공.","오리","이성","주문","삼각","반주","수성","작업","수면","시계","잠자리","만화","사진","주사","창","호수","신장","종","정상","빛","소설","모델","초대","매","통화","돈","연기","전설","행사","자","경기","지방","재판","경주","라면","해","지각","게임","향수","정원","임금","지구","휴지","장난","가스","텔레비전","대리","파일","귀뚜라미","우물","부채","직원","복권","가장","일","프로","아마존","우주","숫자","사기","중국","길","돌","가슴","침","충전","지하","기차","비행기","피아노","상","골뱅이","하드","소리","전기","영화","등","구경","장기","사리","팔자","뿌리","지도","열","점","부인","포기","바지","주장","코","수심","고수"},
    sk = {"HODINKY","ZIMA","SLOVÁK","RADOSŤ","DUCH","PARNÍK","PAVÚK","NEMECKO","TELEVÍZIA","KVAPEĽ","CICAVEC","TALIANSKO","MAČKA","VLNA","OBOR","TUČNIAK","HORA","PEC","LÍŠKA","STENA","SPEVÁK","ZUB","SESTRA","DRAK","LOCHNESKA","KAPUSTA","JADRO","IHLA","KNIŽNICA","SLNKO","KRÍŽ","RUŽA","DŽUNGĽA","PARK","MIER","PLÁŠŤ","JAZDEC","PREZIDENT","ANGLICKO","MRAKODRAP","JESEŇ","HVIEZDA","OBÁLKA","STOPKY","ZRKADLO","MELÓN","TRÚBA","CERUZKA","LÚKA","SVETLO","MUCHOTRÁVKA","VEŽA","ORECH","BUNKA","HUDBA","TELEFÓN","BASA","KOŠEĽA","AMERIČAN","RYS","SMOLA","CINTORÍN","CHLIEB","ŠKOLA","MRAVEC","KĽÚČ","MESTO","VETERNÍK","DÁŽĎ","HUBA","KRČMA","CHOROBA","SUKŇA","PLOT","GUĽA","STRIEBRO","UMELEC","PÍLA","ŽERIAV","DÝKA","BRATISLAVA","UTERÁK","CHROBÁK","ČECH","KRAVA","RUS","ČELO","PÚŠŤ","HÁK","VÍLA","VEDEC","FYZIK","DOM","ČOKOLÁDA","OROL","OKNO","VÁHA","ŽELEZO","HEREC","LÁVA","BANKÁR","JABĹČKO","ČERT","ZADOK","UPÍR","OSTROV","ROPA","PLAST","PIVO","FILM","HREBEŇ","SEDMOKRÁSKA","VIEDEŇ","ŠPAGETA","KENTAUR","VOJVODCA","SLON","AMERIKA","DIEŤA","ZOMBIA","UČITEĽ","ZÁKON","KANADA","STRANA","KAMARÁT","CESTA","PROGRAMÁTOR","NOHA","ŠALÁT","RAKETA","PANNA","YETTI","JAZYK","BETÓN","PRINCEZNÁ","PAPUČA","ÚRAD","BERLÍN","RÁDIO","AUTOBUS","MATKA","MOTORKA","HLAVA","SMRŤ","LIST","MRÁZ","TRPASLÍK","GRÉCKO","TULIPÁN","VÍRUS","KROKODÍL","UHLIE","MÄSO","VZDUCH","LOPTA","KORUNA","KLOKAN","VIDLIČKA","PAPAGÁJ","ĽAD","HLINA","DVERE","POČÍTAČ","VODA","STROM","DUB","CHOBOTNICA","JAZERO","KLADIVO","ŽEHLIČKA","REBRO","PODVODNÍK","SEDLIAK","KLAVÍR","KABÁT","ŠOŠOVIČKA","ČÍNA","NEPRIATEĽ","OKULIARE","VODIČ","PALICA","ROZPRÁVKA","LOKOMOTÍVA","BRUCHO","KER","ZEMIAK","MEČ","TANIER","ANJEL","OHEŇ","HLINÍK","TLAČIDLO","POVRAZ","KYVADLO","REŤAZ","KOZA","KNEDĽA","LOPATA","LIMONÁDA","VÄZEŇ","VEĽRYBA","AUSTRÁLIA","MOTÝLIK","BIOLÓG","KOMÍN","KOCKA","KVET","TOPOĽ","ŠŤUKA","GITARA","LAMPA","DOKTOR","LETO","LÁSKA","JAR","SRDCE","KURA","UCHO","RIEKA","OMÁČKA","ROH","ZÁMOK","KLAUN","SKRUTKA","BANÁN","VENUŠA","KAKTUS","MAĎAR","STRELEC","LÁTKA","ROLA","KORYTNAČKA","SKLO","OKO","PAPIER","HRNIEC","KARTA","MLIEKO","KOBYLKA","CESTA","PLYN","POLICAJT","ATLÉT","DELO","NEMOCNICA","PLASTELÍNA","PODNIKATEĽ","VRCHOL","POÉZIA","PREDAVAČ","NOC","ZEBRA","POMARANČ","ZÁKUSOK","KOSA","ŽOBRÁK","SUPERHRDINA","MARS","FIGÚRKA","KLÁVESNICA","PARADAJKA","ČAPICA","ŠPANIEL","PIŠTOĽ","DÉMON","AFRIKA","VAJCE","VTÁKOPYSK","PAS","NETOPIER","PRÁČKA","ŠŤASTIE","ZEM","KEFA","KOLOBEŽKA","KOŠICE","BRADA","BÁSNIK","HOLANĎAN","JEDNOROŽEC","AUTO","SEKERA","POLE","NÔŽ","BRAZÍLIA","BRÁNA","PÓL","JEŽKO","CIRKUS","OTEC","VODNÍK","KOREŇ","FRANCÚZSKO","LEV","BRAT","ČEREŠŇA","PEKING","ČARODEJNÍK","KNIHA","FUTBALISTA","STOLIČKA","KAMIÓN","FLAUTA","LIETADLO","VOJNA","PRACH","LES","LUPIČ","SVIEČKA","KÔŠ","DIAMANT","KOZMONAUT","JASKYŇA","DEDINA","ROBOTNÍK","MEDVEĎ","NOHAVICE","ŠÍPKA","HLAS","FĽAŠA","CUKOR","LOS","PANÁK","SMREK","POLIEVKA","HRAD","VIEČKO","ŠKRIATOK","BUBLINA","DRÔT","VOZ","VESMÍR","ŽRALOK","SNEH","SLIVKA","PRASA","ÚDOLIE","KLINEC","KOLENO","VIETOR","KAPOR","SPRÁVA","PANVA","GUMA","NOS","PAPRIKA","PALEC","DINOSAURUS","MATEMATIK","SOĽ","DREVO","KORENIE","FILOZOF","KINO","SNEŽIENKA","JAŠTERICA","KAMEŇ","KÚZLO","MÚKA","LYŽICA","ORGÁN","PLACKA","MESIAC","HRA","SKRUTKOVAČ","PONOŽKA","VLAK","VIERA","SYR","PES","KRÁĽ","KMEŇ","PARÍŽ","STANICA","ZVONČEK","ŠKORPIÓN","OVCA","MYŠ","MOSKVA","SALÁMA","OBCHOD","KOHÚTIK","TRÁVA","RUČIČKA","TIGER","CESTOVATEĽ","PLANÉTA","MORE","LONDÝN","PRÁCA","ÁZIA","KLIEŠTE","MRKVA","PRSTEŇ","LASER","KOMÉTA","ZLATO","KLOBÚK","POPOL","HOKEJISTA"},
    is = {"RÚLLETTA", "DREKI", "STRÍÐ", "HUNANG", "SPRENGJA", "SPILAVÍTI", "SKÝJAKLJÚFUR", "SATÚRNUS", "GEIMVERA", "SVIPA", "SUÐURPÓLLINN", "SNJÓKALL", "TÓNLEIKAR", "SÚKKULAÐI", "ÞOTA", "AUÐMAÐUR", "RISAEÐLA", "SJÓRÆNINGI", "RÚSÍNA", "MÖRGÆS", "KÖNGULÓ", "FLUGSKEYTI", "SENDIRÁÐ", "SKAMMBYSSA", "SJÚKDÓMUR", "NJÓSNARI", "PRINSESSA", "SNILLINGUR", "ÞJÓFUR", "ÓPERA", "RIDDARI", "LEIKVANGUR", "LIMMÓSÍNA", "DRAUGUR", "ÍS", "SENDIBÍLL", "LEYSIGEISLI", "DAUÐI", "SJÚKRAHÚS", "SJÚKRABÍLL", "KOLKRABBI", "ÞYRLA", "KENGÚRA", "SMÁSJÁ", "TRÖLL", "OFURHETJA", "STJÖRNUKÍKIR", "FALLHLÍF", "BREIÐNEFUR", "ÓLYMPOS", "GERVIHNÖTTUR", "ENGILL", "VÉLMENNI", "ÁLFAMÆR", "NORN", "PRESTUR", "KAFARI", "EITUR", "BRÚ", "ELDUR", "BORÐ", "HVALUR", "BAR", "TÚR", "LÆKNIR", "KIRKJA", "SMEKKUR", "SJÚKRALIÐI", "VINDUR", "LJÓN", "AUGA", "LOFT", "KANÍNA", "BANKI", "GRAS", "KJÓLL", "DVERGUR", "SKÓGUR", "BÍLL", "HANSKI", "EPLI", "OLÍA", "KOKKUR", "BJÖRN", "KÖTTUR", "LÍF", "HEPPNI", "RISI", "ANDLIT", "STRÖND", "HÓTEL", "VATN", "PAPPÍR", "ORMUR", "LÖGMAÐUR", "VÍSINDAMAÐUR", "DANS", "GULRÓT", "TÓMATSSÓSA", "NÓTT", "BÓMULL", "FÓTUR", "MÚS", "HNÍFUR", "LEIKHÚS", "LÖGREGLA", "SKIP", "FLUGMAÐUR", "ÞUMALL", "KENNARI", "FLASKA", "DAGUR", "KÓNGUR", "GLER", "DROTTNING", "TÖNN", "HUNDUR", "HESTUR", "SKÓR", "STÓLL", "KÓRÓNA", "KLAKI", "GULL", "GAFFALL", "TÍMI", "FLAUTA", "KYNDILL", "SNJÓR", "FÍLABEIN", "HERMAÐUR", "PÍRAMÍDI", "STRENGUR", "STJARNA", "PLANKI", "HORN", "HJARTA", "BLOKK", "SLANGA", "NÁL", "LÍNA", "SAGA", "MÆLA", "ROFI", "SKJÁR", "LEIKUR", "BENDILL", "HNAPPUR", "MUNNUR", "MERKI", "HÖND", "RÚM", "VEGGUR", "KORT", "TURN", "BINDI", "DEMANTUR", "KROSS", "NET", "PUNKTUR", "SKARÐ", "PLATA", "HOLA", "BJALLA", "MÁTTUR", "LYKILL", "VÉL", "ALDA", "KRÓNA", "HÖFUÐ", "STÖNG", "MIÐJA", "HRYNJA", "MAUK", "GADDUR", "KÓÐI", "HRINGUR", "HLEKKUR", "PÍPA", "NEW YORK", "ÁSTRALÍA", "BJÖRGVIN", "TÓKÍÓ", "EGYPTALAND", "LONDON", "GRASKER", "MOSKVA", "KANADA", "LAXNESS", "HOLLYWOOD", "GRIKKLAND", "RÓM", "NEPAL", "KARATE", "ÍSLAND", "KÍVÍ", "ÞÝSKALAND", "RÍKI", "AMERÍKA", "ATLANTIS", "ENGLAND", "VERÐ", "SMELLUR", "TUSKA", "REFUR", "KARRÍ", "SJÓMAÐUR", "FJALL", "HNAKKI", "HLÍFAR", "KLIPPING", "HLYNUR", "AFRÍKA", "ÞRÖSTUR", "FRAKKLAND", "SKEIFA", "BÚÁLFUR", "MEXÍKÓ", "ALPARNIR", "SPORÐDREKI", "BERLÍN", "INDLAND", "EVRÓPA", "PEKING", "ÖRN", "GRÝLA", "HVER", "FYLGJA", "BAKA", "SMYGLARI", "Á", "STILLING", "MÁL", "MYLLA", "AZTEKAR", "MÓT", "SKÆRI", "VASI", "HÚNN", "FAX", "GALLI", "GREIÐSLA", "FÉ", "SKOT", "STYRKUR", "HÁR", "LANGA", "BELTI", "KÁPA", "VÖR", "SKINKA", "EGG", "ÖR", "TAFLA", "BROT", "SERÍA", "STRAUMUR", "VERA", "TALA", "VERJA", "DÚKKA", "MAT", "SKER", "BÆLI", "FÆRI", "HELLA", "KÝLI", "RASPUR", "VÍSA", "APA", "SKAPA", "TUNGL", "PÆLA", "FISKUR", "LAUGA", "PELI", "BLAÐRA", "BJÓR", "MALLI", "EÐLA", "LISTA", "SÚLA", "SYNDA", "FLAK", "DEKK", "GRÝTA", "SPAÐI", "TJALD", "SKARFUR", "VOG", "DELLA", "DRÍFA", "FALDI", "HAGL", "GELLA", "FLOKKAR", "PERA", "RASSGAT", "SKÚR", "KLÁR", "KOLLUR", "GRÁÐA", "RÓFA", "SKEIÐ", "STAFUR", "HLÝRI", "BRÁ", "BRÚN", "AUR", "SÆRA", "LAK", "KJÖLUR", "ÆR", "RÍÐA", "SUND", "ÖND", "FLÉTTA", "ÁST", "HEKLA", "MARS", "RÉTTUR", "DEILA", "SKALLA", "BELGUR", "ASNI", "VAXA", "LEGGJA", "SEKKUR", "SKORA", "SKUTLA", "KERTI", "SKOTTA", "SPOTTA", "BOLTA", "SKELLA", "STRÁ", "HAMAR", "GRÆÐA", "HRÆÐA", "SPIL", "SKÝLA", "NAGLI", "SMOKKUR", "BALI", "LOKKA", "ROKK", "SKOKK", "PERLA", "KVALIR", "HRÍÐ", "KVER", "ERTA", "SÍÐA", "LUND", "BLIKA", "BAKKI", "POTTUR", "KANNA", "FLÍS", "SNÚÐUR", "BJÖRK", "RIST", "MALA", "FJÖÐUR", "SPÓLA", "SPÝTA", "BYTTA", "NEMI", "BRUNA", "KVÍSL", "AUSA", "BOLUR", "FÖT", "HRÍFA", "STÍLL", "LÆÐA", "GEIMUR", "PILLA", "SKART", "BRÚÐUR", "BORGA", "VÍN", "OFN", "LÚÐUR", "KRINGLA", "FLEYTA", "SKEINA", "DÝR", "BOX", "HARPA", "KLÓR", "LEST", "HLJÓÐ", "BAK", "FILMA", "ARFI", "NÓTA", "KRANI", "BÓLA", "KEILA", "RJÓÐUR"},
    gr = {"ΡΟΥΛΕΤΑ", "ΒΕΛΟΝΑ", "ΧΟΛΥΓΟΥΝΤ", "ΡΕΥΜΑ", "ΠΡΟΣΩΠΟ", "ΚΕΝΤΑΥΡΟΣ", "ΤΥΠΟΣ", "ΠΙΤΑ", "ΧΟΡΟΣ", "ΜΟΝΟΚΕΡΩΣ", "ΚΑΤΑΡΡΑΚΤΗΣ", "ΣΚΥΛΟΣ", "ΤΟΝΟΣ", "ΠΛΟΙΟ", "ΣΗΜΕΙΟ", "ΣΕΙΣΜΟΣ", "ΚΛΕΦΤΗΣ", "ΣΚΝΙΠΑ", "ΘΑΝΑΤΟΣ", "ΚΑΤΗΓΟΡΙΑ", "ΚΑΖΙΝΟ", "ΨΑΡΙ", "ΣΩΛΗΝΑΡΙΟ", "ΛΟΝΔΙΝΟ", "ΒΑΘΜΟΣ", "ΣΠΟΝΤΑ", "ΦΛΟΓΕΡΑ", "ΑΓΩΓΟΣ", "ΛΑΘΡΕΜΠΟΡΟΣ", "ΤΡΑΠΕΖΙΤΗΣ", "ΠΑΓΟΣ", "ΑΤΟΜΟ", "ΒΑΣΙΛΙΑΣ", "ΤΕΛΟΣ", "ΒΑΜΒΑΚΙ", "ΤΖΙΝ", "ΣΠΕΙΡΑ", "ΑΚΡΩΤΗΡΙΟ", "ΑΣΤΕΡΙ", "ΑΝΤΙΣΤΑΣΗ", "ΦΩΤΙΑ", "ΔΡΑΚΟΣ", "ΝΕΑ ΥΟΡΚΗ", "ΜΥΤΗ", "ΤΡΑΠΕΖΙ", "ΧΑΡΗ", "ΦΑΛΑΙΝΑ", "ΑΡΧΗ", "ΦΕΓΓΑΡΙ", "ΤΡΟΙΑ", "ΓΙΑΤΡΟΣ", "ΔΑΧΤΥΛΙΔΙ", "ΑΥΣΤΡΑΛΙΑ", "ΓΛΩΣΣΑ", "ΣΚΟΥΛΗΚΙ", "ΕΚΚΛΗΣΙΑ", "ΤΣΙΧΛΑ", "ΣΥΛΛΗΨΗ", "ΤΥΧΗ", "ΠΙΑΤΟ", "ΠΑΓΟΒΟΥΝΟ", "ΠΑΡΑΜΑΝΑ", "ΠΛΑΚΑ", "ΚΑΡΟΤΟ", "ΠΟΛΟΣ", "ΣΥΝΤΑΞΗ", "ΥΠΗΡΕΣΙΑ", "ΑΣΤΥΝΟΜΙΑ", "ΕΤΑΙΡΕΙΑ", "ΑΔΕΙΑ", "ΚΡΗΤΗ", "ΠΑΡΑΣΤΑΣΗ", "ΑΛΟΓΟ", "ΠΕΡΙΘΩΡΙΟ", "ΛΟΓΟΣ", "ΠΟΛΕΜΟΣ", "ΠΡΑΣΙΝΟ", "ΒΡΑΧΙΟΛΙ", "ΠΛΑΣΜΑ", "ΚΕΡΑΤΟ", "ΦΕΤΑ", "ΤΟΚΥΟ", "ΒΟΥΛΑ", "ΣΦΗΚΑ", "ΓΕΦΥΡΑ", "ΝΟΣΟΚΟΜΑ", "ΑΝΕΚΔΟΤΟ", "ΚΑΡΔΙΑ", "ΜΟΛΥΒΙ", "ΑΙΓΥΠΤΟΣ", "ΓΡΑΜΜΑ", "ΑΝΕΜΟΣ", "ΡΟΔΑ", "ΛΙΟΝΤΑΡΙ", "ΒΟΜΒΑ", "ΠΑΠΙΑ", "ΦΡΥΔΙ", "ΛΑΣΤΙΧΟ", "ΑΕΡΑΣ", "ΑΛΕΠΟΥ", "ΓΡΑΜΜΗ", "ΚΥΒΟΣ", "ΣΥΝΤΑΓΜΑ", "ΠΑΡΙΣΙ", "ΞΥΛΟ", "ΟΥΡΑΝΟΞΥΣΤΗΣ", "ΜΕΤΑΦΟΡΑ", "ΚΑΠΕΛΟ", "ΔΙΑΒΑΤΗΡΙΟ", "ΑΚΤΙΝΑ", "ΚΡΟΝΟΣ", "ΕΛΙΑ", "ΕΥΘΕΙΑ", "ΜΟΣΧΑ", "ΣΥΝΔΕΣΜΟΣ", "ΤΡΑΠΕΖΑ", "ΣΠΙΡΤΟ", "ΕΞΩΓΗΙΝΟΣ", "ΤΟΞΟ", "ΓΡΑΣΙΔΙ", "ΕΙΚΟΝΑ", "ΣΚΕΠΑΣΜΑ", "ΚΑΒΟΥΡΑΣ", "ΒΡΑΖΙΛΙΑ", "ΚΑΜΠΑΝΑ", "ΜΑΣΤΙΓΙΟ", "ΚΟΥΚΛΑ", "ΑΝΤΑΡΚΤΙΚΗ", "ΣΤΕΚΑ", "ΦΟΡΕΜΑ", "ΚΑΛΑΘΙ", "ΤΑΜΠΛΟ", "ΣΑΙΞΠΗΡ", "ΜΠΑΝΙΟ", "ΝΑΝΟΣ", "ΔΙΑΚΟΠΤΗΣ", "ΟΡΓΑΝΟ", "ΚΥΠΡΟΣ", "ΓΥΡΟΣ", "ΧΙΟΝΑΝΘΡΩΠΟΣ", "ΚΟΛΛΑ", "ΠΑΞΙΜΑΔΙ", "ΔΑΣΟΣ", "ΟΥΡΑΝΟΣ", "ΟΘΟΝΗ", "ΠΟΔΙ", "ΡΩΜΗ", "ΚΟΜΜΑ", "ΣΥΝΑΥΛΙΑ", "ΑΥΤΟΚΙΝΗΤΟ", "ΠΝΕΥΜΑ", "ΕΡΓΟ", "ΣΤΟΙΧΕΙΟ", "ΙΜΑΛΑΪΑ", "ΤΙΤΛΟΣ", "ΣΟΚΟΛΑΤΑ", "ΔΕΙΚΤΗΣ", "ΓΑΝΤΙ", "ΜΟΝΤΕΛΟ", "ΚΑΡΦΙΤΣΑ", "ΛΕΠΤΟ", "ΝΙΝΤΖΑ", "ΚΟΡΑΚΙ", "ΚΕΡΒΕΡΟΣ", "ΠΡΑΚΤΟΡΑΣ", "ΜΗΛΟ", "ΚΟΚΟΡΑΣ", "ΡΟΜΠΑ", "ΒΗΜΑ", "ΜΕΣΟΓΕΙΟΣ", "ΠΕΤΡΑ", "ΕΚΑΤΟΜΜΥΡΙΟΥΧΟΣ", "ΓΡΑΦΕΙΟ", "ΠΕΤΡΕΛΑΙΟ", "ΖΥΓΟΣ", "ΣΤΟΜΑ", "ΧΕΙΛΟΣ", "ΚΑΤΣΙΚΑ", "ΜΟΡΙΟ", "ΔΕΙΝΟΣΑΥΡΟΣ", "ΤΟΥΑΛΕΤΑ", "ΜΑΓΕΙΡΑΣ", "ΚΑΛΑΜΙ", "ΤΑΜΠΕΛΑ", "ΚΟΥΖΙΝΑ", "ΓΕΡΜΑΝΙΑ", "ΚΑΡΧΑΡΙΑΣ", "ΠΕΙΡΑΤΗΣ", "ΦΤΕΡΟ", "ΓΟΥΝΑ", "ΣΧΕΔΙΟ", "ΤΡΟΜΠΕΤΑ", "ΚΕΦΑΛΑΙΟ", "ΓΑΤΑ", "ΣΚΕΛΕΤΟΣ", "ΠΙΓΚΟΥΙΝΟΣ", "ΤΑΞΗ", "ΖΩΗ", "ΔΟΝΤΙ", "ΑΡΑΧΝΗ", "ΚΛΩΣΤΗ", "ΜΑΤΙ", "ΔΗΛΗΤΗΡΙΟ", "ΒΑΣΗ", "ΠΥΡΑΜΙΔΑ", "ΖΩΝΗ", "ΔΥΤΗΣ", "ΚΟΡΗ", "ΣΤΡΑΤΙΩΤΗΣ", "ΓΡΥΛΟΣ", "ΔΑΚΡΥ", "ΑΣΦΑΛΕΙΑ", "ΙΑΠΩΝΙΑ", "ΑΓΚΥΡΑ", "ΝΕΚΡΟΘΑΦΤΗΣ", "ΚΕΡΙ", "ΕΒΕΝΟΣ", "ΚΟΥΜΠΙ", "ΜΑΓΙΣΣΑ", "ΠΛΑΝΗ", "ΧΙΟΝΙ", "ΙΣΤΟΡΙΑ", "ΠΥΡΑΥΛΟΣ", "ΚΛΙΜΑ", "ΓΙΓΑΝΤΑΣ", "ΣΤΑΔΙΟ", "ΠΡΕΣΒΕΙΑ", "ΓΟΠΑ", "ΠΑΡΑΛΙΑ", "ΦΟΙΝΙΚΑΣ", "ΧΕΡΙ", "ΔΙΣΚΟΣ", "ΑΜΕΡΙΚΗ", "ΦΑΙΝΟΜΕΝΟ", "ΤΟΥΦΕΚΙ", "ΤΑΙΝΙΑ", "ΞΕΝΟΔΟΧΕΙΟ", "ΣΦΑΙΡΑ", "ΑΣΘΕΝΕΙΑ", "ΜΕΤΩΠΟ", "ΝΕΡΟ", "ΤΙΜΗ", "ΚΡΕΒΑΤΙ", "ΧΡΥΣΟ", "ΑΤΛΑΝΤΙΔΑ", "ΛΑΓΟΣ", "ΚΑΤΑΣΚΟΠΟΣ", "ΠΡΟΣΒΟΛΗ", "ΧΑΡΤΙ", "ΑΛΥΣΙΔΑ", "ΠΡΙΓΚΙΠΙΣΣΑ", "ΠΟΝΤΙΚΙ", "ΕΔΑΦΟΣ", "ΜΑΡΤΥΡΑΣ", "ΤΟΙΧΟΣ", "ΠΑΛΑΜΗ", "ΑΓΓΛΙΑ", "ΣΚΟΠΟΣ", "ΙΔΙΟΦΥΙΑ", "ΠΕΖΟΣ", "ΔΙΚΗΓΟΡΟΣ", "ΓΕΡΑΝΟΣ", "ΟΠΕΡΑ", "ΠΡΩΙΝΟ", "ΕΠΙΣΤΗΜΟΝΑΣ", "ΦΡΑΓΜΑ", "ΙΠΠΟΤΗΣ", "ΔΙΑΒΗΤΗΣ", "ΚΕΤΣΑΠ", "ΠΑΠΑΓΑΛΟΣ", "ΓΗΠΕΔΟ", "ΚΑΡΠΟΣ", "ΝΥΧΤΑ", "ΚΕΝΤΡΟ", "ΛΙΜΟΥΖΙΝΑ", "ΜΟΙΡΑ", "ΠΑΤΟΥΣΑ", "ΟΥΣΙΑ", "ΠΥΡΓΟΣ", "ΝΤΑΜΑ", "ΜΕΛΙ", "ΒΟΔΙ", "ΦΑΝΤΑΣΜΑ", "ΜΙΖΑ", "ΚΑΛΩΔΙΟ", "ΠΕΝΑ", "ΤΑΥΤΟΤΗΤΑ", "ΓΛΟΜΠΟΣ", "ΦΟΡΤΗΓΟ", "ΔΙΕΥΘΥΝΣΗ", "ΜΑΧΑΙΡΙ", "ΣΚΗΝΗ", "ΓΡΑΒΑΤΑ", "ΤΖΑΚΙ", "ΑΦΡΙΚΗ", "ΚΛΕΙΔΙ", "ΠΑΓΩΤΟ", "ΠΕΡΙΒΑΛΛΟΝ", "ΘΕΑΤΡΟ", "ΣΗΜΑΔΙ", "ΚΩΔΙΚΟΣ", "ΙΟΣ", "ΛΕΪΖΕΡ", "ΦΟΥΡΝΟΣ", "ΠΙΛΟΤΟΣ", "ΠΑΣΤΑ", "ΔΙΑΜΑΝΤΙ", "ΦΩΚΙΑ", "ΠΕΚΙΝΟ", "ΟΥΡΑ", "ΝΟΣΟΚΟΜΕΙΟ", "ΣΕΙΡΗΝΑ", "ΑΝΤΙΧΕΙΡΑΣ", "ΣΥΜΦΩΝΙΑ", "ΔΙΑΣΤΑΥΡΩΣΗ", "ΚΟΤΑ", "ΙΝΔΙΑ", "ΛΕΙΤΟΥΡΓΙΑ", "ΑΣΘΕΝΟΦΟΡΟ", "ΦΥΛΛΟ", "ΔΙΧΤΥ", "ΓΥΑΛΙ", "ΔΑΣΚΑΛΟΣ", "ΡΑΔΙΟ", "ΧΤΑΠΟΔΙ", "ΕΚΘΕΣΗ", "ΜΠΟΥΚΑΛΙ", "ΦΟΡΜΑ", "ΤΡΥΠΑ", "ΚΑΛΟΓΕΡΟΣ", "ΚΟΥΔΟΥΝΙ", "ΟΡΟΣ", "ΗΜΕΡΑ", "ΛΟΓΑΡΙΑΣΜΟΣ", "ΕΛΙΚΟΠΤΕΡΟ", "ΚΥΚΛΟΣ", "ΣΠΟΥΡΓΙΤΙ", "ΦΑΣΗ", "ΚΑΓΚΟΥΡΩ", "ΦΑΚΕΛΟΣ", "ΠΟΤΗΡΙ", "ΠΛΥΝΤΗΡΙΟ", "ΔΥΝΑΜΗ", "ΔΙΑΣΤΗΜΑ", "ΜΙΚΡΟΣΚΟΠΙΟ", "ΚΑΡΤΑ", "ΒΑΣΙΛΙΣΣΑ", "ΦΙΓΟΥΡΑ", "ΛΟΥΚΕΤΟ", "ΤΡΟΧΟΣ", "ΥΠΕΡΗΡΩΑΣ", "ΜΑΖΑ", "ΣΑΓΟΝΙ", "ΠΕΤΑΛΟΥΔΑ", "ΜΗΧΑΝΗ", "ΦΕΣΙ", "ΓΑΛΛΙΑ", "ΜΟΝΑΔΑ", "ΠΑΠΟΥΤΣΙ", "ΤΕΤΡΑΓΩΝΟ", "ΠΕΤΑΛΟ", "ΦΙΛΜ", "ΤΗΛΕΣΚΟΠΙΟ", "ΥΠΟΘΕΣΗ", "ΠΑΛΙΡΡΟΙΑ", "ΡΙΖΑ", "ΞΩΤΙΚΟ", "ΚΥΜΑ", "ΚΑΡΕΚΛΑ", "ΠΙΝΑΚΑΣ", "ΚΑΣΤΡΟ", "ΑΕΤΟΣ", "ΑΛΕΞΙΠΤΩΤΟ", "ΝΟΤΑ", "ΠΛΑΤΥΠΟΔΑΣ", "ΚΥΨΕΛΗ", "ΣΤΕΜΜΑ", "ΛΟΧ ΝΕΣ", "ΜΟΥΤΡΟ", "ΠΑΣΑΛΟΣ", "ΕΥΡΩΠΗ", "ΠΥΡΣΟΣ", "ΠΡΟΛΗΨΗ", "ΡΟΜΠΟΤ", "ΚΕΦΑΛΙ", "ΟΛΥΜΠΟΣ", "ΚΡΕΜΑ", "ΣΚΟΡΠΙΟΣ", "ΧΡΟΝΟΣ", "ΤΑΠΑ", "ΑΓΓΕΛΟΣ", "ΑΛΠΕΙΣ", "ΚΑΝΟΝΙ", "ΠΗΡΟΥΝΙ", "ΠΛΑΤΕΙΑ", "ΔΟΡΥΦΟΡΟΣ", "ΚΑΡΦΙ", "ΒΕΡΟΛΙΝΟ", "ΠΡΟΣΚΡΟΥΣΗ", "ΧΡΥΣΑΦΙ"}
}

translations = {
    en = {
        red = "RED",
        blue = "BLUE",
        blueTurn = "<b><p align='center'><font color='#ffffff'>BLUE TEAM'S TURN </b></p></font>",
        redTurn = "<b><p align='center'><font color='#ffffff'>RED TEAM'S TURN</b></p></font>",
        opponentSetting = "<p align='right'><font size='10' color='#FFFFFF'>CONFIRM OPPONENT'S CLUE</font></p>",
        timeSetting = "<p align='right'><font size='10' color='#FFFFFF'>TIME LIMIT</font></p>",
        startButton = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>START</font></p>",
        joinButton = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>JOIN</a></b></font></p>",
        clueConfirmation = "<p align='center'>The opponent's clue is <b>%s</b> and <b>%d</b> do you confirm it?</p>",
        clueChecking = "<p align='center'>%s is checking the opponent's clue..</p>",
        clueNumberError = "The clue number can't be greater than remaining cards count.",
        clueInfo = "The clue is <b>%s</b> and <b>%d</b> times.",
        clueGameLog = "<b><font color='%s'>%s</b></font>'s clue is <font color='%s'><b>%s</b></font> and <b><font color='%s'>%d</b></font> times.",
        roomAdminInfo = "The room admin can change the settings and start the game at any time.",
        restartedGame = "<R> %s restarted the game. </R>",
        thinking = "<font color='#000000'><b> Thinking... </b></font>",
        blackGameOver = "<b><p align='center'><font color='#ffffff'>%s TEAM SELECTED BANNED WORD AND LOST THE GAME! </b></p></font>",
        redTeamWon = "<b><p align='center'><font color='#ffffff'>RED TEAM WON! </b></p></font>",
        blueTeamWon = "<b><p align='center'><font color='#ffffff'>BLUE TEAM WON! </b></p></font>",
        validClue = "<p align='center'>Clue is valid! <b>%s</b> team's turn.</p>",
        invalidClue = "<p align='center'>Clue is invalid! You can try <b><R>%d</R></b> more times. </p>",
        getRoomAdmin = "<font size='9'><a href='event:roomAdmin'><b>GET ROOM ADMIN</b></a>",
    },

    tr = {
        red = "KIRMIZI",
        blue = "MAVİ",
        blueTurn = "<b><p align='center'><font color='#ffffff'>MAVİ TAKIMIN SIRASI</b></p></font>",
        redTurn = "<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIMIN SIRASI</b></p></font>",
        opponentSetting = "<p align='right'><font size='10' color='#FFFFFF'>RAKİP İÇİN İPUCU ONAYI</font></p>",
        timeSetting = "<p align='right'><font size='10' color='#FFFFFF'>SÜRE SINIRI</font></p>",
        startButton = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>BAŞLAT</font></p>",
        joinButton = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>KATIL</a></b></font></p>",
        clueConfirmation = "<p align='center'>Rakibin verdiği ipucu <b>%s</b> ve <b>%d</b> kabul edilebilir mi?</p>",
        clueChecking = "<p align='center'>%s verilen ipucunun geçerli olup olmadığına karar veriyor..</p>",
        clueNumberError = "İpucu sayısı, kalan kart sayısından büyük olamaz.",
        clueInfo = "Verilen ipucu <b>%s</b> ve <b>%d</b> kere.",
        clueGameLog = "<b><font color='%s'>%s</b></font> adlı kullanıcının verdiği ipucu <font color='%s'><b>%s</b></font> ve <b><font color='%s'>%d</b></font> kere.",
        roomAdminInfo = "Oda ayarlarını belirler, istediği zaman oyunu başlatabilir.",
        restartedGame = "<R> %s oyunu yeniden başlattı. </R>",
        thinking = "<font color='#000000'><b> Düşünüyor... </b></font>",
        blackGameOver = "<b><p align='center'><font color='#ffffff'>%s TAKIM SİYAH KARTI BULARAK OYUNU KAYBETTİ! </b></p></font>",
        redTeamWon = "<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIM KAZANDI! </b></p></font>",
        blueTeamWon = "<b><p align='center'><font color='#ffffff'>MAVİ TAKIM KAZANDI! </b></p></font>",
        validClue = "<p align='center'>Verilen ipucu geçerli! <b>%s</b> takım seçim yapabilir.</p>",
        invalidClue = "<p align='center'>Verilen ipucu geçersiz! <b><R>%d</R></b> hakkınız kaldı.</p>",
        getRoomAdmin = "<font size='9'><a href='event:roomAdmin'><b>ODA YÖNETİCİSİ OL</b></a>"
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

    help = {
    image_1 = "1828638111d.png",
    image_2 = "18284aa6a69.png",
    image_3 = "18284aab665.png",
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
    help = {
        tab1 = 48,
        tab2 = 49,
        tab3 = 50,
        next = 51,
        prev = 52,
        titles = 53,
        main = 54,
    },

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
    time = 45,
    blue_count = 46,
    red_count = 47,
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

admins = {["Mckeydown#0000"] = true}
roomAdmin = nil
banList = {}

voted = {}
teams = {}
operatives = {red = {}, blue = {}}
spymasters = {}
clues = {red = {}, blue={}}
gameLog = {}
keys = {gameLogKey = {}, clueLogKey = {}, helpKey = true}
settings = { clue = false, time = false, }

help = {
    {
        "HOW TO PLAY",

        "Codenames is a game for two teams. There is a grid of <b>25</b> words. Some of them are secretly assigned to the Red Team, some to the Blue Team. One player from each team is the Spymaster, and only Spymasters see which words belong to which team. Spymasters take turns giving clues to their teammates (Operatives), trying to lead them to guessing their team's words. The team that guesses all their words first wins the game.\n" ..
        "\n<b><font size='14'>TEAMS</font></b>\n" ..
        "One player from each team should click on Join as Spymaster. He/she will then see the colors of the cards. Everyone else should click on Join as Operative. They do not see the colors of the cards.",
        

        "<b><font size='14'>CLUES</font></b>\n" ..
        "• Spymasters give clues.\n" ..
        "• When it’s your turn to give a clue, type ![clue-word] [number] in the chat.\n• You must type in a one word clue and how many cards are related with this word.\n"..
        "• Your Operatives will only see the clue and the number of related cards.\n"..
        "\n<p align='center'>Watch out for the black card – it’s an Assassin! Avoid clues that would lead to the assassin or to the other team's words.</p>",



        "<b><font size='14'>GUESSING</font></b>\n" ..
        "Operatives guess the words based on the Spymaster’s clue. You can discuss the clue with your teammates. You can also suggest a guess by tapping the card you think matches the clue.",


        "page4\n" ..
        "page4",


        "page5\n" ..
        "page5",

    },
    {
        "RULES",
        "page1",
        "page2",
        "page3",
        "page4",
        "page5",
    },
    {
        "CREDITS",
        "page1",
    }
}

blueVoteCount = #operatives["blue"] / 2
redVoteCount = #operatives["red"] / 2

roomLang = tfm.get.room.language
if translations[roomLang] == nil then roomLang = "en" end

wordsLang = tfm.get.room.language
if wordsLang == "jp" then wordsStyle = "" else wordsStyle = "<b>" end
if words[wordsLang] == nil then wordsLang = "en" end




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
            system.bindKeyboard(n, 72, false) 
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
        system.bindKeyboard(n, 69, false) system.bindKeyboard(n, 81, false) system.bindKeyboard(n, 72, false) 
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

    --math.randomseed(4)
    for i = 1, 25 do table.insert(roundWords, words[wordsLang][math.random(1 + size * (i - 1), size * i)]) end
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
        ui.addTextArea(cards[i].id, string.format("<p align='center'>%s<font color='#000000'><a href='event:selectCard'>%s</a></font></p>",wordsStyle, roundWords[i]), name, cards[i].position.x,cards[i].position.y+6, 100, 30,"0x000","0x000",true)
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
    ui.addImage("blueteamoperatives", images.blue_operatives, "_26", 20, 240,name)
    ui.addImage("redteamoperatives", images.red_operatives, "_34", 670, 240,name)
    ui.addImage("bluespymasters", images.blue_spymasters, "_32", 20, 355,name)
    ui.addImage("redspymaster", images.red_spymasters, "_39", 690, 355,name) 
    ui.addImage("bluespymasterline", images.blue_line, "_33", 20, 370,name,1,0.9) 
    ui.addImage("redspymasterline", images.red_line, "_40", 660, 370,name,1,0.9) 
    for i = 0, 3 do ui.addImage("blueline"..i, images.blue_line, "_27", 20, 270 + i * 20,name,1,0.9) ui.addImage("redline"..i, images.red_line, "_35", 660, 270 + i * 20,name,1,0.9) end

    if gameState.status == 0 then
    ui.addImage("settings", "1826569905c.png", "_42", 235, 270,name,1,1)

    if settings.time then ui.addImage("opponent_setting", images.settings.on, "_42", 508, 297,name,1,1) else ui.addImage("opponent_setting", images.settings.off, "_42", 508, 297,name,1,1) end
    if settings.clue then ui.addImage("time_setting", images.settings.on, "_42", 508, 343,name,1,1) else ui.addImage("time_setting", images.settings.off, "_42", 508, 343,name,1,1) end

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
    
    if isSpymaster then 
        ui.removeImage(joinSpy,nil) 
        ui.removeImage(joinSpy,n) 
        ui.removeTextArea(textAreas[joinSpy], nil) 
    end

    if isSpymaster and spymasters[t] then
        updatePlayerNames(t,n,isSpymaster) 
        return 
    end

    if gameState.status == 0 then
        ui.removeImage(joinButton,n)
        ui.addImage(joinButton, images.join[t], "_44", x[t], y[opCount+1],nil,1,0.9)
        ui.addTextArea(taID, string.format(translations[roomLang].joinButton),nil,x[t]+5,y[opCount+1],50,20,"0x000","0x000",1)
    end

    if opCount == 4 then 
        ui.removeTextArea(taID, nil) 
        ui.removeImage(joinButton,n) 
    end
    
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

    if e == "roomAdmin" and roomAdmin == nil then roomAdmin = name ui.removeTextArea(textAreas.room_admin, nil) end

    if e:sub(1, 4) == "tab_" then
        showHelp(name, tonumber(e:sub(5,5)), 2)
    end

    if e:sub(1, 5) == "next_" then
        local pageUD = tonumber(e:sub(12,12))
        pageUD = pageUD + 1
        showHelp(name, tonumber(e:sub(6,6)), pageUD)
    end

    if e:sub(1, 5) == "prev_" then
        local pageUD = tonumber(e:sub(12,12))
        pageUD = pageUD - 1
        showHelp(name, tonumber(e:sub(6,6)), pageUD)
    end
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
            elseif cmd == "lobby" then resetGame() return 
        end
    end 


    if roomAdmin == playerName then
        if cmd == "resetgame" then 
            resetGame() 
            tfm.exec.chatMessage(string.format(translations[roomLang].restartedGame, playerName), nil) 
            return 
        end
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
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].clueChecking, whichspy),nil,175,373,450,20,0,0,1) 
        return
    end

    if redCount >= clueNum or blueCount >= clueNum then
        addClue(clueText, clueNum, name)
        gameState.canGiveClue = false
        gameState.canVote = true
        ui.addPopup(1, 1, "", whichspy, 50000, 50000, 10, true)
        gameState.status = 3
    else
        print(translations[roomLang].clueNumberError)
    end
end

function addClue(clueText, clueNum, playerName)
    if spymasters[teams[playerName]] ~= playerName then return end
    if settings.clue then clueConfirmed = false end
    local teamClue = clues[teams[playerName]]
    local colorCode = teams[playerName] == "red" and "#C70039" or "#3284a3"
    
    table.insert(teamClue, 1, string.format(translations[roomLang].clueInfo, clueText, clueNum))
    addGameLog(string.format(translations[roomLang].clueGameLog, colorCode, spymasters[teams[playerName]],colorCode, clueText, colorCode,clueNum))
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
    ui.updateTextArea(textAreas.clue_text, translations[roomLang].thinking, nil)
    ui.updateTextArea(textAreas.clue_number, "<font color='#000000'><b>-</b></font>", nil)

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
    if isBlack then 
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].thinking, team),nil,175,373,450,20,0,0,1) 
    return end
    
    if redCount == 0 then
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].redTeamWon),nil,175,373,450,20,0,0,1) 
    elseif blueCount == 0 then
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].blueTeamWon),nil,175,373,450,20,0,0,1) 
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
    ui.addTextArea(textAreas.clue_log, string.format("<p align='right'><font color='#FFFFFF'>%s</p></font>", showClue or ""),name,260,280,280,100,0,0,1,true)
    ui.addImage(cLogsID, img, ":999", 225, 241, name)
    else
    ui.removeImage(cLogsID, name)
    ui.removeTextArea(textAreas.clue_log, name)
    end
end

function showHelp(name, tabid, pageid)
    ui.addImage("help_image_1", images.help.image_1, ":80",200,30,name, 1, 1, 0, 1, 0, 0, false)

    local text = ""
    local x = 225
    local y = 360
    local width = 400
    local height = 200
    local tabwidth = 90
    

    for i=1, #help do
        ui.addTextArea(textAreas.help["tab"..i],
        string.format("<font color='#ffffff'><p align='center'><a href='event:tab_%d'>%s</font></p>",i,help[i][1]:upper()),name,x + 5 + (i - 1) * (tabwidth + 35), y,tabwidth, 20,0, 0, 1,true)
        if tabid == i then
            text = help[tabid][pageid]
        end
    end
    
    if #help[tabid] > 2 then
        ui.addImage("help_image_2", images.help.image_2,":1",210,105,name, 1, 1, 0, 1, 0, 0, false)
        ui.addImage("help_image_3", images.help.image_3,":1",530,105,name, 1, 1, 0, 1, 0, 0, false)

        if pageid ~= 2 then
            ui.addTextArea(textAreas.help.prev,string.format("<font color='#ffffff'><a href='event:prev_%d_tab_%d'>PREV</a></font>",tabid,pageid), name, 225,106,nil,nil,0, 0, 1, true)
        end 

        if pageid ~= #help[tabid] then
            ui.addTextArea(textAreas.help.next,string.format("<font color='#ffffff'><a href='event:next_%d_tab_%d'>NEXT</a></font>",tabid,pageid), name, 540,106,nil,nil,0, 0, 1, true)
        end

        if pageid == 2 then
            ui.removeTextArea(textAreas.help.prev, name)
            ui.removeImage("help_image_2",name)
        elseif pageid == #help[tabid] then
            ui.removeTextArea(textAreas.help.next, name)
            ui.removeImage("help_image_3",name)
        end
    else
        ui.removeImage("help_image_2",name)
        ui.removeImage("help_image_3",name)
        ui.removeTextArea(textAreas.help.prev,name) ui.removeTextArea(textAreas.help.next,name)
    end

    ui.addTextArea(textAreas.help.main, text, name, 210, 140, width-20, height, 0, 0, 1, true)
    ui.addTextArea(textAreas.help.titles, "<font color='#ffffff' size='20'><p align='center'>"..help[tabid][1]:upper(), name, 290,98,220, nil, 0, 0, 1, true)
end

function hideHelp(name)
    for i=textAreas.help.tab1, textAreas.help.tab1 + #help + 3 do
        ui.removeTextArea(i, name)
    end

    for i = 1, 3 do
        ui.removeImage("help_image_"..i,name)
    end
end

function eventKeyboard(name, key, down)
    if key == 69 then
        keys.gameLogKey[name] = not keys.gameLogKey[name]
        if keys.gameLogKey[name] then
            ui.addImage("gamelogs", images.game_logs, ":999", 225, 20, name)
            ui.addTextArea(textAreas.game_log, string.format("<font size='10' color='#000000'><b>%s</b></font>", gameLogList or ""),name,260,30,200,65,0,0,1, true) 
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

    if key == 72 then
        keys.helpKey = not keys.helpKey
        if keys.helpKey then
            hideHelp(name)
        else
            showHelp(name, 1, 2)
        end
    end
end

noLimit = 0
function eventPopupAnswer(id, name, answer)
    if id == 1 and answer == "yes" then
        clueConfirmed = true
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].validClue, translations[roomLang][teams[currentPlayer]]),nil,175,373,450,20,0,0,1) 
        checkClue(currentClueNum, currentClueText, currentPlayer)
    end

    if id == 1 and answer == "no" then
        noLimit = noLimit + 1
        clueConfirmed = false
        ui.addTextArea(textAreas.turn_text, string.format(translations[roomLang].invalidClue, 3-noLimit),nil,175,373,450,20,0,0,1) 
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
        ui.addTextArea(textAreas.room_admin, string.format(translations[roomLang].getRoomAdmin),nil,10,25,nil,nil,0,0,1) 
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