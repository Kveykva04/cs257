--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE public.pokemon_weak;
DROP TABLE public.pokemon_types;
DROP TABLE public.pokemon_type_stats;
DROP TABLE public.pokemon_strong;
DROP TABLE public.pokemon_generation;
DROP TABLE public.pokemon_class_and_gender;
DROP TABLE public.png;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: png; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.png (
    name text,
    png text
);


--
-- Name: pokemon_class_and_gender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_class_and_gender (
    name text,
    pokemon_class text,
    gender double precision
);


--
-- Name: pokemon_generation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_generation (
    name text,
    generation integer,
    is_legendary integer
);


--
-- Name: pokemon_strong; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_strong (
    type text,
    strong1 text,
    strong2 text,
    strong3 text,
    strong4 text,
    strong5 text
);


--
-- Name: pokemon_type_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_type_stats (
    name text,
    type1 text,
    type2 text,
    base_total integer,
    hp integer,
    attack integer,
    defense integer,
    sp_attack integer,
    sp_defense integer,
    speed integer
);


--
-- Name: pokemon_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_types (
    type_id integer,
    type_name text
);


--
-- Name: pokemon_weak; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_weak (
    type text,
    weak1 text,
    weak2 text,
    weak3 text,
    weak4 text,
    weak5 text
);


--
-- Data for Name: png; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.png (name, png) FROM stdin;
Bulbasaur	s32
Ivysaur	s64
Venusaur	s97
Charmander	s128
Charmeleon	s160
Charizard	s194
Squirtle	s224
Wartortle	s256
Blastoise	s289
Caterpie	s320
Metapod	s352
Butterfree	s384
Weedle	s416
Kakuna	s448
Beedrill	s481
Pidgey	s512
Pidgeotto	s544
Pidgeot	s577
Rattata	s609
Raticate	s642
Spearow	s672
Fearow	s704
Ekans	s736
Arbok	s768
Pikachu	s815
Raichu	s833
Sandshrew	s865
Sandslash	s897
Nidoran-F	s928
Nidorina	s960
Nidoqueen	s992
Nidoran-M	s1024
Nidorino	s1056
Nidoking	s1088
Clefairy	s1120
Clefable	s1152
Vulpix	s1185
Ninetales	s1217
Jigglypuff	s1248
Wigglytuff	s1280
Zubat	s1312
Golbat	s1344
Oddish	s1376
Gloom	s1408
Vileplume	s1440
Paras	s1472
Parasect	s1504
Venonat	s1536
Venomoth	s1568
Diglett	s1601
Dugtrio	s1633
Meowth	s1666
Persian	s1697
Psyduck	s1728
Golduck	s1760
Mankey	s1792
Primeape	s1824
Growlithe	s1857
Arcanine	s1889
Poliwag	s1920
Poliwhirl	s1952
Poliwrath	s1984
Abra	s2016
Kadabra	s2048
Alakazam	s2081
Machop	s2112
Machoke	s2144
Machamp	s2176
Bellsprout	s2208
Weepinbell	s2240
Victreebel	s2272
Tentacool	s2304
Tentacruel	s2336
Geodude	s2369
Graveler	s2401
Golem	s2433
Ponyta	s2465
Rapidash	s2497
Slowpoke	s2529
Slowbro	s2562
Magnemite	s2592
Magneton	s2624
Farfetch’d	s2657
Doduo	s2688
Dodrio	s2720
Seel	s2752
Dewgong	s2784
Grimer	s2817
Muk	s2849
Shellder	s2880
Cloyster	s2912
Gastly	s2944
Haunter	s2976
Gengar	s3009
Onix	s3040
Drowzee	s3072
Hypno	s3104
Krabby	s3136
Kingler	s3168
Voltorb	s3201
Electrode	s3233
Exeggcute	s3264
Exeggutor	s3297
Cubone	s3328
Marowak	s3362
Hitmonlee	s3392
Hitmonchan	s3424
Lickitung	s3456
Koffing	s3488
Weezing	s3521
Rhyhorn	s3552
Rhydon	s3584
Chansey	s3616
Tangela	s3648
Kangaskhan	s3681
Horsea	s3712
Seadra	s3744
Goldeen	s3776
Seaking	s3808
Staryu	s3840
Starmie	s3872
Mr. Mime	s3905
Scyther	s3936
Jynx	s3968
Electabuzz	s4000
Magmar	s4032
Pinsir	s4065
Tauros	s4099
Magikarp	s4128
Gyarados	s4161
Lapras	s4192
Ditto	s4224
Eevee	s4257
Vaporeon	s4288
Jolteon	s4320
Flareon	s4352
Porygon	s4384
Omanyte	s4416
Omastar	s4448
Kabuto	s4480
Kabutops	s4512
Aerodactyl	s4545
Snorlax	s4576
Articuno	s4609
Zapdos	s4641
Moltres	s4673
Dratini	s4704
Dragonair	s4736
Dragonite	s4768
Mewtwo	s4802
Mew	s4832
Chikorita	s4864
Bayleef	s4896
Meganium	s4928
Cyndaquil	s4960
Quilava	s4992
Typhlosion	s5025
Totodile	s5056
Croconaw	s5088
Feraligatr	s5120
Sentret	s5152
Furret	s5184
Hoothoot	s5216
Noctowl	s5248
Ledyba	s5280
Ledian	s5312
Spinarak	s5344
Ariados	s5376
Crobat	s5408
Chinchou	s5440
Lanturn	s5472
Pichu	s5505
Cleffa	s5536
Igglybuff	s5568
Togepi	s5600
Togetic	s5632
Natu	s5664
Xatu	s5696
Mareep	s5728
Flaaffy	s5760
Ampharos	s5793
Bellossom	s5824
Marill	s5856
Azumarill	s5888
Sudowoodo	s5920
Politoed	s5952
Hoppip	s5984
Skiploom	s6016
Jumpluff	s6048
Aipom	s6080
Sunkern	s6112
Sunflora	s6144
Yanma	s6176
Wooper	s6209
Quagsire	s6240
Espeon	s6272
Umbreon	s6304
Murkrow	s6336
Slowking	s6369
Misdreavus	s6400
Unown	s6459
Wobbuffet	s6464
Girafarig	s6496
Pineco	s6528
Forretress	s6560
Dunsparce	s6592
Gligar	s6624
Steelix	s6657
Snubbull	s6688
Granbull	s6720
Qwilfish	s6753
Scizor	s6785
Shuckle	s6816
Heracross	s6849
Sneasel	s6881
Teddiursa	s6912
Ursaring	s6944
Slugma	s6976
Magcargo	s7008
Swinub	s7040
Piloswine	s7072
Corsola	s7105
Remoraid	s7136
Octillery	s7168
Delibird	s7200
Mantine	s7232
Skarmory	s7264
Houndour	s7296
Houndoom	s7329
Kingdra	s7360
Phanpy	s7392
Donphan	s7424
Porygon2	s7456
Stantler	s7488
Smeargle	s7520
Tyrogue	s7552
Hitmontop	s7584
Smoochum	s7616
Elekid	s7648
Magby	s7680
Miltank	s7712
Blissey	s7744
Raikou	s7776
Entei	s7808
Suicune	s7840
Larvitar	s7872
Pupitar	s7904
Tyranitar	s7937
Lugia	s7968
Ho-Oh	s8000
Celebi	s8032
Treecko	s8064
Grovyle	s8096
Sceptile	s8129
Torchic	s8160
Combusken	s8192
Blaziken	s8225
Mudkip	s8256
Marshtomp	s8288
Swampert	s8321
Poochyena	s8352
Mightyena	s8384
Zigzagoon	s8417
Linoone	s8449
Wurmple	s8480
Silcoon	s8512
Beautifly	s8544
Cascoon	s8576
Dustox	s8608
Lotad	s8640
Lombre	s8672
Ludicolo	s8704
Seedot	s8736
Nuzleaf	s8768
Shiftry	s8800
Taillow	s8832
Swellow	s8864
Wingull	s8896
Pelipper	s8928
Ralts	s8960
Kirlia	s8992
Gardevoir	s9025
Surskit	s9056
Masquerain	s9088
Shroomish	s9120
Breloom	s9152
Slakoth	s9184
Vigoroth	s9216
Slaking	s9248
Nincada	s9280
Ninjask	s9312
Shedinja	s9344
Whismur	s9376
Loudred	s9408
Exploud	s9440
Makuhita	s9472
Hariyama	s9504
Azurill	s9536
Nosepass	s9568
Skitty	s9600
Delcatty	s9632
Sableye	s9665
Mawile	s9697
Aron	s9728
Lairon	s9760
Aggron	s9793
Meditite	s9824
Medicham	s9857
Electrike	s9888
Manectric	s9921
Plusle	s9952
Minun	s9984
Volbeat	s10016
Illumise	s10048
Roselia	s10080
Gulpin	s10112
Swalot	s10144
Carvanha	s10176
Sharpedo	s10209
Wailmer	s10240
Wailord	s10272
Numel	s10304
Camerupt	s10337
Torkoal	s10368
Spoink	s10400
Grumpig	s10432
Spinda	s10464
Trapinch	s10496
Vibrava	s10528
Flygon	s10560
Cacnea	s10592
Cacturne	s10624
Swablu	s10656
Altaria	s10689
Zangoose	s10720
Seviper	s10752
Lunatone	s10784
Solrock	s10816
Barboach	s10848
Whiscash	s10880
Corphish	s10912
Crawdaunt	s10944
Baltoy	s10976
Claydol	s11008
Lileep	s11040
Cradily	s11072
Anorith	s11104
Armaldo	s11136
Feebas	s11168
Milotic	s11200
Castform	s11235
Kecleon	s11264
Shuppet	s11296
Banette	s11329
Duskull	s11360
Dusclops	s11392
Tropius	s11424
Chimecho	s11456
Absol	s11489
Wynaut	s11520
Snorunt	s11552
Glalie	s11585
Spheal	s11616
Sealeo	s11648
Walrein	s11680
Clamperl	s11712
Huntail	s11744
Gorebyss	s11776
Relicanth	s11808
Luvdisc	s11840
Bagon	s11872
Shelgon	s11904
Salamence	s11937
Beldum	s11968
Metang	s12000
Metagross	s12033
Regirock	s12064
Regice	s12096
Registeel	s12128
Latias	s12161
Latios	s12193
Kyogre	s12225
Groudon	s12257
Rayquaza	s12289
Jirachi	s12320
Deoxys	s12355
Turtwig	s12384
Grotle	s12416
Torterra	s12448
Chimchar	s12480
Monferno	s12512
Infernape	s12544
Piplup	s12576
Prinplup	s12608
Empoleon	s12640
Starly	s12672
Staravia	s12704
Staraptor	s12736
Bidoof	s12768
Bibarel	s12800
Kricketot	s12832
Kricketune	s12864
Shinx	s12896
Luxio	s12928
Luxray	s12960
Budew	s12992
Roserade	s13024
Cranidos	s13056
Rampardos	s13088
Shieldon	s13120
Bastiodon	s13152
Burmy	s13186
Wormadam	s13218
Mothim	s13248
Combee	s13280
Vespiquen	s13312
Pachirisu	s13344
Buizel	s13376
Floatzel	s13408
Cherubi	s13440
Cherrim	s13473
Shellos	s13505
Gastrodon	s13537
Ambipom	s13568
Drifloon	s13600
Drifblim	s13632
Buneary	s13664
Lopunny	s13697
Mismagius	s13728
Honchkrow	s13760
Glameow	s13792
Purugly	s13824
Chingling	s13856
Stunky	s13888
Skuntank	s13920
Bronzor	s13952
Bronzong	s13984
Bonsly	s14016
Mime Jr.	s14048
Happiny	s14080
Chatot	s14112
Spiritomb	s14144
Gible	s14176
Gabite	s14208
Garchomp	s14241
Munchlax	s14272
Riolu	s14304
Lucario	s14337
Hippopotas	s14368
Hippowdon	s14400
Skorupi	s14432
Drapion	s14464
Croagunk	s14496
Toxicroak	s14528
Carnivine	s14560
Finneon	s14592
Lumineon	s14624
Mantyke	s14656
Snover	s14688
Abomasnow	s14721
Weavile	s14752
Magnezone	s14784
Lickilicky	s14816
Rhyperior	s14848
Tangrowth	s14880
Electivire	s14912
Magmortar	s14944
Togekiss	s14976
Yanmega	s15008
Leafeon	s15040
Glaceon	s15072
Gliscor	s15104
Mamoswine	s15136
Porygon-Z	s15168
Gallade	s15201
Probopass	s15232
Dusknoir	s15264
Froslass	s15296
Rotom	s15333
Uxie	s15360
Mesprit	s15392
Azelf	s15424
Dialga	s15457
Palkia	s15489
Heatran	s15520
Regigigas	s15552
Giratina	s15585
Cresselia	s15616
Phione	s15648
Manaphy	s15680
Darkrai	s15712
Shaymin	s15745
Arceus	s15793
Victini	s15808
Snivy	s15840
Servine	s15872
Serperior	s15904
Tepig	s15936
Pignite	s15968
Emboar	s16000
Oshawott	s16032
Dewott	s16064
Samurott	s16097
Patrat	s16128
Watchog	s16160
Lillipup	s16192
Herdier	s16224
Stoutland	s16256
Purrloin	s16288
Liepard	s16320
Pansage	s16352
Simisage	s16384
Pansear	s16416
Simisear	s16448
Panpour	s16480
Simipour	s16512
Munna	s16544
Musharna	s16576
Pidove	s16608
Tranquill	s16640
Unfezant	s16672
Blitzle	s16704
Zebstrika	s16736
Roggenrola	s16768
Boldore	s16800
Gigalith	s16832
Woobat	s16864
Swoobat	s16896
Drilbur	s16928
Excadrill	s16960
Audino	s16993
Timburr	s17024
Gurdurr	s17056
Conkeldurr	s17088
Tympole	s17120
Palpitoad	s17152
Seismitoad	s17184
Throh	s17216
Sawk	s17248
Sewaddle	s17280
Swadloon	s17312
Leavanny	s17344
Venipede	s17376
Whirlipede	s17408
Scolipede	s17440
Cottonee	s17472
Whimsicott	s17504
Petilil	s17536
Lilligant	s17569
Basculin	s17602
Sandile	s17632
Krokorok	s17664
Krookodile	s17696
Darumaka	s17729
Darmanitan	s17763
Maractus	s17792
Dwebble	s17824
Crustle	s17856
Scraggy	s17888
Scrafty	s17920
Sigilyph	s17952
Yamask	s17985
Cofagrigus	s18016
Tirtouga	s18048
Carracosta	s18080
Archen	s18112
Archeops	s18144
Trubbish	s18176
Garbodor	s18208
Zorua	s18241
Zoroark	s18273
Minccino	s18304
Cinccino	s18336
Gothita	s18368
Gothorita	s18400
Gothitelle	s18432
Solosis	s18464
Duosion	s18496
Reuniclus	s18528
Ducklett	s18560
Swanna	s18592
Vanillite	s18624
Vanillish	s18656
Vanilluxe	s18688
Deerling	s18723
Sawsbuck	s18755
Emolga	s18784
Karrablast	s18816
Escavalier	s18848
Foongus	s18880
Amoonguss	s18912
Frillish	s18944
Jellicent	s18976
Alomomola	s19008
Joltik	s19040
Galvantula	s19072
Ferroseed	s19104
Ferrothorn	s19136
Klink	s19168
Klang	s19200
Klinklang	s19232
Tynamo	s19264
Eelektrik	s19296
Eelektross	s19328
Elgyem	s19360
Beheeyem	s19392
Litwick	s19424
Lampent	s19456
Chandelure	s19488
Axew	s19520
Fraxure	s19552
Haxorus	s19584
Cubchoo	s19616
Beartic	s19648
Cryogonal	s19680
Shelmet	s19712
Accelgor	s19744
Stunfisk	s19777
Mienfoo	s19808
Mienshao	s19840
Druddigon	s19872
Golett	s19904
Golurk	s19936
Pawniard	s19968
Bisharp	s20000
Bouffalant	s20032
Rufflet	s20064
Braviary	s20097
Vullaby	s20128
Mandibuzz	s20160
Heatmor	s20192
Durant	s20224
Deino	s20256
Zweilous	s20288
Hydreigon	s20320
Larvesta	s20352
Volcarona	s20384
Cobalion	s20416
Terrakion	s20448
Virizion	s20480
Tornadus	s20513
Thundurus	s20545
Reshiram	s20576
Zekrom	s20608
Landorus	s20641
Kyurem	s20674
Keldeo	s20705
Meloetta	s20737
Genesect	s20772
Chespin	s20800
Quilladin	s20832
Chesnaught	s20864
Fennekin	s20896
Braixen	s20928
Delphox	s20960
Froakie	s20992
Frogadier	s21024
Greninja	s21058
Bunnelby	s21088
Diggersby	s21120
Fletchling	s21152
Fletchinder	s21184
Talonflame	s21216
Scatterbug	s21248
Spewpa	s21280
Vivillon	s21331
Litleo	s21344
Pyroar	s21376
Flabébé	s21412
Floette	s21445
Florges	s21476
Skiddo	s21504
Gogoat	s21536
Pancham	s21568
Pangoro	s21600
Furfrou	s21641
Espurr	s21664
Meowstic	s21697
Honedge	s21728
Doublade	s21760
Aegislash	s21793
Spritzee	s21824
Aromatisse	s21856
Swirlix	s21888
Slurpuff	s21920
Inkay	s21952
Malamar	s21984
Binacle	s22016
Barbaracle	s22048
Skrelp	s22080
Dragalge	s22112
Clauncher	s22144
Clawitzer	s22176
Helioptile	s22208
Heliolisk	s22240
Tyrunt	s22272
Tyrantrum	s22304
Amaura	s22336
Aurorus	s22368
Sylveon	s22400
Hawlucha	s22432
Dedenne	s22464
Carbink	s22496
Goomy	s22528
Sliggoo	s22561
Goodra	s22593
Klefki	s22624
Phantump	s22656
Trevenant	s22688
Pumpkaboo	s22723
Gourgeist	s22755
Bergmite	s22784
Avalugg	s22817
Noibat	s22848
Noivern	s22880
Xerneas	s22913
Yveltal	s22944
Zygarde	s22980
Diancie	s23009
Hoopa	s23041
Volcanion	s23072
Rowlet	s23104
Dartrix	s23136
Decidueye	s23169
Litten	s23200
Torracat	s23232
Incineroar	s23264
Popplio	s23296
Brionne	s23328
Primarina	s23360
Pikipek	s23392
Trumbeak	s23424
Toucannon	s23456
Yungoos	s23488
Gumshoos	s23521
Grubbin	s23552
Charjabug	s23584
Vikavolt	s23617
Crabrawler	s23648
Crabominable	s23680
Oricorio	s23715
Cutiefly	s23744
Ribombee	s23777
Rockruff	s23809
Lycanroc	s23842
Wishiwashi	s23873
Mareanie	s23904
Toxapex	s23936
Mudbray	s23968
Mudsdale	s24000
Dewpider	s24032
Araquanid	s24065
Fomantis	s24096
Lurantis	s24129
Morelull	s24160
Shiinotic	s24192
Salandit	s24224
Salazzle	s24257
Stufful	s24288
Bewear	s24320
Bounsweet	s24352
Steenee	s24384
Tsareena	s24416
Comfey	s24448
Oranguru	s24480
Passimian	s24512
Wimpod	s24544
Golisopod	s24576
Sandygast	s24608
Palossand	s24640
Pyukumuku	s24672
Type: Null	s24704
Silvally	s24753
Minior	s24781
Komala	s24800
Turtonator	s24832
Togedemaru	s24865
Mimikyu	s24899
Bruxish	s24928
Drampa	s24960
Dhelmise	s24992
Jangmo-o	s25024
Hakamo-o	s25056
Kommo-o	s25089
Tapu Koko	s25120
Tapu Lele	s25152
Tapu Bulu	s25184
Tapu Fini	s25216
Cosmog	s25248
Cosmoem	s25280
Solgaleo	s25312
Lunala	s25344
Nihilego	s25376
Buzzwole	s25408
Pheromosa	s25440
Xurkitree	s25472
Celesteela	s25504
Kartana	s25536
Guzzlord	s25568
Necrozma	s25603
Magearna	s25633
Marshadow	s25664
Poipole	s25696
Naganadel	s25728
Stakataka	s25760
Blacephalon	s25792
Zeraora	s25824
Meltan	s25856
Melmetal	s25888
Grookey	s25920
Thwackey	s25952
Rillaboom	s25984
Scorbunny	s26016
Raboot	s26048
Cinderace	s26080
Sobble	s26112
Drizzile	s26144
Inteleon	s26176
Skwovet	s26208
Greedent	s26240
Rookidee	s26272
Corvisquire	s26304
Corviknight	s26336
Blipbug	s26368
Dottler	s26400
Orbeetle	s26432
Nickit	s26464
Thievul	s26496
Gossifleur	s26528
Eldegoss	s26560
Wooloo	s26592
Dubwool	s26624
Chewtle	s26656
Drednaw	s26688
Yamper	s26720
Boltund	s26752
Rolycoly	s26784
Carkol	s26816
Coalossal	s26848
Applin	s26880
Flapple	s26912
Appletun	s26944
Silicobra	s26976
Sandaconda	s27008
Cramorant	s27042
Arrokuda	s27072
Barraskewda	s27104
Toxel	s27136
Toxtricity	s27169
Sizzlipede	s27200
Centiskorch	s27232
Clobbopus	s27264
Grapploct	s27296
Sinistea	s27329
Polteageist	s27361
Hatenna	s27392
Hattrem	s27424
Hatterene	s27456
Impidimp	s27488
Morgrem	s27520
Grimmsnarl	s27552
Obstagoon	s27584
Perrserker	s27616
Cursola	s27648
Sirfetch’d	s27680
Mr. Rime	s27712
Runerigus	s27744
Milcery	s27776
Alcremie	s27816
Falinks	s27840
Pincurchin	s27872
Snom	s27904
Frosmoth	s27936
Stonjourner	s27968
Eiscue	s28001
Indeedee	s28033
Morpeko	s28065
Cufant	s28096
Copperajah	s28128
Dracozolt	s28160
Arctozolt	s28192
Dracovish	s28224
Arctovish	s28256
Duraludon	s28288
Dreepy	s28320
Drakloak	s28352
Dragapult	s28384
Zacian	s28417
Zamazenta	s28449
Eternatus	s28481
Kubfu	s28512
Urshifu	s28545
Zarude	s28577
Regieleki	s28608
Regidrago	s28640
Glastrier	s28672
Spectrier	s28704
Calyrex	s28738
Wyrdeer	s28768
Kleavor	s28800
Ursaluna	s28833
Basculegion	s28865
Sneasler	s28896
Overqwil	s28928
Enamorus	s28961
Sprigatito	s28992
Floragato	s29024
Meowscarada	s29056
Fuecoco	s29088
Crocalor	s29120
Skeledirge	s29152
Quaxly	s29184
Quaxwell	s29216
Quaquaval	s29248
Lechonk	s29280
Oinkologne	s29313
Tarountula	s29344
Spidops	s29376
Nymble	s29408
Lokix	s29440
Pawmi	s29472
Pawmo	s29504
Pawmot	s29536
Tandemaus	s29568
Maushold	s29601
Fidough	s29632
Dachsbun	s29664
Smoliv	s29696
Dolliv	s29728
Arboliva	s29760
Squawkabilly	s29795
Nacli	s29824
Naclstack	s29856
Garganacl	s29888
Charcadet	s29920
Armarouge	s29952
Ceruledge	s29984
Tadbulb	s30016
Bellibolt	s30048
Wattrel	s30080
Kilowattrel	s30112
Maschiff	s30144
Mabosstiff	s30176
Shroodle	s30208
Grafaiai	s30240
Bramblin	s30272
Brambleghast	s30304
Toedscool	s30336
Toedscruel	s30368
Klawf	s30400
Capsakid	s30432
Scovillain	s30464
Rellor	s30496
Rabsca	s30528
Flittle	s30560
Espathra	s30592
Tinkatink	s30624
Tinkatuff	s30656
Tinkaton	s30688
Wiglett	s30720
Wugtrio	s30752
Bombirdier	s30784
Finizen	s30816
Palafin	s30849
Varoom	s30880
Revavroom	s30912
Cyclizar	s30944
Orthworm	s30976
Glimmet	s31008
Glimmora	s31040
Greavard	s31072
Houndstone	s31104
Flamigo	s31136
Cetoddle	s31168
Cetitan	s31200
Veluza	s31232
Dondozo	s31264
Tatsugiri	s31298
Annihilape	s31328
Clodsire	s31360
Farigiraf	s31392
Dudunsparce	s31425
Kingambit	s31456
Great Tusk	s31488
Scream Tail	s31520
Brute Bonnet	s31552
Flutter Mane	s31584
Slither Wing	s31616
Sandy Shocks	s31648
Iron Treads	s31680
Iron Bundle	s31712
Iron Hands	s31744
Iron Jugulis	s31776
Iron Moth	s31808
Iron Thorns	s31840
Frigibax	s31872
Arctibax	s31904
Baxcalibur	s31936
Gimmighoul	s31969
Gholdengo	s32000
Wo-Chien	s32032
Chien-Pao	s32064
Ting-Lu	s32096
Chi-Yu	s32128
Roaring Moon	s32160
Iron Valiant	s32192
Koraidon	s32224
Miraidon	s32256
Walking Wake	s32288
Iron Leaves	s32320
Dipplin	s32352
Poltchageist	s32385
Sinistcha	s32417
Okidogi	s32448
Munkidori	s32480
Fezandipiti	s32512
Ogerpon	s32551
Archaludon	s32576
Hydrapple	s32608
Gouging Fire	s32640
Raging Bolt	s32672
Iron Boulder	s32704
Iron Crown	s32736
Terapagos	s32770
Pecharunt	s32800
MissingNo.	s0
Syclar	s536870944
Syclant	s536870976
Revenankh	s536871008
Embirch	s536871040
Flarelm	s536871072
Pyroak	s536871104
Breezi	s536871136
Fidgit	s536871168
Rebble	s536871200
Tactite	s536871232
Stratagem	s536871264
Privatyke	s536871296
Arghonaut	s536871328
Kitsunoh	s536871360
Cyclohm	s536871392
Colossoil	s536871424
Krilowatt	s536871456
Voodoll	s536871488
Voodoom	s536871520
Scratchet	s536871552
Tomohawk	s536871584
Necturine	s536871616
Necturna	s536871648
Mollux	s536871680
Cupra	s536871712
Argalis	s536871744
Aurumoth	s536871776
Brattler	s536871808
Malaconda	s536871840
Cawdet	s536871872
Cawmodore	s536871904
Volkritter	s536871936
Volkraken	s536871968
Snugglow	s536872000
Plasmanta	s536872032
Floatoy	s536872064
Caimanoe	s536872096
Naviathan	s536872128
Crucibelle	s536872161
Pluffle	s536872192
Kerfluffle	s536872224
Pajantom	s536872256
Mumbao	s536872288
Jumbao	s536872320
Fawnifer	s536872352
Electrelk	s536872384
Caribolt	s536872416
Smogecko	s536872448
Smoguana	s536872480
Smokomodo	s536872512
Swirlpool	s536872544
Coribalis	s536872576
Snaelstrom	s536872608
Justyke	s536872640
Equilibra	s536872672
Solotl	s536872704
Astrolotl	s536872736
Miasmite	s536872768
Miasmaw	s536872800
Chromera	s536872832
Nohface	s536872864
Monohm	s536872896
Duohm	s536872928
Dorsoil	s536872960
Protowatt	s536872992
Venomicon	s536873025
Saharascal	s536873056
Saharaja	s536873088
Ababo	s536873120
Scattervein	s536873152
Hemogoblin	s536873184
Cresceidon	s536873216
Chuggon	s536873248
Draggalong	s536873280
Chuggalong	s536873312
Shox	s536873376
Pokestar Smeargle	s537030912
Pokestar UFO	s537030944
Pokestar Brycen-Man	s537030976
Pokestar MT	s537031008
Pokestar MT2	s537031040
Pokestar Transport	s537031072
Pokestar Giant	s537031104
Pokestar Humanoid	s537031136
Pokestar Monster	s537031168
Pokestar F-00	s537031200
Pokestar F-002	s537031232
Pokestar Spirit	s537031264
Pokestar Black Door	s537031296
Pokestar White Door	s537031328
Pokestar Black Belt	s537031360
\.


--
-- Data for Name: pokemon_class_and_gender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_class_and_gender (name, pokemon_class, gender) FROM stdin;
Bulbasaur	Seed Pokémon	88.1
Ivysaur	Seed Pokémon	88.1
Venusaur	Seed Pokémon	88.1
Charmander	Lizard Pokémon	88.1
Charmeleon	Flame Pokémon	88.1
Charizard	Flame Pokémon	88.1
Squirtle	Tiny Turtle Pokémon	88.1
Wartortle	Turtle Pokémon	88.1
Blastoise	Shellfish Pokémon	88.1
Caterpie	Worm Pokémon	50
Metapod	Cocoon Pokémon	50
Butterfree	Butterfly Pokémon	50
Weedle	Hairy Pokémon	50
Kakuna	Cocoon Pokémon	50
Beedrill	Poison Bee Pokémon	50
Pidgey	Tiny Bird Pokémon	50
Pidgeotto	Bird Pokémon	50
Pidgeot	Bird Pokémon	50
Rattata	Mouse Pokémon	50
Raticate	Mouse Pokémon	50
Spearow	Tiny Bird Pokémon	50
Fearow	Beak Pokémon	50
Ekans	Snake Pokémon	50
Arbok	Cobra Pokémon	50
Pikachu	Mouse Pokémon	50
Raichu	Mouse Pokémon	50
Sandshrew	Mouse Pokémon	50
Sandslash	Mouse Pokémon	50
Nidoran♀	Poison Pin Pokémon	0
Nidorina	Poison Pin Pokémon	0
Nidoqueen	Drill Pokémon	0
Nidoran♂	Poison Pin Pokémon	100
Nidorino	Poison Pin Pokémon	100
Nidoking	Drill Pokémon	100
Clefairy	Fairy Pokémon	24.6
Clefable	Fairy Pokémon	24.6
Vulpix	Fox Pokémon	24.6
Ninetales	Fox Pokémon	24.6
Jigglypuff	Balloon Pokémon	24.6
Wigglytuff	Balloon Pokémon	24.6
Zubat	Bat Pokémon	50
Golbat	Bat Pokémon	50
Oddish	Weed Pokémon	50
Gloom	Weed Pokémon	50
Vileplume	Flower Pokémon	50
Paras	Mushroom Pokémon	50
Parasect	Mushroom Pokémon	50
Venonat	Insect Pokémon	50
Venomoth	Poison Moth Pokémon	50
Diglett	Mole Pokémon	50
Dugtrio	Mole Pokémon	50
Meowth	Scratch Cat Pokémon	50
Persian	Classy Cat Pokémon	50
Psyduck	Duck Pokémon	50
Golduck	Duck Pokémon	50
Mankey	Pig Monkey Pokémon	50
Primeape	Pig Monkey Pokémon	50
Growlithe	Puppy Pokémon	75.4
Arcanine	Legendary Pokémon	75.4
Poliwag	Tadpole Pokémon	50
Poliwhirl	Tadpole Pokémon	50
Poliwrath	Tadpole Pokémon	50
Abra	Psi Pokémon	75.4
Kadabra	Psi Pokémon	75.4
Alakazam	Psi Pokémon	75.4
Machop	Superpower Pokémon	75.4
Machoke	Superpower Pokémon	75.4
Machamp	Superpower Pokémon	75.4
Bellsprout	Flower Pokémon	50
Weepinbell	Flycatcher Pokémon	50
Victreebel	Flycatcher Pokémon	50
Tentacool	Jellyfish Pokémon	50
Tentacruel	Jellyfish Pokémon	50
Geodude	Rock Pokémon	50
Graveler	Rock Pokémon	50
Golem	Megaton Pokémon	50
Ponyta	Fire Horse Pokémon	50
Rapidash	Fire Horse Pokémon	50
Slowpoke	Dopey Pokémon	50
Slowbro	Hermit Crab Pokémon	50
Magnemite	Magnet Pokémon	\N
Magneton	Magnet Pokémon	\N
Farfetch'd	Wild Duck Pokémon	50
Doduo	Twin Bird Pokémon	50
Dodrio	Triple Bird Pokémon	50
Seel	Sea Lion Pokémon	50
Dewgong	Sea Lion Pokémon	50
Grimer	Sludge Pokémon	50
Muk	Sludge Pokémon	50
Shellder	Bivalve Pokémon	50
Cloyster	Bivalve Pokémon	50
Gastly	Gas Pokémon	50
Haunter	Gas Pokémon	50
Gengar	Shadow Pokémon	50
Onix	Rock Snake Pokémon	50
Drowzee	Hypnosis Pokémon	50
Hypno	Hypnosis Pokémon	50
Krabby	River Crab Pokémon	50
Kingler	Pincer Pokémon	50
Voltorb	Ball Pokémon	\N
Electrode	Ball Pokémon	\N
Exeggcute	Egg Pokémon	50
Exeggutor	Coconut Pokémon	50
Cubone	Lonely Pokémon	50
Marowak	Bone Keeper Pokémon	50
Hitmonlee	Kicking Pokémon	100
Hitmonchan	Punching Pokémon	100
Lickitung	Licking Pokémon	50
Koffing	Poison Gas Pokémon	50
Weezing	Poison Gas Pokémon	50
Rhyhorn	Spikes Pokémon	50
Rhydon	Drill Pokémon	50
Chansey	Egg Pokémon	0
Tangela	Vine Pokémon	50
Kangaskhan	Parent Pokémon	0
Horsea	Dragon Pokémon	50
Seadra	Dragon Pokémon	50
Goldeen	Goldfish Pokémon	50
Seaking	Goldfish Pokémon	50
Staryu	Starshape Pokémon	\N
Starmie	Mysterious Pokémon	\N
Mr. Mime	Barrier Pokémon	50
Scyther	Mantis Pokémon	50
Jynx	Humanshape Pokémon	0
Electabuzz	Electric Pokémon	75.4
Magmar	Spitfire Pokémon	75.4
Pinsir	Stagbeetle Pokémon	50
Tauros	Wild Bull Pokémon	100
Magikarp	Fish Pokémon	50
Gyarados	Atrocious Pokémon	50
Lapras	Transport Pokémon	50
Ditto	Transform Pokémon	\N
Eevee	Evolution Pokémon	88.1
Vaporeon	Bubble Jet Pokémon	88.1
Jolteon	Lightning Pokémon	88.1
Flareon	Flame Pokémon	88.1
Porygon	Virtual Pokémon	\N
Omanyte	Spiral Pokémon	88.1
Omastar	Spiral Pokémon	88.1
Kabuto	Shellfish Pokémon	88.1
Kabutops	Shellfish Pokémon	88.1
Aerodactyl	Fossil Pokémon	88.1
Snorlax	Sleeping Pokémon	88.1
Articuno	Freeze Pokémon	\N
Zapdos	Electric Pokémon	\N
Moltres	Flame Pokémon	\N
Dratini	Dragon Pokémon	50
Dragonair	Dragon Pokémon	50
Dragonite	Dragon Pokémon	50
Mewtwo	Genetic Pokémon	\N
Mew	New Species Pokémon	\N
Chikorita	Leaf Pokémon	88.1
Bayleef	Leaf Pokémon	88.1
Meganium	Herb Pokémon	88.1
Cyndaquil	Fire Mouse Pokémon	88.1
Quilava	Volcano Pokémon	88.1
Typhlosion	Volcano Pokémon	88.1
Totodile	Big Jaw Pokémon	88.1
Croconaw	Big Jaw Pokémon	88.1
Feraligatr	Big Jaw Pokémon	88.1
Sentret	Scout Pokémon	50
Furret	Long Body Pokémon	50
Hoothoot	Owl Pokémon	50
Noctowl	Owl Pokémon	50
Ledyba	Five Star Pokémon	50
Ledian	Five Star Pokémon	50
Spinarak	String Spit Pokémon	50
Ariados	Long Leg Pokémon	50
Crobat	Bat Pokémon	50
Chinchou	Angler Pokémon	50
Lanturn	Light Pokémon	50
Pichu	Tiny Mouse Pokémon	50
Cleffa	Star Shape Pokémon	24.6
Igglybuff	Balloon Pokémon	24.6
Togepi	Spike Ball Pokémon	88.1
Togetic	Happiness Pokémon	88.1
Natu	Little Bird Pokémon	50
Xatu	Mystic Pokémon	50
Mareep	Wool Pokémon	50
Flaaffy	Wool Pokémon	50
Ampharos	Light Pokémon	50
Bellossom	Flower Pokémon	50
Marill	Aquamouse Pokémon	50
Azumarill	Aquarabbit Pokémon	50
Sudowoodo	Imitation Pokémon	50
Politoed	Frog Pokémon	50
Hoppip	Cottonweed Pokémon	50
Skiploom	Cottonweed Pokémon	50
Jumpluff	Cottonweed Pokémon	50
Aipom	Long Tail Pokémon	50
Sunkern	Seed Pokémon	50
Sunflora	Sun Pokémon	50
Yanma	Clear Wing Pokémon	50
Wooper	Water Fish Pokémon	50
Quagsire	Water Fish Pokémon	50
Espeon	Sun Pokémon	88.1
Umbreon	Moonlight Pokémon	88.1
Murkrow	Darkness Pokémon	50
Slowking	Royal Pokémon	50
Misdreavus	Screech Pokémon	50
Unown	Symbol Pokémon	\N
Wobbuffet	Patient Pokémon	50
Girafarig	Long Neck Pokémon	50
Pineco	Bagworm Pokémon	50
Forretress	Bagworm Pokémon	50
Dunsparce	Land Snake Pokémon	50
Gligar	Flyscorpion Pokémon	50
Steelix	Iron Snake Pokémon	50
Snubbull	Fairy Pokémon	24.6
Granbull	Fairy Pokémon	24.6
Qwilfish	Balloon Pokémon	50
Scizor	Pincer Pokémon	50
Shuckle	Mold Pokémon	50
Heracross	Singlehorn Pokémon	50
Sneasel	Sharp Claw Pokémon	50
Teddiursa	Little Bear Pokémon	50
Ursaring	Hibernator Pokémon	50
Slugma	Lava Pokémon	50
Magcargo	Lava Pokémon	50
Swinub	Pig Pokémon	50
Piloswine	Swine Pokémon	50
Corsola	Coral Pokémon	24.6
Remoraid	Jet Pokémon	50
Octillery	Jet Pokémon	50
Delibird	Delivery Pokémon	50
Mantine	Kite Pokémon	50
Skarmory	Armor Bird Pokémon	50
Houndour	Dark Pokémon	50
Houndoom	Dark Pokémon	50
Kingdra	Dragon Pokémon	50
Phanpy	Long Nose Pokémon	50
Donphan	Armor Pokémon	50
Porygon2	Virtual Pokémon	\N
Stantler	Big Horn Pokémon	50
Smeargle	Painter Pokémon	50
Tyrogue	Scuffle Pokémon	100
Hitmontop	Handstand Pokémon	100
Smoochum	Kiss Pokémon	0
Elekid	Electric Pokémon	75.4
Magby	Live Coal Pokémon	75.4
Miltank	Milk Cow Pokémon	0
Blissey	Happiness Pokémon	0
Raikou	Thunder Pokémon	\N
Entei	Volcano Pokémon	\N
Suicune	Aurora Pokémon	\N
Larvitar	Rock Skin Pokémon	50
Pupitar	Hard Shell Pokémon	50
Tyranitar	Armor Pokémon	50
Lugia	Diving Pokémon	\N
Ho-Oh	Rainbow Pokémon	\N
Celebi	Time Travel Pokémon	\N
Treecko	Wood Gecko Pokémon	88.1
Grovyle	Wood Gecko Pokémon	88.1
Sceptile	Forest Pokémon	88.1
Torchic	Chick Pokémon	88.1
Combusken	Young Fowl Pokémon	88.1
Blaziken	Blaze Pokémon	88.1
Mudkip	Mud Fish Pokémon	88.1
Marshtomp	Mud Fish Pokémon	88.1
Swampert	Mud Fish Pokémon	88.1
Poochyena	Bite Pokémon	50
Mightyena	Bite Pokémon	50
Zigzagoon	Tiny Racoon Pokémon	50
Linoone	Rush Pokémon	50
Wurmple	Worm Pokémon	50
Silcoon	Cocoon Pokémon	50
Beautifly	Butterfly Pokémon	50
Cascoon	Cocoon Pokémon	50
Dustox	Poison Moth Pokémon	50
Lotad	Water Weed Pokémon	50
Lombre	Jolly Pokémon	50
Ludicolo	Carefree Pokémon	50
Seedot	Acorn Pokémon	50
Nuzleaf	Wily Pokémon	50
Shiftry	Wickid Pokémon	50
Taillow	TinySwallow Pokémon	50
Swellow	Swallow Pokémon	50
Wingull	Seagull Pokémon	50
Pelipper	Water Bird Pokémon	50
Ralts	Feeling Pokémon	50
Kirlia	Emotion Pokémon	50
Gardevoir	Embrace Pokémon	50
Surskit	Pond Skater Pokémon	50
Masquerain	Eyeball Pokémon	50
Shroomish	Mushroom Pokémon	50
Breloom	Mushroom Pokémon	50
Slakoth	Slacker Pokémon	50
Vigoroth	Wild Monkey Pokémon	50
Slaking	Lazy Pokémon	50
Nincada	Trainee Pokémon	50
Ninjask	Ninja Pokémon	50
Shedinja	Shed Pokémon	\N
Whismur	Whisper Pokémon	50
Loudred	Big Voice Pokémon	50
Exploud	Loud Noise Pokémon	50
Makuhita	Guts Pokémon	75.4
Hariyama	Arm Thrust Pokémon	75.4
Azurill	Polka Dot Pokémon	24.6
Nosepass	Compass Pokémon	50
Skitty	Kitten Pokémon	24.6
Delcatty	Prim Pokémon	24.6
Sableye	Darkness Pokémon	50
Mawile	Deceiver Pokémon	50
Aron	Iron Armor Pokémon	50
Lairon	Iron Armor Pokémon	50
Aggron	Iron Armor Pokémon	50
Meditite	Meditate Pokémon	50
Medicham	Meditate Pokémon	50
Electrike	Lightning Pokémon	50
Manectric	Discharge Pokémon	50
Plusle	Cheering Pokémon	50
Minun	Cheering Pokémon	50
Volbeat	Firefly Pokémon	100
Illumise	Firefly Pokémon	0
Roselia	Thorn Pokémon	50
Gulpin	Stomach Pokémon	50
Swalot	Poison Bag Pokémon	50
Carvanha	Savage Pokémon	50
Sharpedo	Brutal Pokémon	50
Wailmer	Ball Whale Pokémon	50
Wailord	Float Whale Pokémon	50
Numel	Numb Pokémon	50
Camerupt	Eruption Pokémon	50
Torkoal	Coal Pokémon	50
Spoink	Bounce Pokémon	50
Grumpig	Manipulate Pokémon	50
Spinda	Spot Panda Pokémon	50
Trapinch	Ant Pit Pokémon	50
Vibrava	Vibration Pokémon	50
Flygon	Mystic Pokémon	50
Cacnea	Cactus Pokémon	50
Cacturne	Scarecrow Pokémon	50
Swablu	Cotton Bird Pokémon	50
Altaria	Humming Pokémon	50
Zangoose	Cat Ferret Pokémon	50
Seviper	Fang Snake Pokémon	50
Lunatone	Meteorite Pokémon	\N
Solrock	Meteorite Pokémon	\N
Barboach	Whiskers Pokémon	50
Whiscash	Whiskers Pokémon	50
Corphish	Ruffian Pokémon	50
Crawdaunt	Rogue Pokémon	50
Baltoy	Clay Doll Pokémon	\N
Claydol	Clay Doll Pokémon	\N
Lileep	Sea Lily Pokémon	88.1
Cradily	Barnacle Pokémon	88.1
Anorith	Old Shrimp Pokémon	88.1
Armaldo	Plate Pokémon	88.1
Feebas	Fish Pokémon	50
Milotic	Tender Pokémon	50
Castform	Weather Pokémon	50
Kecleon	Color Swap Pokémon	50
Shuppet	Puppet Pokémon	50
Banette	Marionette Pokémon	50
Duskull	Requiem Pokémon	50
Dusclops	Beckon Pokémon	50
Tropius	Fruit Pokémon	50
Chimecho	Wind Chime Pokémon	50
Absol	Disaster Pokémon	50
Wynaut	Bright Pokémon	50
Snorunt	Snow Hat Pokémon	50
Glalie	Face Pokémon	50
Spheal	Clap Pokémon	50
Sealeo	Ball Roll Pokémon	50
Walrein	Ice Break Pokémon	50
Clamperl	Bivalve Pokémon	50
Huntail	Deep Sea Pokémon	50
Gorebyss	South Sea Pokémon	50
Relicanth	Longevity Pokémon	88.1
Luvdisc	Rendezvous Pokémon	24.6
Bagon	Rock Head Pokémon	50
Shelgon	Endurance Pokémon	50
Salamence	Dragon Pokémon	50
Beldum	Iron Ball Pokémon	\N
Metang	Iron Claw Pokémon	\N
Metagross	Iron Leg Pokémon	\N
Regirock	Rock Peak Pokémon	\N
Regice	Iceberg Pokémon	\N
Registeel	Iron Pokémon	\N
Latias	Eon Pokémon	0
Latios	Eon Pokémon	100
Kyogre	Sea Basin Pokémon	\N
Groudon	Continent Pokémon	\N
Rayquaza	Sky High Pokémon	\N
Jirachi	Wish Pokémon	\N
Deoxys	DNA Pokémon	\N
Turtwig	Tiny Leaf Pokémon	88.1
Grotle	Grove Pokémon	88.1
Torterra	Continent Pokémon	88.1
Chimchar	Chimp Pokémon	88.1
Monferno	Playful Pokémon	88.1
Infernape	Flame Pokémon	88.1
Piplup	Penguin Pokémon	88.1
Prinplup	Penguin Pokémon	88.1
Empoleon	Emperor Pokémon	88.1
Starly	Starling Pokémon	50
Staravia	Starling Pokémon	50
Staraptor	Predator Pokémon	50
Bidoof	Plump Mouse Pokémon	50
Bibarel	Beaver Pokémon	50
Kricketot	Cricket Pokémon	50
Kricketune	Cricket Pokémon	50
Shinx	Flash Pokémon	50
Luxio	Spark Pokémon	50
Luxray	Gleam Eyes Pokémon	50
Budew	Bud Pokémon	50
Roserade	Bouquet Pokémon	50
Cranidos	Head Butt Pokémon	88.1
Rampardos	Head Butt Pokémon	88.1
Shieldon	Shield Pokémon	88.1
Bastiodon	Shield Pokémon	88.1
Burmy	Bagworm Pokémon	50
Wormadam	Bagworm Pokémon	0
Mothim	Moth Pokémon	100
Combee	Tiny Bee Pokémon	88.1
Vespiquen	Beehive Pokémon	0
Pachirisu	EleSquirrel Pokémon	50
Buizel	Sea Weasel Pokémon	50
Floatzel	Sea Weasel Pokémon	50
Cherubi	Cherry Pokémon	50
Cherrim	Blossom Pokémon	50
Shellos	Sea Slug Pokémon	50
Gastrodon	Sea Slug Pokémon	50
Ambipom	Long Tail Pokémon	50
Drifloon	Balloon Pokémon	50
Drifblim	Blimp Pokémon	50
Buneary	Rabbit Pokémon	50
Lopunny	Rabbit Pokémon	50
Mismagius	Magical Pokémon	50
Honchkrow	Big Boss Pokémon	50
Glameow	Catty Pokémon	24.6
Purugly	Tiger Cat Pokémon	24.6
Chingling	Bell Pokémon	50
Stunky	Skunk Pokémon	50
Skuntank	Skunk Pokémon	50
Bronzor	Bronze Pokémon	\N
Bronzong	Bronze Bell Pokémon	\N
Bonsly	Bonsai Pokémon	50
Mime Jr.	Mime Pokémon	50
Happiny	Playhouse Pokémon	0
Chatot	Music Note Pokémon	50
Spiritomb	Forbidden Pokémon	50
Gible	Land Shark Pokémon	50
Gabite	Cave Pokémon	50
Garchomp	Mach Pokémon	50
Munchlax	Big Eater Pokémon	88.1
Riolu	Emanation Pokémon	88.1
Lucario	Aura Pokémon	88.1
Hippopotas	Hippo Pokémon	50
Hippowdon	Heavyweight Pokémon	50
Skorupi	Scorpion Pokémon	50
Drapion	Ogre Scorp Pokémon	50
Croagunk	Toxic Mouth Pokémon	50
Toxicroak	Toxic Mouth Pokémon	50
Carnivine	Bug Catcher Pokémon	50
Finneon	Wing Fish Pokémon	50
Lumineon	Neon Pokémon	50
Mantyke	Kite Pokémon	50
Snover	Frosted Tree Pokémon	50
Abomasnow	Frosted Tree Pokémon	50
Weavile	Sharp Claw Pokémon	50
Magnezone	Magnet Area Pokémon	\N
Lickilicky	Licking Pokémon	50
Rhyperior	Drill Pokémon	50
Tangrowth	Vine Pokémon	50
Electivire	Thunderbolt Pokémon	75.4
Magmortar	Blast Pokémon	75.4
Togekiss	Jubilee Pokémon	88.1
Yanmega	Ogre Darner Pokémon	50
Leafeon	Verdant Pokémon	88.1
Glaceon	Fresh Snow Pokémon	88.1
Gliscor	Fang Scorp Pokémon	50
Mamoswine	Twin Tusk Pokémon	50
Porygon-Z	Virtual Pokémon	\N
Gallade	Blade Pokémon	100
Probopass	Compass Pokémon	50
Dusknoir	Gripper Pokémon	50
Froslass	Snow Land Pokémon	0
Rotom	Plasma Pokémon	\N
Uxie	Knowledge Pokémon	\N
Mesprit	Emotion Pokémon	\N
Azelf	Willpower Pokémon	\N
Dialga	Temporal Pokémon	\N
Palkia	Spatial Pokémon	\N
Heatran	Lava Dome Pokémon	50
Regigigas	Colossal Pokémon	\N
Giratina	Renegade Pokémon	\N
Cresselia	Lunar Pokémon	0
Phione	Sea Drifter Pokémon	\N
Manaphy	Seafaring Pokémon	\N
Darkrai	Pitch-Black Pokémon	\N
Shaymin	Gratitude Pokémon	\N
Arceus	Alpha Pokémon	\N
Victini	Victory Pokémon	\N
Snivy	Grass Snake Pokémon	88.1
Servine	Grass Snake Pokémon	88.1
Serperior	Regal Pokémon	88.1
Tepig	Fire Pig Pokémon	88.1
Pignite	Fire Pig Pokémon	88.1
Emboar	Mega Fire Pig Pokémon	88.1
Oshawott	Sea Otter Pokémon	88.1
Dewott	Discipline Pokémon	88.1
Samurott	Formidable Pokémon	88.1
Patrat	Scout Pokémon	50
Watchog	Lookout Pokémon	50
Lillipup	Puppy Pokémon	50
Herdier	Loyal Dog Pokémon	50
Stoutland	Big-Hearted Pokémon	50
Purrloin	Devious Pokémon	50
Liepard	Cruel Pokémon	50
Pansage	Grass Monkey Pokémon	88.1
Simisage	Thorn Monkey Pokémon	88.1
Pansear	High Temp Pokémon	88.1
Simisear	Ember Pokémon	88.1
Panpour	Spray Pokémon	88.1
Simipour	Geyser Pokémon	88.1
Munna	Dream Eater Pokémon	50
Musharna	Drowsing Pokémon	50
Pidove	Tiny Pigeon Pokémon	50
Tranquill	Wild Pigeon Pokémon	50
Unfezant	Proud Pokémon	50
Blitzle	Electrified Pokémon	50
Zebstrika	Thunderbolt Pokémon	50
Roggenrola	Mantle Pokémon	50
Boldore	Ore Pokémon	50
Gigalith	Compressed Pokémon	50
Woobat	Bat Pokémon	50
Swoobat	Courting Pokémon	50
Drilbur	Mole Pokémon	50
Excadrill	Subterrene Pokémon	50
Audino	Hearing Pokémon	50
Timburr	Muscular Pokémon	75.4
Gurdurr	Muscular Pokémon	75.4
Conkeldurr	Muscular Pokémon	75.4
Tympole	Tadpole Pokémon	50
Palpitoad	Vibration Pokémon	50
Seismitoad	Vibration Pokémon	50
Throh	Judo Pokémon	100
Sawk	Karate Pokémon	100
Sewaddle	Sewing Pokémon	50
Swadloon	Leaf-Wrapped Pokémon	50
Leavanny	Nurturing Pokémon	50
Venipede	Centipede Pokémon	50
Whirlipede	Curlipede Pokémon	50
Scolipede	Megapede Pokémon	50
Cottonee	Cotton Puff Pokémon	50
Whimsicott	Windveiled Pokémon	50
Petilil	Bulb Pokémon	0
Lilligant	Flowering Pokémon	0
Basculin	Hostile Pokémon	50
Sandile	Desert Croc Pokémon	50
Krokorok	Desert Croc Pokémon	50
Krookodile	Intimidation Pokémon	50
Darumaka	Zen Charm Pokémon	50
Darmanitan	Blazing Pokémon	50
Maractus	Cactus Pokémon	50
Dwebble	Rock Inn Pokémon	50
Crustle	Stone Home Pokémon	50
Scraggy	Shedding Pokémon	50
Scrafty	Hoodlum Pokémon	50
Sigilyph	Avianoid Pokémon	50
Yamask	Spirit Pokémon	50
Cofagrigus	Coffin Pokémon	50
Tirtouga	Prototurtle Pokémon	88.1
Carracosta	Prototurtle Pokémon	88.1
Archen	First Bird Pokémon	88.1
Archeops	First Bird Pokémon	88.1
Trubbish	Trash Bag Pokémon	50
Garbodor	Trash Heap Pokémon	50
Zorua	Tricky Fox Pokémon	88.1
Zoroark	Illusion Fox Pokémon	88.1
Minccino	Chinchilla Pokémon	24.6
Cinccino	Scarf Pokémon	24.6
Gothita	Fixation Pokémon	24.6
Gothorita	Manipulate Pokémon	24.6
Gothitelle	Astral Body Pokémon	24.6
Solosis	Cell Pokémon	50
Duosion	Mitosis Pokémon	50
Reuniclus	Multiplying Pokémon	50
Ducklett	Water Bird Pokémon	50
Swanna	White Bird Pokémon	50
Vanillite	Fresh Snow Pokémon	50
Vanillish	Icy Snow Pokémon	50
Vanilluxe	Snowstorm Pokémon	50
Deerling	Season Pokémon	50
Sawsbuck	Season Pokémon	50
Emolga	Sky Squirrel Pokémon	50
Karrablast	Clamping Pokémon	50
Escavalier	Cavalry Pokémon	50
Foongus	Mushroom Pokémon	50
Amoonguss	Mushroom Pokémon	50
Frillish	Floating Pokémon	50
Jellicent	Floating Pokémon	50
Alomomola	Caring Pokémon	50
Joltik	Attaching Pokémon	50
Galvantula	EleSpider Pokémon	50
Ferroseed	Thorn Seed Pokémon	50
Ferrothorn	Thorn Pod Pokémon	50
Klink	Gear Pokémon	\N
Klang	Gear Pokémon	\N
Klinklang	Gear Pokémon	\N
Tynamo	EleFish Pokémon	50
Eelektrik	EleFish Pokémon	50
Eelektross	EleFish Pokémon	50
Elgyem	Cerebral Pokémon	50
Beheeyem	Cerebral Pokémon	50
Litwick	Candle Pokémon	50
Lampent	Lamp Pokémon	50
Chandelure	Luring Pokémon	50
Axew	Tusk Pokémon	50
Fraxure	Axe Jaw Pokémon	50
Haxorus	Axe Jaw Pokémon	50
Cubchoo	Chill Pokémon	50
Beartic	Freezing Pokémon	50
Cryogonal	Crystallizing Pokémon	\N
Shelmet	Snail Pokémon	50
Accelgor	Shell Out Pokémon	50
Stunfisk	Trap Pokémon	50
Mienfoo	Martial Arts Pokémon	50
Mienshao	Martial Arts Pokémon	50
Druddigon	Cave Pokémon	50
Golett	Automaton Pokémon	\N
Golurk	Automaton Pokémon	\N
Pawniard	Sharp Blade Pokémon	50
Bisharp	Sword Blade Pokémon	50
Bouffalant	Bash Buffalo Pokémon	50
Rufflet	Eaglet Pokémon	100
Braviary	Valiant Pokémon	100
Vullaby	Diapered Pokémon	0
Mandibuzz	Bone Vulture Pokémon	0
Heatmor	Anteater Pokémon	50
Durant	Iron Ant Pokémon	50
Deino	Irate Pokémon	50
Zweilous	Hostile Pokémon	50
Hydreigon	Brutal Pokémon	50
Larvesta	Torch Pokémon	50
Volcarona	Sun Pokémon	50
Cobalion	Iron Will Pokémon	\N
Terrakion	Cavern Pokémon	\N
Virizion	Grassland Pokémon	\N
Tornadus	Cyclone Pokémon	100
Thundurus	Bolt Strike Pokémon	100
Reshiram	Vast White Pokémon	\N
Zekrom	Deep Black Pokémon	\N
Landorus	Abundance Pokémon	100
Kyurem	Boundary Pokémon	\N
Keldeo	Colt Pokémon	\N
Meloetta	Melody Pokémon	\N
Genesect	Paleozoic Pokémon	\N
Chespin	Spiky Nut Pokémon	88.1
Quilladin	Spiny Armor Pokémon	88.1
Chesnaught	Spiny Armor Pokémon	88.1
Fennekin	Fox Pokémon	88.1
Braixen	Fox Pokémon	88.1
Delphox	Fox Pokémon	88.1
Froakie	Bubble Frog Pokémon	88.1
Frogadier	Bubble Frog Pokémon	88.1
Greninja	Ninja Pokémon	88.1
Bunnelby	Digging Pokémon	50
Diggersby	Digging Pokémon	50
Fletchling	Tiny Robin Pokémon	50
Fletchinder	Ember Pokémon	50
Talonflame	Scorching Pokémon	50
Scatterbug	Scatterdust Pokémon	50
Spewpa	Scatterdust Pokémon	50
Vivillon	Scale Pokémon	50
Litleo	Lion Cub Pokémon	11.2
Pyroar	Royal Pokémon	11.2
Flabébé	Single Bloom Pokémon	0
Floette	Fairy Pokémon	0
Florges	Garden Pokémon	0
Skiddo	Mount Pokémon	50
Gogoat	Mount Pokémon	50
Pancham	Playful Pokémon	50
Pangoro	Daunting Pokémon	50
Furfrou	Poodle Pokémon	50
Espurr	Restraint Pokémon	50
Meowstic	Constraint Pokémon	50
Honedge	Sword Pokémon	50
Doublade	Sword Pokémon	50
Aegislash	Royal Sword Pokémon	50
Spritzee	Perfume Pokémon	50
Aromatisse	Fragrance Pokémon	50
Swirlix	Cotton Candy Pokémon	50
Slurpuff	Meringue Pokémon	50
Inkay	Revolving Pokémon	50
Malamar	Overturning Pokémon	50
Binacle	Two-Handed Pokémon	50
Barbaracle	Collective Pokémon	50
Skrelp	Mock Kelp Pokémon	50
Dragalge	Mock Kelp Pokémon	50
Clauncher	Water Gun Pokémon	50
Clawitzer	Howitzer Pokémon	50
Helioptile	Generator Pokémon	50
Heliolisk	Generator Pokémon	50
Tyrunt	Royal Heir Pokémon	88.1
Tyrantrum	Despot Pokémon	88.1
Amaura	Tundra Pokémon	88.1
Aurorus	Tundra Pokémon	88.1
Sylveon	Intertwining Pokémon	88.1
Hawlucha	Wrestling Pokémon	50
Dedenne	Antenna Pokémon	50
Carbink	Jewel Pokémon	\N
Goomy	Soft Tissue Pokémon	50
Sliggoo	Soft Tissue Pokémon	50
Goodra	Dragon Pokémon	50
Klefki	Key Ring Pokémon	50
Phantump	Stump Pokémon	50
Trevenant	Elder Tree Pokémon	50
Pumpkaboo	Pumpkin Pokémon	50
Gourgeist	Pumpkin Pokémon	50
Bergmite	Ice Chunk Pokémon	50
Avalugg	Iceberg Pokémon	50
Noibat	Sound Wave Pokémon	50
Noivern	Sound Wave Pokémon	50
Xerneas	Life Pokémon	\N
Yveltal	Destruction Pokémon	\N
Zygarde	Order Pokémon	\N
Diancie	Jewel Pokémon	\N
Hoopa	Mischief Pokémon (Confined)Djinn Pokémonn (Unbound)	\N
Volcanion	Steam Pokémon	\N
Rowlet	Grass Quill Pokémon	88.1
Dartrix	Blade Quill Pokémon	88.1
Decidueye	Arrow Quill Pokémon	88.1
Litten	Fire Cat Pokémon	88.1
Torracat	Fire Cat Pokémon	88.1
Incineroar	Heel Pokémon	88.1
Popplio	Sea Lion Pokémon	88.1
Brionne	Pop Star Pokémon	88.1
Primarina	Soloist Pokémon	88.1
Pikipek	Woodpecker Pokémon	50
Trumbeak	Bugle Beak Pokémon	50
Toucannon	Cannon Pokémon	50
Yungoos	Loitering Pokémon	50
Gumshoos	Stakeout Pokémon	50
Grubbin	Larva Pokémon	50
Charjabug	Battery Pokémon	50
Vikavolt	Stag Beetle Pokémon	50
Crabrawler	Boxing Pokémon	50
Crabominable	Woolly Crab Pokémon	50
Oricorio	Dancing Pokémon	24.6
Cutiefly	Bee Fly Pokémon	50
Ribombee	Bee Fly Pokémon	50
Rockruff	Puppy Pokémon	50
Lycanroc	Wolf Pokémon	50
Wishiwashi	Small Fry Pokémon	50
Mareanie	Brutal Star Pokémon	50
Toxapex	Brutal Star Pokémon	50
Mudbray	Donkey Pokémon	50
Mudsdale	Draft Horse Pokémon	50
Dewpider	Water Bubble Pokémon	50
Araquanid	Water Bubble Pokémon	50
Fomantis	Sickle Grass Pokémon	50
Lurantis	Bloom Sickle Pokémon	50
Morelull	Illuminating Pokémon	50
Shiinotic	Illuminating Pokémon	50
Salandit	Toxic Lizard Pokémon	88.1
Salazzle	Toxic Lizard Pokémon	0
Stufful	Flailing Pokémon	50
Bewear	Strong Arm Pokémon	50
Bounsweet	Fruit Pokémon	0
Steenee	Fruit Pokémon	0
Tsareena	Fruit Pokémon	0
Comfey	Posy Picker Pokémon	24.6
Oranguru	Sage Pokémon	50
Passimian	Teamwork Pokémon	50
Wimpod	Turn Tail Pokémon	50
Golisopod	Hard Scale Pokémon	50
Sandygast	Sand Heap Pokémon	50
Palossand	Sand Castle Pokémon	50
Pyukumuku	Sea Cucumber Pokémon	50
Type: Null	Synthetic Pokémon	\N
Silvally	Synthetic Pokémon	\N
Minior	Meteor Pokémon	\N
Komala	Drowsing Pokémon	50
Turtonator	Blast Turtle Pokémon	50
Togedemaru	Roly-Poly Pokémon	50
Mimikyu	Disguise Pokémon	50
Bruxish	Gnash Teeth Pokémon	50
Drampa	Placid Pokémon	50
Dhelmise	Sea Creeper Pokémon	\N
Jangmo-o	Scaly Pokémon	50
Hakamo-o	Scaly Pokémon	50
Kommo-o	Scaly Pokémon	50
Tapu Koko	Land Spirit Pokémon	\N
Tapu Lele	Land Spirit Pokémon	\N
Tapu Bulu	Land Spirit Pokémon	\N
Tapu Fini	Land Spirit Pokémon	\N
Cosmog	Nebula Pokémon	\N
Cosmoem	Protostar Pokémon	\N
Solgaleo	Sunne Pokémon	\N
Lunala	Moone Pokémon	\N
Nihilego	Parasite Pokémon	\N
Buzzwole	Swollen Pokémon	\N
Pheromosa	Lissome Pokémon	\N
Xurkitree	Glowing Pokémon	\N
Celesteela	Launch Pokémon	\N
Kartana	Drawn Sword Pokémon	\N
Guzzlord	Junkivore Pokémon	\N
Necrozma	Prism Pokémon	\N
Magearna	Artificial Pokémon	\N
\.


--
-- Data for Name: pokemon_generation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_generation (name, generation, is_legendary) FROM stdin;
Bulbasaur	1	0
Ivysaur	1	0
Venusaur	1	0
Charmander	1	0
Charmeleon	1	0
Charizard	1	0
Squirtle	1	0
Wartortle	1	0
Blastoise	1	0
Caterpie	1	0
Metapod	1	0
Butterfree	1	0
Weedle	1	0
Kakuna	1	0
Beedrill	1	0
Pidgey	1	0
Pidgeotto	1	0
Pidgeot	1	0
Rattata	1	0
Raticate	1	0
Spearow	1	0
Fearow	1	0
Ekans	1	0
Arbok	1	0
Pikachu	1	0
Raichu	1	0
Sandshrew	1	0
Sandslash	1	0
Nidoran♀	1	0
Nidorina	1	0
Nidoqueen	1	0
Nidoran♂	1	0
Nidorino	1	0
Nidoking	1	0
Clefairy	1	0
Clefable	1	0
Vulpix	1	0
Ninetales	1	0
Jigglypuff	1	0
Wigglytuff	1	0
Zubat	1	0
Golbat	1	0
Oddish	1	0
Gloom	1	0
Vileplume	1	0
Paras	1	0
Parasect	1	0
Venonat	1	0
Venomoth	1	0
Diglett	1	0
Dugtrio	1	0
Meowth	1	0
Persian	1	0
Psyduck	1	0
Golduck	1	0
Mankey	1	0
Primeape	1	0
Growlithe	1	0
Arcanine	1	0
Poliwag	1	0
Poliwhirl	1	0
Poliwrath	1	0
Abra	1	0
Kadabra	1	0
Alakazam	1	0
Machop	1	0
Machoke	1	0
Machamp	1	0
Bellsprout	1	0
Weepinbell	1	0
Victreebel	1	0
Tentacool	1	0
Tentacruel	1	0
Geodude	1	0
Graveler	1	0
Golem	1	0
Ponyta	1	0
Rapidash	1	0
Slowpoke	1	0
Slowbro	1	0
Magnemite	1	0
Magneton	1	0
Farfetch'd	1	0
Doduo	1	0
Dodrio	1	0
Seel	1	0
Dewgong	1	0
Grimer	1	0
Muk	1	0
Shellder	1	0
Cloyster	1	0
Gastly	1	0
Haunter	1	0
Gengar	1	0
Onix	1	0
Drowzee	1	0
Hypno	1	0
Krabby	1	0
Kingler	1	0
Voltorb	1	0
Electrode	1	0
Exeggcute	1	0
Exeggutor	1	0
Cubone	1	0
Marowak	1	0
Hitmonlee	1	0
Hitmonchan	1	0
Lickitung	1	0
Koffing	1	0
Weezing	1	0
Rhyhorn	1	0
Rhydon	1	0
Chansey	1	0
Tangela	1	0
Kangaskhan	1	0
Horsea	1	0
Seadra	1	0
Goldeen	1	0
Seaking	1	0
Staryu	1	0
Starmie	1	0
Mr. Mime	1	0
Scyther	1	0
Jynx	1	0
Electabuzz	1	0
Magmar	1	0
Pinsir	1	0
Tauros	1	0
Magikarp	1	0
Gyarados	1	0
Lapras	1	0
Ditto	1	0
Eevee	1	0
Vaporeon	1	0
Jolteon	1	0
Flareon	1	0
Porygon	1	0
Omanyte	1	0
Omastar	1	0
Kabuto	1	0
Kabutops	1	0
Aerodactyl	1	0
Snorlax	1	0
Articuno	1	1
Zapdos	1	1
Moltres	1	1
Dratini	1	0
Dragonair	1	0
Dragonite	1	0
Mewtwo	1	1
Mew	1	1
Chikorita	2	0
Bayleef	2	0
Meganium	2	0
Cyndaquil	2	0
Quilava	2	0
Typhlosion	2	0
Totodile	2	0
Croconaw	2	0
Feraligatr	2	0
Sentret	2	0
Furret	2	0
Hoothoot	2	0
Noctowl	2	0
Ledyba	2	0
Ledian	2	0
Spinarak	2	0
Ariados	2	0
Crobat	2	0
Chinchou	2	0
Lanturn	2	0
Pichu	2	0
Cleffa	2	0
Igglybuff	2	0
Togepi	2	0
Togetic	2	0
Natu	2	0
Xatu	2	0
Mareep	2	0
Flaaffy	2	0
Ampharos	2	0
Bellossom	2	0
Marill	2	0
Azumarill	2	0
Sudowoodo	2	0
Politoed	2	0
Hoppip	2	0
Skiploom	2	0
Jumpluff	2	0
Aipom	2	0
Sunkern	2	0
Sunflora	2	0
Yanma	2	0
Wooper	2	0
Quagsire	2	0
Espeon	2	0
Umbreon	2	0
Murkrow	2	0
Slowking	2	0
Misdreavus	2	0
Unown	2	0
Wobbuffet	2	0
Girafarig	2	0
Pineco	2	0
Forretress	2	0
Dunsparce	2	0
Gligar	2	0
Steelix	2	0
Snubbull	2	0
Granbull	2	0
Qwilfish	2	0
Scizor	2	0
Shuckle	2	0
Heracross	2	0
Sneasel	2	0
Teddiursa	2	0
Ursaring	2	0
Slugma	2	0
Magcargo	2	0
Swinub	2	0
Piloswine	2	0
Corsola	2	0
Remoraid	2	0
Octillery	2	0
Delibird	2	0
Mantine	2	0
Skarmory	2	0
Houndour	2	0
Houndoom	2	0
Kingdra	2	0
Phanpy	2	0
Donphan	2	0
Porygon2	2	0
Stantler	2	0
Smeargle	2	0
Tyrogue	2	0
Hitmontop	2	0
Smoochum	2	0
Elekid	2	0
Magby	2	0
Miltank	2	0
Blissey	2	0
Raikou	2	1
Entei	2	1
Suicune	2	1
Larvitar	2	0
Pupitar	2	0
Tyranitar	2	0
Lugia	2	1
Ho-Oh	2	1
Celebi	2	1
Treecko	3	0
Grovyle	3	0
Sceptile	3	0
Torchic	3	0
Combusken	3	0
Blaziken	3	0
Mudkip	3	0
Marshtomp	3	0
Swampert	3	0
Poochyena	3	0
Mightyena	3	0
Zigzagoon	3	0
Linoone	3	0
Wurmple	3	0
Silcoon	3	0
Beautifly	3	0
Cascoon	3	0
Dustox	3	0
Lotad	3	0
Lombre	3	0
Ludicolo	3	0
Seedot	3	0
Nuzleaf	3	0
Shiftry	3	0
Taillow	3	0
Swellow	3	0
Wingull	3	0
Pelipper	3	0
Ralts	3	0
Kirlia	3	0
Gardevoir	3	0
Surskit	3	0
Masquerain	3	0
Shroomish	3	0
Breloom	3	0
Slakoth	3	0
Vigoroth	3	0
Slaking	3	0
Nincada	3	0
Ninjask	3	0
Shedinja	3	0
Whismur	3	0
Loudred	3	0
Exploud	3	0
Makuhita	3	0
Hariyama	3	0
Azurill	3	0
Nosepass	3	0
Skitty	3	0
Delcatty	3	0
Sableye	3	0
Mawile	3	0
Aron	3	0
Lairon	3	0
Aggron	3	0
Meditite	3	0
Medicham	3	0
Electrike	3	0
Manectric	3	0
Plusle	3	0
Minun	3	0
Volbeat	3	0
Illumise	3	0
Roselia	3	0
Gulpin	3	0
Swalot	3	0
Carvanha	3	0
Sharpedo	3	0
Wailmer	3	0
Wailord	3	0
Numel	3	0
Camerupt	3	0
Torkoal	3	0
Spoink	3	0
Grumpig	3	0
Spinda	3	0
Trapinch	3	0
Vibrava	3	0
Flygon	3	0
Cacnea	3	0
Cacturne	3	0
Swablu	3	0
Altaria	3	0
Zangoose	3	0
Seviper	3	0
Lunatone	3	0
Solrock	3	0
Barboach	3	0
Whiscash	3	0
Corphish	3	0
Crawdaunt	3	0
Baltoy	3	0
Claydol	3	0
Lileep	3	0
Cradily	3	0
Anorith	3	0
Armaldo	3	0
Feebas	3	0
Milotic	3	0
Castform	3	0
Kecleon	3	0
Shuppet	3	0
Banette	3	0
Duskull	3	0
Dusclops	3	0
Tropius	3	0
Chimecho	3	0
Absol	3	0
Wynaut	3	0
Snorunt	3	0
Glalie	3	0
Spheal	3	0
Sealeo	3	0
Walrein	3	0
Clamperl	3	0
Huntail	3	0
Gorebyss	3	0
Relicanth	3	0
Luvdisc	3	0
Bagon	3	0
Shelgon	3	0
Salamence	3	0
Beldum	3	0
Metang	3	0
Metagross	3	0
Regirock	3	1
Regice	3	1
Registeel	3	1
Latias	3	1
Latios	3	1
Kyogre	3	1
Groudon	3	1
Rayquaza	3	1
Jirachi	3	1
Deoxys	3	1
Turtwig	4	0
Grotle	4	0
Torterra	4	0
Chimchar	4	0
Monferno	4	0
Infernape	4	0
Piplup	4	0
Prinplup	4	0
Empoleon	4	0
Starly	4	0
Staravia	4	0
Staraptor	4	0
Bidoof	4	0
Bibarel	4	0
Kricketot	4	0
Kricketune	4	0
Shinx	4	0
Luxio	4	0
Luxray	4	0
Budew	4	0
Roserade	4	0
Cranidos	4	0
Rampardos	4	0
Shieldon	4	0
Bastiodon	4	0
Burmy	4	0
Wormadam	4	0
Mothim	4	0
Combee	4	0
Vespiquen	4	0
Pachirisu	4	0
Buizel	4	0
Floatzel	4	0
Cherubi	4	0
Cherrim	4	0
Shellos	4	0
Gastrodon	4	0
Ambipom	4	0
Drifloon	4	0
Drifblim	4	0
Buneary	4	0
Lopunny	4	0
Mismagius	4	0
Honchkrow	4	0
Glameow	4	0
Purugly	4	0
Chingling	4	0
Stunky	4	0
Skuntank	4	0
Bronzor	4	0
Bronzong	4	0
Bonsly	4	0
Mime Jr.	4	0
Happiny	4	0
Chatot	4	0
Spiritomb	4	0
Gible	4	0
Gabite	4	0
Garchomp	4	0
Munchlax	4	0
Riolu	4	0
Lucario	4	0
Hippopotas	4	0
Hippowdon	4	0
Skorupi	4	0
Drapion	4	0
Croagunk	4	0
Toxicroak	4	0
Carnivine	4	0
Finneon	4	0
Lumineon	4	0
Mantyke	4	0
Snover	4	0
Abomasnow	4	0
Weavile	4	0
Magnezone	4	0
Lickilicky	4	0
Rhyperior	4	0
Tangrowth	4	0
Electivire	4	0
Magmortar	4	0
Togekiss	4	0
Yanmega	4	0
Leafeon	4	0
Glaceon	4	0
Gliscor	4	0
Mamoswine	4	0
Porygon-Z	4	0
Gallade	4	0
Probopass	4	0
Dusknoir	4	0
Froslass	4	0
Rotom	4	0
Uxie	4	1
Mesprit	4	1
Azelf	4	1
Dialga	4	1
Palkia	4	1
Heatran	4	1
Regigigas	4	1
Giratina	4	1
Cresselia	4	1
Phione	4	0
Manaphy	4	1
Darkrai	4	1
Shaymin	4	1
Arceus	4	1
Victini	5	1
Snivy	5	0
Servine	5	0
Serperior	5	0
Tepig	5	0
Pignite	5	0
Emboar	5	0
Oshawott	5	0
Dewott	5	0
Samurott	5	0
Patrat	5	0
Watchog	5	0
Lillipup	5	0
Herdier	5	0
Stoutland	5	0
Purrloin	5	0
Liepard	5	0
Pansage	5	0
Simisage	5	0
Pansear	5	0
Simisear	5	0
Panpour	5	0
Simipour	5	0
Munna	5	0
Musharna	5	0
Pidove	5	0
Tranquill	5	0
Unfezant	5	0
Blitzle	5	0
Zebstrika	5	0
Roggenrola	5	0
Boldore	5	0
Gigalith	5	0
Woobat	5	0
Swoobat	5	0
Drilbur	5	0
Excadrill	5	0
Audino	5	0
Timburr	5	0
Gurdurr	5	0
Conkeldurr	5	0
Tympole	5	0
Palpitoad	5	0
Seismitoad	5	0
Throh	5	0
Sawk	5	0
Sewaddle	5	0
Swadloon	5	0
Leavanny	5	0
Venipede	5	0
Whirlipede	5	0
Scolipede	5	0
Cottonee	5	0
Whimsicott	5	0
Petilil	5	0
Lilligant	5	0
Basculin	5	0
Sandile	5	0
Krokorok	5	0
Krookodile	5	0
Darumaka	5	0
Darmanitan	5	0
Maractus	5	0
Dwebble	5	0
Crustle	5	0
Scraggy	5	0
Scrafty	5	0
Sigilyph	5	0
Yamask	5	0
Cofagrigus	5	0
Tirtouga	5	0
Carracosta	5	0
Archen	5	0
Archeops	5	0
Trubbish	5	0
Garbodor	5	0
Zorua	5	0
Zoroark	5	0
Minccino	5	0
Cinccino	5	0
Gothita	5	0
Gothorita	5	0
Gothitelle	5	0
Solosis	5	0
Duosion	5	0
Reuniclus	5	0
Ducklett	5	0
Swanna	5	0
Vanillite	5	0
Vanillish	5	0
Vanilluxe	5	0
Deerling	5	0
Sawsbuck	5	0
Emolga	5	0
Karrablast	5	0
Escavalier	5	0
Foongus	5	0
Amoonguss	5	0
Frillish	5	0
Jellicent	5	0
Alomomola	5	0
Joltik	5	0
Galvantula	5	0
Ferroseed	5	0
Ferrothorn	5	0
Klink	5	0
Klang	5	0
Klinklang	5	0
Tynamo	5	0
Eelektrik	5	0
Eelektross	5	0
Elgyem	5	0
Beheeyem	5	0
Litwick	5	0
Lampent	5	0
Chandelure	5	0
Axew	5	0
Fraxure	5	0
Haxorus	5	0
Cubchoo	5	0
Beartic	5	0
Cryogonal	5	0
Shelmet	5	0
Accelgor	5	0
Stunfisk	5	0
Mienfoo	5	0
Mienshao	5	0
Druddigon	5	0
Golett	5	0
Golurk	5	0
Pawniard	5	0
Bisharp	5	0
Bouffalant	5	0
Rufflet	5	0
Braviary	5	0
Vullaby	5	0
Mandibuzz	5	0
Heatmor	5	0
Durant	5	0
Deino	5	0
Zweilous	5	0
Hydreigon	5	0
Larvesta	5	0
Volcarona	5	0
Cobalion	5	1
Terrakion	5	1
Virizion	5	1
Tornadus	5	1
Thundurus	5	1
Reshiram	5	1
Zekrom	5	1
Landorus	5	1
Kyurem	5	1
Keldeo	5	1
Meloetta	5	1
Genesect	5	1
Chespin	6	0
Quilladin	6	0
Chesnaught	6	0
Fennekin	6	0
Braixen	6	0
Delphox	6	0
Froakie	6	0
Frogadier	6	0
Greninja	6	0
Bunnelby	6	0
Diggersby	6	0
Fletchling	6	0
Fletchinder	6	0
Talonflame	6	0
Scatterbug	6	0
Spewpa	6	0
Vivillon	6	0
Litleo	6	0
Pyroar	6	0
Flabébé	6	0
Floette	6	0
Florges	6	0
Skiddo	6	0
Gogoat	6	0
Pancham	6	0
Pangoro	6	0
Furfrou	6	0
Espurr	6	0
Meowstic	6	0
Honedge	6	0
Doublade	6	0
Aegislash	6	0
Spritzee	6	0
Aromatisse	6	0
Swirlix	6	0
Slurpuff	6	0
Inkay	6	0
Malamar	6	0
Binacle	6	0
Barbaracle	6	0
Skrelp	6	0
Dragalge	6	0
Clauncher	6	0
Clawitzer	6	0
Helioptile	6	0
Heliolisk	6	0
Tyrunt	6	0
Tyrantrum	6	0
Amaura	6	0
Aurorus	6	0
Sylveon	6	0
Hawlucha	6	0
Dedenne	6	0
Carbink	6	0
Goomy	6	0
Sliggoo	6	0
Goodra	6	0
Klefki	6	0
Phantump	6	0
Trevenant	6	0
Pumpkaboo	6	0
Gourgeist	6	0
Bergmite	6	0
Avalugg	6	0
Noibat	6	0
Noivern	6	0
Xerneas	6	1
Yveltal	6	1
Zygarde	6	1
Diancie	6	1
Hoopa	6	1
Volcanion	6	1
Rowlet	7	0
Dartrix	7	0
Decidueye	7	0
Litten	7	0
Torracat	7	0
Incineroar	7	0
Popplio	7	0
Brionne	7	0
Primarina	7	0
Pikipek	7	0
Trumbeak	7	0
Toucannon	7	0
Yungoos	7	0
Gumshoos	7	0
Grubbin	7	0
Charjabug	7	0
Vikavolt	7	0
Crabrawler	7	0
Crabominable	7	0
Oricorio	7	0
Cutiefly	7	0
Ribombee	7	0
Rockruff	7	0
Lycanroc	7	0
Wishiwashi	7	0
Mareanie	7	0
Toxapex	7	0
Mudbray	7	0
Mudsdale	7	0
Dewpider	7	0
Araquanid	7	0
Fomantis	7	0
Lurantis	7	0
Morelull	7	0
Shiinotic	7	0
Salandit	7	0
Salazzle	7	0
Stufful	7	0
Bewear	7	0
Bounsweet	7	0
Steenee	7	0
Tsareena	7	0
Comfey	7	0
Oranguru	7	0
Passimian	7	0
Wimpod	7	0
Golisopod	7	0
Sandygast	7	0
Palossand	7	0
Pyukumuku	7	0
Type: Null	7	0
Silvally	7	0
Minior	7	0
Komala	7	0
Turtonator	7	0
Togedemaru	7	0
Mimikyu	7	0
Bruxish	7	0
Drampa	7	0
Dhelmise	7	0
Jangmo-o	7	0
Hakamo-o	7	0
Kommo-o	7	0
Tapu Koko	7	1
Tapu Lele	7	1
Tapu Bulu	7	1
Tapu Fini	7	1
Cosmog	7	1
Cosmoem	7	1
Solgaleo	7	1
Lunala	7	1
Nihilego	7	1
Buzzwole	7	1
Pheromosa	7	1
Xurkitree	7	1
Celesteela	7	1
Kartana	7	1
Guzzlord	7	1
Necrozma	7	1
Magearna	7	1
\.


--
-- Data for Name: pokemon_strong; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_strong (type, strong1, strong2, strong3, strong4, strong5) FROM stdin;
normal					
fire	Grass	Ice	Bug	Steel	
water	Fire	Ground	Rock		
grass	Water	Ground	Rock		
electric	Water	Flying			
ice	Grass	Ground	Flying	Dragon	
fighting	Normal	Ice	Rock	Dark	Steel
poison	Grass	Fairy			
ground	Fire	Electric	Poison	Rock	Steel
flying	Grass	Fighting	Bug		
psychic	Fighting	Poison			
bug	Grass	Psychic	Dark		
rock	Fire	Fighting	Flying	Bug	
ghost	Psychic	Ghost			
dragon	Dragon				
dark	Psychic	Ghost			
steel	Ice	Rock	Fairy		
fairy	Fighting	Dragon	Dark		
\.


--
-- Data for Name: pokemon_type_stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_type_stats (name, type1, type2, base_total, hp, attack, defense, sp_attack, sp_defense, speed) FROM stdin;
Bulbasaur	grass	poison	318	45	49	49	65	65	45
Ivysaur	grass	poison	405	60	62	63	80	80	60
Venusaur	grass	poison	625	80	100	123	122	120	80
Charmander	fire	\N	309	39	52	43	60	50	65
Charmeleon	fire	\N	405	58	64	58	80	65	80
Charizard	fire	flying	634	78	104	78	159	115	100
Squirtle	water	\N	314	44	48	65	50	64	43
Wartortle	water	\N	405	59	63	80	65	80	58
Blastoise	water	\N	630	79	103	120	135	115	78
Caterpie	bug	\N	195	45	30	35	20	20	45
Metapod	bug	\N	205	50	20	55	25	25	30
Butterfree	bug	flying	395	60	45	50	90	80	70
Weedle	bug	poison	195	40	35	30	20	20	50
Kakuna	bug	poison	205	45	25	50	25	25	35
Beedrill	bug	poison	495	65	150	40	15	80	145
Pidgey	normal	flying	251	40	45	40	35	35	56
Pidgeotto	normal	flying	349	63	60	55	50	50	71
Pidgeot	normal	flying	579	83	80	80	135	80	121
Rattata	normal	dark	253	30	56	35	25	35	72
Raticate	normal	dark	413	75	71	70	40	80	77
Spearow	normal	flying	262	40	60	30	31	31	70
Fearow	normal	flying	442	65	90	65	61	61	100
Ekans	poison	\N	288	35	60	44	40	54	55
Arbok	poison	\N	448	60	95	69	65	79	80
Pikachu	electric	\N	320	35	55	40	50	50	90
Raichu	electric	electric	485	60	85	50	95	85	110
Sandshrew	ground	ice	300	50	75	90	10	35	40
Sandslash	ground	ice	450	75	100	120	25	65	65
Nidoran♀	poison	\N	275	55	47	52	40	40	41
Nidorina	poison	\N	365	70	62	67	55	55	56
Nidoqueen	poison	ground	505	90	92	87	75	85	76
Nidoran♂	poison	\N	273	46	57	40	40	40	50
Nidorino	poison	\N	365	61	72	57	55	55	65
Nidoking	poison	ground	505	81	102	77	85	75	85
Clefairy	fairy	\N	323	70	45	48	60	65	35
Clefable	fairy	\N	483	95	70	73	95	90	60
Vulpix	fire	ice	299	38	41	40	50	65	65
Ninetales	fire	ice	505	73	67	75	81	100	109
Jigglypuff	normal	fairy	270	115	45	20	45	25	20
Wigglytuff	normal	fairy	435	140	70	45	85	50	45
Zubat	poison	flying	245	40	45	35	30	40	55
Golbat	poison	flying	455	75	80	70	65	75	90
Oddish	grass	poison	320	45	50	55	75	65	30
Gloom	grass	poison	395	60	65	70	85	75	40
Vileplume	grass	poison	490	75	80	85	110	90	50
Paras	bug	grass	285	35	70	55	45	55	25
Parasect	bug	grass	405	60	95	80	60	80	30
Venonat	bug	poison	305	60	55	50	40	55	45
Venomoth	bug	poison	450	70	65	60	90	75	90
Diglett	ground	ground	265	10	55	30	35	45	90
Dugtrio	ground	ground	425	35	100	60	50	70	110
Meowth	normal	dark	290	40	35	35	50	40	90
Persian	normal	dark	440	65	60	60	75	65	115
Psyduck	water	\N	320	50	52	48	65	50	55
Golduck	water	\N	500	80	82	78	95	80	85
Mankey	fighting	\N	305	40	80	35	35	45	70
Primeape	fighting	\N	455	65	105	60	60	70	95
Growlithe	fire	\N	350	55	70	45	70	50	60
Arcanine	fire	\N	555	90	110	80	100	80	95
Poliwag	water	\N	300	40	50	40	40	40	90
Poliwhirl	water	\N	385	65	65	65	50	50	90
Poliwrath	water	fighting	510	90	95	95	70	90	70
Abra	psychic	\N	310	25	20	15	105	55	90
Kadabra	psychic	\N	400	40	35	30	120	70	105
Alakazam	psychic	\N	600	55	50	65	175	105	150
Machop	fighting	\N	305	70	80	50	35	35	35
Machoke	fighting	\N	405	80	100	70	50	60	45
Machamp	fighting	\N	505	90	130	80	65	85	55
Bellsprout	grass	poison	300	50	75	35	70	30	40
Weepinbell	grass	poison	390	65	90	50	85	45	55
Victreebel	grass	poison	490	80	105	65	100	70	70
Tentacool	water	poison	335	40	40	35	50	100	70
Tentacruel	water	poison	515	80	70	65	80	120	100
Geodude	rock	ground	300	40	80	100	30	30	20
Graveler	rock	ground	390	55	95	115	45	45	35
Golem	rock	ground	495	80	120	130	55	65	45
Ponyta	fire	\N	410	50	85	55	65	65	90
Rapidash	fire	\N	500	65	100	70	80	80	105
Slowpoke	water	psychic	315	90	65	65	40	40	15
Slowbro	water	psychic	590	95	75	180	130	80	30
Magnemite	electric	steel	325	25	35	70	95	55	45
Magneton	electric	steel	465	50	60	95	120	70	70
Farfetch'd	normal	flying	377	52	90	55	58	62	60
Doduo	normal	flying	310	35	85	45	35	35	75
Dodrio	normal	flying	470	60	110	70	60	60	110
Seel	water	\N	325	65	45	55	45	70	45
Dewgong	water	ice	475	90	70	80	70	95	70
Grimer	poison	poison	325	80	80	50	40	50	25
Muk	poison	poison	500	105	105	75	65	100	50
Shellder	water	\N	305	30	65	100	45	25	40
Cloyster	water	ice	525	50	95	180	85	45	70
Gastly	ghost	poison	310	30	35	30	100	35	80
Haunter	ghost	poison	405	45	50	45	115	55	95
Gengar	ghost	poison	600	60	65	80	170	95	130
Onix	rock	ground	385	35	45	160	30	45	70
Drowzee	psychic	\N	328	60	48	45	43	90	42
Hypno	psychic	\N	483	85	73	70	73	115	67
Krabby	water	\N	325	30	105	90	25	25	50
Kingler	water	\N	475	55	130	115	50	50	75
Voltorb	electric	\N	330	40	30	50	55	55	100
Electrode	electric	\N	490	60	50	70	80	80	150
Exeggcute	grass	psychic	325	60	40	80	60	45	40
Exeggutor	grass	psychic	530	95	105	85	125	75	45
Cubone	ground	\N	320	50	50	95	40	50	35
Marowak	ground	fire	425	60	80	110	50	80	45
Hitmonlee	fighting	\N	455	50	120	53	35	110	87
Hitmonchan	fighting	\N	455	50	105	79	35	110	76
Lickitung	normal	\N	385	90	55	75	60	75	30
Koffing	poison	\N	340	40	65	95	60	45	35
Weezing	poison	\N	490	65	90	120	85	70	60
Rhyhorn	ground	rock	345	80	85	95	30	30	25
Rhydon	ground	rock	485	105	130	120	45	45	40
Chansey	normal	\N	450	250	5	5	35	105	50
Tangela	grass	\N	435	65	55	115	100	40	60
Kangaskhan	normal	\N	590	105	125	100	60	100	100
Horsea	water	\N	295	30	40	70	70	25	60
Seadra	water	\N	440	55	65	95	95	45	85
Goldeen	water	\N	320	45	67	60	35	50	63
Seaking	water	\N	450	80	92	65	65	80	68
Staryu	water	\N	340	30	45	55	70	55	85
Starmie	water	psychic	520	60	75	85	100	85	115
Mr. Mime	psychic	fairy	460	40	45	65	100	120	90
Scyther	bug	flying	500	70	110	80	55	80	105
Jynx	ice	psychic	455	65	50	35	115	95	95
Electabuzz	electric	\N	490	65	83	57	95	85	105
Magmar	fire	\N	495	65	95	57	100	85	93
Pinsir	bug	\N	600	65	155	120	65	90	105
Tauros	normal	\N	490	75	100	95	40	70	110
Magikarp	water	\N	200	20	10	55	15	20	80
Gyarados	water	flying	640	95	155	109	70	130	81
Lapras	water	ice	535	130	85	80	85	95	60
Ditto	normal	\N	288	48	48	48	48	48	48
Eevee	normal	\N	325	55	55	50	45	65	55
Vaporeon	water	\N	525	130	65	60	110	95	65
Jolteon	electric	\N	525	65	65	60	110	95	130
Flareon	fire	\N	525	65	130	60	95	110	65
Porygon	normal	\N	395	65	60	70	85	75	40
Omanyte	rock	water	355	35	40	100	90	55	35
Omastar	rock	water	495	70	60	125	115	70	55
Kabuto	rock	water	355	30	80	90	55	45	55
Kabutops	rock	water	495	60	115	105	65	70	80
Aerodactyl	rock	flying	615	80	135	85	70	95	150
Snorlax	normal	\N	540	160	110	65	65	110	30
Articuno	ice	flying	580	90	85	100	95	125	85
Zapdos	electric	flying	580	90	90	85	125	90	100
Moltres	fire	flying	580	90	100	90	125	85	90
Dratini	dragon	\N	300	41	64	45	50	50	50
Dragonair	dragon	\N	420	61	84	65	70	70	70
Dragonite	dragon	flying	600	91	134	95	100	100	80
Mewtwo	psychic	\N	780	106	150	70	194	120	140
Mew	psychic	\N	600	100	100	100	100	100	100
Chikorita	grass	\N	318	45	49	65	49	65	45
Bayleef	grass	\N	405	60	62	80	63	80	60
Meganium	grass	\N	525	80	82	100	83	100	80
Cyndaquil	fire	\N	309	39	52	43	60	50	65
Quilava	fire	\N	405	58	64	58	80	65	80
Typhlosion	fire	\N	534	78	84	78	109	85	100
Totodile	water	\N	314	50	65	64	44	48	43
Croconaw	water	\N	405	65	80	80	59	63	58
Feraligatr	water	\N	530	85	105	100	79	83	78
Sentret	normal	\N	215	35	46	34	35	45	20
Furret	normal	\N	415	85	76	64	45	55	90
Hoothoot	normal	flying	262	60	30	30	36	56	50
Noctowl	normal	flying	452	100	50	50	86	96	70
Ledyba	bug	flying	265	40	20	30	40	80	55
Ledian	bug	flying	390	55	35	50	55	110	85
Spinarak	bug	poison	250	40	60	40	40	40	30
Ariados	bug	poison	400	70	90	70	60	70	40
Crobat	poison	flying	535	85	90	80	70	80	130
Chinchou	water	electric	330	75	38	38	56	56	67
Lanturn	water	electric	460	125	58	58	76	76	67
Pichu	electric	\N	205	20	40	15	35	35	60
Cleffa	fairy	\N	218	50	25	28	45	55	15
Igglybuff	normal	fairy	210	90	30	15	40	20	15
Togepi	fairy	\N	245	35	20	65	40	65	20
Togetic	fairy	flying	405	55	40	85	80	105	40
Natu	psychic	flying	320	40	50	45	70	45	70
Xatu	psychic	flying	470	65	75	70	95	70	95
Mareep	electric	\N	280	55	40	40	65	45	35
Flaaffy	electric	\N	365	70	55	55	80	60	45
Ampharos	electric	\N	610	90	95	105	165	110	45
Bellossom	grass	\N	490	75	80	95	90	100	50
Marill	water	fairy	250	70	20	50	20	50	40
Azumarill	water	fairy	420	100	50	80	60	80	50
Sudowoodo	rock	\N	410	70	100	115	30	65	30
Politoed	water	\N	500	90	75	75	90	100	70
Hoppip	grass	flying	250	35	35	40	35	55	50
Skiploom	grass	flying	340	55	45	50	45	65	80
Jumpluff	grass	flying	460	75	55	70	55	95	110
Aipom	normal	\N	360	55	70	55	40	55	85
Sunkern	grass	\N	180	30	30	30	30	30	30
Sunflora	grass	\N	425	75	75	55	105	85	30
Yanma	bug	flying	390	65	65	45	75	45	95
Wooper	water	ground	210	55	45	45	25	25	15
Quagsire	water	ground	430	95	85	85	65	65	35
Espeon	psychic	\N	525	65	65	60	130	95	110
Umbreon	dark	\N	525	95	65	110	60	130	65
Murkrow	dark	flying	405	60	85	42	85	42	91
Slowking	water	psychic	490	95	75	80	100	110	30
Misdreavus	ghost	\N	435	60	60	60	85	85	85
Unown	psychic	\N	336	48	72	48	72	48	48
Wobbuffet	psychic	\N	405	190	33	58	33	58	33
Girafarig	normal	psychic	455	70	80	65	90	65	85
Pineco	bug	\N	290	50	65	90	35	35	15
Forretress	bug	steel	465	75	90	140	60	60	40
Dunsparce	normal	\N	415	100	70	70	65	65	45
Gligar	ground	flying	430	65	75	105	35	65	85
Steelix	steel	ground	610	75	125	230	55	95	30
Snubbull	fairy	\N	300	60	80	50	40	40	30
Granbull	fairy	\N	450	90	120	75	60	60	45
Qwilfish	water	poison	440	65	95	85	55	55	85
Scizor	bug	steel	600	70	150	140	65	100	75
Shuckle	bug	rock	505	20	10	230	10	230	5
Heracross	bug	fighting	600	80	185	115	40	105	75
Sneasel	dark	ice	430	55	95	55	35	75	115
Teddiursa	normal	\N	330	60	80	50	50	50	40
Ursaring	normal	\N	500	90	130	75	75	75	55
Slugma	fire	\N	250	40	40	40	70	40	20
Magcargo	fire	rock	430	60	50	120	90	80	30
Swinub	ice	ground	250	50	50	40	30	30	50
Piloswine	ice	ground	450	100	100	80	60	60	50
Corsola	water	rock	410	65	55	95	65	95	35
Remoraid	water	\N	300	35	65	35	65	35	65
Octillery	water	\N	480	75	105	75	105	75	45
Delibird	ice	flying	330	45	55	45	65	45	75
Mantine	water	flying	485	85	40	70	80	140	70
Skarmory	steel	flying	465	65	80	140	40	70	70
Houndour	dark	fire	330	45	60	30	80	50	65
Houndoom	dark	fire	600	75	90	90	140	90	115
Kingdra	water	dragon	540	75	95	95	95	95	85
Phanpy	ground	\N	330	90	60	60	40	40	40
Donphan	ground	\N	500	90	120	120	60	60	50
Porygon2	normal	\N	515	85	80	90	105	95	60
Stantler	normal	\N	465	73	95	62	85	65	85
Smeargle	normal	\N	250	55	20	35	20	45	75
Tyrogue	fighting	\N	210	35	35	35	35	35	35
Hitmontop	fighting	\N	455	50	95	95	35	110	70
Smoochum	ice	psychic	305	45	30	15	85	65	65
Elekid	electric	\N	360	45	63	37	65	55	95
Magby	fire	\N	365	45	75	37	70	55	83
Miltank	normal	\N	490	95	80	105	40	70	100
Blissey	normal	\N	540	255	10	10	75	135	55
Raikou	electric	\N	580	90	85	75	115	100	115
Entei	fire	\N	580	115	115	85	90	75	100
Suicune	water	\N	580	100	75	115	90	115	85
Larvitar	rock	ground	300	50	64	50	45	50	41
Pupitar	rock	ground	410	70	84	70	65	70	51
Tyranitar	rock	dark	700	100	164	150	95	120	71
Lugia	psychic	flying	680	106	90	130	90	154	110
Ho-Oh	fire	flying	680	106	130	90	110	154	90
Celebi	psychic	grass	600	100	100	100	100	100	100
Treecko	grass	\N	310	40	45	35	65	55	70
Grovyle	grass	\N	405	50	65	45	85	65	95
Sceptile	grass	\N	630	70	110	75	145	85	145
Torchic	fire	\N	310	45	60	40	70	50	45
Combusken	fire	fighting	405	60	85	60	85	60	55
Blaziken	fire	fighting	630	80	160	80	130	80	100
Mudkip	water	\N	310	50	70	50	50	50	40
Marshtomp	water	ground	405	70	85	70	60	70	50
Swampert	water	ground	635	100	150	110	95	110	70
Poochyena	dark	\N	220	35	55	35	30	30	35
Mightyena	dark	\N	420	70	90	70	60	60	70
Zigzagoon	normal	\N	240	38	30	41	30	41	60
Linoone	normal	\N	420	78	70	61	50	61	100
Wurmple	bug	\N	195	45	45	35	20	30	20
Silcoon	bug	\N	205	50	35	55	25	25	15
Beautifly	bug	flying	395	60	70	50	100	50	65
Cascoon	bug	\N	205	50	35	55	25	25	15
Dustox	bug	poison	385	60	50	70	50	90	65
Lotad	water	grass	220	40	30	30	40	50	30
Lombre	water	grass	340	60	50	50	60	70	50
Ludicolo	water	grass	480	80	70	70	90	100	70
Seedot	grass	\N	220	40	40	50	30	30	30
Nuzleaf	grass	dark	340	70	70	40	60	40	60
Shiftry	grass	dark	480	90	100	60	90	60	80
Taillow	normal	flying	270	40	55	30	30	30	85
Swellow	normal	flying	455	60	85	60	75	50	125
Wingull	water	flying	270	40	30	30	55	30	85
Pelipper	water	flying	440	60	50	100	95	70	65
Ralts	psychic	fairy	198	28	25	25	45	35	40
Kirlia	psychic	fairy	278	38	35	35	65	55	50
Gardevoir	psychic	fairy	618	68	85	65	165	135	100
Surskit	bug	water	269	40	30	32	50	52	65
Masquerain	bug	flying	454	70	60	62	100	82	80
Shroomish	grass	\N	295	60	40	60	40	60	35
Breloom	grass	fighting	460	60	130	80	60	60	70
Slakoth	normal	\N	280	60	60	60	35	35	30
Vigoroth	normal	\N	440	80	80	80	55	55	90
Slaking	normal	\N	670	150	160	100	95	65	100
Nincada	bug	ground	266	31	45	90	30	30	40
Ninjask	bug	flying	456	61	90	45	50	50	160
Shedinja	bug	ghost	236	1	90	45	30	30	40
Whismur	normal	\N	240	64	51	23	51	23	28
Loudred	normal	\N	360	84	71	43	71	43	48
Exploud	normal	\N	490	104	91	63	91	73	68
Makuhita	fighting	\N	237	72	60	30	20	30	25
Hariyama	fighting	\N	474	144	120	60	40	60	50
Azurill	normal	fairy	190	50	20	40	20	40	20
Nosepass	rock	\N	375	30	45	135	45	90	30
Skitty	normal	\N	260	50	45	45	35	35	50
Delcatty	normal	\N	400	70	65	65	55	55	90
Sableye	dark	ghost	480	50	85	125	85	115	20
Mawile	steel	fairy	480	50	105	125	55	95	50
Aron	steel	rock	330	50	70	100	40	40	30
Lairon	steel	rock	430	60	90	140	50	50	40
Aggron	steel	rock	630	70	140	230	60	80	50
Meditite	fighting	psychic	280	30	40	55	40	55	60
Medicham	fighting	psychic	510	60	100	85	80	85	100
Electrike	electric	\N	295	40	45	40	65	40	65
Manectric	electric	\N	575	70	75	80	135	80	135
Plusle	electric	\N	405	60	50	40	85	75	95
Minun	electric	\N	405	60	40	50	75	85	95
Volbeat	bug	\N	430	65	73	75	47	85	85
Illumise	bug	\N	430	65	47	75	73	85	85
Roselia	grass	poison	400	50	60	45	100	80	65
Gulpin	poison	\N	302	70	43	53	43	53	40
Swalot	poison	\N	467	100	73	83	73	83	55
Carvanha	water	dark	305	45	90	20	65	20	65
Sharpedo	water	dark	560	70	140	70	110	65	105
Wailmer	water	\N	400	130	70	35	70	35	60
Wailord	water	\N	500	170	90	45	90	45	60
Numel	fire	ground	305	60	60	40	65	45	35
Camerupt	fire	ground	560	70	120	100	145	105	20
Torkoal	fire	\N	470	70	85	140	85	70	20
Spoink	psychic	\N	330	60	25	35	70	80	60
Grumpig	psychic	\N	470	80	45	65	90	110	80
Spinda	normal	\N	360	60	60	60	60	60	60
Trapinch	ground	\N	290	45	100	45	45	45	10
Vibrava	ground	dragon	340	50	70	50	50	50	70
Flygon	ground	dragon	520	80	100	80	80	80	100
Cacnea	grass	\N	335	50	85	40	85	40	35
Cacturne	grass	dark	475	70	115	60	115	60	55
Swablu	normal	flying	310	45	40	60	40	75	50
Altaria	dragon	flying	590	75	110	110	110	105	80
Zangoose	normal	\N	458	73	115	60	60	60	90
Seviper	poison	\N	458	73	100	60	100	60	65
Lunatone	rock	psychic	460	90	55	65	95	85	70
Solrock	rock	psychic	460	90	95	85	55	65	70
Barboach	water	ground	288	50	48	43	46	41	60
Whiscash	water	ground	468	110	78	73	76	71	60
Corphish	water	\N	308	43	80	65	50	35	35
Crawdaunt	water	dark	468	63	120	85	90	55	55
Baltoy	ground	psychic	300	40	40	55	40	70	55
Claydol	ground	psychic	500	60	70	105	70	120	75
Lileep	rock	grass	355	66	41	77	61	87	23
Cradily	rock	grass	495	86	81	97	81	107	43
Anorith	rock	bug	355	45	95	50	40	50	75
Armaldo	rock	bug	495	75	125	100	70	80	45
Feebas	water	\N	200	20	15	20	10	55	80
Milotic	water	\N	540	95	60	79	100	125	81
Castform	normal	\N	420	70	70	70	70	70	70
Kecleon	normal	\N	440	60	90	70	60	120	40
Shuppet	ghost	\N	295	44	75	35	63	33	45
Banette	ghost	\N	555	64	165	75	93	83	75
Duskull	ghost	\N	295	20	40	90	30	90	25
Dusclops	ghost	\N	455	40	70	130	60	130	25
Tropius	grass	flying	460	99	68	83	72	87	51
Chimecho	psychic	\N	455	75	50	80	95	90	65
Absol	dark	\N	565	65	150	60	115	60	115
Wynaut	psychic	\N	260	95	23	48	23	48	23
Snorunt	ice	\N	300	50	50	50	50	50	50
Glalie	ice	\N	580	80	120	80	120	80	100
Spheal	ice	water	290	70	40	50	55	50	25
Sealeo	ice	water	410	90	60	70	75	70	45
Walrein	ice	water	530	110	80	90	95	90	65
Clamperl	water	\N	345	35	64	85	74	55	32
Huntail	water	\N	485	55	104	105	94	75	52
Gorebyss	water	\N	485	55	84	105	114	75	52
Relicanth	water	rock	485	100	90	130	45	65	55
Luvdisc	water	\N	330	43	30	55	40	65	97
Bagon	dragon	\N	300	45	75	60	40	30	50
Shelgon	dragon	\N	420	65	95	100	60	50	50
Salamence	dragon	flying	700	95	145	130	120	90	120
Beldum	steel	psychic	300	40	55	80	35	60	30
Metang	steel	psychic	420	60	75	100	55	80	50
Metagross	steel	psychic	700	80	145	150	105	110	110
Regirock	rock	\N	580	80	100	200	50	100	50
Regice	ice	\N	580	80	50	100	100	200	50
Registeel	steel	\N	580	80	75	150	75	150	50
Latias	dragon	psychic	700	80	100	120	140	150	110
Latios	dragon	psychic	700	80	130	100	160	120	110
Kyogre	water	\N	770	100	150	90	180	160	90
Groudon	ground	\N	770	100	180	160	150	90	90
Rayquaza	dragon	flying	780	105	180	100	180	100	115
Jirachi	steel	psychic	600	100	100	100	100	100	100
Deoxys	psychic	\N	600	50	95	90	95	90	180
Turtwig	grass	\N	318	55	68	64	45	55	31
Grotle	grass	\N	405	75	89	85	55	65	36
Torterra	grass	ground	525	95	109	105	75	85	56
Chimchar	fire	\N	309	44	58	44	58	44	61
Monferno	fire	fighting	405	64	78	52	78	52	81
Infernape	fire	fighting	534	76	104	71	104	71	108
Piplup	water	\N	314	53	51	53	61	56	40
Prinplup	water	\N	405	64	66	68	81	76	50
Empoleon	water	steel	530	84	86	88	111	101	60
Starly	normal	flying	245	40	55	30	30	30	60
Staravia	normal	flying	340	55	75	50	40	40	80
Staraptor	normal	flying	485	85	120	70	50	60	100
Bidoof	normal	\N	250	59	45	40	35	40	31
Bibarel	normal	water	410	79	85	60	55	60	71
Kricketot	bug	\N	194	37	25	41	25	41	25
Kricketune	bug	\N	384	77	85	51	55	51	65
Shinx	electric	\N	263	45	65	34	40	34	45
Luxio	electric	\N	363	60	85	49	60	49	60
Luxray	electric	\N	523	80	120	79	95	79	70
Budew	grass	poison	280	40	30	35	50	70	55
Roserade	grass	poison	515	60	70	65	125	105	90
Cranidos	rock	\N	350	67	125	40	30	30	58
Rampardos	rock	\N	495	97	165	60	65	50	58
Shieldon	rock	steel	350	30	42	118	42	88	30
Bastiodon	rock	steel	495	60	52	168	47	138	30
Burmy	bug	\N	224	40	29	45	29	45	36
Wormadam	bug	grass	424	60	69	95	69	95	36
Mothim	bug	flying	424	70	94	50	94	50	66
Combee	bug	flying	244	30	30	42	30	42	70
Vespiquen	bug	flying	474	70	80	102	80	102	40
Pachirisu	electric	\N	405	60	45	70	45	90	95
Buizel	water	\N	330	55	65	35	60	30	85
Floatzel	water	\N	495	85	105	55	85	50	115
Cherubi	grass	\N	275	45	35	45	62	53	35
Cherrim	grass	\N	450	70	60	70	87	78	85
Shellos	water	\N	325	76	48	48	57	62	34
Gastrodon	water	ground	475	111	83	68	92	82	39
Ambipom	normal	\N	482	75	100	66	60	66	115
Drifloon	ghost	flying	348	90	50	34	60	44	70
Drifblim	ghost	flying	498	150	80	44	90	54	80
Buneary	normal	\N	350	55	66	44	44	56	85
Lopunny	normal	\N	580	65	136	94	54	96	135
Mismagius	ghost	\N	495	60	60	60	105	105	105
Honchkrow	dark	flying	505	100	125	52	105	52	71
Glameow	normal	\N	310	49	55	42	42	37	85
Purugly	normal	\N	452	71	82	64	64	59	112
Chingling	psychic	\N	285	45	30	50	65	50	45
Stunky	poison	dark	329	63	63	47	41	41	74
Skuntank	poison	dark	479	103	93	67	71	61	84
Bronzor	steel	psychic	300	57	24	86	24	86	23
Bronzong	steel	psychic	500	67	89	116	79	116	33
Bonsly	rock	\N	290	50	80	95	10	45	10
Mime Jr.	psychic	fairy	310	20	25	45	70	90	60
Happiny	normal	\N	220	100	5	5	15	65	30
Chatot	normal	flying	411	76	65	45	92	42	91
Spiritomb	ghost	dark	485	50	92	108	92	108	35
Gible	dragon	ground	300	58	70	45	40	45	42
Gabite	dragon	ground	410	68	90	65	50	55	82
Garchomp	dragon	ground	700	108	170	115	120	95	92
Munchlax	normal	\N	390	135	85	40	40	85	5
Riolu	fighting	\N	285	40	70	40	35	40	60
Lucario	fighting	steel	625	70	145	88	140	70	112
Hippopotas	ground	\N	330	68	72	78	38	42	32
Hippowdon	ground	\N	525	108	112	118	68	72	47
Skorupi	poison	bug	330	40	50	90	30	55	65
Drapion	poison	dark	500	70	90	110	60	75	95
Croagunk	poison	fighting	300	48	61	40	61	40	50
Toxicroak	poison	fighting	490	83	106	65	86	65	85
Carnivine	grass	\N	454	74	100	72	90	72	46
Finneon	water	\N	330	49	49	56	49	61	66
Lumineon	water	\N	460	69	69	76	69	86	91
Mantyke	water	flying	345	45	20	50	60	120	50
Snover	grass	ice	334	60	62	50	62	60	40
Abomasnow	grass	ice	594	90	132	105	132	105	30
Weavile	dark	ice	510	70	120	65	45	85	125
Magnezone	electric	steel	535	70	70	115	130	90	60
Lickilicky	normal	\N	515	110	85	95	80	95	50
Rhyperior	ground	rock	535	115	140	130	55	55	40
Tangrowth	grass	\N	535	100	100	125	110	50	50
Electivire	electric	\N	540	75	123	67	95	85	95
Magmortar	fire	\N	540	75	95	67	125	95	83
Togekiss	fairy	flying	545	85	50	95	120	115	80
Yanmega	bug	flying	515	86	76	86	116	56	95
Leafeon	grass	\N	525	65	110	130	60	65	95
Glaceon	ice	\N	525	65	60	110	130	95	65
Gliscor	ground	flying	510	75	95	125	45	75	95
Mamoswine	ice	ground	530	110	130	80	70	60	80
Porygon-Z	normal	\N	535	85	80	70	135	75	90
Gallade	psychic	fighting	618	68	165	95	65	115	110
Probopass	rock	steel	525	60	55	145	75	150	40
Dusknoir	ghost	\N	525	45	100	135	65	135	45
Froslass	ice	ghost	480	70	80	70	80	70	110
Rotom	electric	ghost	520	50	65	107	105	107	86
Uxie	psychic	\N	580	75	75	130	75	130	95
Mesprit	psychic	\N	580	80	105	105	105	105	80
Azelf	psychic	\N	580	75	125	70	125	70	115
Dialga	steel	dragon	680	100	120	120	150	100	90
Palkia	water	dragon	680	90	120	100	150	120	100
Heatran	fire	steel	600	91	90	106	130	106	77
Regigigas	normal	\N	670	110	160	110	80	110	100
Giratina	ghost	dragon	680	150	120	100	120	100	90
Cresselia	psychic	\N	600	120	70	120	75	130	85
Phione	water	\N	480	80	80	80	80	80	80
Manaphy	water	\N	600	100	100	100	100	100	100
Darkrai	dark	\N	600	70	90	90	135	90	125
Shaymin	grass	grass	600	100	103	75	120	75	127
Arceus	normal	\N	720	120	120	120	120	120	120
Victini	psychic	fire	600	100	100	100	100	100	100
Snivy	grass	\N	308	45	45	55	45	55	63
Servine	grass	\N	413	60	60	75	60	75	83
Serperior	grass	\N	528	75	75	95	75	95	113
Tepig	fire	\N	308	65	63	45	45	45	45
Pignite	fire	fighting	418	90	93	55	70	55	55
Emboar	fire	fighting	528	110	123	65	100	65	65
Oshawott	water	\N	308	55	55	45	63	45	45
Dewott	water	\N	413	75	75	60	83	60	60
Samurott	water	\N	528	95	100	85	108	70	70
Patrat	normal	\N	255	45	55	39	35	39	42
Watchog	normal	\N	420	60	85	69	60	69	77
Lillipup	normal	\N	275	45	60	45	25	45	55
Herdier	normal	\N	370	65	80	65	35	65	60
Stoutland	normal	\N	500	85	110	90	45	90	80
Purrloin	dark	\N	281	41	50	37	50	37	66
Liepard	dark	\N	446	64	88	50	88	50	106
Pansage	grass	\N	316	50	53	48	53	48	64
Simisage	grass	\N	498	75	98	63	98	63	101
Pansear	fire	\N	316	50	53	48	53	48	64
Simisear	fire	\N	498	75	98	63	98	63	101
Panpour	water	\N	316	50	53	48	53	48	64
Simipour	water	\N	498	75	98	63	98	63	101
Munna	psychic	\N	292	76	25	45	67	55	24
Musharna	psychic	\N	487	116	55	85	107	95	29
Pidove	normal	flying	264	50	55	50	36	30	43
Tranquill	normal	flying	358	62	77	62	50	42	65
Unfezant	normal	flying	488	80	115	80	65	55	93
Blitzle	electric	\N	295	45	60	32	50	32	76
Zebstrika	electric	\N	497	75	100	63	80	63	116
Roggenrola	rock	\N	280	55	75	85	25	25	15
Boldore	rock	\N	390	70	105	105	50	40	20
Gigalith	rock	\N	515	85	135	130	60	80	25
Woobat	psychic	flying	323	65	45	43	55	43	72
Swoobat	psychic	flying	425	67	57	55	77	55	114
Drilbur	ground	\N	328	60	85	40	30	45	68
Excadrill	ground	steel	508	110	135	60	50	65	88
Audino	normal	\N	545	103	60	126	80	126	50
Timburr	fighting	\N	305	75	80	55	25	35	35
Gurdurr	fighting	\N	405	85	105	85	40	50	40
Conkeldurr	fighting	\N	505	105	140	95	55	65	45
Tympole	water	\N	294	50	50	40	50	40	64
Palpitoad	water	ground	384	75	65	55	65	55	69
Seismitoad	water	ground	509	105	95	75	85	75	74
Throh	fighting	\N	465	120	100	85	30	85	45
Sawk	fighting	\N	465	75	125	75	30	75	85
Sewaddle	bug	grass	310	45	53	70	40	60	42
Swadloon	bug	grass	380	55	63	90	50	80	42
Leavanny	bug	grass	500	75	103	80	70	80	92
Venipede	bug	poison	260	30	45	59	30	39	57
Whirlipede	bug	poison	360	40	55	99	40	79	47
Scolipede	bug	poison	485	60	100	89	55	69	112
Cottonee	grass	fairy	280	40	27	60	37	50	66
Whimsicott	grass	fairy	480	60	67	85	77	75	116
Petilil	grass	\N	280	45	35	50	70	50	30
Lilligant	grass	\N	480	70	60	75	110	75	90
Basculin	water	\N	460	70	92	65	80	55	98
Sandile	ground	dark	292	50	72	35	35	35	65
Krokorok	ground	dark	351	60	82	45	45	45	74
Krookodile	ground	dark	519	95	117	80	65	70	92
Darumaka	fire	\N	315	70	90	45	15	45	50
Darmanitan	fire	fire	540	105	30	105	140	105	55
Maractus	grass	\N	461	75	86	67	106	67	60
Dwebble	bug	rock	325	50	65	85	35	35	55
Crustle	bug	rock	485	70	105	125	65	75	45
Scraggy	dark	fighting	348	50	75	70	35	70	48
Scrafty	dark	fighting	488	65	90	115	45	115	58
Sigilyph	psychic	flying	490	72	58	80	103	80	97
Yamask	ghost	\N	303	38	30	85	55	65	30
Cofagrigus	ghost	\N	483	58	50	145	95	105	30
Tirtouga	water	rock	355	54	78	103	53	45	22
Carracosta	water	rock	495	74	108	133	83	65	32
Archen	rock	flying	401	55	112	45	74	45	70
Archeops	rock	flying	567	75	140	65	112	65	110
Trubbish	poison	\N	329	50	50	62	40	62	65
Garbodor	poison	\N	474	80	95	82	60	82	75
Zorua	dark	\N	330	40	65	40	80	40	65
Zoroark	dark	\N	510	60	105	60	120	60	105
Minccino	normal	\N	300	55	50	40	40	40	75
Cinccino	normal	\N	470	75	95	60	65	60	115
Gothita	psychic	\N	290	45	30	50	55	65	45
Gothorita	psychic	\N	390	60	45	70	75	85	55
Gothitelle	psychic	\N	490	70	55	95	95	110	65
Solosis	psychic	\N	290	45	30	40	105	50	20
Duosion	psychic	\N	370	65	40	50	125	60	30
Reuniclus	psychic	\N	490	110	65	75	125	85	30
Ducklett	water	flying	305	62	44	50	44	50	55
Swanna	water	flying	473	75	87	63	87	63	98
Vanillite	ice	\N	305	36	50	50	65	60	44
Vanillish	ice	\N	395	51	65	65	80	75	59
Vanilluxe	ice	\N	535	71	95	85	110	95	79
Deerling	normal	grass	335	60	60	50	40	50	75
Sawsbuck	normal	grass	475	80	100	70	60	70	95
Emolga	electric	flying	428	55	75	60	75	60	103
Karrablast	bug	\N	315	50	75	45	40	45	60
Escavalier	bug	steel	495	70	135	105	60	105	20
Foongus	grass	poison	294	69	55	45	55	55	15
Amoonguss	grass	poison	464	114	85	70	85	80	30
Frillish	water	ghost	335	55	40	50	65	85	40
Jellicent	water	ghost	480	100	60	70	85	105	60
Alomomola	water	\N	470	165	75	80	40	45	65
Joltik	bug	electric	319	50	47	50	57	50	65
Galvantula	bug	electric	472	70	77	60	97	60	108
Ferroseed	grass	steel	305	44	50	91	24	86	10
Ferrothorn	grass	steel	489	74	94	131	54	116	20
Klink	steel	\N	300	40	55	70	45	60	30
Klang	steel	\N	440	60	80	95	70	85	50
Klinklang	steel	\N	520	60	100	115	70	85	90
Tynamo	electric	\N	275	35	55	40	45	40	60
Eelektrik	electric	\N	405	65	85	70	75	70	40
Eelektross	electric	\N	515	85	115	80	105	80	50
Elgyem	psychic	\N	335	55	55	55	85	55	30
Beheeyem	psychic	\N	485	75	75	75	125	95	40
Litwick	ghost	fire	275	50	30	55	65	55	20
Lampent	ghost	fire	370	60	40	60	95	60	55
Chandelure	ghost	fire	520	60	55	90	145	90	80
Axew	dragon	\N	320	46	87	60	30	40	57
Fraxure	dragon	\N	410	66	117	70	40	50	67
Haxorus	dragon	\N	540	76	147	90	60	70	97
Cubchoo	ice	\N	305	55	70	40	60	40	40
Beartic	ice	\N	505	95	130	80	70	80	50
Cryogonal	ice	\N	515	80	50	50	95	135	105
Shelmet	bug	\N	305	50	40	85	40	65	25
Accelgor	bug	\N	495	80	70	40	100	60	145
Stunfisk	ground	electric	471	109	66	84	81	99	32
Mienfoo	fighting	\N	350	45	85	50	55	50	65
Mienshao	fighting	\N	510	65	125	60	95	60	105
Druddigon	dragon	\N	485	77	120	90	60	90	48
Golett	ground	ghost	303	59	74	50	35	50	35
Golurk	ground	ghost	483	89	124	80	55	80	55
Pawniard	dark	steel	340	45	85	70	40	40	60
Bisharp	dark	steel	490	65	125	100	60	70	70
Bouffalant	normal	\N	490	95	110	95	40	95	55
Rufflet	normal	flying	350	70	83	50	37	50	60
Braviary	normal	flying	510	100	123	75	57	75	80
Vullaby	dark	flying	370	70	55	75	45	65	60
Mandibuzz	dark	flying	510	110	65	105	55	95	80
Heatmor	fire	\N	484	85	97	66	105	66	65
Durant	bug	steel	484	58	109	112	48	48	109
Deino	dark	dragon	300	52	65	50	45	50	38
Zweilous	dark	dragon	420	72	85	70	65	70	58
Hydreigon	dark	dragon	600	92	105	90	125	90	98
Larvesta	bug	fire	360	55	85	55	50	55	60
Volcarona	bug	fire	550	85	60	65	135	105	100
Cobalion	steel	fighting	580	91	90	129	90	72	108
Terrakion	rock	fighting	580	91	129	90	72	90	108
Virizion	grass	fighting	580	91	90	72	90	129	108
Tornadus	flying	\N	580	79	100	80	110	90	121
Thundurus	electric	flying	580	79	105	70	145	80	101
Reshiram	dragon	fire	680	100	120	100	150	120	90
Zekrom	dragon	electric	680	100	150	120	120	100	90
Landorus	ground	flying	600	89	145	90	105	80	91
Kyurem	dragon	ice	700	125	120	90	170	100	95
Keldeo	water	fighting	580	91	72	90	129	90	108
Meloetta	normal	psychic	600	100	128	90	77	77	128
Genesect	bug	steel	600	71	120	95	120	95	99
Chespin	grass	\N	313	56	61	65	48	45	38
Quilladin	grass	\N	405	61	78	95	56	58	57
Chesnaught	grass	fighting	530	88	107	122	74	75	64
Fennekin	fire	\N	307	40	45	40	62	60	60
Braixen	fire	\N	409	59	59	58	90	70	73
Delphox	fire	psychic	534	75	69	72	114	100	104
Froakie	water	\N	314	41	56	40	62	44	71
Frogadier	water	\N	405	54	63	52	83	56	97
Greninja	water	dark	640	72	145	67	153	71	132
Bunnelby	normal	\N	237	38	36	38	32	36	57
Diggersby	normal	ground	423	85	56	77	50	77	78
Fletchling	normal	flying	278	45	50	43	40	38	62
Fletchinder	fire	flying	382	62	73	55	56	52	84
Talonflame	fire	flying	499	78	81	71	74	69	126
Scatterbug	bug	\N	200	38	35	40	27	25	35
Spewpa	bug	\N	213	45	22	60	27	30	29
Vivillon	bug	flying	411	80	52	50	90	50	89
Litleo	fire	normal	369	62	50	58	73	54	72
Pyroar	fire	normal	507	86	68	72	109	66	106
Flabébé	fairy	\N	303	44	38	39	61	79	42
Floette	fairy	\N	551	74	65	67	125	128	92
Florges	fairy	\N	552	78	65	68	112	154	75
Skiddo	grass	\N	350	66	65	48	62	57	52
Gogoat	grass	\N	531	123	100	62	97	81	68
Pancham	fighting	\N	348	67	82	62	46	48	43
Pangoro	fighting	dark	495	95	124	78	69	71	58
Furfrou	normal	\N	472	75	80	60	65	90	102
Espurr	psychic	\N	355	62	48	54	63	60	68
Meowstic	psychic	\N	466	74	48	76	83	81	104
Honedge	steel	ghost	325	45	80	100	35	37	28
Doublade	steel	ghost	448	59	110	150	45	49	35
Aegislash	steel	ghost	520	60	150	50	150	50	60
Spritzee	fairy	\N	341	78	52	60	63	65	23
Aromatisse	fairy	\N	462	101	72	72	99	89	29
Swirlix	fairy	\N	341	62	48	66	59	57	49
Slurpuff	fairy	\N	480	82	80	86	85	75	72
Inkay	dark	psychic	288	53	54	53	37	46	45
Malamar	dark	psychic	482	86	92	88	68	75	73
Binacle	rock	water	306	42	52	67	39	56	50
Barbaracle	rock	water	500	72	105	115	54	86	68
Skrelp	poison	water	320	50	60	60	60	60	30
Dragalge	poison	dragon	494	65	75	90	97	123	44
Clauncher	water	\N	330	50	53	62	58	63	44
Clawitzer	water	\N	500	71	73	88	120	89	59
Helioptile	electric	normal	289	44	38	33	61	43	70
Heliolisk	electric	normal	481	62	55	52	109	94	109
Tyrunt	rock	dragon	362	58	89	77	45	45	48
Tyrantrum	rock	dragon	521	82	121	119	69	59	71
Amaura	rock	ice	362	77	59	50	67	63	46
Aurorus	rock	ice	521	123	77	72	99	92	58
Sylveon	fairy	\N	525	95	65	65	110	130	60
Hawlucha	fighting	flying	500	78	92	75	74	63	118
Dedenne	electric	fairy	431	67	58	57	81	67	101
Carbink	rock	fairy	500	50	50	150	50	150	50
Goomy	dragon	\N	300	45	50	35	55	75	40
Sliggoo	dragon	\N	452	68	75	53	83	113	60
Goodra	dragon	\N	600	90	100	70	110	150	80
Klefki	steel	fairy	470	57	80	91	80	87	75
Phantump	ghost	grass	309	43	70	48	50	60	38
Trevenant	ghost	grass	474	85	110	76	65	82	56
Pumpkaboo	ghost	grass	335	59	66	70	44	55	41
Gourgeist	ghost	grass	494	85	100	122	58	75	54
Bergmite	ice	\N	304	55	69	85	32	35	28
Avalugg	ice	\N	514	95	117	184	44	46	28
Noibat	flying	dragon	245	40	30	35	45	40	55
Noivern	flying	dragon	535	85	70	80	97	80	123
Xerneas	fairy	\N	680	126	131	95	131	98	99
Yveltal	dark	flying	680	126	131	95	131	98	99
Zygarde	dragon	ground	708	216	100	121	91	95	85
Diancie	rock	fairy	700	50	160	110	160	110	110
Hoopa	psychic	ghost	680	80	160	60	170	130	80
Volcanion	fire	water	600	80	110	120	130	90	70
Rowlet	grass	flying	320	68	55	55	50	50	42
Dartrix	grass	flying	420	78	75	75	70	70	52
Decidueye	grass	ghost	530	78	107	75	100	100	70
Litten	fire	\N	320	45	65	40	60	40	70
Torracat	fire	\N	420	65	85	50	80	50	90
Incineroar	fire	dark	530	95	115	90	80	90	60
Popplio	water	\N	320	50	54	54	66	56	40
Brionne	water	\N	420	60	69	69	91	81	50
Primarina	water	fairy	530	80	74	74	126	116	60
Pikipek	normal	flying	265	35	75	30	30	30	65
Trumbeak	normal	flying	355	55	85	50	40	50	75
Toucannon	normal	flying	485	80	120	75	75	75	60
Yungoos	normal	\N	253	48	70	30	30	30	45
Gumshoos	normal	\N	418	88	110	60	55	60	45
Grubbin	bug	\N	300	47	62	45	55	45	46
Charjabug	bug	electric	400	57	82	95	55	75	36
Vikavolt	bug	electric	500	77	70	90	145	75	43
Crabrawler	fighting	\N	338	47	82	57	42	47	63
Crabominable	fighting	ice	478	97	132	77	62	67	43
Oricorio	fire	flying	476	75	70	70	98	70	93
Cutiefly	bug	fairy	304	40	45	40	55	40	84
Ribombee	bug	fairy	464	60	55	60	95	70	124
Rockruff	rock	\N	280	45	65	40	30	40	60
Lycanroc	rock	\N	487	85	115	75	55	75	82
Wishiwashi	water	\N	620	45	140	130	140	135	30
Mareanie	poison	water	305	50	53	62	43	52	45
Toxapex	poison	water	495	50	63	152	53	142	35
Mudbray	ground	\N	385	70	100	70	45	55	45
Mudsdale	ground	\N	500	100	125	100	55	85	35
Dewpider	water	bug	269	38	40	52	40	72	27
Araquanid	water	bug	454	68	70	92	50	132	42
Fomantis	grass	\N	250	40	55	35	50	35	35
Lurantis	grass	\N	480	70	105	90	80	90	45
Morelull	grass	fairy	285	40	35	55	65	75	15
Shiinotic	grass	fairy	405	60	45	80	90	100	30
Salandit	poison	fire	320	48	44	40	71	40	77
Salazzle	poison	fire	480	68	64	60	111	60	117
Stufful	normal	fighting	340	70	75	50	45	50	50
Bewear	normal	fighting	500	120	125	80	55	60	60
Bounsweet	grass	\N	210	42	30	38	30	38	32
Steenee	grass	\N	290	52	40	48	40	48	62
Tsareena	grass	\N	510	72	120	98	50	98	72
Comfey	fairy	\N	485	51	52	90	82	110	100
Oranguru	normal	psychic	490	90	60	80	90	110	60
Passimian	fighting	\N	490	100	120	90	40	60	80
Wimpod	bug	water	230	25	35	40	20	30	80
Golisopod	bug	water	530	75	125	140	60	90	40
Sandygast	ghost	ground	320	55	55	80	70	45	15
Palossand	ghost	ground	480	85	75	110	100	75	35
Pyukumuku	water	\N	410	55	60	130	30	130	5
Type: Null	normal	\N	534	95	95	95	95	95	59
Silvally	normal	\N	570	95	95	95	95	95	95
Minior	rock	flying	500	60	100	60	100	60	120
Komala	normal	\N	480	65	115	65	75	95	65
Turtonator	fire	dragon	485	60	78	135	91	85	36
Togedemaru	electric	steel	435	65	98	63	40	73	96
Mimikyu	ghost	fairy	476	55	90	80	50	105	96
Bruxish	water	psychic	475	68	105	70	70	70	92
Drampa	normal	dragon	485	78	60	85	135	91	36
Dhelmise	ghost	grass	517	70	131	100	86	90	40
Jangmo-o	dragon	\N	300	45	55	65	45	45	45
Hakamo-o	dragon	fighting	420	55	75	90	65	70	65
Kommo-o	dragon	fighting	600	75	110	125	100	105	85
Tapu Koko	electric	fairy	570	70	115	85	95	75	130
Tapu Lele	psychic	fairy	570	70	85	75	130	115	95
Tapu Bulu	grass	fairy	570	70	130	115	85	95	75
Tapu Fini	water	fairy	570	70	75	115	95	130	85
Cosmog	psychic	\N	200	43	29	31	29	31	37
Cosmoem	psychic	\N	400	43	29	131	29	131	37
Solgaleo	psychic	steel	680	137	137	107	113	89	97
Lunala	psychic	ghost	680	137	113	89	137	107	97
Nihilego	rock	poison	570	109	53	47	127	131	103
Buzzwole	bug	fighting	570	107	139	139	53	53	79
Pheromosa	bug	fighting	570	71	137	37	137	37	151
Xurkitree	electric	\N	570	83	89	71	173	71	83
Celesteela	steel	flying	570	97	101	103	107	101	61
Kartana	grass	steel	570	59	181	131	59	31	109
Guzzlord	dark	dragon	570	223	101	53	97	53	43
Necrozma	psychic	\N	600	97	107	101	127	89	79
Magearna	steel	fairy	600	80	95	115	130	115	65
\.


--
-- Data for Name: pokemon_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_types (type_id, type_name) FROM stdin;
1	Normal
2	Fire
3	Water
4	Grass
5	Electric
6	Ice
7	Fighting
8	Poison
9	Ground
10	Flying
11	Psychic
12	Bug
13	Rock
14	Ghost
15	Dragon
16	Dark
17	Steel
18	Fairy
\.


--
-- Data for Name: pokemon_weak; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pokemon_weak (type, weak1, weak2, weak3, weak4, weak5) FROM stdin;
normal	Fighting				
fire	Water	Rock			
water	Grass	Electric			
grass	Fire	Ice	Poison	Flying	Bug
electric	Ground				
ice	Fire	Fighting	Rock	Steel	
fighting	Flying	Psychic	Fairy		
poison	Ground	Psychic			
ground	Water	Grass	Ice		
flying	Electric	Ice	Rock		
psychic	Bug	Ghost	Dark		
bug	Fire	Flying	Rock		
rock	Water	Grass	Fighting	Ground	Steel
ghost	Ghost	Dark			
dragon	Dragon	Fairy			
dark	Fighting	Bug	Fairy		
steel	Fire	Fighting	Ground		
fairy	Poison	Steel			
\.


--
-- PostgreSQL database dump complete
--

