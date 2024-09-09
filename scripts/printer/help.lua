function printer:help()
    self:title("Killer Pomoc")
    self:command("/opcje", "Ustawienia ui, mappera i skryptow")
    self:info("Ustawienia sa zapisane do pliku settings.lua w twoim katalogu profilu")
    self:command("/mapper", "Komendy do mappera")
    self:command("/skrypty", "Dostepne skrypty")
    self:bottom()
end

function printer:settings()
    self:title("Killer Ustawienia")
    self:command("/opcje szerokosc "..settings:get("mainWindowWidth"), "Szerokosc glownego okna w Mudlecie")
    self:command("/opcje wysokosc "..settings:get("mainWindowHeight"), "Wysokosc glownego okna w Mudlecie")
    self:command("/opcje mapper_szerokosc "..settings:get("mapperWidth"), "Szerokosc okna mappera")
    self:command("/opcje tryb "..profile:get("mode"), "Wlacz tryb przy ladowaniu profilu")
    self:dumpArray({{0, "brak"}, {1, "gornik"}, {2, "zielarz"}}, 4, nil, self.infoColor)
    self:command("/opcje pojemnik "..profile:get("bag"), "Pojemnik")
    self:command("/opcje mh "..profile:get("mh"), "Bron pierwsza")
    self:command("/opcje oh "..profile:get("oh"), "Bron druga (0 brak)")
    self:command("/opcje chodzik "..profile:get("walker"), "Opoznienie chodzika")
    self:command("/opcje woda "..profile:get("water"), "Pojemnik na wode")
    self:command("/opcje jedzenie "..profile:get("food"), "Jedzenie")
    self:bottom()
end

function printer:scripts()
    self:title("Killer Skrypty")
    self:command("/liaj_wyczysc", "Wyczysc mape Liaj (zmienia sie co apokalipse)")
    self:info("W przypadku poruszania sie na terenie puszczy Liaj wyjscia")
    self:info("generowane sa automatycznie")
    self:command("/aliasy", "Szybkie aliasy bez slash'a")
    self:command("/zap", "Zapal lampe")
    self:info("Do zapalenia lampy potrzebne sa 2 krzemienie i olej")
    self:command("/medytuj", "Medytuj w gildii podroznikow, zapisz stan cech")
    self:info("Przy kazdym uzyciu medytuj progres cech jest zapisywany w profilu")
    self:info("oraz widoczny po wpisaniu komendy 'cechy'")
    self:command("/napraw", "Napraw bron i zbroje")
    self:space()
    self:section("GPS:")
    self:command("/npc (imie)", "Kieruj sie w strone NPC")
    self:info("Wyszukiwanie dziala na bazie skrotow np: /npc barli /npc elro")
    self:command("/gps", "Lista dostepnych lokacji w GPS dla domeny")
    self:command("/gps (nazwa)", "Kieruj sie w strone lokacji z GPS")
    self:info("Wyszukiwanie dziala na bazie skrotow np: /gps ered /gps mith")
    self:command("/gps_dodaj (nazwa)", "Dodaj aktualna lokacje do bazy GPS")
    self:space()
    self:section("Tryby:")
    self:command("/lucznik", "Opis trybu lucznika")
    self:command("/drwal", "Opis trybu drwala")
    self:command("/gornik", "Opis trybu gornika")
    self:bottom()
end

function printer:bowHelp()
    self:title("Killer Lucznik")
    self:info("Lucznik to jeden z trybow dostepny w skryptach. Mozna go wlaczyc")
    self:info("przez szybkie menu oraz ustawic w /opcje aby aktywowal sie na starcie.")
    self:info("W momencie gdy tryb jest aktywny kombinacja klawiszy CTRL + (kierunek)")
    self:info("pozwala na oddanie strzalu w danym kierunku.")
    self:info("'/' na klawiaturze numerycznej wyrywa strzaly ze wszystkich cial")
    self:info("natomiast 'NUM5' zmienia bronie.")
    self:space()
    self:command("/celuj w (cel)", "Ustaw cel")
    self:bottom()
end

function printer:woodHelp()
    self:title("Killer Drwal")
    self:info("Drwal to jeden z trybow dostepny w skryptach. Mozna go wlaczyc")
    self:info("przez szybkie menu oraz ustawic w /opcje aby aktywowal sie na starcie.")
    self:info("W momencie gdy tryb jest aktywny '/' na klawiaturze numerycznej")
    self:info("zmienia bronie natomiast 'NUM5' scina drzewa po kolei.")
    self:bottom()
end

function printer:minerHelp()
    self:title("Killer Gornik")
    self:section("Podstawowe wyposazenie to oskardzik i kilof z Ered Luin")
    self:info("Gornik to jeden z trybow dostepny w skryptach. Mozna go wlaczyc")
    self:info("przez szybkie menu oraz ustawic w /opcje aby aktywowal sie na starcie.")
    self:info("W momencie gdy tryb jest aktywny kombinacja klawiszy CTRL + (kierunek)")
    self:info("pozwala na kopanie w danym kierunku.")
    self:info("'/' podnosi mineraly")
    self:info("CTRL + 4 napelnia lampe olejem")
    self:bottom()
end

function printer:binds()
    self:title("Killer Bindy")
    self:command("/bind (komendy)", "Dodanie binda do aktualnej lokacji")
    self:info("Komendy powinny byc oddzielone hashem '#'")
    self:info("np. napij sie wody z fontanny#usmiechnij sie")
    self:info("Bind uaktywni na lokacji informcje o wcisnieciu klawisza")
    self:command("/woda (skad)", "Dodaj bind do wody /woda font")
    self:command("/usun_bindy", "Usuniecie z aktualnej lokacji binda")
    self:bottom()
end

function printer:aliases()
    self:title("Killer Aliasy")
    self:command("do", "dobadz bron z pokrowca")
    self:command("op", "opusc bron do pokrowca")
    self:command("wem", "wez monety z kontenera")
    self:command("wlm", "wloz monety do kontenera")
    self:info("/opcje aby ustalic styl walki i kontenery")
    self:bottom()
end

function printer:mapper()
    self:title("Killer Mapper")
    self:section("Obszary:")
    self:command("/obszary", "Dostepny obszary oraz ich ID")
    self:command("/dodaj_obszar (nazwa)", "Dodanie nowego obszaru oraz lokacji startowej")
    self:info("(Prawczy przycisk myszy na lokacji > Area - aby dodac lokacje do nowego obszaru)")
    self:command("/nazwij_obszar (id) (nazwa)", "Nowa nazwa dla obszaru z id")
    self:command("/usun_obszar (nazwa/id)", "Usun obszar")
    self:space()
    self:section("Aktualna lokacja:")
    self:command("/lok", "Informacje o aktualnej lokacji")
    self:command("/zlok", "Wycentruj mape do aktualnej lokacji z GMCP")
    self:space()
    self:section("Mapa:")
    self:command("/zaladuj_mape", "Zaladuj mape")
    self:info("(Uwaga! Okienko mappera musi byc wlaczone, inaczej komenda nie zadziala)")
    self:command("/zapisz_mape", "Zapisz aktualna wersje mapy")
    self:space()
    self:section("Mapowanie:")
    self:command("/mapper_start", "Wlacz mapper i pomocnik")
    self:command("/mapper_stop", "Wylacz mapper i pomocnik")
    self:command("/mode (id)", "Tryb mappera")
    self:info("1 - normalny")
    self:info("2 - lacz lokacje obustronnie (Trakty)")
    self:info("3 - tworz lokacje bez gmcp")
    self:info("4 - lacz lokacje przez gmcp (Laki)")
    self:command("/step (n)", "Odstep pomiedzy dwoma lokacjami, domyslnie 2")
    self:command("/dol (kierunek)", "Stworz lokacje i przejscie na dol w danym kierunku")
    self:command("/gora (kierunek)", "Stworz lokacje i przejscie na gore w danym kierunku")
    self:info("(Dostepne kierunki n w s e nw ne sw se")
    self:info("Mapper w przypadku tych komend tworzy odrazu przejscie odwrotne)")
    self:command("/spe (kierunek) (komenda)", "Specjalne przejscie w danym kierunku")
    self:info("(Dostepne kierunki n w s e nw ne sw se u d")
    self:info("W przypadku braku lokacji w danym kierunku - lokacja zostanie utworzona")
    self:info("Przyklad /spe e poczta /spe n bank)")
    self:command("/c (kolor)", "Kolory: poi, chata, las, gory, droga, woda, agro")
    self:command("/linia (kierunek)", "Polacz przerywana linia z najblizsza lokacja w kierunku")
    self:command("/label (kierunek) (text)", "Etykieta w tym kierunku")
    self:command("/lokacja (kierunek) (id)", "Stworz lokacje w tym kierunku z tym id")
    self:info("(Id 0 wygeneruje losowy numer pomieszczenia)")
    self:command("/bindy", "Komendy dla bindow do mapy")
    self:command("/polacz (kierunek) (specjalne)", "Polacz kierunek z przejsciem specjalnym")
    self:info("(Przejscie specjalne musi juz ISTNIEC.")
    self:info("/polacz n brama - przypisuje na stale kierunek N dla bramy")
    self:info("Wykorzystujemy tylko wtedy gdy kierunki dwoch lokacji nie sa ulozone ")
    self:info("w logiczny sposob na osi x i y)")
    self:command("/odlacz (kierunek)", "Odlacz kierunek od przejscia specjalnego")
    self:command("/polaczenia", "Wyswietla wszystkie polaczenia na lokacji")
    self:command("/poi (kierunek)", "Dodaj specjalne przejscie z `wyjscie` i kolorem poi")
    self:bottom()
end

function printer:roomInfo(arr)
    self:title("Aktualna lokacja")
    self:dumpArray(arr, 20, {"Nazwa", "Wartosc"})
    self:bottom()
end

function printer:connectedInfo(arr)
    self:title("Polaczenia lokacji")
    self:dumpArray(arr, 11, {"Kierunek", "Polaczenie"})
    self:bottom()
end

function printer:areas(arr)
    self:title("Lista obszarow")
    if utils:objectLength(arr) > 0 then
        self:dumpArray(arr, 4, {"ID", "Nazwa"})
    else
        self:errorLine("Brak obszarow")
    end
    self:bottom()
end

function printer:filter(sort, arr)
    self:title("Kuferek")
    for _, type in pairs(sort) do
        self:dumpArray(arr[type], 4, {type, nil})
        self:space()
    end
    self:line("Komenda /opcje filtr_bron pozwala na filtrowanie broni", self.sectionColor)
    self:bottom(true)
end

function printer:stats(improve, arr, line, info)
    self:title(improve)
    self:dumpArray(arr, 7, {"Cechy", nil})
    self:space()
    if info then
        self:line(info, self.infoColor)
    else
        self:line(line, self.sectionColor)
    end
    self:bottom(false, true)
end

function printer:rating(arr, sum, nomargin)
    self:title(sum, true, nomargin)
    self:dumpArray(arr, 11, {"Typ", "Ocena"})
    self:bottom(true)
end

function printer:wood(arr, sum, quest)
    self:title(sum)
    self:line("Kliknij na drzewo aby je sciac!", self.sectionColor)
    self:space()
    if quest then
        self:line(quest, self.successColor)
        self:space()
    end
    if next(arr) then
        self:dumpArrayLink(arr, "Nazwa")
    else
        self:line("Brak drzew", self.errorColor)
    end
    self:bottom(false, true)
end

function printer:box(arr)
    self:title("Paczki")
    self:line("Kliknij na paczke aby ja pobrac!", self.sectionColor)
    self:space()
    if next(arr) then
        self:dumpArrayLink(arr, "Nazwa")
    end
    self:bottom(false, true)
end

function printer:gps(arr)
    self:title("GPS")
    self:line("Kliknij na lokacje aby dotrzec do niej!", self.sectionColor)
    self:space()
    if next(arr) then
        self:dumpArrayLink(arr, "Nazwa")
    end
    self:bottom(false, true)
end

function printer:roller(arr)
    self:title("Roller")
    self:line("Im dluzej rollujesz - maxy sie zwiekszaja.", self.sectionColor)
    self:line("Perfect oznacza trafienie maxa w sesji.", self.sectionColor)
    self:space()
    if next(arr) then
        self:tableRow({10,10,10, 10, 10}, {"Stat", "Obecnie", "Max", "Target", "Perfect"}, arr)
    end
    self:bottom(false, true)
end

function printer:rollerHelp()
    self:title("Roller Help")
    self:command("/roller_target sum=466, str=75, dex=75, con=75, int=75, wis=75, cha=75", "Copy")
    self:info("Atrybuty ustawione sa na srednie ustawienia")
    self:info("Musisz chwile poobserwowac mozliwe maxy za pomoca: ")
    self:command("/roller_start", "Sprawdza mozliwe statystyki")
    self:command("/roller_stop", "Zatrzymuje szukanie")
    self:bottom()
end

-- Bree
--  karczma usciskac +
--  srodek bree tajemniczy - mapa u bossa szczurolazow, cmentarz ???
-- biblioteke, muzeum, ratusz i zielarnie
--  pracownik na poczcie listy Paralon Bargins - Igielniczka  +
--  pracownik na poczcie Dunwig - po calym swiecie lata zamglone oczy ?????? skrang ???
-- Stary rumiany olbrzym przedstawia sie jako: Dunwig, olbrzym. lsniace szczyty
-- Dunwig podaza przed siebie i znika ci z pola widzenia.  -- znika kompletnie i spawn gdzie indziej ?
-- Rivendell
--  niespokojny elf - Mandork, hobbit. Bystry Brod, norka w hobbitonie - wilczy leb
-- Hobbiton
--  sheryf - zaatakowac moba i prowadzic go do robina (obrywajac w plecy) +
--  Perin - tukon <> hobbiton +
--  zielarz - stary las ziele ???
-- Michel Delving
--  Colin Manelio - "dwie godziny" - sylaby w slowach 'pustelniku' 'kobiecie' 'mlocie' 'niesmiertelnosci' bez odmiany +
--  Pryszczaty pulchny hobbit - wiezienie > kowal > ratusz > sklepik (zapytaj o noz/burmistrza/czlowieka) > karczma (postaw piwo rainabowi) > Wiesz juz wystarczajo duzo. Opowiedz o tym burmistrzowi. +
-- Mithlond
--  Wrak - Lond Daer > zapytaj karczmarza o statki > biblioteka (przeszukaj rupiecie) > magazyn (przeszukaj papiery) > opowiedz o <nazwa statku> +


-- Ustrekt
-- Listy i questy robic parami List do Draosa/Lustro(klej)    List do Valronda/Urzednik(papier kredowy)
-- Kratas
-- ork z kratas - kapitan > rybak > magazyn > karczma > stajenny > krawiec > skup skor > krawiec > stajenny > karczma > o nagrode kapitana
-- Dorath
-- zielarz - skore triplikatna, pudelko do miecznik vivane
-- wiesniak - przeszukaj siano, wloz slome do otworu, zakrec korba, nakarm kury
-- Vivane
-- gubernator - straznik na polnocnym murze, do celi w wiezieniu z inicjalami sprawcy na scianie, przeszukac prycze, do kanalow przeszukac dziure
-- swiatynia - lustro - 'dziecko' w miescie - mury n przeszukaj kosze - klej kelevine masc -
-- urzednik w ratuszu n - papier kratas sklep, okragle ciastko z s cukierni + sol (wyglada jak cukier) z karczmy n (przeszukaj pudeleczka) "posyp ciastko"
-- szewc - dorath karczma
-- poczta - Velrond, Kratas (/npc Velrond)
