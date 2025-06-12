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
    self:command("/opcje szerokosc "..settings:get("mainWindowWidth", true), "Szerokosc glownego okna w Mudlecie")
    self:command("/opcje wysokosc "..settings:get("mainWindowHeight", true), "Wysokosc glownego okna w Mudlecie")
    self:command("/opcje mapper_szerokosc "..settings:get("mapperWidth", true), "Szerokosc okna mappera w %")
    self:command("/opcje mapper_wysokosc "..settings:get("mapperHeight", true), "Wysokosc okna mappera w %")
    self:command("/opcje skalowanie_dpi "..settings:get("dpiScaling"), "Skalowanie dpi systemu 100%")
    self:command("/opcje follower "..profile:get("follower"), "Ilosc followerow")
    self:command("/opcje fly "..profile:get("fly"), "Float albo Fly")
    self:command("/opcje master "..profile:get("master"), "Master")
    --[[
    self:command("/opcje tryb "..profile:get("mode"), "Wlacz tryb przy ladowaniu profilu")
    self:dumpArray({{0, "brak"}, {1, "gornik"}, {2, "zielarz"}}, 4, nil, self.infoColor)
    ]]--
    self:command("/opcje pojemnik "..profile:get("bag"), "Pojemnik")
    self:command("/opcje mh "..profile:get("mh"), "Bron pierwsza")
    self:command("/opcje oh "..profile:get("oh"), "Bron druga (0 brak)")
    self:command("/opcje chodzik "..profile:get("walker"), "Opoznienie chodzika")
    self:command("/opcje woda "..profile:get("water"), "Pojemnik na wode")
    self:command("/opcje jedzenie "..profile:get("food"), "owoc - jesli jedzenie z czaru")
    self:command("/opcje cel "..profile:get("sub"), "Domyslny cel rozkazow")
    self:command("/opcje k1 "..profile:get("k1"), "Fast Spell 1")
    self:command("/opcje k2 "..profile:get("k2"), "Fast Spell 2")
    self:command("/opcje k3 "..profile:get("k3"), "Fast Spell 3")
    self:command("/opcje k4 "..profile:get("k4"), "Fast Spell 4")
    self:command("/opcje k5 "..profile:get("k5"), "Fast Spell 5")
    self:command("/opcje k6 "..profile:get("k6"), "Fast Spell 6")
    self:command("/opcje k7 "..profile:get("k7"), "Fast Spell 7")
    self:command("/opcje k8 "..profile:get("k8"), "Fast Spell 8")
    self:command("/opcje k9 "..profile:get("k9"), "Fast Spell 9")
    self:command("/opcje k10 "..profile:get("k10"), "Fast Spell 10")
    self:command("/opcje s1 "..profile:get("s1"), "Fast Skill 1")
    self:command("/opcje s2 "..profile:get("s2"), "Fast Skill 2")
    self:command("/opcje s3 "..profile:get("s3"), "Fast Skill 3")
    self:command("/opcje s4 "..profile:get("s4"), "Fast Skill 4")
    self:command("/opcje s5 "..profile:get("s5"), "Fast Skill 5")
    self:command("/opcje s6 "..profile:get("s6"), "Fast Skill 6")
    self:command("/opcje s7 "..profile:get("s7"), "Fast Skill 7")
    self:command("/opcje s8 "..profile:get("s8"), "Fast Skill 8")
    self:command("/opcje s9 "..profile:get("s9"), "Fast Skill 9")
    self:command("/opcje s10 "..profile:get("s10"), "Fast Skill 10")
    self:command("/opcje kill "..profile:get("kill"), "Opcja ataku np. bs, kill, charge")
    self:command("/opcje asopener "..profile:get("asopener"), "Opener ass (oddzielone #)")
    self:command("/opcje kiopener "..profile:get("kiopener"), "Opener def (oddzielone #)")
    self:command("/opcje fclass "..profile:get("fclass"), "Pierwsza klasa")
    self:command("/opcje sclass "..profile:get("sclass"), "Druga klasa")
    self:info("woj, zlo, bar, cza, nom, mag, dru, kle, pal")
    self:bottom()
end

function printer:scripts()
    self:title("Killer Skrypty")
    self:command("/help", "Pomoc")
    self:command("/aliasy", "Szybkie aliasy bez slash'a")
    self:space()
    self:section("BUFF:")
    self:command("/buff_set", "Ustal aktualny set buffow")
    self:command("/buff_list", "Lista setow w bazie")
    self:command("/buff_add (nazwa_setu)", "Dodaje set aktualny buffow do bazy")
    self:command("/buff_reset", "Resetuje aktualny set buffow")
    self:command("/buff", "Cast aktualny set buffow")
    self:space()
    self:section("OPENER:")
    self:command("/opener_list", "Lista setow w bazie")
    self:command("/opener_add (nazwa) (ass) (def)", "Dodaje set (Oddzielone #)")
    self:bottom()
end


function printer:boss(boss)
  self:title("Boss")
  self:section(boss.name2)
  self:tableRow({12, 51, 12}, {}, boss.basic)
  self:space()
  self:text(boss.note, self.textColor)
  self:space()
  self:tags(boss.actions)
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
    self:command("bs (cel)", "Zacznij walke od bs")
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
    self:info("1 - lacz lokacje jednostronnie")
    self:info("2 - lacz lokacje obustronnie")
    self:info("3 - tworz lokacje bez gmcp")
    self:info("4 - lacz lokacje obustronnie bez widocznych wyjsc")
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
    self:command("/blokuj (kierunek)", "Zablokuj wyjscie")
    self:command("/odblokuj (kierunek)", "Odblokuj wyjscie")
    self:bottom()
end

function printer:help(arr)
  self:title("Help")
  self:section(string.upper(arr.meta.name))
  if arr.meta.additional then
    self:tableRow({arr.meta.len, 60}, {}, arr.meta.additional)
    self:space()
  end
  self:text(arr.meta.info)
  if arr.meta.note ~= 0 then
    self:space()
    self:text(arr.meta.note, self.textColor)
  end
  if next(arr.teacher) then
    self:space()
    self:tableRow({6, 57, 12}, {}, arr.teacher)
  end
  if next(arr.book) then
    self:space()
    self:tableRow({4, 59, 12}, {}, arr.book, true)
  end
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

function printer:buff(arr, name)
  name = name or "Buff"
  self:title(name)
  self:line("Kliknij aby ustawic set!", self.sectionColor)
  self:space()
  if next(arr) then
      self:tableRow({2, 60}, {}, arr)
  else
      self:command("/buff_add (nazwa_setu)", "Dodaje set aktualny buffow do bazy")
      self:command("/buff_reset", "Resetuje aktualny set buffow")
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

function printer:buffBasic(arr)
  self:title("Buff")
  self:line("M - cast na master'a  S - cast na slave'a  Kliknij aby wybrac", self.sectionColor)
  self:space()
  if next(arr) then
      self:tableRow({1, 1, 20, 1, 1, 19, 1, 1, 16}, {}, arr)
  end
  self:bottom(false, true)
end

function printer:roller(arr)
    self:title("Roller")
    --self:line("Im dluzej rollujesz - maxy sie zwiekszaja.", self.sectionColor)
    --self:line("Perfect oznacza trafienie maxa w sesji.", self.sectionColor)
    --self:space()
    if next(arr) then
        self:tableRow({10,10,10, 10, 10}, {"Stat", "Obecnie", "Max", "Target", "Perfect"})
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

function printer:dif(fclass, sclass)
  if not fclass then
    -- index
    self:title("Help")
    self:command("/roller_start", "Sprawdza mozliwe statystyki")
    self:command("/roller_stop", "Zatrzymuje szukanie")
    self:bottom()
  else

  end
end

function printer:helpIndex()
  self:title("Help")
  self:command("/help (skill/spell)", "Pomoc dotyczaca skilla/spella")
  self:command("/help masterki", "Masterki broni w klasach")
  self:command("/help skradanie", "Mechanika skradania")
  self:command("/help dwuklasowosc", "Zasady laczenia klas")
  self:command("/help mem", "Priorytet cech przy memie")
  self:command("/help kamienie", "Kamienie i krysztaly mocy")
  self:command("/help efekty", "Efekty na broni i tarczy")
  self:command("/help trutki", "Lista trucizn")
  self:bottom()
end

function printer:helpWeapon()
  self:title("Help")
  self:section("Masterki")
  self:command("Wojownik", "wszystkie bronie, 50% efektywnosci na 2-klasach")
  self:command("Barbarzynca", "wszystkie bronie 2h")
  self:command("Nomad", "wszystkie bronie 1h oprocz mace/axe/flail/staff/polearm")
  self:command("Paladyn", "sword, flail, mace")
  self:command("Czarny Rycerz", "sword, flail, axe, polearm")
  self:command("Zlodziej", "dagger, short-sword")
  self:command("Druid", "claws")
  self:bottom()
end

function printer:helpSneak()
  self:title("Help")
  self:section("Skradanie")
  self:line("Istnieja dwa rodzaje progow w przypadku skradania sie:")
  self:space()
  self:line("Prog aktywacji niewidzialnosci na lokacji.", self.commandColor)
  self:text("Jesli postac posiada przedmiot dajacy efekt sneak, szansa aktywacji wynosi 100%. Gdy postac korzysta z umiejetnosci sneak, szansa zalezy od jej wartosci. Dodatkowo, jesli postac posiada zarowno przedmiot, jak i umiejetnosc sneak, to przedmiot bedzie wykorzystywal wartosc sneak wlasciciela.")
  self:space()
  self:line("Prog wykrycia przez przeciwnika podczas skradania sie.", self.commandColor)
  self:text("W jego wyliczeniu brany jest pod uwage skill sneak + (hide / 10). Na przyklad, przy wartosciach sneak = 91 i hide = 90, mozna osiagnac 100% szansy na niewykrycie. Dodatkowo na ten prog wplywa czar Quiet Step, ktory dodaje 1/4 calkowitej wartosci (sneak + hide). Przyklad: jesli sneak + hide = 80, z czarem Quiet Step koncowy wynik to 80 + 80/4 = 100.")
  self:bottom()
end

function printer:helpMem()
  self:title("Help")
  self:section("MEM")
  self:command("Mag", "INT")
  self:command("Nomad", "INT, LUC")
  self:command("Kleryk/Paladyn/Druid", "WIS")
  self:bottom()
end

function printer:helpDualclass()
  local link = {}
  table.insert(link, { false, "(/dif)", "printer:dif(false)"})
  self:title("Help")
  self:section("Dwuklasowosc")
  self:line("W procesie laczenia klas branych jest pod uwage kilka czynnikow:", self.commandColor)
  self:space()
  self:text("Umiejetnosci noszenia zbroi (light, medium, heavy) pochodza wylacznie z pierwszej klasy.")
  self:space()
  self:text("Masterki dostepne na 31 poziomie sa dostepne tylko dla pierwszej klasy.")
  self:space()
  self:text("Dorolki statystyk co poziom: 2/3 pochodza z pierwszej klasy, 1/3 z drugiej klasy.")
  self:info("(Przy kombinacji mag/wojownik, wojownik obniza intelekt maga)")
  self:space()
  self:text("Zapamietywanie czarow zalezy od pierwszej klasy, wyjatkiem sa czary dostepne tylko w drugiej klasie.")
  self:space()
  self:text("Czary z drugiej klasy ograniczone sa do 5 kregu wlacznie.")
  self:space()
  self:text("Jesli pierwsza klasa to mag specjalista, dziedziczone sa tylko czary niebedace przeciwnymi szkolami.")
  self:info("(Zasada ta dotyczy rowniez tatuazu swiety wojownik)")
  self:space()
  self:text("Przy dziedziczeniu czaru, ktory juz istnieje, brany jest pod uwage krag z pierwszej klasy.")
  self:space()
  self:tags(link)
  self:bottom()
end

function printer:helpStone()
  local link = {}
  table.insert(link, { false, "(/help efekty)", "base:topic('efekty')"})
  self:title("Help")
  self:section("Kamienie")
  self:text("Kamienie mocy, wlozone w odpowiednie wyposazenie, zwiekszaja: moc umiejetnosci (zbroja), poziom czarow (bizuteria), oraz dodaja unikatowe efekty (bron/tarcza).")
  self:space()
  self:text("Kamienie mocy mozna pozyskac na kilka sposobow: zabijajac zwykle moby i bossy, rozbijajac okruchy z bossow i instancji, rozbijajac normalne artefakty oraz artefakty z instancji.")
  self:space()
  self:text("Artefakty i okruchy mozna rozbic za pomoca komendy gainstone u Keleborna w Szkole Magow w Arras. Rozbicie broni albo zbroi zwraca kamien odpowiadajacy rodzajowi wyposazenia.")
  self:space()
  self:text("Okruchy rozbija sie przy pomocy komendy gainstone okruch weapon/armor/shield. Z okruchow broni lub tarcz mozna uzyskac kamienie 0/0 z losowym efektem.")
  self:space()
  self:text("Specjalnym rodzajem kamieni sa krysztaly mocy, kamienie 1/1 z wybranym efektem, dostepne tylko od najbardziej wymagajacych przeciwnikow.")
  self:space()
  self:text("Kamienie mozna wprawiac (embedstone) oraz usuwac (breakstone) u Kowala w Fortecy.")
  self:space()
  self:text("Ogolnie przyjeta taktyka to niszczenie artefaktow (destroyartefact) w Kuzni w Wulkanie. Okruchy przetwarza sie glownie na armor, z wyjatkiem broni lub tarczy w sytuacji, gdy nie mozemy zdobyc krysztalow.")
  self:space()
  self:tags(link)
  self:bottom()
end

function printer:effect(eff)
  self:title("Efekt")
  self:section(eff.name)
  self:text(eff.note, self.textColor)
  if eff.crystal ~= 0 then
    self:space()
    self:prefix("Krysztal", eff.crystal)
  end
  self:bottom()
end

function printer:helpEffects(arr)
  self:title("Help")
  self:section("Efekty")
  self:line("Bronie:", self.commandColor)
  for i=1, #arr.weapon do
    local crystal = arr.weapon[i].crystal
    if arr.weapon[i].crystal == 0 then
      crystal = "Brak krysztalu."
    end
    self:commandLink(arr.weapon[i].name, crystal, function() printer:effect(arr.weapon[i]) end)
  end
  self:bottom()
end

function printer:helpEnvenomers(arr)
  self:title("Help")
  self:section("Trutki")
  self:tableRow({5, 5, 48}, {"Dmg", "Czas", "Nazwa"}, arr)
  self:bottom()
end

function printer:helpEnvenomersList(arr)
  self:title("Help")
  self:section(arr.meta.name)
  if arr.meta.note ~= "" then
    self:text(arr.meta.note, self.textColor)
    self:space()
  end
  if arr.list then
    self:tableRow({44, 3, 12, 14}, {}, arr.list, true)
  else
    self:text("Brak")
  end
  self:bottom()
end
