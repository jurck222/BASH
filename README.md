# BASH
(a) DN1a
Skripta prejme enega ali več argumentov:

DN1a.sh datoteka [datoteka]...

Za več datotek naenkrat želimo preveriti, če obstajajo ali ne. Seznam datotek skripta prejme v obliki argumentov, rezultat pa izpiše na standardni izhod v obliki seznama ničel in enic. Enica pomeni, da istoležna vhodna datoteka obstaja, ničla pa pomeni, da istoležna datoteka ne obstaja. Ničle in enice loči presledek. Na koncu zadnjega znaka je lahko presledek. Datoteke se lahko nahajajo kjerkoli v datotečnem sistemu. Za imena datotek predpostavimo, da nimajo presledkov. Pozor: Kot datoteko se smatra vse vrste datotek, samo imenik ne.

(b) DN1b
Skripta prejme dva ali več argumentov:

DN1b.sh datoteka uporabnik [uporabnik]...

Skripta kot prvi argument prejme pot do datoteke, od drugega argumenta naprej pa dobi seznam uporabnikov. Vsem podanim uporabnikom s pomočjo ACL (Access Control List) dodeli možnost branja in poganjanja datoteke (tudi če niso lastniki datoteke ali člani skupine datoteke; pri čemer pa vsi ostali uporabniki sistema teh dveh pravic ne dobijo). Namig: poiščite ukaz za spreminjanje ACL za datoteko.

(c) DN1c
Skripta prejme dva argumenta:

DN1c.sh imenik končnica

Z ukazom find v podanem imeniku rekurzivno poiščite vse datoteke s končnico končnica. Najdene datoteke sortirajte po abecedi (a-z) in zapišite v datoteko <imenik>_inventura.txt. Datoteka <imenik>_inventura.txt naj se nahaja v istem imeniku, kot se nahaja imenik.
  
(d) DN1d
Skripta prejme en argument:

DN1d.sh datoteka

Skripta na vhod prejme datoteko, ki vsebuje seznam datotek, tako kot je prikazano pri prejšnji nalogi (slike_inventura.txt). Za podan seznam datotek izračunajte, kakšna je njihova skupna velikost v bajtih (B). Pozor: Če katera od datotek ne obstaja, potem naša inventura ni več veljavna, zato moramo to uporabniku sporočiti na standardni izhod s sporočilom Napaka v inventarju! in nato zaključiti program z izhodnim statusom 10.
  
(e) DN1e
Skripta prejme en argument:

DN1e.sh uid

Zanima nas, ali je določen id uid že zaseden. Skripta naj na standardni izhod izpiše niz prosto!, če je id prost. V nasprotnem primeru skripta na standardni izhod izpiše podatke uporabnika s podanim uid. V vsakem primeru na koncu napišite tudi, ali je podan uid v območju rezerviranih številk, bodisi za uporabnika root, sistemske ali druge predefinirane uporabnike.
  
Navodila
Podnaloga (a)
  
Vombat Vinko ima po disku raztresene podatke o zeliščih. V datoteke si je beležil imena zelišč in koliko gramov ga ima (primer: … bla bla koriander 12g bla bla … drobljena paprika 42g ...) Zaradi raztresenosti je svoje začimbe skrajno neurejeno beležil v datoteke (to pomeni, da se lahko pojavijo večkrat v datoteki) in da bi bila težava še večja si zaradi debelih tačk težko spiše program, ki bi mu rešil ta problem. Imenu zelišča vedno sledi presledek in nato celoštevilka količina v gramih, ki ji lahko sledi "g" oz. " g" ali pa tudi ne. Lahko predvidevate, da bo količina sledila imenu začimbe vedno v isti vrsti. Na srečo uporablja GNU/Linux in mu boš z lahkoto lahko pomagal s programom, ki ob podanem imenu datoteke in seznamom zelišč poišče vse pojavitve, sešteje količine in to v abecednem vrstnem redu izpiše v terminal. Med imenom zelišča in mase naj bo pri izpisu presledek. Pozor, ker je Vinkov disk v takšnem stanju kot je, je vsakršno pisanje na disk prepovedano!
  
Podnaloga (b)
  
Jazbec Venčeslav ima velike glavobole zaradi dejstva, ker ne ve, če so programi, ki jih rad poganja, vgrajeni v Bash lupino ali ne, saj potem pogosto bere napačna navodila, kot je to opazil pri nekaterih študentih OSa. Podobno kot Vinko težko tipka in nima časa za ročno poganjanje ukaza type -a za vsak program. Pomagal mu boš z interaktivnim programom, ki sprejema imena procesov (program vsakič vpraša "Vnesite ime procesa: ", kjer sledi poziv v isti vrstici) in po pritisku na Enter izpiše VGRAJEN, “nevgrajen” ali “ObOjE” glede na vgrajenost procesa v lupino. Pazite na velike in male črke pri izpisu. Če vnesemo ukaz, ki ne obstaja, ne izpišete ničesar. Pozor, Venčeslav ima zelo majhen disk zato je vsakršno pisanje na disk prepovedano!
  
Podnaloga (c)
  
Rakunka Vekoslava je na Venčeslavovem računalniku opazila neko sumljivo skripto, ki izpisuje vgrajenost/nevgrajenost ukazov v terminal. Skripta se ji zdi strašno neuporabna, sploh se ji zdi interaktivnost skrajno zoprna, zanima pa jo kako so se procesi pognali. Zato ji napiši skripto, ki za vse procese, ki tečejo na sistemu, v vrstnem redu glede na PID izpiše PID in argumente s katerimi je bil proces pognan (tipično sicer procesi ob poganjanju niti nimajo argumentov, kot je tudi vidno na primeru spodaj). Stolpca, kot tudi posamezni argumenti naj bodo ločeni s presledkom. Pozor, Vekoslava ima nekaj računalniške podlage in ve, da se za takšne preproste programe ne spodobi pisati na disk, zato je vsakršno pisanje na disk prepovedano!
  
Podnaloga (d)
  
Rosomah Vincencij kupuje darilo za svoje prijatelje Vinka, Vekoslavo in Venčeslava. Težava je, ker mu brskalnik dela zelo počasi. Jasno je, da zaradi kupa zavihkov odprtih v načinu brez beleženja zgodovine, vendar mu teh ne smemo zapreti. Spiši program, ki poišče 3 procese, ki v danem trenutku zasedajo največji procent CPEja. Ker bo med njimi gotovo brskalnik jih ne smeš zapreti, ampak jih le izpiši skupaj z odstotkom zasedenosti CPEja in delovnega spomina, s podatki ločenimi s presledkom, vsak proces pa v novi vrsti. Sortirani naj bodo po porabi CPEja in potem po abecedi, več procesov ima lahko namreč enak odstotek zasedenosti CPE (--sort pri ps-ju zadošča - velike črke bodo pred malimi, kar je OK). Pozor, Vincencij je zelo občutljiv kaj ima na disku, saj je enkrat že imel težave s policijo, zato je vsakršno pisanje na disk prepovedano!
