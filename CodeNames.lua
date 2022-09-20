-- CodeNames V0.23
words = {
    ["tr"] = {"POKER", "EJDERHA", "SAVAŞ", "BAL", "BOMBA", "KUMARHANE", "GÖKDELEN", "SATÜRN", "UZAYLI", "KIRBAÇ", "ANTARTİKA", "KARDAN ADAM", "KONSER", "ÇİKOLATA", "JET", "MİLYONER", "DİNOZOR", "KORSAN", "DÜDÜK", "PENGUEN", "ÖRÜMCEK", "FÜZE", "KONSOLOSLUK", "TABANCA", "HASTALIK", "AJAN", "PRENSES", "DAHİ", "HIRSIZ", "OPERA", "ŞÖVALYE", "STADYUM", "LİMUZİN", "HAYALET", "KAMYONET", "DONDURMA", "LAZER", "ÖLÜM", "HASTANE", "AMBULANS", "AHTAPOT", "HELİKOPTER", "KANGURU", "MİKROSKOP", "TARZAN", "KAHRAMAN", "TELESKOP", "PARAŞÜT", "KAYNANA", "NEMRUT", "UYDU", "MELEK", "ROBOT", "AZRAİL", "CADI", "MEZARCI", "DALGIÇ", "ZEHİR", "KÖPRÜ", "ATEŞ", "MASA", "BALİNA", "AY", "BALIK", "DOKTOR", "CAMİ", "KEMER", "HEMŞİRE", "RÜZGAR", "ÇİZME", "PARK", "ALBÜM", "SİMİT", "TAŞ", "ŞOK", "BEYAZ", "HESAP", "KUPON", "MORS", "PALET", "REJİM", "PARTİ", "MAKAS", "KÖSTEBEK", "TAMPON", "PİLİÇ", "MANTAR", "ÖRGÜ", "NUMARA", "KUYRUK", "ALAY", "MACUN", "TARLA", "SATIR", "CEP", "PİKE", "SIRT", "TOPUZ", "TULUM", "POSTA", "TERAZİ", "SİTE", "VİZE", "TORPİL", "KAPTAN", "ATLAS", "KÜME", "CİLT", "BOY", "KURŞUN", "BANKO", "MAT", "BOĞAZ", "DİYET", "DOĞRU", "DÖVİZ", "KÖPEK", "AT", "AYAKKABI", "SANDALYE", "TAHT", "BUZ", "ALTIN", "ÇATAL", "ZAMAN", "FLÜT", "FENER", "YASTIK", "TESBİH", "ASKER", "PİRAMİT", "HALAT", "YILDIZ", "OCAK", "EKMEK", "YÜREK", "BLOK", "KUPA", "İĞNE", "DON", "ÖRTÜ", "KABUK", "BAYRAM", "PERDE", "BALTA", "YAKA", "DÜĞME", "AĞIZ", "ETİKET", "EL", "YATAK", "DUVAR", "KULE", "KART", "BAĞ", "YAY", "ORTA", "İNTERNET", "KAYMAK", "PAS", "DAMAT", "DELİK", "NİŞAN", "KUVVET", "ANAHTAR", "MOTOR", "DALGA", "AKIM", "BAŞ", "İSKELE", "ÇEKİRDEK", "KAZA", "DÜŞ", "KAZIK", "PUL", "DAİRE", "AĞ", "KANAL", "İSTANBUL", "AVUSTRALYA", "KIBRIS", "TOKYO", "MISIR", "REKLAM", "KAVURMA", "MOSKOVA", "DÖVME", "MEVLANA", "HOLLYWOOD", "BİZANS", "ROMA", "ARABESK", "NİNJA", "LAZ", "MANGO", "ALMANYA", "DEVLET", "AMERİKA", "MEZOPOTAMYA", "İNGİLTERE", "SURVİVOR", "KRİZ", "MECNUN", "EŞKİYA", "NAL", "GULYABANİ", "İRAN", "BERLİN", "KARINCA", "AVRUPA", "HİNDİSTAN", "ÇEYİZ", "EVEREST", "KALPAZAN", "PEKİN", "KARTAL", "PAZI", "BAKLAVA", "HİTİT", "YAŞ", "ATLET", "DİZİ", "BASKI", "DERECE", "DOLU", "TABLET", "YEŞİL", "ALEM", "MARŞ", "KUŞAK", "BOZUK", "MAKARA", "AĞAÇ", "BOT", "ZAR", "ORDU", "GÖÇ", "SERVİS", "MARS", "GÖBEK", "FESTİVAL", "OMURGA", "ÇATI", "DÜMEN", "İZ", "TAKIM", "ÇAY", "KANUN", "FAN", "FIRÇA", "KAHVE", "TAVLA", "GÜL", "ANA", "KOCA", "MASKARA", "PAZAR", "TEZ", "MAYA", "UŞAK", "MEMUR", "KEPÇE", "BEYİN", "KLASİK", "KOVAN", "PALA", "SOĞUK", "ASLAN", "TOP", "BANKA", "GÖZ", "HAVA", "TAVŞAN", "PASTA", "ELBİSE", "ÇİMEN", "CÜCE", "ORMAN", "ARABA", "ELDİVEN", "BERE", "BENZİN", "AŞÇI", "AYI", "KEDİ", "HAYAT", "PİRİNÇ", "DEV", "YÜZ", "PLAJ", "OTEL", "SU", "KAĞIT", "SOLUCAN", "AVUKAT", "BİLİM ADAMI", "DANS", "HAVUÇ", "SEPET", "GECE", "PAMUK", "AYAK", "FARE", "BIÇAK", "TİYATRO", "POLİS", "GEMİ", "PİLOT", "PARMAK", "ÖĞRETMEN", "ŞİŞE", "GÜN", "KRAL", "BARDAK", "ELMAS", "DİŞ", "KOPYA", "DARBE", "FİLM", "GIRGIR", "ARPACIK", "HORTUM", "IZGARA", "TORPİDO", "KEPEK", "GICIK", "KESE", "KISIR", "KOLON", "KULAÇ", "GAZİNO", "FELEK", "KAVAL", "KİTAP", "TIP", "KAYNAK", "GARAJ", "PAÇA", "LASTİK", "SAZ", "SET", "FAR", "KUTU", "KANEPE", "MAKAM", "ŞANS", "MERKEZ", "ÜNLÜ", "DEVİR", "DÜĞÜN", "TABLO", "GÖLGE", "GAZ", "KALE", "HAZİNE", "KÖY", "MODA", "HAVUZ", "MAGAZİN", "KÜPE", "FATURA", "SAYFA", "ÇAMAŞIR", "TUR", "AMAZON", "SAHTE", "OYUNCAK", "SIRA", "FORM", "KARE", "KAŞ", "SANDIK", "ACI", "TREN", "SOSYETE", "ÖRGÜT", "SÖZ", "UÇAK", "ADET", "BALKON", "ÇOBAN", "AYNA", "KURU", "DELİ", "YAZ", "NOT", "BÖLÜM", "ŞERİT", "YUNANİSTAN", "HÜCRE", "MEZUNİYET", "FAUL", "LONDRA", "MUCİZE", "TEMEL", "AFRİKA", "BİLYE", "YAĞMUR", "KUYU", "KANAT"},
    ["en"] = {"STAR","BRIDGE","FIRE","RING","HEART","HORN","SPRING","TABLE","WHALE","SEAL","MOON","BLOCK","DRILL","FISH","TUBE","GRACE","IRON","DOCTOR","ROULETTE","DEGREE","WAKE","NEEDLE","TABLET","PIE","GREEN","DRAGON","NEW YORK","AUSTRALIA","MARCH","LINE","WAR","HONEY","JAM","CHURCH","COVER","LEAD","BERMUDA","CHANGE","TOKYO","EGYPT","BEAT","RAY","BELT","CAP","LEMON","NURSE","WIND","LION","LONDON","FALL","BOOT","DICE","EYE","BOARD","SWITCH","AIR","JUPITER","HAM","BATTERY","SPINE","VET","RABBIT","AGENT","DROP","TRACK","BANK","CLIFF","BOMB","CASINO","SKYSCRAPER","STOCK","BRUSH","GRASS","SATURN","DRESS","FAN","DWARF","ALIEN","WHIP","ANTARCTICA","PUMPKIN","MOSCOW","TRIP","SNOWMAN","FOREST","CAPITAL","STRIKE","COPPER","SOUL","CANADA","CONCERT","CHOCOLATE","JET","SHAKESPEARE","CAR","SHADOW","GLOVE","LITTER","COMIC","MILLIONAIRE","PITCH","BOND","APPLE","OIL","COOK","FLY","CAST","BEAR","PIN","MINE","CHECK","BAR","COLD","HOLLYWOOD","SCREEN","PLAY","MARBLE","DINOSAUR","CAT","GAME","LIFE","LUCK","HOOK","PARK","BAT","BOLT","GREECE","DECK","YARD","CONDUCTOR","GIANT","FACE","PIRATE","BEACH","POUND","ROUND","FIELD","CYCLE","ROME","HOTEL","SPOT","MOUNT","STICK","SINK","MOLE","SCHOOL","CHICK","WATER","PAPER","SLUG","BUTTON","HIMALAYAS","NINJA","CZECH","GROUND","BUGLE","MOUTH","TAG","NUT","WORM","PENGUIN","LAWYER","SPIDER","TAIL","TICK","MINT","MISSILE","EMBASSY","PISTOL","SCIENTIST","KIWI","LOG","GERMANY","HAND","DISEASE","BED","SPY","PRINCESS","DANCE","CARROT","STATE","RACKET","GENIUS","THIEF","TRUNK","AMERICA","NOVEL","WALL","BERRY","ATLANTIS","KETCHUP","PLOT","ENGLAND","TEMPLE","MAPLE","MAIL","AFRICA","OPERA","TOWER","NIGHT","POOL","ROBIN","BAND","DUCK","HOOD","CARD","COURT","TIE","DIAMOND","CROSS","NET","FRANCE","DATE","COTTON","POINT","OLIVE","MATCH","BALL","MERCURY","BOW","FIGHTER","SHOP","SLIP","KNIGHT","PASS","STADIUM","FOOT","LIMOUSINE","CONTRACT","PLATE","MOUSE","HORSESHOE","ORGAN","KNIFE","CELL","WATCH","ARM","ROSE","MODEL","THEATER","HOLE","POST","LIGHT","TRIANGLE","BELL","LEPRECHAUN","KID","POLICE","ROCK","SCALE","GHOST","SHIP","MEXICO","CLOAK","STRAW","CALF","SHARK","DRAFT","HAWK","PRESS","VAN","ICE CREAM","BUCK","PHOENIX","FORCE","BOOM","LAB","RULER","PILOT","LASER","DEATH","LOCK","SPELL","HOSPITAL","AMBULANCE","WEB","PLASTIC","KEY","OCTOPUS","THUMB","TEACHER","PALM","CRANE","HELICOPTER","BOTTLE","FENCE","KANGAROO","JACK","EUROPE","SCORPION","MUG","SUIT","MICROSCOPE","ENGINE","WAVE","CENTAUR","STREAM","HEAD","MAMMOTH","DAY","KING","PAN","POLE","SUPERHERO","REVOLUTION","PIT","GAS","GLASS","WASHINGTON","TURKEY","QUEEN","FILE","CRICKET","WELL","FAIR","TOOTH","STAFF","BILL","SHOT","WASHER","LAP","AMAZON","SPACE","FIGURE","MASS","CHINA","SQUARE","BUFFALO","CHEST","DOG","NAIL","BERLIN","HORSE","CHARGE","SUB","INDIA","TRAIN","TELESCOPE","PLANE","PARACHUTE","PIANO","BOX","PLATYPUS","CLUB","SHOE","SERVER","CENTER","CHAIR","SOUND","COMPOUND","FILM","CROWN","OLYMPUS","BACK","NOTE","PART","TAP","ICE","SOCK","ALPS","ROOT","SATELLITE","ANGEL","CRASH","GOLD","BUG","PASTE","ROBOT","ROW","SPIKE","CODE","LOCH NESS","FORK","SWING","PORT","CIRCLE","UNICORN","TIME","LINK","FLUTE","TORCH","BEIJING","EAGLE","BARK","SNOW","IVORY","PIPE","PANTS","SOLDIER","VACUUM","WITCH","PUPIL","SMUGGLER","ORANGE","AZTEC","UNDERTAKER","SCUBA DIVER","PYRAMID","POISON","STRING"},
    ["fr"] = {"PAPIER","VISAGE","CEINTURE","ATLANTIQUE","GUERRE","CINÉMA","ANNEAU","VAMPIRE","RESTAURANT","FEU","MILLIONNAIRE","FRANÇAIS","ÉCOLE","PILOTE","MAÎTRESSE","MICROSCOPE","NEIGE","ESPION","ANGE","MIEL","CANADA","FANTÔME","LUNE","CHINE","INDIEN","BIÈRE","CASINO","PLAGE","JEU","DOCTEUR","CERCLE","AFRIQUE","CENTRE","PIED","LICORNE","DRAGON","TABLEAU","AVION","NAIN","MACHINE","BALLE","EAU","CHIEN","PARIS","ALLEMAGNE","CODE","TEMPLE","NUIT","CHEVAL","CHÂTEAU","BANQUE","CHAMP","CHOCOLAT","TROU","ANGLETERRE","CHEVALIER","BATEAU","TÊTE","DINOSAURE","MAIN","NŒUD","ALIEN","CHANCE","ÉGYPTE","COCHON","BRANCHE","ÉTOILE","SOLDAT","BOUCHE","HÔTEL","GÉNIE","ÉCHELLE","BOUTEILLE","CŒUR","AIGUILLE","HERBE","DANSE","BALEINE","KANGOUROU","AMÉRIQUE","LASER","MALADIE","ARAIGNÉE","COLLE","FORÊT","CORDE","PLACE","HÔPITAL","BÂTON","HÉROS","MARS","GAUCHE","LIEN","CHAUSSON","MORT","OISEAU","COURANT","PÔLE","POISSON","GÉANT","LONDRES","AVOCAT","CRITIQUE","IRIS","GLACE","MOULE","POÊLE","ENSEMBLE","FRAISE","CARTOUCHE","FORMULE","MINE","BAIE","JET","FIN","FOYER","BAR","LIGNE","GRUE","BOURSE","OPÉRATION","CARTE","CAFARD","CADRE","GUIDE","GARDE","DROIT","CLUB","BARRE","CANON","ÉCLAIR","BASE","VAISSEAU","CELLULE","CHAÎNE","CARREAU","DON","MARQUE","SARDINE","MOUSSE","FORT","SENS","COUPE","UNIFORME","COUVERTURE","LENTILLE","TUBE","CHEMISE","CHOU","BANDE","NEW-YORK","BON","BRETELLE","BUREAU","BOUTON","ASTÉRIX","BOÎTE","BANANE","LUNETTES","LANGUE","GRENADE","TOKYO","COQ","GORGE","COMMERCE","FRONT","MARRON","PIÈCE","MÉMOIRE","ESPACE","ÉPONGE","VOLUME","AIR","CANNE","ORANGE","ROME","CHARGE","FACTEUR","AMPOULE","RECETTE","BUT","COL","RUSSIE","BOMBE","MARCHE","CHEF","CORNE","CUISINE","HOLLYWOOD","CLÉ","PRÊT","BOULET","CYCLE","GRAIN","AUSTRALIE","FIGURE","FER","KIWI","CARRIÈRE","COUTEAU","LION","SCIENCE","PIANO","ÉGALITÉ","VOLEUR","FLÛTE","SOURIS","CANARD","TEMPS","CHAPEAU","CIRQUE","CAMEMBERT","LAIT","ROSE","ŒUF","PIRATE","PÉTROLE","PLUME","SCÈNE","SERPENT","LUXE","JUMELLES","MOUSTACHE","CHAMPAGNE","BERLIN","PRINCESSE","NOËL","VERT","HISTOIRE","VOITURE","CHAT","BAGUETTE","ZÉRO","JOURNAL","POISON","AMOUR","APPAREIL","MAGIE","MODE","BOUCHON","PARACHUTE","BŒUF","ROBE","HIMALAYA","SCHTROUMPF","BLÉ","COTON","FOU","VENT","REQUIN","POMME","TOUR","ROBOT","CLASSE","PIGEON","CROCHET","POUCE","CAFÉ","ROULETTE","JOUR","ARGENT","SORCIÈRE","ROI","RÉSISTANCE","VERRE","ŒIL","TABLE","BALLON","SOLEIL","JUNGLE","OPÉRA","HIVER","REINE","DROITE","SEPT","OR","POLICE","CITROUILLE","SATELLITE","MOLIÈRE","TERRE","TRÉSOR","AILE","FILET","MARIN","ROUGE","MOUCHE","CHASSE","SIRÈNE","PINGOUIN","ESPRIT","RÈGLE","POINT","PYRAMIDE","BÛCHE","TENNIS","NOIR","RAT","LIVRE","VIE","NINJA","PHYSIQUE","VAGUE","BÊTE","FERME","CARTON","PARTIE","VOILE","MANCHE","TITRE","FUITE","ENTRÉE","PENSÉE","CAMPAGNE","POMPE","QUEUE","PLAN","MEMBRE","ENCEINTE","QUARTIER","PLANCHE","COURONNE","ARC","ESSENCE","BANC","GEL","VASE","CABINET","ATOUT","PLAT","BALANCE","PÊCHE","TUILE","TAMBOUR","BOTTE","LOUCHE","PENDULE","PLANTE","REMISE","NUMÉRO","PESTE","MAJEUR","TIMBRE","PAGE","MENU","ASILE","LIT","SOL","SOLUTION","PALAIS","ALPES","LIQUIDE","POSTE","RELIGIEUSE","BOUGIE","LUMIÈRE","RAIE","PHARE","SORTIE","PALME","BRIQUE","GRÈCE","ESPAGNE","FEUILLE","TALON","ROULEAU","LETTRE","VISION","MANÈGE","PILE","NOTE","CHARME","PRISE","PASSE","COURSE","RÉVOLUTION","RAME","PAILLE","PATRON","SIÈGE","RADIO","ORDRE","VIN","PLATEAU","PERLE","VOL","MINEUR","TRAIT","EUROPE","SOMME","RAYON","POIRE","FARCE","RONDE","NAPOLÉON","MEUBLE","COURT","ÉTUDE","PORTABLE","TOILE"},
    ["es"] = {"ÁFRICA", "AGENTE", "AIRE", "EXTRATERRESTRE", "ALPES", "NILO", "AMBULANCIA", "AMÉRICA", "ÁNGEL", "ANTÁRTIDA", "MANZANA", "PINTA", "ATLÁNTIDA", "ARGENTINA", "AZTECA", "LOMO", "BOLA", "ESTACIÓN", "BANCO", "BARRA", "CARAVANA", "VELA", "BATERÍA", "PLAYA", "OSO", "ORDEN", "CAMA", "PEKÍN", "CAMPANA", "CINTURÓN", "BERLÍN", "BERMUDAS", "GATO", "CHULETA", "LUNA", "TABLA", "MANDO", "BOMBA", "ARCHIVO", "BLANCO", "BOTA", "BOTELLA", "ARCO", "MICRO", "PUENTE", "MONO", "AS", "BRAZO", "ÓPERA", "CORNETA", "BOTÓN", "PLUMA", "ITALIA", "TAPA", "CAPITAL", "COCHE", "CARTA", "ZANAHORIA", "CASINO", "PISTA", "SERPIENTE", "LLAMA", "CENTAURO", "CENTRO", "SILLA", "CAMBIO", "CARGA", "ALIANZA", "MALTA", "SOBRE", "JUICIO", "CHOCOLATE", "IGLESIA", "CÍRCULO", "GÓNDOLA", "CAPA", "PULSO", "CÓDIGO", "ARTÍCULO", "CASCO", "DIARIO", "CONCIERTO", "GOLFO", "TACTO", "COCINERO", "SERIE", "ALGODÓN", "CÁMARA", "PORTADA", "MONITOR", "CHOQUE", "TRAMA", "CRUZ", "CORONA", "CANTO", "CHECO", "BAILE", "COPA", "DÍA", "MUERTE", "CUBIERTA", "GRADO", "DIAMANTE", "CUBO", "DINOSAURIO", "ENFERMEDAD", "MÉDICO", "PERRO", "COMPÁS", "DRAGÓN", "VESTIDO", "CABO", "GOTA", "SEÑAL", "ENANO", "ÁGUILA", "EGIPTO", "EMBAJADA", "TARDE", "MOTOR", "INGLATERRA", "EUROPA", "OJO", "CARA", "JUDÍA", "DESTINO", "PLANTA", "PASTA", "CAMPO", "GRANADA", "FIGURA", "CABINA", "PELÍCULA", "FUEGO", "PEZ", "FLAUTA", "TANQUE", "PIE", "FUERZA", "BOSQUE", "HORCA", "FRANCIA", "PALA", "TESTIGO", "GENIO", "ALEMANIA", "FANTASMA", "GIGANTE", "VIDRIO", "GUANTE", "ORO", "BAÑO", "HIERBA", "GRECIA", "CÓLERA", "TIERRA", "BOLSA", "MANO", "DIANA", "CABEZA", "CORAZÓN", "HELICÓPTERO", "SÁHARA", "AGUJERO", "HOLLYWOOD", "MIEL", "CINTA", "GANCHO", "CUERNO", "CABALLO", "MAGIA", "HOSPITAL", "ANTORCHA", "HIELO", "HELADO", "LADRÓN", "CAZA", "MARFIL", "MAÑANA", "CURA", "SABLE", "VENUS", "CANGURO", "ROJO", "LLAVE", "POLO", "REY", "KIWI", "CUCHILLO", "CABALLERO", "CADENA", "FALDA", "LÁSER", "ABOGADO", "PENDIENTE", "CORTE", "DUENDE", "VIDA", "MUÑECA", "LIMUSINA", "LÍNEA", "YEMA", "LAGO NESS", "MINA", "DON", "RADIO", "LONDRES", "SUERTE", "LEÓN", "CAQUI", "MARCHA", "CORREDOR", "CAÑA", "MASA", "BANDA", "CACTUS", "MÉXICO", "MICROSCOPIO", "MERCURIO", "MANGO", "LENGUA", "MODELO", "MILLONARIO", "MOSCÚ", "ENFERMERA", "RATÓN", "MISIL", "BOCA", "NINJA", "BLOQUE", "AGUJA", "RED", "NOTA", "NOCHE", "JARRA", "NUEVA YORK", "PULPO", "CRESTA", "FIESTA", "PIÑA", "NARANJA", "ÓRGANO", "ACEITE", "OLIMPO", "BICHO", "PLOMO", "FUENTE", "PAPEL", "PARACAÍDAS", "PALMA", "NUDO", "PRIMA", "PIEZA", "PIRATA", "CUARTO", "PUNTA", "PINGÜINO", "PASE", "PASTEL", "MORTERO", "PILOTO", "PELOTÓN", "TUBERÍA", "PISTOLA", "FOSO", "PLANO", "TALÓN", "COCO", "PLACA", "ORNITORRINCO", "MANGA", "OBRA", "PUNTO", "GOMA", "VENENO", "PLÁTANO", "PRENSA", "PUERTO", "REINA", "LIBRA", "PRINCESA", "POLICÍA", "CARRERA", "ESTUDIO", "PIRÁMIDE", "PASO", "TECLADO", "CONEJO", "RAYO", "ANILLO", "GOLONDRINA", "REVOLUCIÓN", "ROBOT", "POTRO", "RULETA", "ROSA", "RONDA", "REGLA", "NAVE", "CLASE", "FLECHA", "ESCORPIÓN", "SATÉLITE", "FARO", "ROMA", "SATURNO", "COLUMNA", "TACO", "BALA", "PANTALLA", "FICHA", "CIENTÍFICO", "CERVANTES", "GRANO", "TIENDA", "ZAPATO", "RASCACIELOS", "PILA", "SUBMARINISTA", "PINCHO", "SIERRA", "RESERVA", "CONTRABANDISTA", "NIEVE", "VAMPIRO", "SALSA", "SOLDADO", "DAMA", "BARCO", "ESPACIO", "CANAL", "ARAÑA", "VADO", "CAJA", "CUADRO", "HOJA", "MUELLE", "ESPÍA", "ESTADIO", "METRO", "ESTRELLA", "IMÁN", "ESTADO", "DISCO", "MANCHA", "CORRIENTE", "GOLPE", "MÓDULO", "SUPERHÉROE", "SIRENA", "MAESTRO", "CUERDA", "MÁSCARA", "MESA", "TABLETA", "ETIQUETA", "COLA", "TELESCOPIO", "GRIFO", "HOTEL", "TOKIO", "PORTERO", "TEATRO", "ÍNDICE", "MARCA", "LUZ", "TORRE", "INDIA", "TIEMPO", "DELTA", "CUELLO", "FRENTE", "DIENTE", "PAVO", "TRONCO", "TUBO", "VACÍO", "CEMENTERIO", "EMPERADOR", "PICO", "FURGONETA", "TOPO", "CARRO", "UNICORNIO", "LÁTIGO", "GUERRA", "LIMA", "GUARDIA", "OLA", "LISTA", "VIENTO", "AGUA", "GUSANO", "MURO", "BALLENA", "COMETA", "ENLACE", "CROMO", "MAZO", "BRUJA"},
    ["pt"] = {"ROLETA", "DRAGÃO", "GUERRA", "DOCINHO", "BOMBA", "CASINO", "ARRANHA-CÉU", "SATURNO", "ALIENÍGENA", "CHICOTE", "ANTÁRTICA", "ESPANTALHO", "CONCERTO", "CHOCOLATE", "JATO", "MILIONÁRIO", "DINOSSAURO", "PIRATA", "TROMPA", "PINGUIM", "ARANHA", "MÍSSIL", "EMBAIXADA", "PISTOLA", "DOENÇA", "ESPIÃO", "PRINCESA", "FADA", "LADRÃO", "ÓPERA", "CAVALEIRO", "ESTÁDIO", "LIMUSINE", "FANTASMA", "FURGÃO", "SORVETE", "LASER", "MORTE", "HOSPITAL", "AMBULÂNCIA", "POLVO", "HELICÓPTERO", "CANGURU", "MICROSCÓPIO", "CENTAURO", "SUPER-HERÓI", "TELESCÓPIO", "PARA-QUEDAS", "OURIÇO", "OLIMPO", "SATÉLITE", "ANJO", "ROBÔ", "UNICÓRNIO", "BRUXA", "COVEIRO", "MERGULHADOR", "VENENO", "PONTE", "FOGO", "MESA", "BALEIA", "LUA", "PEIXE", "DOUTOR", "IGREJA", "CINTO", "ENFERMEIRA", "VENTO", "LEÃO", "OLHO", "AR", "COELHO", "BANCO", "GRAMA", "VESTIDO", "ANÃO", "FLORESTA", "CARRO", "LUVA", "MAÇÃ", "ÓLEO", "COZINHEIRO", "URSO", "GATO", "VIDA", "SORTE", "GIGANTE", "ROSTO", "PRAIA", "HOTEL", "ÁGUA", "PAPEL", "VERME", "ADVOGADO", "CIENTISTA", "DANÇA", "CENOURA", "KETCHUP", "NOITE", "ALGODÃO", "PÉ", "RATO", "FACA", "TEATRO", "POLÍCIA", "BARCO", "PILOTO", "POLEGAR", "PROFESSOR", "GARRAFA", "DIA", "REI", "VIDRO", "RAINHA", "DENTES", "CACHORRO", "CAVALO", "SAPATO", "CADEIRA", "COROA", "GELO", "OURO", "GARFO", "HORA", "FLAUTA", "TOCHA", "NEVE", "MARFIM", "SOLDADO", "PIRÂMIDE", "ESCADA", "ESTRELA", "ANEL", "BUZINA", "CORAÇÃO", "BLOCO", "TUBO", "AGULHA", "LINHA", "COBERTURA", "TABULEIRO", "INTERRUPTOR", "TELA", "PEÇA", "LOCAL", "BOTÃO", "BOCA", "FAIXA", "MÃO", "CAMA", "PAREDE", "TORRE", "CARTA", "GRAVATA", "DIAMANTE", "CRUZ", "REDE", "PONTO", "PASSE", "PLACA", "BURACO", "SINO", "FORÇA", "CHAVE", "MOTOR", "ONDA", "CORRENTE", "CABEÇA", "CABO", "CENTRO", "BATIDA", "PASTA", "CRAVO", "CÓDIGO", "CÍRCULO", "LIGAÇÃO", "CANO", "CHICAGO", "AUSTRÁLIA", "BERMUDA", "TÓQUIO", "EGITO", "LONDRES", "ESTÁTUA", "PARIS", "CANADÁ", "SHAKESPEARE", "HOLLYWOOD", "GRÉCIA", "ROMA", "HIMALAIA", "NINJA", "BRASIL", "COPACABANA", "ALEMANHA", "ESTADO", "AMÉRICA", "ATLÂNTIDA", "INGLATERRA", "MACACO", "ÁFRICA", "ENCANTO", "CERCA", "TUBARÃO", "EXAME", "MÉXICO", "GOLPE", "ESCORPIÃO", "BERLIM", "FAVELA", "ALPES", "LOCH NESS", "PEQUIM", "MONTE", "COLHER", "ASTECA", "REDENTOR", "FONTE", "SELO", "FURADOR", "GRAÇA", "FERRO", "LEITO", "ACORDE", "BARRA", "VERDE", "APERTO", "MARCHA", "CHUMBO", "AGENDA", "SUPORTE", "RAIO", "BALA", "LIMÃO", "ESPECTRO", "BOTA", "DADOS", "JUPITER", "SECRETÁRIA", "BATERIA", "ESPINHA", "NUCLEAR", "AGENTE", "BAIXA", "CONTRABANDO", "OPERAÇÃO", "ÍNDIA", "CADEIA", "CANTO", "JORNADA", "CAPITAL", "PANCADA", "COBRE", "CONTAR", "DOBRAR", "RÁDIO", "TERRA", "FANTASIA", "ELÉTRICO", "PISTA", "LANCE", "MANGA", "MINA", "FRANÇA", "BAR", "LÍQUIDO", "RUSSO", "JOGO", "TEMPO", "PARQUE", "GANHAR", "SEGURO", "SERRA", "PATO", "CONDUTOR", "LIBRA", "RODA", "CAMPO", "PILHA", "PACÍFICO", "PROVA", "FOSSA", "MÁSCARA", "CURSO", "CONTROLE", "CORTINA", "SOLO", "RECEITA", "GARRA", "LICENÇA", "FIO", "GÁS", "LEVE", "TRONCO", "ROMANCE", "GRÃO", "TRAMA", "PRAÇA", "CORREIO", "TANQUE", "BANDA", "TACO", "CURA", "CORTE", "PASSO", "CANELA", "FOLHA", "DROGA", "MERCÚRIO", "ARCO", "REVOLVER", "LOJA", "SEGREDO", "CONTRATO", "PLANTA", "PORTO", "COMPANHIA", "BRAÇO", "ÁREA", "MODELO", "LUZ", "TRIANGULO", "GAROTO", "RECIFE", "ESCAMA", "MANTO", "PALHA", "ÁGUIA", "TEIA", "ESTAÇÃO", "FALCÃO", "VELA", "BATER", "GRANADA", "BARRAGEM", "LABORATÓRIO", "REGENTE", "CACHO", "TOUPEIRA", "WASHINGTON", "SENTENÇA", "PALMA", "FORTALEZA", "REVOLUÇÃO", "TOMADA", "DURO", "METRO", "APANHAR", "PENA", "DIREITO", "VALA", "ORGÃO", "EUROPA", "TERMINAL", "LÍNGUA", "GRILO", "NASCENTE", "FEIRA", "VARA", "NOTA", "DOSE", "DEPÓSITO", "VOLTA", "AMAZONAS", "ESPAÇO", "PARTE", "MASSA", "CHINA", "ROSA", "PRESA", "CAMINHO", "CORPO", "CARGA", "MEIO", "PERU", "PLANO", "CAÇA", "CAIXA", "BASE", "SERVIDOR", "CELA", "COMPOSTO", "PLÁSTICO", "BOLSA", "TOM", "QUEDA", "MISSÃO", "MEIA", "RAIZ", "CÓLERA", "NEGATIVO", "BALANÇO", "GUARDA", "CASCA", "CALÇA", "FILME", "FIGURA", "LARANJA", "POSTO"},
    ["ar"] = {"بطريق", "غواص", "آيس كريم", "عنكبوت", "أطلس", "شبح", "سم", "جسر", "شاحنة", "كازينو", "تفاح", "أخطبوط", "زيت", "طباخ", "سيارة", "سبيكة", "قانون", "حاد", "شيك", "دب", "هدف", "قدح", "سن", "ملكة", "ملك", "كلب", "حصان", "حذاء", "علامة", "فم", "بقعة", "عمارة", "شوكولاته", "يد", "حفلة", "ثورة", "سرير", "كنغر", "بطاقة", "رخ", "مجهر", "بيضة", "شكسبير", "قصة", "أرض", "قرش", "هوليوود", "مجال", "غاز", "اشارة", "عقد", "عميل", "دكتور", "إطار", "جمعة", "عود", "عمل", "قرن", "شكل", "جناح", "فضاء", "بئر", "رصيد", "معرض", "صولجان", "صوت", "كنيسة", "كبريت", "شريط", "عبقري", "طبيب", "ربع", "مخبر", "قفل", "فيل", "بطل", "ناظور", "مظلة", "معدن", "ثعلب", "سهم", "برتقال", "خفيف", "درجة", "عضو", "صغير", "حجر", "حاجب", "عباءة", "قصبة", "قطار", "مسمار", "طيارة", "فرع", "غسالة", "سكر", "فراغ", "مسدس", "نحاس", "روح", "زهر", "خريف", "حاوية", "ليمون", "مارس", "فلافل", "شعر", "بلبل", "ربيع", "مثلث", "مانشستر", "وقت", "ألماس", "عقدة", "ناي", "أشعة", "وتر", "هرم", "حفرة", "جرس", "حمام", "مخطط", "معبد", "رسالة", "برميل", "انبوب", "قطب", "خفاش", "رأس", "ابرة", "موقف", "ظرف", "خط", "خشبة", "ميل", "عكس", "عشاء", "محامي", "عالم", "رقص", "نينجا", "تقليد", "ذراع", "حوض", "ورقة", "خال", "تيار", "محرك", "يمن", "موجة", "صليب", "مجمع", "نقطة", "رمح", "طبق", "نخلة", "حادث", "معجون", "طرف", "رشاش", "مرض", "سفارة", "صاروخ", "شفرة", "جليد", "طائرة", "جزر", "ديناصور", "صفارة", "قرصان", "أثر", "سهل", "فرشاة", "ماشية", "خيار", "مخرج", "روبوت", "كيلو", "أوبرا", "لص", "ساحة", "دورة", "ملعب", "فارس", "ليموزين", "ريح", "أسد", "حوت", "قمر", "ظل", "وحيد القرن", "قطن", "حظ", "قطة", "رباط", "سكين", "طبقة", "ليل", "زبالة", "فأرة", "روليت", "تنين", "حرب", "حلو", "قنبلة", "قمر صناعي", "برج", "ملاك", "ليزر", "موت", "مستشفى", "اسعاف", "كف", "هليكوبتر", "عين", "هواء", "أرنب", "مصرف", "حشيش", "ثوب", "قزم", "شرطة", "سفينة", "طيار", "بصمة", "معلم", "زجاجة", "يوم", "غطاء", "لوح", "مفتاح", "شاشة", "مسرحية", "دائرة", "زر", "جدار", "رابط", "سيجارة", "نيويورك", "استراليا", "خليج", "طوكيو", "هند", "حفيت", "غول", "بغداد", "صقر", "حرامي", "بابل", "مشتري", "شاورما", "طاقة", "عمود", "عمر", "رافعة", "موقع", "كأس", "قرص", "أمازون", "طبع", "نقد", "مغرب", "رمانة", "صندوق", "نادي", "خادم", "سمك", "أميرة", "مركب", "ظهر", "شبكة", "حظيرة", "فراش", "حاكم", "رسم", "خيط", "سحر", "حول", "حبل", "طرف", "أصلي", "مربع", "ثور", "غابة", "بيت", "تونس", "ملف", "حارة", "طابع", "جذع", "قرع", "شراب", "جذر", "دفاع", "صف", "ضربة", "حشرة", "ألف", "رحلة", "سروال", "اسبانيا", "المانيا", "خرطوم", "حديث", "رجل", "أفريقيا", "رصاص", "غيار", "بطن", "حمار", "عقرب", "شوكة", "صباح", "حبوب", "أخضر", "بن", "دخان", "طبلة", "نجم", "منديل", "حساب", "نعناع", "كرة", "مضرب", "طوق", "حب", "قمع", "حلبة", "زيتون", "بط", "زئبق", "قوس", "مدفع", "مركز", "لامع", "خلية", "قوة", "دودة", "وردة", "قهوة", "مصر", "لندن", "بطيخ", "موسكو", "دبي", "تركيا", "روما", "هملايا", "سور", "علم", "إمارة", "أمريكا", "أتلانتيس", "بريطانيا", "عبور", "فرنسا", "حجاب", "جني", "سودان", "أوروبا", "فندق", "ثلج", "تاج", "كرسي", "ذهب", "جاسوس", "مصباح", "مليونير", "عاج", "جندي", "مسرح", "حلقة", "بوق", "قلب", "حاجز", "شارب", "بارد", "بلاط", "لعبة", "جولة", "زحل", "غريب", "كريم", "جبل جليدي", "رجل ثلج", "حزام", "ممرضة", "طاولة", "حريق", "ماء", "طعم", "حمص", "ساحرة", "مصارع", "حياة", "شاطئ", "مهرج", "عملاق", "وجه", "قدم"},
}

translations = {
    ["en"] = {
        ["welcome"] = "<J>Welcome to <b>CODENAMES!</b> Press <b><VP>H</VP></b> to learn how to play.</J>",
        ["red"] = "RED",
        ["blue"] = "BLUE",
        ["blueTurn"] = "<b><p align='center'><font color='#ffffff'>BLUE TEAM'S TURN </b></p></font>",
        ["redTurn"] = "<b><p align='center'><font color='#ffffff'>RED TEAM'S TURN</b></p></font>",
        ["opponentSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>CONFIRM OPPONENT'S CLUE</font></p>",
        ["timeSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>TIME LIMIT</font></p>",
        ["startButton"] = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>START</font></p>",
        ["joinButton"] = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>JOIN</a></b></font></p>",
        ["clueConfirmation"] = "<p align='center'>The opponent's clue is <b>%s</b> for <b>%d</b> words. Do you confirm it?</p>",
        ["clueChecking"] = "<font size='10'><p align='center'><font color='%s'><b>%s</b></font> is checking the opponent's clue..</p></font>",
        ["clueInfo"] = "The clue is <b>%s</b> for <b>%d</b> words.",
        ["clueGameLog"] = "<b><font color='%s'>%s</b></font>'s clue is <font color='%s'><b>%s</b></font> for <b><font color='%s'>%d</b></font> words.",
        ["roomAdminInfo"] = "The room admin can change the settings and start the game at any time.",
        ["restartedGame"] = "<R> %s restarted the game. </R>",
        ["thinking"] = "<font color='#fafafa'><b> Thinking... </b></font>",
        ["blackGameOver"] = "<b><p align='center'><font size='10' color='#ffffff'>%s TEAM CONTACTED WITH THE ASSASIN AND LOST THE GAME! </b></p></font>",
        ["redTeamWon"] = "<b><p align='center'><font color='#ffffff'>RED TEAM WON! </b></p></font>",
        ["blueTeamWon"] = "<b><p align='center'><font color='#ffffff'>BLUE TEAM WON! </b></p></font>",
        ["validClue"] = "<p align='center'>Clue is valid! <b>%s</b> team can vote now.</p>",
        ["invalidClue"] = "<p align='center'>Clue is invalid! You can try <b><R>%d</R></b> more times. </p>",
        ["getRoomAdmin"] = "<p align='center'><font size='9'><a href='event:roomAdmin'><b>GET ROOM ADMIN</b></a></font></p>",
        ["contactedBystander"] = "<font color='%s'><b>%s TEAM</b></font> have made contact with <font color='#ac987f'>Bystander %s</font>",
        ["contactedAssassin"] = "<font color='%s'><b>%s TEAM</b></font> have made contact with <font color='#5B5B5B'>Assassin %s</font>",
        ["contactedRedAgent"] = "<font color='%s'><b>%s TEAM</b></font> have made contact with <font color='#8F2B1C'>Agent %s</font>",
        ["contactedBlueAgent"] = "<font color='%s'><b>%s TEAM</b></font> have made contact with <font color='#3284A3'>Agent %s</font>",
        ["noClueLog"] = "<font color='%s'>%s</font> didn't give a clue within the specified time.",
        ["noWordLog"] = "<font color='%s'>%s</font> didn't choose a word within the specified time.",
        ["noActionSpy"] = "The opponent Spymaster didn't take any action within the specified time and the clue approved.",
        ["approvedClue"] = "<font color='%s'>%s</font> approved the <font color='%s'>%s</font>'s clue.",
        ["notApprovedClue"] = "<font color='%s'>%s</font> didn't approve the <font color='%s'>%s</font>'s clue.",
        ["newGameStarting"] = "<p align='center'><font size='15'>New game is starting in <b>%d</b> seconds!</font></p>",
        ["votedFor"] = "%s voted for %s",
        ["moduleAdmins"] = "<J>Module Admins:</J> Mckeydown#0000, Indexinel#5948, Lays#1146",
        ["roomAdmin"] = "<J>Room Admin:</J> %s",
        ["forumTopic"] = "https://atelier801.com/topic?f=6&t=897423",
        ["lockedRoom"] = "%s has locked the room to %s mice.",
        ["roomPassword"] = "Room password changed by %s",
        ["kickedTeam"] = "%s kicked by %s",
        ["currentlyPlaying"] = "A game is currently being played, if you don't want to wait, type <J>!room</J> to create your own room.",
        ["createOwnRoom"] = "Create your own room: <V>/room <J>#codenames0<V>%s",
        ["shuffleButton"] = "<p align='center'><a href='event:shufflewords'><b>CHANGE WORDS</b></a></p>",
        ["shuffled"] = "<p align='center'><b>WORDS CHANGED, GAME IS STARTING IN %d SECONDS</b></p>",
        ["shuffleText"] = "<p align='center'><b>YOU CAN CHANGE WORDS IN %d SECONDS</b></p>"
    },

    ["tr"] = {
        ["welcome"] = "<J><b>CODENAMES</b>'e hoşgeldiniz! Nasıl oynanacağını öğrenmek için <b><VP>H</VP></b>'ye basın.</J>",
        ["red"] = "KIRMIZI",
        ["blue"] = "MAVİ",
        ["blueTurn"] = "<b><p align='center'><font color='#ffffff'>MAVİ TAKIMIN SIRASI</b></p></font>",
        ["redTurn"] = "<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIMIN SIRASI</b></p></font>",
        ["opponentSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>RAKİP İÇİN İPUCU ONAYI</font></p>",
        ["timeSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>SÜRE SINIRI</font></p>",
        ["startButton"] = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>BAŞLAT</font></p>",
        ["joinButton"] = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>KATIL</a></b></font></p>",
        ["clueConfirmation"] = "<p align='center'>Rakibin verdiği ipucu <b>%s</b> (<b>%d</b> kelime için). Kabul edilebilir mi?</p>",
        ["clueChecking"] = "<font size='10'><p align='center'><font color='%s'><b>%s</b></font> verilen ipucunun geçerli olup olmadığına karar veriyor..</font></p>",
        ["clueInfo"] = "Verilen ipucu <b>%s</b> (<b>%d</b> kelime için).",
        ["clueGameLog"] = "<b><font color='%s'>%s</b></font> adlı kullanıcının verdiği ipucu <font color='%s'><b>%s</b></font> (<b><font color='%s'>%d</b></font> kelime için).",
        ["roomAdminInfo"] = "Oda ayarlarını belirler, istediği zaman oyunu başlatabilir.",
        ["restartedGame"] = "<R> %s oyunu yeniden başlattı. </R>",
        ["thinking"] = "<font color='#fafafa'><b> Düşünüyor... </b></font>",
        ["blackGameOver"] = "<b><p align='center'><font size='10' color='#ffffff'>%s TAKIM ASSASIN İLE İLETİŞİME GEÇTİ VE OYUNU KAYBETTİ! </b></p></font>",
        ["redTeamWon"] = "<b><p align='center'><font color='#ffffff'>KIRMIZI TAKIM KAZANDI! </b></p></font>",
        ["blueTeamWon"] = "<b><p align='center'><font color='#ffffff'>MAVİ TAKIM KAZANDI! </b></p></font>",
        ["validClue"] = "<p align='center'>Verilen ipucu geçerli! <b>%s</b> takım seçim yapabilir.</p>",
        ["invalidClue"] = "<p align='center'>Verilen ipucu geçersiz! <b><R>%d</R></b> hakkınız kaldı.</p>",
        ["getRoomAdmin"] = "<p align='center'><font size='9'><a href='event:roomAdmin'><b>ODA YÖNETİCİSİ OL</b></a></font></p>",
        ["contactedBystander"] = "<font color='%s'><b>%s TAKIM</b></font> <font color='#ac987f'>Bystander %s</font> ile iletişime geçti.",
        ["contactedAssassin"] = "<font color='%s'><b>%s TAKIM</b></font> <font color='#5B5B5B'>Assassin %s</font> ile iletişime geçti.",
        ["contactedRedAgent"] = "<font color='%s'><b>%s TAKIM</b></font> <font color='#8F2B1C'>Agent %s</font> ile iletişime geçti.",
        ["contactedBlueAgent"] = "<font color='%s'><b>%s TAKIM</b></font> <font color='#3284A3'>Agent %s</font> ile iletişime geçti.",
        ["noClueLog"] = "<font color='%s'>%s</font> belirtilen zaman içerisinde ipucu vermedi.",
        ["noWordLog"] = "<font color='%s'>%s</font> belirtilen zaman içerisinde kelime seçimi yapmadı.",
        ["noActionSpy"] = "Rakip Spymaster belirtilen zaman içerisinde bir karar vermedi ve ipucu onaylandı.",
        ["approvedClue"] = "Spymaster <font color='%s'>%s</font>, Spymaster <font color='%s'>%s</font> tarafından verilen ipucunu onayladı.",
        ["notApprovedClue"] = "Spymaster <font color='%s'>%s</font>, Spymaster <font color='%s'>%s</font> tarafından verilen ipucunu onaylamadı.",
        ["newGameStarting"] = "<p align='center'><font size='15'>Yeni oyunun başlamasına <b>%d</b> saniye!</font></p>",
        ["votedFor"] = "%s, %s için oy verdi.",
        ["moduleAdmins"] = "<J>Modül Yöneticileri:</J> Mckeydown#0000, Indexinel#5948, Lays#1146",
        ["roomAdmin"] = "<J>Oda Yöneticisi:</J> %s",
        ["forumTopic"] = "https://atelier801.com/topic?f=6&t=897423",
        ["lockedRoom"] = "%s odayı %s fare ile sınırlandırdı.",
        ["roomPassword"] = "Oda şifresi %s tarafından değiştirildi.",
        ["kickedTeam"] = "%s adlı oyuncu %s tarafından takımdan atıldı.",
        ["currentlyPlaying"] = "Şu anda bir oyun oynanıyor, beklemek istemiyorsanız kendi odanızı oluşturmak için <J>!room</J> yazın.",
        ["createOwnRoom"] = "Kendi odanızı oluşturun: <V>/room <J>#codenames0<V>%s",
        ["shuffleButton"] = "<p align='center'><a href='event:shufflewords'><b><font size='9'>KELİMELERİ DEĞİŞTİR</font></b></a></p>",
        ["shuffled"] = "<p align='center'><b>KELİMELER DEĞİŞTİ, OYUN %d SANİYE SONRA BAŞLAYACAK!</b></p>",
        ["shuffleText"] = "<p align='center'><b>KELİMELERİ %d SANİYE İÇERİSİNDE DEĞİŞTİREBİLİRSİNİZ.</b></p>",
    },
    
    ["es"] = {
        ["welcome"] = "<J>¡Bienvenid@ <b>CODENAMES!</b> Presiona <b><VP>H</VP></b> para saber cómo jugar.</J>",
        ["red"] = "ROJO",
        ["blue"] = "AZUL",
        ["blueTurn"] = "<b><p align='center'><font color='#ffffff'>TURNO DEL EQUIPO AZUL</b></p></font>",
        ["redTurn"] = "<b><p align='center'><font color='#ffffff'>TURNO DEL EQUIPO ROJO</b></p></font>",
        ["opponentSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>CONFIRMAR PISTA RIVAL</font></p>",
        ["timeSetting"] = "<p align='right'><font size='10' color='#FFFFFF'>LÍMITE DE TIEMPO</font></p>",
        ["startButton"] = "<p align='center'><font size='14' color='#FFFFFF'><a href='event:startGame'>JUGAR</font></p>",
        ["joinButton"] = "<p align='center'><font color='#FFFFFF'><b><a href='event:joinTeam'>UNIRSE</a></b></font></p>",
        ["clueConfirmation"] = "<p align='center'>La pista del oponente es <b>%s</b> para <b>%d</b> palabra(s). ¿Estás de acuerdo con ello?</p>",
        ["clueChecking"] = "<font size='10'><p align='center'><font color='%s'><b>%s</b></font> está revisando la pista del oponente...</p></font>",
        ["clueInfo"] = "La pista es <b>%s</b> para <b>%d</b> palabra(s).",
        ["clueGameLog"] = "<b>La pista de <font color='%s'>%s</b></font> es <font color='%s'><b>%s</b></font> para <b><font color='%s'>%d</b></font> palabra(s).",
        ["roomAdminInfo"] = "El gestor de la sala puede cambiar los ajustes e iniciar la partida en cualquier momento.",
        ["restartedGame"] = "<R> %s ha reiniciado la partida. </R>",
        ["thinking"] = "<font color='#fafafa'><b> Pensando... </b></font>",
        ["blackGameOver"] = "<b><p align='center'><font size='10' color='#ffffff'>¡EL EQUIPO %s HIZO CONTACTO CON EL ASESINO Y HA PERDIDO EL JUEGO! </b></p></font>",
        ["redTeamWon"] = "<b><p align='center'><font color='#ffffff'>¡EL EQUIPO ROJO HA GANADO! </b></p></font>",
        ["blueTeamWon"] = "<b><p align='center'><font color='#ffffff'>¡EL EQUIPO AZUL HA GANADO! </b></p></font>",
        ["validClue"] = "<p align='center'>¡La pista es válida! El equipo <b>%s</b> puede votar ahora.</p>",
        ["invalidClue"] = "<p align='center'>¡Pista no válida! Puedes intentar <b><R>%d</R></b> veces más. </p>",
        ["getRoomAdmin"] = "<p align='center'><font size='9'><a href='event:roomAdmin'><b>OBTENER GESTIÓN DE SALA</b></a></font></p>",
        ["contactedBystander"] = "<font color='%s'><b>EL EQUIPO %s</b></font> ha hecho contacto con el <font color='#ac987f'>Observador %s</font>",
        ["contactedAssassin"] = "<font color='%s'><b>EL EQUIPO %s</b></font> ha hecho contacto con el <font color='#5B5B5B'>Asesino %s</font>",
        ["contactedRedAgent"] = "<font color='%s'><b>EL EQUIPO %s</b></font> ha hecho contacto con el <font color='#8F2B1C'>Agente %s</font>",
        ["contactedBlueAgent"] = "<font color='%s'><b>EL EQUIPO %s</b></font> ha hecho contacto con el <font color='#3284A3'>Agente %s</font>",
        ["noClueLog"] = "<font color='%s'>%s</font> no proporcionó una pista en el tiempo establecido.",
        ["noWordLog"] = "<font color='%s'>%s</font> no eligió una palabra en el tiempo establecido.",
        ["noActionSpy"] = "El Espía Maestro rival no tomó ninguna acción en el tiempo establecido por lo que la pista ha sido aprobada.",
        ["approvedClue"] = "<font color='%s'>%s</font> ha aprobado la pista de <font color='%s'>%s</font>.",
        ["notApprovedClue"] = "<font color='%s'>%s</font> no aprobó la pista de <font color='%s'>%s</font>.",
        ["newGameStarting"] = "<p align='center'><font size='15'>¡Una nueva partida comenzará en <b>%d</b> segundos!</font></p>",
        ["votedFor"] = "%s votó por %s",
        ["moduleAdmins"] = "<J>Administradores del Módulo:</J> Mckeydown#0000, Indexinel#5948, Lays#1146",
        ["roomAdmin"] = "<J>Gestor de la Sala:</J> %s",
        ["forumTopic"] = "https://atelier801.com/topic?f=6&t=897423",
        ["lockedRoom"] = "%s ha restringido la sala a %s ratones.",
        ["roomPassword"] = "Contraseña de la sala cambiada por %s",
        ["kickedTeam"] = "%s expulsad@ por %s",
        ["currentlyPlaying"] = "Una partida se está jugando en este momento. Si no quieres esperar, escribe <J>!room</J> para crear tu propia sala.",
        ["createOwnRoom"] = "Crea tu propia sala: <V>/room <J>#codenames0<V>%s",
        ["shuffleButton"] = "<p align='center'><a href='event:shufflewords'><b><font size='9'>CAMBIAR PALABRAS</font></b></a></p>",
        ["shuffled"] = "<p align='center'><b>PALABRAS CAMBIANDAS, LA PARTIDA COMENZARÁ EN %d SEGUNDOS</b></p>",
        ["shuffleText"] = "<p align='center'><b>PODRÁS CAMBIAR PALABRAS EN %d SEGUNDOS</b></p>",
    },
}

help = {
    ["en"] = {
    {
        "HOW TO PLAY",

        "Codenames is a game for two teams. There is a grid of <b>25</b> words."..
        " Some of them are secretly assigned to the <font color='#8f2b1c'><b>Red Team</b></font>, some to the <font color='#3284a3'><b>Blue Team</b></font>. One player from each team is the Spymaster, and only Spymasters see which words belong to which team."..
        " Spymasters take turns giving clues to their Operatives, trying to lead them to guessing their team's words. The team that guesses all their words first wins the game.\n" ..
        "\n<b><font color='#f5d8b6' size='14'>TEAMS</font></b>\n" ..
        "One player from each team should click on Join as Spymaster. They will then see the colors of the cards. Everyone else should click on Join as Operative. They do not see the colors of the cards. Click your username to leave your team, you are able to do that on lobby.",
        

        "<b><font color='#f5d8b6' size='14'>CLUES</font></b>\n" ..
        "Spymasters give clues." ..
        " When it's your turn to give clue, an input and number board will appear on the screen."..
        " You must type one word clue in the input, select how many cards are related with this word on the number board then click the send button to make your clue official."..
        " Your Operatives will only see the clue and the number of related cards.\n"..
        "\n<p align='left'>Watch out for the black card – it’s an Assassin! Avoid clues that would lead to the assassin or to the other team's words.</p>"..
        "\n<p align='left'>Some clues are not allowed, for example using any form of any word on the board. Please don't forget the check rules tab later.</p>",



        "<b><font color='#f5d8b6' size='14'>GUESSING</font></b>\n" ..
        "Operatives guess the words based on the Spymaster’s clue. You can discuss the clue with your teammates. You can also suggest a guess by tapping the card you think matches the clue. "..
        "Half of your teammates must vote for the same word to make guess official.\n\n"..
        "If you guess a word of your team's color, you may guess again. You'll want to guess as many words as your Spymaster indicated. "..
        "<p align='center'>You can also guess unsolved clues from previous turns.</p>\n",

        "<b><font color='#f5d8b6' size='14'>WINNING & LOSING</font></b>\n"..
        "Teams alternate turns. A team wins once all their words have been guessed. They lose if they guess the Assassin!\n\n"..
        "<b><font color='#f5d8b6' size='14'>SETTINGS</font></b>\n"..
        "<b><PT>CONFIRM OPPONENT'S CLUE:</PT></b> Spymasters must confirm each other's clues, an unconfirmed clue cannot be released and a different clue must be given. Each Spymaster has 3 chances to give a valid clue on their turn.\n\n"..
        "<b><PT>TIME LIMIT:</PT></b> It imposes a time limit on giving clues and choosing words. If no action is taken within the specified time, the turn passes to the other team. (180 seconds for clues, 120 seconds for choosing words)",

    },
    {
        "RULES",
        "• The clue is strictly limited to <b>one word and one number.</b> The Spymaster <u>shouldn't</u> comment on players’ guesses, to avoid giving up any unwanted information.\n\n"..
        "• Your clue is supposed to be <b>a single word</b>, but Spymasters can agree on more flexible rules. For example, you can agree to allow two-word place names, like NEW YORK.\n\n"..
        "• Don't use <b>any form of a word in the grid</b> as a clue. Don't type in SUGAR as a clue for SUGAR and CHOCOLATE, and don't try to get around this rule using clues like SUGARY or SUGARCANE.\n\n",
        "• Give clues <b>in the language you are playing on</b>. Don't use foreign words to give extra information.\n\n"..
        "• The clue needs to relate to the <b>meaning of the words</b>. Don't give clues about the letters in the word or its position in the grid.\n\n"..
        "• <b>DO NOT TROLL.</b> Trolling in a way that affects the game progress will cause get banned from the module <u>permanently.</u>\n\n"..
        "• Keep your clues in the spirit of the game, and if you aren't sure, ask the opposing Spymaster (using some chat channel that the other players can't hear or see).",
    },
    {
        "CREDITS",
        "<p align='center'><b><font color='#f5d8b6' size='13'>DEVELOPMENT & DESIGN</font></b>\n"..
        "<font size='12'><V>Mckeydown</V><G>#0000</G></font>\n\n"..
        "<p align='center'><b><font color='#f5d8b6' size='13'>MODULE HOSTER                       GRAND ADVISOR</font></b></p>"..
        "<p align='left'><font color='#f5d8b6' size='13'><V>       Indexinel</V><G>#5948</G>                         <V>Lays</V><G>#1146</G></font></p>\n"..
        "<b><font color='#f5d8b6' size='13'>TESTERS</font></b>\n"..
        "<font size='12'><V>Kucukstarr</V><G>#3074</G>, <V>Monteriple</V><G>#3222</G>, <V>Nnaaaz</V><G>#0000</G>, <V>Tactcat</V><G>#0000</G>, <V>Fatihmilano</V><G>#0000</G>, <V>Hotspotower</V><G>#0000</G>, <V>Neonstrayzer</V><G>#0000</G>, <V>Ulubilge</V><G>#0000</G>, <V>Meltlemon</V><G>#8284</G>, <V>Lagneia</V><G>#2678</G>, <V>Yoda</V><G>#7355</G>, <V>Marijuana</V><G>#0387</G>, <V>Lowdemort</V><G>#9914</G>, <V>Nehirsenn</V><G>#0000</G></font>",
    }
},
    ["tr"] = {
        {
        "OYNANIŞ",

        "Codenames iki takımdan oluşan bir oyundur. Oyunda 25 kelimelik bir tablo bulunmaktadır."..
        " Bu kelimelerden bazıları <font color='#8f2b1c'><b>Kırmızı Takım</b></font>'a, bazıları ise <font color='#3284a3'><b>Mavi Takım</b></font>'a atanır. Her takımdan bir oyuncu Spymaster'dır ve sadece Spymaster'lar hangi kelimelerin hangi takıma ait olduğunu görebilir."..
        " Spymaster'lar sırayla Operative'lerine ipucu verir ve kendi kelimelerini bildirmeye çalışır. Tüm kelimeleri ilk tahmin eden takım oyunu kazanır.\n" ..
        "\n<b><font color='#f5d8b6' size='14'>TAKIMLAR</font></b>\n" ..
        "Her takımdan bir oyuncu Spymaster olarak oyuna katılmalıdır. Daha sonra kartların renklerini görebilirler. Geriye kalan herkes Operative olarak oyuna katılabilir. Operative'ler kartların renklerini göremez.",
        

        "<b><font color='#f5d8b6' size='14'>İPUÇLARI</font></b>\n" ..
        "Spymaster'lar ipuçları verir." ..
        " İpucu verme sırası size geldiğine, ekranda bir kutucuk ve sayı paneli belirecektir."..
        " Kutucuğa tek kelimelik bir ipucu yazmalı ve sayı tahtasından bu kelimeyle ilgili kaç adet kelime olduğunu seçmelisiniz. Daha sonra onaylamak için 'SEND' butonuna tıklayın."..
        " Operative'leriniz yalnızca verdiğiniz ipucunu ve kart sayısını görecektir.\n"..
        "\nSiyah karta dikkat edin - bu bir Suikastçı! Suikastçıya veya diğer takımın kelimelerine yol açacak ipuçları vermekten kaçının.\n"..
        "\nBazı ipuçlarına izin verilmez, örneğin tablodaki herhangi bir kelimenin farklı bir formunu kullanmak. Kurallar sekmesini kontrol etmeyi unutmayın.",



        "<b><font color='#f5d8b6' size='14'>TAHMİN ETMEK</font></b>\n" ..
        "Operative'ler, Spymaster'ın ipucuna dayanarak kelimeleri tahmin etmeye çalışır. Verilen ipucunu takım arkadaşlarınızla tartışabilirsiniz. İpucuyla eşleştiğini düşündüğünüz kelimeye tıklayarak da bir tahminde bulunabilirsiniz."..
        "Tahminin geçerli olması için takım arkadaşlarınızın yarısının aynı kelime için oy vermiş olması gerekir.\n\n"..
        "Takımınızın renginden bir kelime tahmin ederseniz, tekrar tahmin hakkınız olur.\n\n"..
        "Ayrıca önceki turlardan bulamadığınız ipuçlarını da tahmin edebilirsiniz.\n",

        "<b><font color='#f5d8b6' size='14'>KAZANMAK & KAYBETMEK</font></b>\n"..
        "Takımlar sırayla oynar. Bütün kelimeleri ilk tahmin eden takım kazanır. Assassin'i (siyah kelimeyi) tahmin eden takım kaybeder!\n\n"..
        "<b><font color='#f5d8b6' size='14'>AYARLAR</font></b>\n"..
        "<b><PT>RAKİP İÇİN İPUCU ONAYI:</PT></b> Spymaster'ların birbirlerinin ipuçlarını onaylaması gerekir, onaylanmayan ipucu geçersiz sayılır ve farklı bir ipucu verilmesi gerekir. Her Spymaster'ın geçerli bir ipucu verebilmek için 3 hakkı vardır.\n\n"..
        "<b><PT>SÜRE SINIRI:</PT></b> İpucu verme ve kelime seçimi yapmaya süre sınırlaması getirir. Belirtilen sürede gerekli aksiyon alınmazsa sıra diğer takıma geçer. (İpucu verilirken 180 saniye, kelime seçimi yaparken 120 saniye.)",

    },
    {
        "KURALLAR",
        "• İpucu kesinlikle <b>bir kelime ve bir sayı ile sınırlıdır.</b> Spymaster, istenmeyen bilgileri vermekten kaçınmak için oyuncuların tahminleri hakkında yorum <u>yapmamalıdır</u>.\n\n"..
        "• İpucunuzun <b>tek bir kelime</b> olması gerekiyor, ancak Spymaster'lar daha esnek kurallar üzerinde anlaşabilirler. Örneğin, NEW YORK gibi iki kelimelik yer adlarına izin vermeyi kabul edebilirsiniz.\n\n"..
        "• İpucu olarak <b>tabloda bulunan kelimelerin herhangi bir biçimini</b> kullanmayın. Örneğin ŞEKER ve ÇİKOLATA'nın tabloda olduğunu ve sizin kelimeniz olduğunu varsayalım, bu kelimeler için ipucu olarak ŞEKER yazmayın. ŞEKERLİ veya ŞEKERLİK gibi ipuçlarını kullanarak bu kuralı aşmaya çalışmayın.\n\n",
        "• <b>Oynadığınız dilde</b> ipuçları verin. Ekstra bilgi vermek için yabancı kelimeler kullanmayın.\n\n"..
        "• Verdiğiniz ipucunun <b>anlamlı olması</b> gerekir. Kelimedeki harfler veya tablodaki konumu hakkında ipucu vermeyin.\n\n"..
        "• <b>TROLL YAPMAYIN.</b> Oyunun oynanışını etkileyecek şekilde troll yapmak, modülden <u>kalıcı olarak</u> yasaklanmanıza neden olur.\n\n"..
        "• Vereceğiniz ipucunun geçerli olup olmadığından emin değilseniz rakip Spymaster'a sorun (diğer oyuncuların duyamayacağı veya göremediği bir sohbet kanalı kullanarak).",
    },
    {
        "MERAKLISINA",
        "<p align='center'><b><font color='#f5d8b6' size='13'>GELİŞTİREN & TASARLAYAN</font></b>\n"..
        "<font size='12'><V>Mckeydown</V><G>#0000</G></font>\n\n"..
        "<p align='center'><b><font color='#f5d8b6' size='13'>MODÜL HOSTER                       BÜYÜK DANIŞMAN</font></b></p>"..
        "<p align='left'><font color='#f5d8b6' size='13'><V>     Indexinel</V><G>#5948</G>                          <V>Lays</V><G>#1146</G></font></p>\n"..
        "<b><font color='#f5d8b6' size='13'>TEST EDENLER</font></b>\n"..
        "<font size='12'><V>Kucukstarr</V><G>#3074</G>, <V>Monteriple</V><G>#3222</G>, <V>Nnaaaz</V><G>#0000</G>, <V>Tactcat</V><G>#0000</G>, <V>Fatihmilano</V><G>#0000</G>, <V>Hotspotower</V><G>#0000</G>, <V>Neonstrayzer</V><G>#0000</G>, <V>Ulubilge</V><G>#0000</G>, <V>Meltlemon</V><G>#8284</G>, <V>Lagneia</V><G>#2678</G>, <V>Yoda</V><G>#7355</G>, <V>Marijuana</V><G>#0387</G>, <V>Lowdemort</V><G>#9914</G>, <V>Nehirsenn</V><G>#0000</G></font>",
    }
},

    ["es"] = {
        {
            "CÓMO JUGAR",
        
            "Codenames es un juego de dos equipos. Hay una cuadrícula de <b>25</b> palabras."..
            " Algunas de esas están secretamente asignadas al <font color='#8f2b1c'><b>Equipo Rojo</b></font>, otras al <font color='#3284a3'><b>Equipo Azul</b></font>. Un jugador de cada equipo es el Espía Maestro y sólo ellos pueden ver qué palabras pertenecen a cada equipo."..
            " Los Espías Maestros toman turnos para dar pistas a sus Operativos, tratando de llevarlos a adivinar las palabras de su equipo. El equipo que adivine todas sus palabras primero, ganará la partida.\n" ..
            "\n<b><font color='#f5d8b6' size='14'>EQUIPOS</font></b>\n" ..
            "Un jugador de cada equipo debe cliquear en Unirse como Espía Maestro, este verá el color de las cartas. Todos los demás deben cliquear en Unirse como Operativos, estos no verán el color de las cartas. Has clic en tu nombre para salir de tu equipo, puedes hacerlo mientras no haya comenzado la partida.",
                
            "<b><font color='#f5d8b6' size='14'>PISTAS</font></b>\n" ..
            "El Espía Maestro da pistas." ..
            " Cuando es tu turno de dar una pista, una entrada de texto y un tablero de números aparecerá en la pantalla."..
            " Debes escribir una palabra en esa entrada y seleccionar en el tablero de números cuántas cartas están relacionadas con esa palabra, luego deberás darle al botón de Enviar para presentar tu pista."..
            " Tus Operativos sólo verán la pista y el número de cartas relacionadas a ella.\n"..
            "\n¡Ten cuidado con la carta negra, es una Asesina! Evita pistas que puedan llevar a la carta asesina o palabras del equipo rival."..
            "\n\nAlgunas pistas no están permitidas, por ejemplo: usar cualquier palabra que esté en el tablero.",
        
            "<b><font color='#f5d8b6' size='14'>ADIVINANZA</font></b>\n" ..
            "Los Operativos deben adivinar palabras en base a la pista del Espía Maestro. Puedes discutir la pista con tus compañeros. También puedes sugerir una palabra tocando la carta que pienses que encaja con la pista. "..
            "La mitad de tu equipo debe votar por la misma palabra para que el voto sea enviado.\n\n"..
            "Si adivinas una palabra del color de tu equipo, quizás debas adivinar de nuevo. Querrás adivinar cuantas palabras te indique tu Espía Maestro. "..
            "\n\n<p align='center'>También puedes adivinar pistas que no hayan sido resolvidas en turnos anteriores.</p>\n",
        
            "<b><font color='#f5d8b6' size='14'>VICTORIA Y DERROTA</font></b>\n"..
            "Los equipos se alternan los turnos. Un equipo ganará cuando todas sus palabras hayan sido adivinadas. ¡Pederán si adivinan la carta Asesina!\n\n"..
            "<b><font color='#f5d8b6' size='14'>AJUSTES</font></b>\n"..
            "<b><PT>CONFIRMAR PISTA RIVAL:</PT></b> Los Espías Maestros deben confirmar la pista de su contraparte. Si una puesta no es aprobada, esta no podrá ser enviada y se deberá proporcionar una pista distinta. Cada Espía Maestro tiene 3 intentos para proporcionar una pista válida en su turno.\n\n"..
            "<b><PT>LÍMITE DE TIEMPO:</PT></b> Impone un tiempo límite al dar pistas y elegir palabras. Si no se toma ninguna acción en el tiempo especificado, el turno pasará al equipo rival (180 segundos para pistas, 120 para elegir paabras).",
        },
        {
            "REGLAS",
            "• La pista está estrictamente limitada a <b>una palabra y un número</b>. El Espía Maestro <u>no debe</u> comentar en la discusión de los jugadores, para evitar proporcionar información no deseada.\n\n"..
            "• Tu pista debería de ser <b>una sola palabra</b>, pero los Espías Maestros pueden acordar reglas más flexibles. Por ejemplo, pueden acordar permitir nombres de lugares de múltiples palabras, como NUEVA YORK.\n\n"..
            "• No utilices <b>ninguna forma de alguna palabra en el tablero</b> como pista. No escribas AZÚCAR como pista para AZÚCAR y CHOCOLATE, no intentes evadir esta regla utilizando pistas como AZUCARADO o AZUCAROSO.\n\n",
            "• Da pistas<b>en el idioma en el que estés jugando</b>. No utilices palabras foráneas para proporcionar información demás.\n\n"..
            "• La pista necesita estar relacionada con el <b>significado de las palabras</b>. No proporciones pistas en la forma de letras en la palabra o su posición en el tablero.\n\n"..
            "• <b>NO TROLLEES.</b> Trollear de una forma que afecte el progreso del juego puede causar que se te prohiba jugar el módulo de manera <u>permanente</u>.\n\n"..
            "• Mantén tus pistas dentro del espíritu del juego. Si no estás seguro, pregúntale al Espía Maestro enemigo (utilizando un canal que los otros jugadores no puedan ver).",
        },
        {
            "CRÉDITOS",
            "<p align='center'><b><font color='#f5d8b6' size='13'>DESARROLLO Y DISEÑO</font></b>\n"..
            "<font size='12'><V>Mckeydown</V><G>#0000</G></font>\n\n"..
            "<p align='center'><b><font color='#f5d8b6' size='13'>HOST DEL MÓDULO                       GRAN ASESOR</font></b></p>"..
            "<p align='left'><font color='#f5d8b6' size='13'><V>       Indexinel</V><G>#5948</G>                         <V>Lays</V><G>#1146</G></font></p>\n"..
            "<b><font color='#f5d8b6' size='13'>AYUDANTES</font></b>\n"..
            "<font size='12'><V>Kucukstarr</V><G>#3074</G>, <V>Monteriple</V><G>#3222</G>, <V>Nnaaaz</V><G>#0000</G>, <V>Tactcat</V><G>#0000</G>, <V>Fatihmilano</V><G>#0000</G>, <V>Hotspotower</V><G>#0000</G>, <V>Neonstrayzer</V><G>#0000</G>, <V>Ulubilge</V><G>#0000</G>, <V>Meltlemon</V><G>#8284</G>, <V>Lagneia</V><G>#2678</G>, <V>Yoda</V><G>#7355</G>, <V>Marijuana</V><G>#0387</G>, <V>Lowdemort</V><G>#9914</G>, <V>Nehirsenn</V><G>#0000</G></font>",
        }
    }

}

commandsPage = {
    ["en"] = {
    "<font color='#ffffff' size='20'><p align='center'>COMMANDS & KEYS</font></p>",
    "<b><p align='left'><font size='13'><CS>ROOM ADMIN COMMANDS</CS></font></p></b>"..
    "<PT><b>!restart</b></PT> — Resets settings, teams, cards, scores, logs and take you back to the lobby.\n"..
    "<b><PT>!ban</PT> <V>PlayerName</V><G>#tag</G></b> — The specified player can't join any team, can't see the cards and clues.\n"..
    "<b><PT>!uban</PT> <V>PlayerName</V><G>#tag</G></b> — Removes the effects of ban command from specified player.\n"..
    "<b><PT>!lock</PT> <V>[number]</V></b> — Sets a limit for the number of players in the room.\n"..
    "<b><PT>!pw</PT> <V>[password]</V></b> — Sets room password.\n"..
    "<b><PT>!kick</PT> <V>PlayerName</V><G>#tag</G></b> — Kicks specified player from the team.\n\n",
    "<b><p align='left'><font size='13'><CS>PLAYER COMMANDS</CS></font></p></b>"..
    "<b><PT>!admins</PT></b> — Shows the module admins.\n"..
    "<b><PT>!admin</PT></b> — Shows the room admin.\n"..
    "<b><PT>!forum</PT></b> — Module forum thread.\n"..
    "<b><PT>!room</PT></b> — Prints your own room.\n\n"..
    "<b><p align='left'><font size='13'><CS>KEYS</CS></font></p></b>"..
    "<b><PT>[H]</PT></b> — Shows the help page.\n"..
    "<b><PT>[K]</PT></b> — Shows the commands and keys page.\n"..
    "<b><PT>[CTRL]</PT></b> — Shows the game logs.\n"..
    "<b><PT>[LSHIFT]</PT></b> — Shows the team logs you are in.\n",
},
    ["tr"] = {
    "<font color='#ffffff' size='19'><p align='center'>KOMUTLAR & TUŞLAR</font></p>",
    "<b><p align='left'><font size='13'><CS>KOMUTLAR</CS></font> <font size='10'><N2>(SADECE ODA YÖNETİCİLERİ)</N2></font></p></b>"..
    "<PT><b>!restart</b></PT> — Ayarları, takımları, kartları, skorları, kayıtları sıfırlar ve sizi lobiye yönlendirir.\n"..
    "<b><PT>!ban</PT> <V>KullanıcıAdı</V><G>#etiket</G></b> — Belirtilen oyuncu herhangi bir takıma katılamaz, kartları ve ipuçlarını göremez.\n"..
    "<b><PT>!uban</PT> <V>KullanıcıAdı</V><G>#etiket</G></b> — Belirtilen kullanıcıdan ban komutunun etkilerini kaldırır.\n"..
    "<b><PT>!lock</PT> <V>[sayı]</V></b> — Odadaki oyuncu sayısı için bir sınır belirler.\n"..
    "<b><PT>!pw</PT> <V>[şifre]</V></b> — Oda şifresini ayarlar.\n"..
    "<b><PT>!kick</PT> <V>PlayerName</V><G>#tag</G></b> — Belirtilen kullanıcıyı takımdan atar.\n\n",
    "<b><p align='left'><font size='13'><CS>OYUNCU KOMUTLARI</CS></font></p></b>"..
    "<b><PT>!admins</PT></b> — Modül yöneticilerini gösterir.\n"..
    "<b><PT>!admin</PT></b> — Oda yöneticisini gösterir.\n"..
    "<b><PT>!forum</PT></b> — Modül forum konusu.\n"..
    "<b><PT>!room</PT></b> — Odanızı yazdırır.\n\n"..
    "<b><p align='left'><font size='13'><CS>TUŞLAR</CS></font></p></b>"..
    "<b><PT>[H]</PT></b> — Yardım sayfasını gösterir.\n"..
    "<b><PT>[K]</PT></b> — Komutlar ve Tuşlar sayfasını gösterir.\n"..
    "<b><PT>[CTRL]</PT></b> — Oyun geçmişini gösterir.\n"..
    "<b><PT>[LSHIFT]</PT></b> — İçinde bulunduğunuz takımın ipucu geçmişini gösterir.\n",
},  
    ["es"] = {
    "<font color='#ffffff' size='18'><p align='center'>COMANDOS Y TECLAS</font></p>",
    "<b><p align='left'><font size='13'><CS>COMANDOS DE GESTOR</CS></font></p></b>"..
    "<PT><b>!restart</b></PT> — Reinicia los ajustes, equipos, cartas, puntuaciones, registros y te regresa a la sala de espera.\n"..
    "<b><PT>!ban</PT> <V>PlayerName</V><G>#tag</G></b> — El jugador especificado no se podrá unir a ningún equipo, ni podrá ver las cartas o pistas.\n"..
    "<b><PT>!uban</PT> <V>PlayerName</V><G>#tag</G></b> — Remueve los efectos del comando ban para el jugador especificado.\n"..
    "<b><PT>!lock</PT> <V>[number]</V></b> — Establece un límite para el número de jugadores en la sala.\n"..
    "<b><PT>!pw</PT> <V>[password]</V></b> — Establece la contraseña de la sala.\n"..
    "<b><PT>!kick</PT> <V>PlayerName</V><G>#tag</G></b> — Expulsa al jugador especificado de un equipo.\n\n",
    "<b><p align='left'><font size='13'><CS>COMANDOS DE JUGADORES</CS></font></p></b>"..
    "<b><PT>!admins</PT></b> — Muestra a los administradores del módulo.\n"..
    "<b><PT>!admin</PT></b> — Muestra al gestor del la sala.\n"..
    "<b><PT>!forum</PT></b> — Hilo del Módulo en el foro.\n"..
    "<b><PT>!room</PT></b> — Prints your own room.\n\n"..
    "<b><p align='left'><font size='13'><CS>TECLAS</CS></font></p></b>"..
    "<b><PT>[H]</PT></b> — Muestra la pestaña de ayuda.\n"..
    "<b><PT>[K]</PT></b> — Muestra la pestaña de teclas y comandos.\n"..
    "<b><PT>[CTRL]</PT></b> — Muestra los registros de la partida.\n"..
    "<b><PT>[LSHIFT]</PT></b> — Muestra los registros del equipo en el que estás.\n",
    },
}

tips = {
    ["en"] = {
        "Click the button on the top left to be the room admin!",
        "You need at least <b>4</b> players to start the game!",
        "If you want to leave your team, click on your username.",
        "The team that receives the first clue has <b>9</b> agents on the field!",
        "The other team has <b>8</b> agents on the field!",
        "Clue cannot exceed <b>20</b> characters!",
        "You can't give more words than the remaining number of cards!",
        "Press <b>[CTRL]</b> to see game log.",
        "Press <b>[LSHIFT]</b> to see your team's clue log.",
        "You can play in 6 different languages: EN, TR, FR, ES, PT, AR",
        "Create your own room with: <b><J>#codenames0</J><V>PlayerName</V><G>#tag</G></b>",
    },

    ["tr"] = {
        "Oda yöneticisi olmak istiyorsan, sol üstte bulunan butona tıkla!",
        "Oyunu başlatabilmek için en az <b>4</b> oyuncuya ihtiyacınız var!",
        "Takımınızdan ayrılmak istiyorsanız, kullanıcı adınıza tıklayın.",
        "İlk ipucu alan takımın sahada <b>9</b>, diğer takımın <b>8</b> ajanı bulunur!",
        "İpucu <b>20</b> karakterden fazla olamaz!",
        "Kalan kart sayısından fazla kelime veremezsiniz!",
        "Oyun geçmişini görmek için <b>[CTRL]</b> tuşuna basın.",
        "Takımınızın ipucu geçmişini görmek için <b>[LSHIFT]</b> tuşuna basın.",
        "Oyunu 6 farklı dilde oynayabilirsiniz: EN, TR, FR, ES, PT, AR",
        "Kendi odanızı oluşturun: <b><J>#codenames0</J><V>KullanıcıAdı</V><G>#etiket</G></b>",
    },
    ["es"] = {
        "¡Has clic en el botón superior izquierdo para ser gestor de sala!!",
        "¡Necesitas al menos <b>4</b> jugadores para jugar!",
        "Si deseas salir de tu equipo, has clic en tu nombre.",
        "<font size='10'>¡El Equipo que elige la primera pista tendrá <b>9</b> cartas en el tablero!</font>",
        "¡El otro equipo tendrá <b>8</b> cartas en el tablero!",
        "¡Las pistas no pueden exceder los <b>20</b> caracteres!",
        "¡No puedes dar más pistas que el número restante de cartas!",
        "Presiona <b>[CTRL]</b> para ver el registro de la partida.",
        "Presiona <b>[LSHIFT]</b> para ver el registro de pistas de tu equipo.",
        "Puedes jugar en 6 idiomas distintos: EN, TR, FR, ES, PT, AR",
        "<font size='10'>Crea tu propia sala escribiendo <b><J>#codenames0</J><V>PlayerName</V><G>#tag</G></b></font>",
    },
}


images = {
    cards = {
    red = "18234254e67.png", 
    blue = "18234259ab2.png",
    yellow = "1823425e7b6.png",
    black = "182342634af.png" },

    join = { red = "18256983759.png", blue = "18256979f5d.png" },
    settings = { on = "1826568f84b.png", off = "1826569445c.png" },

    card_selected = {
    red = "18248860660.png",
    blue = "1824885ba5f.png",
    yellow = "1824886525e.png",
    black = "18248856e5f.png", },

    help = {
    image_1 = "1828638111d.png",
    image_2 = "18284aa6a69.png",
    image_3 = "18284aab665.png", },

    commands = {
    image_1 = "182bc8bbd5a.png",
    image_2 = "1829f074270.png", },

    
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
    clue_input = "18301921061.png",
    vote_sign = "1824886ea60.png",
    game_logs = "18248843e60.png",
    time_bg = "1826569dc5b.png",
}

textAreas = {
    help = {
        tab1 = 54,
        tab2 = 55,
        tab3 = 56,
        next = 57,
        prev = 58,
        titles = 59,
        main = 60,
        close = 61,
    },

    commands = {
        title = 62,
        main = 63,
        close = 64
    },

    join_blue_operative = 26,
    join_red_operative = 27,
    join_blue_spymaster = 28,
    join_red_spymaster = 29,
    leave_blue_op = 30,
    leave_blue_op1 = 31,
    leave_blue_op2 = 32,
    leave_blue_op3 = 33,
    leave_red_op = 34,
    leave_red_op1 = 35,
    leave_red_op2 = 36,
    leave_red_op3 = 37,
    update_blue_spy = 38,
    update_red_spy = 39,
    clue_text = 40,
    clue_number = 41,
    game_log = 42,
    clue_log = 43,
    turn_text = 44,
    opponent_setting = 45,
    time_settings = 46,
    opponent_button = 47,
    time_button = 48,
    start_button = 49,
    room_admin = 50,
    time = 51,
    blue_count = 52,
    red_count = 53,
    clue_num = 65,
    clue_num1 = 66,
    clue_num2 = 67,
    clue_num3 = 68,
    clue_num4 = 69,
    clue_num5 = 70,
    clue_num6 = 71,
    clue_num7 = 72,
    clue_num8 = 73,
    clue_num9 = 74,
    clue_background = 75,
    new_game_starting = 76,
    commands_next = 77,
    commands_prev = 78,
    shuffle_words = 79,
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
    status = 0,
    guessCount = 0,
    blueTurn = false,
    redTurn = false,
    firstTurn = true,
    canVote = false,
    canGiveClue = true,
}

admins = {["Mckeydown#0000"] = true, ["Indexinel#5948"] = true, ["Lays#1146"] = true}
roomAdmin = nil
banList = {}

voted = {}
teams = {}
operatives = {red = {}, blue = {}}
spymasters = {}
clues = {red = {}, blue={}}
gameLog = {}
keys = {gameLogKey = {}, clueLogKey = {}, helpKey = true, commandsKey = true}
settings = { clue = false, time = false, }
colors = {["red"] = "#8F2B1C", ["blue"] = "#3284a3"}
last_enter = 0
shuffleVotes = {}

-- Lays's Image --
do
    local playerImages = {}

    local addImage = tfm.exec.addImage
    local removeImage = tfm.exec.removeImage

    ui._imageCleanup = function(name)
        if playerImages[name] then
            playerImages[name] = nil
        end
    end

    ui.addImage = function(key, imageId, target, x, y, name, ...)
        if not name then
            for pname in pairs(tfm.get.room.playerList) do
                ui.addImage(key, imageId, target, x, y, pname, ...)
            end

            return
        end

        local id = addImage(imageId, target, x, y, name, ...)

        if id then
            playerImages[name] = playerImages[name] or {}

            -- Removes previous image
            if playerImages[name][key] then
                removeImage(playerImages[name][key])
            end

            playerImages[name][key] = id
        end
    end

    ui.removeImage = function(key, name, ...)
        if not name then
            for pname in pairs(tfm.get.room.playerList) do
                ui.removeImage(key, pname, ...)
            end

            return
        end

        local id

        if name then
            id = playerImages[name] and playerImages[name][key]
        end

        if id then
            removeImage(id, ...)
            playerImages[name][key] = nil
        end
    end
end

blueVoteCount = #operatives["blue"] / 2
redVoteCount = #operatives["red"] / 2

roomLang = tfm.get.room.language
if translations[roomLang] == nil then roomLang = "en" end


tfm.exec.disableAutoShaman(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
system.disableChatCommandDisplay()
tfm.exec.disableMortCommand(true)

if tfm.get.room.isTribeHouse then
    tfm.exec.chatMessage(translations[roomLang].welcome, nil)
end


function gameStatus()
    checkRoomAdmin()
    if gameState.status == 0 then
        tfm.exec.newGame(7911404)
        for n, player in pairs(tfm.get.room.playerList) do 
            system.bindKeyboard(n, 72, false) system.bindKeyboard(n, 75, false) 
            if tfm.get.room.name:lower():match(n:lower()) then roomAdmin = n end
        end
    end

    if gameState.status == 1 then
        tfm.exec.newGame(7911404)
    end
end

function startGame(name)
    if roomAdmin ~= name then return end
    local checkOperatives = (#operatives["blue"] >= 1 and #operatives["red"] >= 1)
    local checkSpymasters = (spymasters["blue"] ~= nil and spymasters["red"] ~= nil) 
    
    if checkOperatives and checkSpymasters and gameState.status ~= 1 then
        gameState.status = 1
        gameStatus()
    end
end

function eventNewGame()
    last_enter = os.time()
    loadGameUI()
    if gameState.status == 0 then return end

    for n, player in pairs(tfm.get.room.playerList) do 
        system.bindKeyboard(n, 17, false) system.bindKeyboard(n, 16, false) system.bindKeyboard(n, 72, false) system.bindKeyboard(n, 75, false) 
        if tfm.get.room.name:lower():match(n:lower()) then 
            roomAdmin = n
        end
    end

    wordsSize = math.floor(#words[roomLang] / 25)
    roundWords = {} roundCardTypes = {}
    redCount = math.random(8,9) blueCount = nil

    if redCount == 8 then blueCount = 9 else blueCount = 8 end

    ui.addImage("shuffle_img", "182bc8c095c.png", ":80", 465, 368,nil,1, 1, 3.14)
    ui.addTextArea(textAreas.shuffle_words, string.format(translations[roomLang].shuffleButton),nil,340,345,120,20,0,0,1,true) 

    tfm.exec.setGameTime(15)
    shuffleWords(size)
    updateCardsCount()

    gameState.status = 6
end

function eventNewPlayer(n)
    tfm.exec.chatMessage(translations[roomLang].welcome, n)
    checkRoomAdmin()
    loadGameUI(n)
    updatePlayerTeam("red", false, n)
    updatePlayerTeam("blue", false, n)
    updatePlayerTeam("red",true,n)
    updatePlayerTeam("blue",true,n)
    system.bindKeyboard(n, 72, false) 
    system.bindKeyboard(n, 75, false) 
    checkBan("ban",n)

    if gameState.status >= 1 then 
        system.bindKeyboard(n, 17, false) system.bindKeyboard(n, 16, false)
        showRoundCards(false, n)
        if spymasters[teams[n]] == n then
            showRoundCards(true, n)
            if teams[n] == "red" and gameState.redTurn and gameState.canGiveClue then 
                giveClue(n)
            elseif teams[n] == "blue" and gameState.blueTurn and gameState.canGiveClue then 
                giveClue(n)
            end
        else
            showRoundCards(false, n)
        end
        updateCardsCount(n)
        addInfo(lastinfo, n)
        tfm.exec.chatMessage(translations[roomLang].currentlyPlaying, n)
    end
end

function eventPlayerLeft(n)
    ui._imageCleanup(n)
    leaveRequest(n)
    if n == roomAdmin then
        roomAdmin = nil
        checkRoomAdmin()
    end

if gameState.status >= 1 then 
    local checkOperatives = (#operatives["blue"] < 1 or #operatives["red"] < 1)
    local checkSpymasters = (spymasters["blue"] == nil or spymasters["red"] == nil)

    if checkOperatives or checkSpymasters then
        addGameLog(string.format("%s left, game restarted.", n))
        gameState.status = 5
        tfm.exec.setGameTime(5)
    end
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
        ui.addImage("card"..i, cardsIMG, "_"..i+100, cards[i].position.x, cards[i].position.y, name)
        ui.addTextArea(cards[i].id, string.format("<p align='center'><b><font color='#000000'><a href='event:selectCard'>%s</font></b></p>",roundWords[i]), name, cards[i].position.x,cards[i].position.y+6, 100, 30,0,0,true)
    end
end

function shuffleWords()
        --math.randomseed(8)
        for i = 1, 25 do table.insert(roundWords, words[roomLang][math.random(1 + wordsSize * (i - 1), wordsSize * i)]) end
        --math.randomseed(os.time())
        table.shuffle(roundWords)
        for i=1, 25 do roundCardTypes[i] = i end
    
        selectRoundCards(1, "black")
        selectRoundCards(7, "yellow")
        selectRoundCards(blueCount, "blue")
        selectRoundCards(redCount, "red")
        showRoundCards(false)
        showRoundCards(true, spymasters["red"])
        showRoundCards(true, spymasters["blue"])
end

function eventLoop(elapsedTime, remainingTime)
    if gameState.status == 0 then return end
    local remtime = remainingTime/1000

    if gameState.status == 6 then
        if shuffleVotes[spymasters["red"]] and shuffleVotes[spymasters["blue"]] then
            addInfo(string.format(translations[roomLang].shuffled, remtime))
        else
            addInfo(string.format(translations[roomLang].shuffleText, remtime))
        end

        if remtime <= 2 then
            gameState.status = 2
            if settings.time then tfm.exec.setGameTime(240) end

            ui.removeImage("shuffle_img",nil)
            ui.removeTextArea(textAreas.shuffle_words,nil)

            if redCount == 8 then
                gameState.blueTurn = true
                giveClue(spymasters["blue"])
                addInfo(string.format(translations[roomLang].blueTurn))
            else 
                gameState.redTurn = true 
                giveClue(spymasters["red"])
                addInfo(string.format(translations[roomLang].redTurn))
            end

            ui.removeImage("vote_shuffle_red",nil)
            ui.removeImage("vote_shuffle_blue", nil)
        end
    end

    if gameState.status == 5 then 
        ui.addTextArea(textAreas.new_game_starting, string.format(translations[roomLang].newGameStarting,remtime),nil,175,330,450,40,0,0,1)
    end
    
    if remtime < 1 and gameState.status == 5 then
        resetGame()
        return
    end

    if settings.time == false then return end
    if gameState.status == 6 then return end
    local x = gameState.blueTurn and 30 or 725
    ui.addTextArea(textAreas.time,string.format("<p align='center'>%d</p>", remtime) ,nil,x,145,50,nil,0,0,1)
    
    if remtime < 1 and gameState.status == 2 then
        addGameLog(string.format(translations[roomLang].noClueLog, colors[teams[currentPlayer]], currentPlayer))
        changeTurn()
    end

    if remtime < 1 and gameState.status == 3 then
        addGameLog(string.format(translations[roomLang].noWordLog, colors[teams[currentPlayer]], translations[roomLang][teams[currentPlayer]]))
        changeTurn()
    end

    if remtime < 1 and gameState.status == 4 then
        clueConfirmed = true
        checkClue(currentClueNum, currentClueText, currentPlayer)
        addInfo(string.format(translations[roomLang].validClue, translations[roomLang][teams[currentPlayer]]))
        addGameLog(string.format(translations[roomLang].noActionSpy))
        return
    end
end

function checkBan(action, name)
    if action == "ban" then
        for n, player in pairs(tfm.get.room.playerList) do 
            for i = 1, #banList do
                if name == banList[i] then
                    ui.addImage("banned", "182bc8b716a.png", "&9999", -1000, -500,name,50,50)
                end
            end
        end
    end

    if action == "uban" then
        ui.removeImage("banned", name)
    end
end

function pickWinner()
    local whichTeam = blueCount < redCount and "blue" or "red"
    if os.time()-last_enter > 2 * 60 * 1000 then
        for i = 1, #operatives[whichTeam] do
            tfm.exec.respawnPlayer(operatives[whichTeam][i])
            tfm.exec.giveCheese(operatives[whichTeam][i])
            tfm.exec.playerVictory(operatives[whichTeam][i])
        end
            tfm.exec.respawnPlayer(spymasters[whichTeam])
            tfm.exec.giveCheese(spymasters[whichTeam])
            tfm.exec.playerVictory(spymasters[whichTeam])
            last_enter = os.time()
    end
end

function showHelp(name, tabid, pageid)
    ui.addImage("help_image_4", "1829f074270.png", "~666",590,100,name, 1, 1, 3.15, 1, 0, 0, false)
    ui.addTextArea(textAreas.help.close, string.format("<a href='event:closehelp'>X</a>"), name, 568,75,nil,nil,0, 0, 1, true)

    ui.addImage("help_image_1", images.help.image_1, "~999",200,30,name, 1, 1, 0, 1, 0, 0, false)

    local text = ""
    local x = 225
    local y = 360
    local width = 400
    local height = 200
    local tabwidth = 90
    

    for i=1, #help[roomLang] do
        ui.addTextArea(textAreas.help["tab"..i],
        string.format("<font color='#ffffff'><p align='center'><a href='event:tab_%d'>%s</font></p>",i,help[roomLang][i][1]:upper()),name,x + 5 + (i - 1) * (tabwidth + 35), y,tabwidth, 20,0, 0, 1,true)
        if tabid == i then
            text = help[roomLang][tabid][pageid]
        end
    end
    
    if #help[roomLang][tabid] > 2 then
        ui.addImage("help_image_2", images.help.image_2,"~999",210,105,name, 1, 1, 0, 1, 0, 0, false)
        ui.addImage("help_image_3", images.help.image_3,"~999",530,105,name, 1, 1, 0, 1, 0, 0, false)

        if pageid ~= 2 then
            ui.addTextArea(textAreas.help.prev,string.format("<p align='center'><font color='#ffffff' size='18'><a href='event:prev_%d_tab_%d'>«</a></font></p>",tabid,pageid), name, 217,101,50,nil,0, 0, 1, true)
        end 

        if pageid ~= #help[roomLang][tabid] then
            ui.addTextArea(textAreas.help.next,string.format("<p align='center'><font color='#ffffff' size='18'><a href='event:next_%d_tab_%d'>»</a></font></p>",tabid,pageid), name, 533,101,50,nil,0, 0, 1, true)
        end

        if pageid == 2 then
            ui.removeTextArea(textAreas.help.prev, name)
            ui.removeImage("help_image_2",name)
        elseif pageid == #help[roomLang][tabid] then
            ui.removeTextArea(textAreas.help.next, name)
            ui.removeImage("help_image_3",name)
        end
    else
        ui.removeImage("help_image_2",name)
        ui.removeImage("help_image_3",name)
        ui.removeTextArea(textAreas.help.prev,name) ui.removeTextArea(textAreas.help.next,name)
    end

    ui.addTextArea(textAreas.help.main, text, name, 210, 140, width-20, height, 0, 0, 1, true)
    ui.addTextArea(textAreas.help.titles, "<font color='#ffffff' size='20'><p align='center'>"..help[roomLang][tabid][1]:upper(), name, 290,98,220, nil, 0, 0, 1, true)
end

function hideHelp(name)
    for i=textAreas.help.tab1, textAreas.help.close do
        ui.removeTextArea(i, name)
    end

    for i = 1, 4 do
        ui.removeImage("help_image_"..i,name)
    end

end

function showCommands(name, pageid)
    ui.addImage("commands_image2", images.commands.image_2, "~666",590,108,name, 1, 1, 3.15, 1, 0, 0, false)
    ui.addTextArea(textAreas.commands.close, string.format("<a href='event:closecommands'>X</a>"), name, 568,84,nil,nil,0, 0, 1, true)
    ui.addImage("commands_image1", images.commands.image_1, "~999",200,25,name, 1, 1, 0, 1, 0, 0, false)
    ui.addTextArea(textAreas.commands.title, string.format(commandsPage[roomLang][1]), name, 290,108,220,nil,0, 0, 1, true)
    ui.addTextArea(textAreas.commands.main, commandsPage[roomLang][pageid], name, 210, 150, 380, 230, 0, 0, 1, true)

    if #commandsPage[roomLang] > 1 then
        if pageid < #commandsPage[roomLang] then
            ui.addImage("command_next", images.help.image_3,"~999",530,115,name, 1, 1, 0, 1, 0, 0, false)
            ui.addTextArea(textAreas.commands_next,string.format("<p align='center'><font color='#ffffff' size='18'><a href='event:command_next_%d'>»</a></font></p>",pageid), name, 533,111,50,nil,0, 0, 1, true)
        end

        if pageid > 2 then 
            ui.addImage("command_prev", images.help.image_2,"~999",210,115,name, 1, 1, 0, 1, 0, 0, false)
            ui.addTextArea(textAreas.commands_prev,string.format("<p align='center'><font color='#ffffff' size='18'><a href='event:command_prev_%d'>«</a></font></p>",pageid), name, 217,111,50,nil,0, 0, 1, true)
        end

        if pageid >= 3 then
            ui.removeImage("command_next",name)
            ui.removeTextArea(textAreas.commands_next,name)
        end
    
        if pageid <= 2 then
            ui.removeImage("command_prev",name)
            ui.removeTextArea(textAreas.commands_prev,name)
        end
        
    end

end

function hideCommands(name)
    for i=textAreas.commands.title, textAreas.commands.close do
        ui.removeTextArea(i, name)
    end
    ui.removeImage("commands_image1",name) ui.removeImage("commands_image2",name)
    ui.removeImage("command_next",name)
    ui.removeTextArea(textAreas.commands_next,name)
    ui.removeImage("command_prev",name)
    ui.removeTextArea(textAreas.commands_prev,name)
end

function giveTips(name, tipNum)
    tipNum = tipNum or 1
    
    ui.addImage("tips", "182e4d08658.png", "_42", 160, 165,name,1,1)
    ui.addTextArea(666,"<p align='center'>".. tips[roomLang][tipNum],name,210,170,380,20,0,0,1)

    if tipNum < #tips[roomLang] and name == nil then
        for n, player in pairs(tfm.get.room.playerList) do 
            ui.addImage("next_tips", "182e4d03a7e.png", "_42", 590, 165,n,1,1)
            ui.addTextArea(667,string.format("<a href='event:tipnext_%s'><font size='20'><p align='center'>»\n</p></font>",tipNum),n,596,164,40,25,0,0,1)
        end
        elseif tipNum < #tips[roomLang] and name ~= nil then
            ui.addImage("next_tips", "182e4d03a7e.png", "_42", 590, 165,name,1,1)
            ui.addTextArea(667,string.format("<a href='event:tipnext_%s'><font size='20'><p align='center'>»\n</p></font>",tipNum),name,596,164,40,25,0,0,1)
    end

    if tipNum > 1 then 
        ui.addImage("prev_tips", "182e4d03a7e.png", "_42", 160, 165,name,1,1)
        ui.addTextArea(668,string.format("<a href='event:tipprev_%s'><font size='20'><p align='center'>«\n</p></font>",tipNum),name,166,164,40,25,0,0,1)
    end

    if tipNum >= #tips[roomLang] then
        ui.removeImage("next_tips",name)
        ui.removeTextArea(667,name)
    end

    if tipNum <= 1 then
        ui.removeImage("prev_tips",name)
        ui.removeTextArea(668,name)
    end
end

function updatePlayerTeam(t, isSpymaster, n)
    local x = { blue = 150, red = 590 } local y = {270,290,310,330}
    local opCount = #operatives[t]
    local joinButton = t.."JoinButton"
    local taID = textAreas["join_"..t.."_operative"]
    local joinSpy = "join_"..t.."_spymaster"
    
    if isSpymaster and spymasters[t] ~= nil then 
        ui.removeImage(joinSpy,nil) 
        ui.removeImage(joinSpy,n) 
        ui.removeTextArea(textAreas[joinSpy], nil) 
    elseif isSpymaster and spymasters[t] == nil then
        ui.addImage(joinSpy, images.join[t], "_45", x[t], 370,nil,1,0.9)
        ui.addTextArea(textAreas[joinSpy], string.format(translations[roomLang].joinButton),nil,x[t]+5,370,50,20,0,0,1)
        updatePlayerNames(t,n,true) return
    end

    if isSpymaster and spymasters[t] then
        updatePlayerNames(t,n,isSpymaster) 
        return 
    end

    if gameState.status == 0 then
        ui.removeImage(joinButton,n)
        ui.addImage(joinButton, images.join[t], "_44", x[t], y[opCount+1],nil,1,0.9)
        ui.addTextArea(taID, string.format(translations[roomLang].joinButton),nil,x[t]+5,y[opCount+1],50,20,0,0,1)
    end

    if opCount == 4 then 
        ui.removeTextArea(taID, nil) 
        ui.removeImage(joinButton,n) 
    end
    
    updatePlayerNames(t,n)
end


function updatePlayerNames(team,name,isSpymaster)
    blueVoteCount = #operatives["blue"] / 2
    redVoteCount = #operatives["red"] / 2

    local operativeID = textAreas["leave_"..team.."_op"]
    local spymasterID = textAreas["update_"..team.."_spy"]
    local opIndex = table.index(operatives[team], name) or 1

    local x = team == "blue" and 20 or 660

    if isSpymaster then
        local str = spymasters[team]
        ui.addTextArea(spymasterID, string.format("<p align='center'><font color='#ffffff'><a href='event:leaveTeam'>%s</a></font></p>", str or ""),nil,x,370,120,20,0,0,1)
    else
        for i = 1, 4 do
        local y = 253+(i*20)
        ui.addTextArea(operativeID-1+i, string.format("<font color='#ffffff'><p align='center'><a href='event:leaveTeam'>%s</a></p></font>",operatives[team][i] or ""),nil,x,y,120,18,0,0,1,true)
        end
    end
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
    if spymasters[playerTeam] == name then spymasters[playerTeam] = nil updatePlayerTeam(playerTeam, true, name) teams[name] = nil return end

    local opIndex = table.index(operatives[playerTeam], name)
    local operativeID = textAreas["leave_"..playerTeam.."_op"]
    ui.removeTextArea(operativeID-1+opIndex, nil)

    teams[name] = nil

    local opIndex = table.index(operatives[playerTeam], name)
    table.remove(operatives[playerTeam], opIndex)

    updatePlayerTeam(playerTeam)
end


function eventTextAreaCallback(id, name, e)
    if e == "settings" and roomAdmin ~= name then return end 
    tfm.exec.playSound('transformice/son/bouton1', 100, nil, nil, name)

    if e == "joinTeam" and gameState.status == 0 then
        if id == textAreas.join_blue_operative then joinRequest(name, "blue", id == 28 or id == 29) end
        if id == textAreas.join_red_operative then joinRequest(name, "red", id == 28 or id == 29) end
        if id == textAreas.join_blue_spymaster then joinRequest(name, "blue", id == 28 or id == 29) end
        if id == textAreas.join_red_spymaster then joinRequest(name, "red", id == 28 or id == 29) end
    end

    if e == "help" then 
        keys.helpKey = false
        showHelp(name, 1, 2)
    end

    if e == "closehelp" then 
        keys.helpKey = true
        hideHelp(name)
    end

    if e == "commands" then
        keys.commandsKey = false
        showCommands(name, 2)
    end

    if e == "closecommands" then
        keys.commandsKey = true
        hideCommands(name)
    end

    if e == "leaveTeam" and gameState.status == 0 then      
        if not teams[name] then return end
        if spymasters["red"] == name or spymasters["blue"] == name then leaveRequest(name) return end
        leaveRequest(name)
    end

    if e == "selectCard" then voteCard(id,name) end

    if e == "settings" then changeSettings(id == textAreas.opponent_button, name) end

    if e == "startGame" and roomAdmin == name then startGame(name) end

    if e == "roomAdmin" and roomAdmin == nil then roomAdmin = name ui.removeTextArea(textAreas.room_admin, nil)  ui.removeImage("getroomAdmin",nil) end

    if e == "shufflewords" then
        if gameState.status ~= 6 then return end
        if spymasters[teams[name]] ~= name then return end
        if shuffleVotes[name] == true then return end
        local x = teams[name] == "blue" and 350 or 440

        ui.addImage("vote_shuffle_"..teams[name], images.vote_sign, ":99", x, 332, nil, 1, 1, 0, 1, 0, 0, false)

        shuffleVotes[name] = true
        if shuffleVotes[spymasters["red"]] and shuffleVotes[spymasters["blue"]] then
            shuffleWords(wordsSize)
            tfm.exec.setGameTime(3)
            ui.removeImage("vote_shuffle_red",nil)
            ui.removeImage("vote_shuffle_blue", nil)
        end
    end

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

    if e:sub(1,7) == "number_" then
        if not gameState.canGiveClue then return end
        local whichteam = teams[name] == "red" and redCount or blueCount
        local nums = tonumber(e:sub(8,8))
        if nums > whichteam then return end
        currentClueNum = nums
        if nums < 6 then
            ui.addImage("selectednumber", "1829f06f65e.png", "~1", 260+(nums*40), 340, name, 1, 1, 0, 1, 0, 0, false)
        else
            ui.addImage("selectednumber", "1829f06f65e.png", "~1", 80+(nums*40), 370, name, 1, 1, 0, 1, 0, 0, false)
        end
    end

    if e:sub(1,8) == "tipnext_" then
        local tipnums = tonumber(e:sub(9))
        tipnums = tipnums + 1
        giveTips(name, tipnums)
    end

    if e:sub(1,8) == "tipprev_" then
        local tipnums = tonumber(e:sub(9))        
        tipnums = tipnums - 1
        giveTips(name, tipnums)
    end

    if e:sub(1,13) == "command_next_" then
        local pagenum = tonumber(e:sub(14,14))
        pagenum = pagenum + 1
        showCommands(name, pagenum)
    end

    if e:sub(1,13) == "command_prev_" then
        local pagenum = tonumber(e:sub(14,14))
        pagenum = pagenum - 1
        showCommands(name, pagenum)
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
    local isAdmin = roomAdmin == playerName or admins[playerName]
    local args = {}
    for arg in cmd:gmatch('%S+') do args[1+#args]=arg end
    local firstArg = args[1] 
    local secondArg = args[2]

    if isAdmin then
            if firstArg == "restart" then 
                gameState.status = 5
                tfm.exec.setGameTime(5)
                addGameLog(string.format(translations[roomLang].restartedGame, playerName))
                return 
            end
            if firstArg == "ban" then
                if admins[secondArg] then return end
                table.insert(banList, secondArg)
                checkBan("ban", secondArg)
            end
            if firstArg == "uban" then
                local banIndex = table.index(banList, secondArg)
                if banIndex ~= nil then table.remove(banList, banIndex) end
                checkBan("uban", secondArg)
            end
            if firstArg == "lock" then
                tfm.exec.setRoomMaxPlayers(secondArg)
                tfm.exec.chatMessage(string.format(translations[roomLang].lockedRoom, playerName, secondArg), nil)
            end
            if firstArg == "pw" then
                tfm.exec.setRoomPassword(secondArg)
                tfm.exec.chatMessage(string.format(translations[roomLang].roomPassword, playerName), nil)
            end

            if firstArg == "kick" then
                if admins[secondArg] then return end
                for n in pairs(tfm.get.room.playerList) do
                    if n == secondArg and teams[secondArg] then
                        leaveRequest(n)
                        tfm.exec.chatMessage(string.format(translations[roomLang].kickedTeam,secondArg, playerName), nil)
                    end
                end
            end

            if admins[playerName] then
                    if firstArg == "skip" then changeTurn() return end
                    if firstArg == "lobby" then gameState.status = 5 tfm.exec.setGameTime(5) return end
                    if firstArg == "time" then tfm.exec.setGameTime(secondArg) return end
                    if firstArg == "uadmin" then roomAdmin = nil checkRoomAdmin() end
            end
    end

    if firstArg == "admins" then
            tfm.exec.chatMessage(string.format(translations[roomLang].moduleAdmins), playerName)
        elseif firstArg == "admin" then
            if roomAdmin == nil then return end
            tfm.exec.chatMessage(string.format(translations[roomLang].roomAdmin, roomAdmin), playerName)
        elseif firstArg == "forum" then
            tfm.exec.chatMessage(string.format(translations[roomLang].forumTopic), playerName)
        elseif firstArg == "room" then
            tfm.exec.chatMessage(string.format(translations[roomLang].createOwnRoom,playerName), playerName)
    end
end


function giveClue(name)
    currentClueNum = 0 currentClueText = nil currentPlayer = name
    ui.addTextArea(textAreas.clue_background, string.format(""),name,200,240,400,180,"0x3B3025","0x3B3025",1,true) 
    ui.addPopup(2,2,"Clue:", name,350,250,100,true)
    ui.addImage("popupskin", "1829f06aa22.png", "~1", 345, 245, name, 1, 1, 0, 1, 0, 0, false)
    ui.addImage("selectnumber", "1829f078e61.png", "~1", 300, 340, name, 1, 1, 0, 1, 0, 0, false)

    if teams[name] == "blue" then 
        startLoading(168, 378) 
    else
        startLoading(632, 378)
    end

    for i = 1, 5 do
        ui.addTextArea(textAreas.clue_num+i, string.format("<a href='event:number_%d'><font size='20'>            ", i),name,265+(i*40),345,20,20,1,1,0, true) 
    end
    
    for i = 1, 4 do
        ui.addTextArea(textAreas.clue_num5+i, string.format("<a href='event:number_%d'><font size='20'>            ", i+5),name,285+(i*40),375,20,20,1,1,0, true) 
    end

end


clueConfirmed = false
function checkClue(clueNum, clueText, name)
    local whichspy = spymasters["red"] == name and spymasters["blue"] or spymasters["red"]
    
    if settings.clue and clueConfirmed == false then
        local getcolor = teams[name] == "red" and "#3284a3" or "#8F2B1C"
        gameState.status = 4
        tfm.exec.setGameTime(30)
        ui.addPopup(1, 1, string.format(translations[roomLang].clueConfirmation, clueText, clueNum), whichspy, 280, 250, 250, true)
        addInfo(string.format(translations[roomLang].clueChecking, getcolor, whichspy))
        return
    end

    if redCount >= clueNum or blueCount >= clueNum then
        addClue(clueText:sub(1, 20), clueNum, name)
        gameState.canGiveClue = false
        gameState.canVote = true
        ui.addPopup(1, 1, "", whichspy, 50000, 50000, 10, true)
        ui.removeImage("popupskin", name)
        ui.removeImage("selectnumber", name)
        ui.removeImage("selectednumber", name)

        if teams[name] == "blue" then
            startLoading(168, 250) 
        else
            startLoading(632, 250) 
        end

        for i = 1, 10 do ui.removeTextArea(textAreas.clue_num+i, name) end
        gameState.status = 3
    end
end

function addClue(clueText, clueNum, playerName)
    if spymasters[teams[playerName]] ~= playerName then return end
    if settings.clue then clueConfirmed = false end
    local teamClue = clues[teams[playerName]]
    local colorCode = teams[playerName] == "red" and "#8F2B1C" or "#3284a3"
    table.insert(teamClue, 1, string.format(translations[roomLang].clueInfo, clueText, clueNum))
    addGameLog(string.format(translations[roomLang].clueGameLog, colorCode, spymasters[teams[playerName]],colorCode, clueText, colorCode,clueNum))
    setCurrentClue(clueText, clueNum, nil, colorCode)
    gameState.canGiveClue = false
    if settings.time then tfm.exec.setGameTime(120) end
end

function setCurrentClue(clueText, clueNum, playerName, colorCode)
    ui.addTextArea(textAreas.clue_text, string.format("<font color='%s'><b>%s</font></b>",colorCode, clueText),playerName,310,286,170,20,0,0,1)
    ui.addTextArea(textAreas.clue_number,string.format("<p align='center'><font color='%s'><b>%d</font></b></p>",colorCode, clueNum),playerName,485,286,20,20,0,0,1)
end

function startLoading(x, y)
    tfm.exec.addPhysicObject(1, 0, 0, {
        type = 13,
        miceCollision = false,
        groundCollision = false,
    })
    tfm.exec.addPhysicObject(44, x, y, {
        dynamic = true,
        type = 13,
        mass = 1,
        miceCollision = false,
        groundCollision = false,
        foreground = true,
    })
    tfm.exec.addJoint(3, 44, 1, {
        type = 3,
        point1 = x..","..y,
        speedMotor = -2,
        forceMotor = 100,
    })
    local dist = 10
    local dist2 = 15
    for j=1,8 do
      local ang=(j-1) * 2 * math.pi / 8
      local rx = math.cos(ang)
      local ry = math.sin(ang)
      tfm.exec.addJoint(4+j, 44, 44, {
          type = 0,
          point1 = math.floor(x + dist*rx)..","..math.floor(y + dist*ry),
          point2 = math.floor(x + dist2*rx)..","..math.floor(y + dist2*ry),
          color = 0x00bb00,
          foreground = true,
          line = 2,
      })
    end
end

function stopLoading()
    tfm.exec.removePhysicObject(44)
end

voteImages = {}
function voteCard(cardID, name)
    if gameState.status ~= 3 then return end
    if spymasters[teams[name]] == name then return end
    if gameState.canVote == false then return end
    local card = cards[cardID]
    local votes = voted[cardID] or 0
    local whoseTurn = gameState.redTurn and "red" or "blue"

    if card.covered or currentClueNum < 1 then return end
    if voted[name .. "|" .. cardID] then return end

    if teams[name] ~= whoseTurn then return end

    local checkVoteCount = teams[name] == "red" and redVoteCount or blueVoteCount
    
    ui.addImage("vote"..cardID.."-"..votes, images.vote_sign, "_800", card.position.x + 5 + (votes) * 15, card.position.y - 5, nil, 1, 1)
    table.insert(voteImages, "vote"..cardID.."-"..votes)

    voted[cardID] = votes + 1
    voted[name .. "|" .. cardID] = true

    addGameLog(string.format(translations[roomLang].votedFor,name, roundWords[cardID]))
    
    if voted[cardID] >= checkVoteCount then
        pickedCard(cardID, name)
    end
end

function pickedCard(cardID, name)
    local card = cards[cardID]
    local replaceimg = images.card_selected[card.color]
    local teamcolor = teams[name] == "red" and "#8f2b1c" or "#3284a3"

    ui.addTextArea(cardID, string.format("<font color='#ffffff'><p align='center'><b>%s</b></p></font>", roundWords[cardID]), nil, card.position.x, card.position.y+6, 100, 30,card.color,0,1)
    ui.addImage("card"..cardID, replaceimg, "_"..cardID+200, card.position.x, card.position.y, nil)
    card.covered = true

        if card.color == "yellow" then 
            currentClueNum = 0 
            addGameLog(string.format(translations[roomLang].contactedBystander,teamcolor,translations[roomLang][teams[name]], roundWords[cardID]))

        elseif card.color == "black" then 
            gameOver(teams[name], true) 
            addGameLog(string.format(translations[roomLang].contactedAssassin,teamcolor,translations[roomLang][teams[name]], roundWords[cardID]))
            return

        elseif card.color == "red" then 
            redCount = redCount - 1 
            addGameLog(string.format(translations[roomLang].contactedRedAgent,teamcolor,translations[roomLang][teams[name]], roundWords[cardID]))
            
        elseif card.color == "blue" then 
            blueCount = blueCount -1 
            addGameLog(string.format(translations[roomLang].contactedBlueAgent,teamcolor,translations[roomLang][teams[name]], roundWords[cardID]))
        end

        if card.color == teams[name] then 
            currentClueNum = currentClueNum - 1 
        else 
            currentClueNum = 0 
        end

        updateCardsCount()

    if redCount < 1 then gameOver(teams[name]) return
    elseif blueCount < 1 then gameOver(teams[name]) return
    elseif currentClueNum < 1 then changeTurn(cardID, name) gameState.status = 2 end
end


function updateCardsCount(n)
    ui.addTextArea(textAreas.blue_count, string.format("<p align='center'><b><font size='25' color='#FFFFFF'>%d</p></b></font>", blueCount),n,30,86,50,nil,0,0,1)
    ui.addTextArea(textAreas.red_count, string.format("<p align='center'><b><font size='25' color='#FFFFFF'>%d</p></b></font>", redCount),n,725,86,50,nil,0,0,1)
end


function changeTurn(cardID, name)
    tfm.exec.playSound('transformice/son/np', 100, nil, nil, nil)
    pickWinner()
    noLimit = 0
    ui.updateTextArea(textAreas.clue_text, translations[roomLang].thinking, nil)
    ui.updateTextArea(textAreas.clue_number, "<font color='#fafafa'><b>-</b></font>", nil)

    for i = 1, #voteImages do ui.removeImage(voteImages[i], nil) end

    voteImages = {}
    voted = {}

    if gameState.redTurn then
        gameState.redTurn = false
        gameState.blueTurn = true
        ui.addImage("infotab", "182bc8b716a.png", "~1",200,370,nil,1,1,0,1,0,0,false)
        addInfo(string.format(translations[roomLang].blueTurn))
        ui.removeImage("popupskin", spymasters["red"])
        ui.removeImage("selectnumber", spymasters["red"])
        ui.removeImage("selectednumber", spymasters["red"])
        ui.removeTextArea(textAreas.clue_background)
        ui.addPopup(2,2,"Clue:", name,5000,5000,100,true)
        for i = 1, 10 do ui.removeTextArea(textAreas.clue_num+i, name) end

        giveClue(spymasters["blue"])
    else
        gameState.blueTurn = false
        gameState.redTurn = true
        ui.addImage("infotab", "182bc8b716a.png", "~1",200,370,nil,1,1,0,1,0,0,false)
        addInfo(string.format(translations[roomLang].redTurn))
        ui.removeImage("popupskin", spymasters["blue"])
        ui.removeImage("selectnumber", spymasters["blue"])
        ui.removeImage("selectednumber", spymasters["blue"])
        ui.removeTextArea(textAreas.clue_background)
        ui.addPopup(2,2,"Clue:", name,5000,5000,100,true)
        for i = 1, 10 do ui.removeTextArea(textAreas.clue_num+i, name) end

        giveClue(spymasters["red"])
    end
    gameState.canGiveClue = true gameState.firstTurn = false gameState.canVote = false gameState.status = 2
    if settings.time then tfm.exec.setGameTime(180) end
end

function gameOver(team, isBlack)
    tfm.exec.playSound('fortoresse/x_respawn', 100, nil, nil, nil)

    stopLoading()
    gameState.status = 5
    tfm.exec.setGameTime(30)

    gameState.redTurn = false
    gameState.blueTurn = false
    showRoundCards(true)
    if isBlack then 
        addInfo(string.format(translations[roomLang].blackGameOver, translations[roomLang][team]))
    return end
    
    if redCount == 0 then
        addInfo(string.format(translations[roomLang].redTeamWon))
    elseif blueCount == 0 then
        addInfo(string.format(translations[roomLang].blueTeamWon))
    end
end

function addGameLog(message)
    table.insert(gameLog, 1, message)
    gameLogList = '• '.. table.concat(gameLog, '\n• ')

    if #gameLog >= 10 then 
        table.remove(gameLog, 10)
    end

end

function addInfo(message, name)
    lastinfo = message
    ui.addImage("infotab", "182bc8b716a.png", "?999",200,364,nil,1,1,0,1,0,0,false)
    ui.addTextArea(textAreas.turn_text, lastinfo,name,175,370,450,40,0,0,1)
end

function teamClueLog(name, team)
    local cLogsID = teams[name].."logs"
    local img = images[teams[name].."_clues"]

    if keys.clueLogKey[name] then
    local showClue = table.concat(clues[teams[name]],'\n')
    ui.addImage(cLogsID, img, "~999", 225, 241, name)
    ui.addTextArea(textAreas.clue_log, string.format("<p align='right'><font color='#FFFFFF'>%s</p></font>", showClue or ""),name,260,280,280,100,0,0,1,true)
    else
    ui.removeImage(cLogsID, name)
    ui.removeTextArea(textAreas.clue_log, name)
    end
end

function eventKeyboard(name, key, down)
    tfm.exec.playSound('transformice/son/bouton1', 100, nil, nil, name)
    if key == 17 then
        keys.gameLogKey[name] = not keys.gameLogKey[name]
        if keys.gameLogKey[name] then
            ui.addImage("gamelogs", images.game_logs, ":999", 225, 20, name)
            ui.addTextArea(textAreas.game_log, string.format("<font size='10' color='#000000'><b>%s</b></font>", gameLogList or ""),name,255,30,220,120,0,0,1, true) 
        else
            ui.removeImage("gamelogs", name)
            ui.removeTextArea(textAreas.game_log, name)
        end
    end

    if key == 16 then
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

    if key == 75 then
        keys.commandsKey = not keys.commandsKey
        if keys.commandsKey then
            hideCommands(name)
        else
            showCommands(name, 2)
        end
    end
end

noLimit = 0
function eventPopupAnswer(id, name, answer)
    local sp = teams[name] == "red" and "blue" or "red"
    local notsp = teams[name] == "blue" and "blue" or "red"

    if id == 2 then
        ui.removeImage("popupskin", name)
        ui.removeImage("selectnumber", name)
        ui.removeImage("selectednumber", name)
        for i = 1, 10 do ui.removeTextArea(textAreas.clue_num+i, name) end
    end

    if id == 1 and answer == "yes" then
        clueConfirmed = true
        addInfo(string.format(translations[roomLang].validClue, translations[roomLang][teams[currentPlayer]]))
        checkClue(currentClueNum, currentClueText, currentPlayer)
        addGameLog(string.format(translations[roomLang].approvedClue, colors[notsp], spymasters[notsp], colors[sp], spymasters[sp]))
    end

    if id == 1 and answer == "no" then
        noLimit = noLimit + 1
        clueConfirmed = false
        addInfo(string.format(translations[roomLang].invalidClue, 3-noLimit))
        addGameLog(string.format(translations[roomLang].notApprovedClue, colors[notsp], spymasters[notsp], colors[sp], spymasters[sp]))
        if settings.time then tfm.exec.setGameTime(60) end 
        if noLimit == 3 then changeTurn() else giveClue(spymasters[sp]) end
        gameState.status = 2
    end

    if id == 2 then
        currentClueText = answer:gsub('<.->', ''):gsub("^%s+", ""):gsub("%s.+$", "")
        if roomLang == "tr" then 
            checkThisWord = string.upper(currentClueText:gsub('i', 'İ'))
        else
            checkThisWord = string.upper(currentClueText)
        end

        local checkClueWord = table.index(roundWords, checkThisWord)

        if roundWords[checkClueWord] == checkThisWord or roundWords[checkClueWord] == currentClueText then 
            giveClue(spymasters[teams[name]]) 
            return 
        end

        if currentClueNum <= 0 or currentClueText == nil or currentClueText == "" then
            giveClue(spymasters[teams[name]])
        else 
            checkClue(currentClueNum, currentClueText, currentPlayer)
        end
    end
end

function checkRoomAdmin()
    if roomAdmin ~= nil then return end

    for n, player in pairs(tfm.get.room.playerList) do 
        if tfm.get.room.name:lower():match(n:lower()) then roomAdmin = n end
    end

    if roomAdmin == nil then 
        local y = roomLang == "es" and 21 or 25
        ui.addImage("getroomAdmin", "182bc8c095c.png", ":80", 0, 21,nil)
        ui.addTextArea(textAreas.room_admin, string.format(translations[roomLang].getRoomAdmin),nil,5,y,120,nil,0,0,1,true)
    else
        ui.removeImage("getroomAdmin",nil)
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

    ui.addImage("helpbutton", "1829f074270.png", "_50", 710, 20,nil,1,1)
    ui.addImage("creditsbutton", "1829f074270.png", "_50", 750, 20,nil,1,1)
    ui.addTextArea(333, string.format("<font size='15'><a href='event:help'>  <b>?</b>  </font></a>"),name,710,20,nil,nil,0,0,1)
    ui.addTextArea(334, string.format("<font size='15'><a href='event:commands'>  <b>!</b>  </font></a>"),name,751,20,nil,nil,0,0,1)
    
    if gameState.status == 0 then
    ui.addImage("logo", "182e4d0d25a.png", "_42", 145, 70,name,1,1)
    ui.addImage("settings", "1826569905c.png", "_42", 235, 270,name,1,1)
    giveTips(name)

    if settings.time then ui.addImage("opponent_setting", images.settings.on, "_42", 508, 297,name,1,1) else ui.addImage("opponent_setting", images.settings.off, "_42", 508, 297,name,1,1) end
    if settings.clue then ui.addImage("time_setting", images.settings.on, "_42", 508, 343,name,1,1) else ui.addImage("time_setting", images.settings.off, "_42", 508, 343,name,1,1) end

    ui.addTextArea(textAreas.opponent_setting, string.format(translations[roomLang].opponentSetting),name,370,293,120,nil,0,0,1)
    ui.addTextArea(textAreas.time_settings, string.format(translations[roomLang].timeSetting),name,370,345,120,nil,0,0,1)
    ui.addTextArea(textAreas.opponent_button, string.format("<p align='center'><font size='13' color='#FFFFFF'><a href='event:settings'>         </font></p>"),name,510,297,45,nil,0,0,1)
    ui.addTextArea(textAreas.time_button, string.format("<p align='center'><font size='13' color='#FFFFFF'><a href='event:settings'>         </font></p>"),name,510,343,45,nil,0,0,1)
    ui.addTextArea(textAreas.start_button, string.format(translations[roomLang].startButton),name,239,356,120,nil,0,0,1)

    ui.addImage("blueJoinButton", images.join.blue, "_42", 150, 270,name,1,0.9)
    ui.addImage("redJoinButton", images.join.red, "_44", 590, 270,name,1,0.9)
    ui.addTextArea(textAreas.join_blue_operative, string.format(translations[roomLang].joinButton),name,155,270,50,20,0,0,1)
    ui.addTextArea(textAreas.join_red_operative, string.format(translations[roomLang].joinButton),name,595,270,50,20,0,0,1)
    ui.addImage("join_blue_spymaster", images.join.blue, "_43", 150, 370,name,1,0.9) 
    ui.addImage("join_red_spymaster", images.join.red, "_45", 590, 370,name,1,0.9)
    ui.addTextArea(textAreas.join_blue_spymaster, string.format(translations[roomLang].joinButton),name,155,370,50,20,0,0,1)
    ui.addTextArea(textAreas.join_red_spymaster, string.format(translations[roomLang].joinButton),name,595,370,50,20,0,0,1)


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
        ui.removeTextArea(666, name)
        ui.removeTextArea(667, name)
        ui.removeTextArea(668, name)
        ui.removeImage("blueJoinButton",name)
        ui.removeImage("redJoinButton",name)
        ui.removeImage("settings",name)
        ui.removeImage("opponent_setting",name)
        ui.removeImage("time_setting",name)
        ui.removeImage("tips",name)
        ui.removeImage("next_tips",name)
        ui.removeImage("prev_tips",name)
        ui.removeImage("logo",name)

        ui.addImage("clue", images.clue_input, "_41", 300, 260,name)

        ui.addImage("bluecardscount", images.blue_circle, "_47", 30, 80,name,1, 1)
        ui.addImage("redcardscount", images.red_circle, "_47", 725, 80,name,1, 1)

        if settings.time then 
            ui.addImage("blueTime", images.time_bg, "_42", 20, 140,name,1,1)
            ui.addImage("redTime", images.time_bg, "_44", 715, 140,name,1,1)
        end
    end
end

function resetGame()
    for i, v in pairs(textAreas) do ui.removeTextArea(textAreas[i]) end
    for i = 1, 25 do ui.removeTextArea(cards[i].id) ui.removeImage("card"..i, nil) end
    ui.removeImage("popupskin", spymasters["red"])
    ui.removeImage("selectnumber", spymasters["red"])
    ui.removeImage("selectednumber", spymasters["red"])
    ui.removeImage("popupskin", spymasters["blue"])
    ui.removeImage("selectnumber", spymasters["blue"])
    ui.removeImage("selectednumber", spymasters["blue"])
    ui.removeTextArea(textAreas.clue_background)
    ui.addPopup(2,2,"Clue:", name,5000,5000,100,true)
    stopLoading()

    voted = {}
    teams = {}
    operatives = {red = {}, blue = {}}
    spymasters = {}
    clues = {red = {}, blue={}}
    gameLog = {}
    gameState = {status = 0, guessCount = 0, blueTurn = false, redTurn = false, firstTurn = true, canVote = false, canGiveClue = true}
    settings = { clue = false, time = false, }
    shuffleVotes = {}

    for i = 1, 25 do cards[i].covered = false end

    gameState.status = 0
    gameStatus()
end


function table.index(tbl, val) for i=1, #tbl do if tbl[i] == val then return i end end end
function table.shuffle(tbl) local j, t for i=1, #tbl do j = math.random(#tbl) t = tbl[i] tbl[i] = tbl[j] tbl[j] = t end end

gameStatus()