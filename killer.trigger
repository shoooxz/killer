<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
	<TriggerPackage>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Scripts</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Bindy</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>statki wsiadanie</name>
					<script>keybind:shipEnter()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.*Uwaga! Za chwile znowu wyplywamy!</string>
						<string>.*Za kilkadziesiat sekund wyruszamy w dalsza podroz.</string>
						<string>Energiczny bystry mezczyzna mowi: Za okolo minute wyruszamy w dalsza podroz.</string>
						<string>Gadatliwy wesoly skrang syczy: Za okolo minute wyruszamy w dalsza podroz.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>statki wysiadanie</name>
					<script>keybind:shipLeave()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.*Dotarlismy do przystani, prosze wysiadac.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>cofnij</name>
				<script>mapper:moveBackward()</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>Jestes tak .*, ze nie mozesz isc w tym kierunku.</string>
					<string>Ratusz jest zamkniety na noc, a ty nie masz do niego klucza.</string>
					<string>Jestes wyczerpany.</string>
					<string>Jestes calkowicie sparalizowany!</string>
					<string>Troll blokuje ci droge.</string>
					<string>Potrzebujesz lodzi zeby sie tam dostac.</string>
					<string>Twoja rasa nie jest mile widziana w tym miejscu. Nie mozesz tam wejsc.</string>
					<string>Jestes zbyt oszolomiony, zeby to zrobic!</string>
					<string>Furtka jest zamknieta na klucz.</string>
					<string>Ruszasz przed siebie, jednak po chwili orientujesz sie, ze wrociles do punktu wyjscia.</string>
					<string>Idziesz przed siebie, nagle przecierasz oczy, ku twemu zaskoczeniu jestes w tym samym miejscu.</string>
					<string>Oceniasz odleglosc do drugiego brzegu, i nie widzisz zadnych szans na to, by tam bezpiecznie doskoczyc.</string>
					<string>Niestety, nie potrafisz latac.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>profil</name>
				<script>profile:init(matches[2])</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>.*Wejdź do gry ostatnio używana postacią: \((.*)\)</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>loaded</name>
				<script>scripts:loaded()</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^Juz...$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>DEAD</name>
				<script>scripts:onEnemyKilled(matches[2])</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>(.*)nie zyje!!</string>
					<string>(Krzykacz) rozpada sie na kawaleczki.</string>
					<string>(Szkielet) .* rozpada sie na kawaleczki.</string>
					<string>(Szkielet) poszukiwacza przygod wydaje z siebie ostatni skowyt.*</string>
					<string>(.*)ziemie... MARTWY!!</string>
					<string>(.*)pada na ziemie dygoczac, by po chwili zastygnac na dobre w smierdzacej mazi.</string>
					<string>(.*)przewraca sie i po chwili nieruchomieje na ziemi.</string>
					<string>Pomniejsza cienista (istota) zapada sie w sobie i znika w niebycie ktory ja wyplul.</string>
					<string>(.*) rozpada sie na kawaleczki.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Color</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Books</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>mag</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#55aaff</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>waskie dzielo z topazami</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Enemy</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>stary keton</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(Stary, korowy keton) rosnie tutaj wsrod olbrzymich drzew.</string>
							<string>(Korowy keton) jest tutaj.</string>
							<string>(Korowy keton) zaraz obok.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>drzewiec</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ffff00</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(Widzisz olbrzymie drzewo), jakich wiele w tym lesie.</string>
							<string>(Drzewiec) jest tutaj.</string>
							<string>(Drzewiec) zaraz obok.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>mlody keton</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#00aa00</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(Mlody keton) zaraz obok.</string>
							<string>(Mlody, korowy keton) rosnie sobie spokojnie, glosno szeleszczac liscmi.</string>
							<string>(Mlody keton) jest tutaj.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Fight</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Defen</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ffaa00</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>.*otacza sie ochronna spirala.</string>
							<string>Otaczasz sie ochronna spirala.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Statek</name>
					<script>scripts:beep()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#00ff00</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Po chwili zostaje polozona takze drewniana kladka, ktora mozna sie wydostac ze statku.</string>
						<string>Po chwili zostaje polozona drewniana kladka, ktora mozna dostac sie na statek.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Przeklina</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#000000</mFgColor>
					<mBgColor>#ff0000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) przeklina (.*)\.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>ksiega</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ffaa00</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Z jego rak wypada jakas magiczna ksiega.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>demon ksiega</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#48ff2c</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Lezy tutaj ksiega, cala porosnieta mchem.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>ksiegi</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#00ffff</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(dzielo|cymelium|tom|rycina|inkunabul|wolumen|wolumin|folial|foliant|papirus|rekopis|ksiega|ksiazka)</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>trade ok</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#04ff00</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Dlugo klocisz sie ze sklepikarzem, w koncu udaje ci sie wytargowac najkorzystniejsza cene.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>trade bad</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Starasz sie wytargowac jak najwyzsza cene, jednak sprzedawca pozostaje nieugiety.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Envenom</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>trzesie</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#b9cb1b</mFgColor>
						<mBgColor>#000000</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>trzesie sie i cierpi.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Affects</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_VAMPIRIC</name>
						<script>gag:eff("WEAPON_VAMPIRIC")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Czujesz, jakby (.*) wysysalo z otoczenia sily witalne.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_POISON</name>
						<script>gag:eff("WEAPON_POISON")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Na (.*) znajdujesz kilka ciemnych plam po jakiejs smierdzacej cieczy, ta bron jest zatruta.</string>
							<string>Na (.*) znajdujesz kilka ciemnych plam po jakiejs smierdzacej cieczy, to chyba jest trucizna.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_KEEN</name>
						<script>gag:eff("WEAPON_KEEN")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Trzymajac w dloniach (.*) zauwazasz, ze bron ta jest doskonale wywazona.</string>
							<string>Trzymajac w dloniach (.*) zauwazasz, ze ten kamien jest doskonale wywazony.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>ITEM_BLESS</name>
						<script>gag:eff("ITEM_BLESS")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) emanuje lekka, kojaca aura.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>ITEM_EVIL</name>
						<script>gag:eff("ITEM_EVIL")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Od (.*) bije zimna aura zla.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>ITEM_DARK</name>
						<script>gag:eff("ITEM_DARK")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Od (.*) bije mroczna aura.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_FLAMING</name>
						<script>gag:eff("WEAPON_FLAMING")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) okrywa ledwo widoczna, ognista aura.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_HEARTSEEKER</name>
						<script>gag:eff("WEAPON_HEARTSEEKER")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) lekko drga, usilujac znalesc droge do twojego serca.</string>
							<string>(.*) lekko drga, usilujac skierowac ostrze w strone twojego serca.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_SHARP</name>
						<script>gag:eff("WEAPON_SHARP")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) ma niezwykle ostre krawedzie.</string>
							<string>Ostrze (.*) jest niezwykle ostre.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_VORPAL</name>
						<script>gag:eff("WEAPON_VORPAL")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) ma niesamowicie ostre krawedzie, z latwoscia (.*) tym kamieniem granitowa skale.</string>
							<string>Ostrze (.*) jest niesamowicie ostre, z latwoscia (.*) ta bronia granitowa skale.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_HOLY</name>
						<script>gag:eff("WEAPON_HOLY")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) okrywa uswiecona aura pozytywnej energii.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_RESONANT</name>
						<script>gag:eff("WEAPON_RESONANT")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Z (.*) wydobywaja sie lekkie wibracje.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_FROST</name>
						<script>gag:eff("WEAPON_FROST")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) okrywa ledwo widoczna, zamrazajaca aura.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_TOXIC</name>
						<script>gag:eff("WEAPON_TOXIC")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) okrywa ledwo widoczna, zraca aura.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_ELEMENTAL_ABSORB</name>
						<script>gag:eff("WEAPON_ELEMENTAL_ABSORB")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>W poblizu (.*) tarcze oparte na zywiolach bledna i przygasaja.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_SHOCKING</name>
						<script>gag:eff("WEAPON_SHOCKING")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>W (.*) zgromadzono potezny, elektryczny ladunek.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>WEAPON_THUNDERING</name>
						<script>gag:eff("WEAPON_THUNDERING")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) wibruje lekko od zawartej w srodku mocy.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>rycerz wedrujacy</name>
					<script>scripts:beep()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff55ff</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Przechodzi tedy zakuty w ciezka plytowa zbroje wysoki barczysty rycerz.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>zwoj</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ffff00</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Przedziwny zwoj mistrzostwa lezy tutaj.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Karakkis Wedrowiec</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff007f</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Wedrowiec idzie wolnym krokiem zwiedzajac miasto.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Skryba Arras</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff00ff</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Miejski skryba chodzi po miescie i sprzedaje interesujace zwoje.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Bron</name>
					<script>scripts:beep()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nie masz juz sily walczyc tak ciezka bronia</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Miner</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>detect</name>
					<script>miner:pick()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#21ff06</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Mocno juz wyczerpany konczysz ostatnim uderzeniem.</string>
						<string>Zmeczony kuciem dostrzegasz na skale pekniecie, bierzesz wiec potezny zamach.*</string>
						<string>Z kolejnym uderzeniem myslisz sobie, ze wystarczy.</string>
						<string>Ostatnim poteznym uderzeniem konczysz prace.</string>
						<string>Z zaskoczeniem patrzysz na efekt swojej pracy - wlasna podobizne.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>danger</name>
					<script>scripts:beep()
</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Glosny trzask uswiadamia ci, ze kucie w tej czesci kopalni nie jest juz bezpieczne!</string>
						<string>Jedna z podpor komnaty wyglada niepewnie.</string>
						<string>Kraaaaach!</string>
						<string>Krach! Slyszysz glosny huk!</string>
						<string>Elementy zabezpieczenia komnaty uginaja sie mocno!</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>mithril</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#fd8008</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.*(Blekitnosrebrzysta brylka).*</string>
						<string>.*(blekitnosrebrzysta brylka).*</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Orchialk</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#20ffff</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.*(Jasnoniebieska brylka).*</string>
						<string>.*(jasnoniebieska brylka).*</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>check</name>
					<script>send("sp")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Wsrod gruzu dostrzegasz kilka okruchow jakiegos mineralu.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>tired</name>
					<script>send("rest")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Zmeczenie uniemozliwia ci rozpoczecie wydobycia.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>done</name>
					<script>scripts:beep()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>To zloze wyglada na wyczerpane.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Roller</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="yes" isColorizerTrigger="no" isFilterTrigger="yes" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Catch</name>
					<script>roller:catch(multimatches)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>4</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>STR: (\d\d).*INT: (\d\d)</string>
						<string>WIS: (\d\d).*DEX: (\d\d)</string>
						<string>CON: (\d\d).*CHA: (\d\d)</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Utils</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Holy prayer</name>
					<script>send("say Allah Akbar, Allah Akbar")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nadszedl juz czas na kolejna modlitwe.</string>
						<string>Czujesz jak boska sila powoli gasnie w twoim wnetrzu. Najwyzszy czas sie pomodlic.</string>
						<string>Czujesz, ze czegos zaczyna ci bardzo brakowac... jakby opuszczala cie boska sila.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Meldunek</name>
					<script>send("say Tak jest!")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Zameldowales sie i nastepny raz bedziesz startowal z tego miejsca.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Exp</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>REST</name>
						<script>exp:onRestDone()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Zamykasz i chowasz swoja ksiege magiczna.</string>
							<string>Przerywasz swoja duchowa medytacje.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Mowi ci</name>
					<script>scripts:beep()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>mowi ci </string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Enemy</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>life</name>
					<script>state:catchEnemyHP(matches[2])</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string> \[Tank.*: (.*), .*\] </string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Fight</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Rescue</name>
					<script>send("ass")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>ratuje cie z opresji!</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>gag</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Cios</name>
						<script>gag:hit(matches[2], matches[3], matches[4])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(?i)(Twoje )?(boska moc|szokujace ugryzienie|mrozace ugryzienie|wyssanie umyslu|kwasowe ugryzienie|zrace uderzenie|miazdzace walniecie|plomienne ugryzienie|wyssanie zycia|zamaszyste ciecie|uderzenie tarcza|precyzyjne ciecie|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie)(.*)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Unik JA</name>
						<script>gag:missMe(matches[2])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>Probujesz wyprowadzic cios, ale chybiasz (.*) haniebnie\.</string>
							<string>Atakujesz, ale w ostatniej chwili tracisz rownowage i chybiasz (.*)\.</string>
							<string>Chybiasz (.*)\.</string>
							<string>Niestety mimo calego wysilku wlozonego w uderzenie chybiasz (.*)\.</string>
							<string>Twoje uderzenie przecina z sykiem powietrze chybiajac (.*) o wlos\.</string>
							<string>Balansujesz cialem probujac trafic (.*), ale chybiasz\.</string>
							<string>Probujesz walnac (.*), ale mijasz sie ze swoim celem\.</string>
							<string>(.*) w ostatniej chwili odskakuje do tylu i twoj atak nie trafia</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Unik Lokacja</name>
						<script>gag:missLocation(matches[2], matches[3])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) probuje wyprowadzic cios, ale chybia (.*) haniebnie\.</string>
							<string>(.*) atakuje (.*), ale w ostatniej chwili traci rownowage i chybia\.</string>
							<string>(.*) chybia (.*)\.</string>
							<string>(.*) wklada sporo wysilku w ten cios, jednak chybia (.*)\.</string>
							<string>Uderzenie (.*) przecina z sykiem powietrze chybiajac (.*) o wlos\.</string>
							<string>(.*) balansuje cialem probujac trafic (.*), ale chybia\.</string>
							<string>(.*) probuje walnac (.*), ale mija sie ze swoim celem\.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Unik Lokacja Reverse</name>
						<script>gag:missLocation(matches[3], matches[2])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*) z latwoscia unika ataku i cios (.*) nie trafia\.</string>
							<string>(.*) w ostatniej chwili odskakuje do tylu i cios (.*) nie trafia\.</string>
							<string>(.*) w ostatniej chwili robi unik i cios (.*) nie trafia\.</string>
							<string>(.*) zrecznie robi unik i cios (.*) nie trafia\.</string>
							<string>(.*) w ostatniej chwili odtacza sie i cios (.*) nie trafia\.</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Prompt  Reduce</name>
						<script>footer:promptUpdate()


</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string></string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>7</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Prompt walka</name>
						<script>footer:promptFight(matches)

</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>.*\[Tank.* </string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>rozbraja</name>
					<script>character:disarm()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.* ROZBRAJA cie.*</string>
						<string>Bron wypada ci z rak!</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>POWALA</name>
					<script>character:knockdown()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Celne trafienie korowego ketona wytraca cie z rownowagi, z jeknieciem przewracasz sie na ziemie.</string>
						<string>.*powala cie na ziemie.*</string>
						<string>.*probujac odzyskac rownowage, ale nie udaje ci sie.*</string>
						<string>.*odlatujesz do tylu walac sie na ziemie.*</string>
						<string>jeknieciem przewracasz sie na ziemie.</string>
						<string>przewraca cie, walisz sie na ziemie!</string>
						<string>przewracasz sie.</string>
						<string>.*i padasz na plecy bez tchu.</string>
						<string>wywraca cie na ziemie.</string>
						<string>napotykajac oporu tracisz rownowage</string>
						<string>wlasne lapy i ladujesz na ziemi.</string>
						<string>popycha cie wywracajac na ziemie.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>feeble</name>
					<script>character:feeble()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nagle twoj umysl okrywa mgla</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>DR</name>
					<script>send("warcz;")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Twoje odczucie bolu zostalo juz zredukowane do minimum.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Learn</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>LearnClick</name>
					<script>learn:startSession()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>100</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>moze nauczyc nastepujacych rzeczy:</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Item</name>
						<script>learn:click(matches[2], matches[3])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^([a-z\s\-]+)([a-z0-9,\s]+)$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Prompt</name>
						<script>setTriggerStayOpen("LearnClick", 0)
learn:finish()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>return isPrompt()</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>4</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>State</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Astral used</name>
					<script>top:astralState(false)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Wymawiasz slowa, 'astral search'.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Astral ready</name>
					<script>top:astralState(true)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Znowu mozesz przeszukiwac plany astralne</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>SC Staty</name>
				<script>-- Laszlo
if string.find(line, "polboska") then
  echo(" (214+)")
elseif string.find(line, "legendarna") then
  echo(" (200-213)")
elseif string.find(line, "niespotykana") then
  echo(" (186-199)")
elseif string.find(line, "niezmiernie wysoka") then
  echo(" (172-185)")
elseif string.find(line, "wysoka") then
  echo(" (158-171)")
elseif string.find(line, "niezla") then
  echo(" (144-157)")
elseif string.find(line, "nieprzecietna") then
  echo(" (130-143)")
elseif string.find(line, "srednia") then
  echo(" (116-129)")
elseif string.find(line, "ponizej przecietnej") then
  echo(" (102-115)")
elseif string.find(line, "bardzo niska") then
  echo(" (88-101)")
elseif string.find(line, "godna pozalowania") then
  echo(" (74-87)")
else 
  echo(" (&lt;73)")
end    
                   
                         
                  
                       
                   </script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>Twoja sila jest \w+.</string>
					<string>Twoja zrecznosc jest \w+.</string>
					<string>Twoja kondycja jest \w+.</string>
					<string>Twoja inteligencja jest \w+.</string>
					<string>Twoja wiedza jest \w+.</string>
					<string>Twoja charyzma jest \w+.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Fast</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Defen</name>
					<script>send("c defen")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#000000</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Otaczajaca cie ochronna spirala zwija sie, a po chwili zanika.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>RMW</name>
					<script>send("c 'res magi weapon'")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Twoje magiczne pole, chroniace przed magiczna bronia zanika.</string>
						<string>Nie udalo ci sie stworzyc pola chroniacego przed magiczna bronia.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Mantle</name>
					<script>send("c mantle")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Otaczajaca cie magiczna oponcza zanika.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>BS fail</name>
					<script>send("kill snie")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Taki cios nie wyjdzie ci raczej w walce z snieznym monstrum.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>SpellTranslate</name>
				<script>gag:spellTrans(matches[2], matches[3])</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>(.*) wymawia slowa, '(.*)'\.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Inventory</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>InventoryClick</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>100</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nosisz przy sobie:</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Item</name>
						<script>function InventoryItem(name)
  send("c ident "..name)
end

cechoLink("&lt;yellow&gt;  ident", [[InventoryItem("]]..matches[2]..[[")]], "", true)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(.*)\(.*\)$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Prompt</name>
						<script>setTriggerStayOpen("InventoryClick", 0)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string></string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>7</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Multi</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>order</name>
					<script>character:processOrder(matches[2], matches[3])
</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) rozkazuje ci '(.*)'.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>join</name>
					<script>send("fol "..matches[2])</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) kaze wszystkim podazac za soba.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>add</name>
					<script>send("gr "..matches[2])</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) bedzie teraz chodzil za toba.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Loot</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>LOOT</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>100</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(Cialo) (.*) zawiera:</string>
						<string>(Kosci) (.*) zawiera:</string>
						<string>Powalone drzewo (.*) zawiera:</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Item</name>
						<script>inventory:loot(matches[2])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>(.*)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Prompt</name>
						<script>inventory:lootDone()</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string></string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>7</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Druid</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>wolf form</name>
					<script>state:setDruidForm("wolf")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Skupiasz sie i nagle do okola ciebie roztacza sie korzenny zapach a ty przemieniasz sie w wielkiego czarnego wilka.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>bear form</name>
					<script>state:setDruidForm("bear")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Skupiasz sie i nagle do okola ciebie roztacza sie korzenny zapach a ty przemieniasz sie w wielkiego niedzwiedzia.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>reform</name>
					<script>state:setDruidForm("reform")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nagle do okola ciebie roztacza sie korzenny zapach a ty powracasz do swojej ludzkiej postaci.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>panther</name>
					<script>state:setDruidForm("panther")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Skupiasz sie i nagle do okola ciebie roztacza sie korzenny zapach a ty przemieniasz sie w wielka pantere.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>reform2</name>
					<script>state:setDruidMaster(matches[2], "reform")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Do twojego nosa dociera jakis korzenny zapach i po chwili (.*) powraca do swojej ludzkiej postaci.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>panther2</name>
					<script>state:setDruidMaster(matches[2], "panther")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) skupia sie a do twojego nosa dociera korzenny zapach, nagle (.*) przeistacza sie w wielka pantere.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>bear2</name>
					<script>state:setDruidMaster(matches[2], "bear")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) skupia sie a do twojego nosa dociera korzenny zapach, nagle (.*) przeistacza sie w wielkiego niedzwiedzia.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>wolf2</name>
					<script>state:setDruidMaster(matches[2], "wolf")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>(.*) skupia sie a do twojego nosa dociera korzenny zapach, nagle (.*) przeistacza sie w wielkiego czarnego wilka.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>biba</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>W twojej glowie rozlegaja sie przerazajace jeki, powietrze nabiera</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Mapper</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Block</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>block</name>
					<script>mapper:moveBackward()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Najpierw wstan.</string>
						<string>W snach czy co?</string>
						<string>Brama jest zamknieta.</string>
						<string>Drzwi sa zamkniete.</string>
						<string>W ciemnosciach nie udalo ci sie zauwazyc wyrastajacego przed toba drzewa.*</string>
						<string>Klapa jest zamknieta.</string>
						<string>Nie da rady! Ciagle walczysz!</string>
						<string>Wrota sa zamkniete</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>bramy</name>
					<script>keybind:gate(matches[2])
mapper:moveBackward()

</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^Brama jest zamknieta.$</string>
						<string>^Niestety brama jest zamknieta. Nie mozesz zatem podazyc w tym kierunku.$</string>
						<string>^(Zachodnia brama jest zamknieta.)$</string>
						<string>^(Wschodnia brama jest zamknieta.)$</string>
						<string>^(Brama jest zamknieta, wiec nie uda ci sie przez nia przedostac.)$</string>
						<string>^(Forsowanie zamknietej bramy nie jest rozsadnym pomyslem...)$</string>
						<string>^(Przechodzenie przez zamknieta brame nie jest najlepszym pomyslem.)$</string>
						<string>Nie zwracajac na nic uwagi ruszasz szybko w strone wrot.*</string>
						<string>Probujesz przejsc przez zamkniete wrota lecz.*</string>
						<string>Brama jest dosyc solidna i na dodatek zamknieta. Jakim cudem chcesz dostac sie do srodka?!</string>
						<string>Brama jest dosyc solidna i na dodatek zamknieta. Jakim cudem chcesz opuscic miasto??</string>
						<string>.*(Alez most nie jest opuszczony).*</string>
						<string>Drzwi sa zamkniete.</string>
						<string>Wrota sa zamkniete.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Jerris</name>
					<script>send("przedstaw sie")
mapper:moveBackward()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>.*Stoj! Podaj swe imie i cel pobytu w miescie!</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>melina vivane</name>
					<script>send("przesun stol")
mapper:moveBackward()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Niestety, otwor w suficie znajduje sie zbyt wysoko. Byc moze warto by cos poden przesunac, aby mozna sie bylo dostac na gore.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>winda</name>
				<script>mapper:centerGMCP()</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>.: Przy powietrznej windzie :.</string>
					<string>.: Przy Wschodnim Filarze :.</string>
					<string>.: Przy Poludniowym Filarze :.</string>
					<string>.: Przy Polnocnym Filarze :.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
					<integer>0</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>GPS</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>kieruj</name>
					<script>mapper:centerGMCP()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Nie jestes pewny, gdzie teraz isc.</string>
						<string>Droga sie tutaj konczy.</string>
						<string>Dotarles do celu!</string>
						<string>Zdecydowanym krokiem przechodzisz przez portal. Masz dziwne wrazenie przebudzenia z glebokiego snu.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>follow</name>
					<script>mapper:centerGMCP()
keybind.show = true</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Idziesz za</string>
						<string>Lewitujesz za </string>
						<string>Lecisz za</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>panika</name>
					<script>mapper:centerGMCP()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Udalo ci sie gdzies uciec!</string>
						<string>... i wyczuwasz pod reka jakas drabinke...</string>
						<string>Po krotkiej chwile fale wyrzucaja cie na brzeg.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Mulgashy</name>
					<script>mapper:centerGMCP(true)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Po chwili stoisz we wnetrzu Wiezy.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>gnoll</name>
					<script>send("say dyscyplina")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Gnoll wartownik krzyczy z wiezy 'Haslo?'</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>CENTER_GMCP</name>
					<script>mapper:centerGMCP(true)
keybind.show = true</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Wchodzisz w czerwony portal, przez chwile otacza cie ciemnosc i cisza.</string>
						<string>Wchodzisz w portal i nagle jestes gdzies indziej...</string>
						<string>Blyskawicznie wbiegasz do tajnego korytarza.</string>
						<string>Slyszysz jak tajne przejscie zamyka sie z gluchym lomotem.</string>
						<string>Wchodzisz w ognisty portal i nagle jestes gdzies indziej...</string>
						<string>Wchodzisz w okragly portal i nagle jestes gdzies indziej...</string>
						<string>Wchodzisz w czarny portal i nagle jestes gdzies indziej...</string>
						<string>Nagle pojawiasz sie w calkowicie innym miejscu.</string>
						<string>Wchodzisz w portal instancji.</string>
						<string>Wchodzisz w cienisty portal i nagle jestes gdzies indziej...</string>
						<string>Przechodzac przez niego ogladasz sie ostatni raz przez ramie na to pieklo.</string>
						<string>Uciekasz z walki!</string>
						<string>Wchodzisz w wyrwe w rzeczywistosci i nagle jestes gdzies indziej...</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
	</TriggerPackage>
	<TimerPackage>
		<Timer isActive="no" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>New timer</name>
			<script>send("gr;cond")</script>
			<command></command>
			<packageName></packageName>
			<time>00:01:00.000</time>
		</Timer>
		<Timer isActive="no" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>env</name>
			<script>learn:envTick()</script>
			<command></command>
			<packageName></packageName>
			<time>00:00:59.000</time>
		</Timer>
		<Timer isActive="no" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>boss</name>
			<script>boss:timerTick()</script>
			<command></command>
			<packageName></packageName>
			<time>00:00:30.000</time>
		</Timer>
	</TimerPackage>
	<AliasPackage>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>Mapper</name>
			<script></script>
			<command></command>
			<packageName></packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>^/p$</name>
				<script>mapper:helper()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/p$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/zaladuj_mape$</name>
				<script>mapper:load()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/zaladuj_mape$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/mapper_stop$</name>
				<script>mapper:stop()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/mapper_stop$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/mapper_start$</name>
				<script>mapper:start()
</script>
				<command></command>
				<packageName></packageName>
				<regex>^/mapper_start$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/dol (.*)$</name>
				<script>mapper:generateRoomDown(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/dol (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/zapisz_mape$</name>
				<script>mapper:save()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/zapisz_mape$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Area</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/obszary$</name>
					<script>mapper:getAreaTable()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/obszary$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/dodaj_obszar (.*)$</name>
					<script>mapper:addAreaName(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/dodaj_obszar (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/usun_obszar (.*)$</name>
					<script>mapper:deleteArea(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/usun_obszar (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/nazwij_obszar ([a-z]+)$</name>
					<script>mapper:setAreaName(matches[2], matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/nazwij_obszar ([0-9]+) (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Lokacja</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/lok$</name>
					<script>mapper:getRoomInfo()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/lok$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/zlok$</name>
					<script>mapper:centerGMCP(true)</script>
					<command></command>
					<packageName></packageName>
					<regex>^/zlok$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/brama (.*)$</name>
					<script>mapper:gate(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/brama (.*)$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/reload$</name>
				<script>reloadObjects()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/reload$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/gora (.*)$</name>
				<script>mapper:generateRoomUp(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/gora (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/spe (.*) (.*)$</name>
				<script>mapper:addSpecialExitAndRoom(matches[2], matches[3])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/spe ([\w]+) ([\w\s]+)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/c (.*)$</name>
				<script>mapper:colorRoom(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/c (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/linia (.*)$</name>
				<script>mapper:addLine(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/linia (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/label ([a-z]+) ([a-z0-9]+)$</name>
				<script>mapper:label(matches[2], matches[3])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/label ([a-z]+) ([A-z0-9 ]+)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/lokacja ([a-z]+) ([0-9 ]+)$</name>
				<script>mapper:emptyRoom(matches[2], matches[3])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/lokacja ([a-z]+) ([0-9 ]+)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/mode ([0-9]+)$</name>
				<script>mapper:setMode(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/mode\s?([0-9]+)?$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/step (.*)$</name>
				<script>mapper:setStep(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/step (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/bindy$</name>
				<script>printer:binds()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/bindy$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Bindy</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/bind (.*)$</name>
					<script>mapper:setBind(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/bind (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/usun_bindy$</name>
					<script>mapper:removeBinds()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/usun_bindy$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/woda (.*)$</name>
					<script>mapper:setWaterBind(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/woda (.*)$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/poi ([a-z]+)$</name>
				<script>mapper:addTemplate("poi", matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/poi ([a-z]+)$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Move</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^w$</name>
					<script>mapper:move("w")</script>
					<command></command>
					<packageName></packageName>
					<regex>^w$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^e$</name>
					<script>mapper:move("e")</script>
					<command></command>
					<packageName></packageName>
					<regex>^e$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^n$</name>
					<script>mapper:move("n")</script>
					<command></command>
					<packageName></packageName>
					<regex>^n$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^s$</name>
					<script>mapper:move("s")</script>
					<command></command>
					<packageName></packageName>
					<regex>^s$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^nw$</name>
					<script>mapper:move("nw")</script>
					<command></command>
					<packageName></packageName>
					<regex>^nw$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^se$</name>
					<script>mapper:move("se")</script>
					<command></command>
					<packageName></packageName>
					<regex>^se$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^ne$</name>
					<script>mapper:move("ne")</script>
					<command></command>
					<packageName></packageName>
					<regex>^ne$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^sw$</name>
					<script>mapper:move("sw")</script>
					<command></command>
					<packageName></packageName>
					<regex>^sw$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^u$</name>
					<script>mapper:move("u")</script>
					<command></command>
					<packageName></packageName>
					<regex>^u$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^d$</name>
					<script>mapper:move("d")</script>
					<command></command>
					<packageName></packageName>
					<regex>^d$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Connect</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/polacz ([a-z]+)( [a-z]+)?$</name>
					<script>mapper:connectViaDirection(matches[2], matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/polacz ([a-z]+)( [a-z]+)?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/polaczenia$</name>
					<script>mapper:showConnected()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/polaczenia$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/odlacz ([a-z]+)$</name>
					<script>mapper:clearMeta(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/odlacz ([a-z]+)$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/blokuj (.*)$</name>
				<script>mapper:block(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/blokuj (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/odblokuj (.*)$</name>
				<script>mapper:unblock(matches[2])</script>
				<command></command>
				<packageName></packageName>
				<regex>^/odblokuj (.*)$</regex>
			</Alias>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>Scripts</name>
			<script></script>
			<command></command>
			<packageName></packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>^/zap$</name>
				<script>send("napelnij lampe olejem; krzesaj iskry kamieniem o drugi kamien na lampe;")</script>
				<command></command>
				<packageName></packageName>
				<regex>^/zap$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Inventory</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/napraw$</name>
					<script>inventory.repair:go()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/napraw$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/medytuj$</name>
				<script>character:prepareCapture()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/medytuj$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>NPC</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/npc (.*)?$</name>
					<script>npc:search(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/npc (.*)?$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Bow</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/celuj w (.*)$</name>
					<script>bow:set(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/celuj w (.*)$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/opcje\s?([a-z_]+)?\s?([A-Za-z0-9]+)?$</name>
				<script>settings:change(matches)
profile:change(matches)
printer:settings()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/opcje\s?([a-z_0-9]+)?\s?([A-Za-z0-9\s,#]+)?$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Help</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/mapper$</name>
					<script>printer:mapper()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/mapper$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/pomoc$</name>
					<script>printer:help()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/pomoc$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/skrypty$</name>
					<script>printer:scripts()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/skrypty$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/aliasy$</name>
					<script>printer:aliases()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/aliasy$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/lucznik$</name>
					<script>printer:bowHelp()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/lucznik$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/drwal$</name>
					<script>printer:woodHelp()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/drwal$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/gornik$</name>
					<script>printer:minerHelp()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/gornik$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/liaj_wyczysc$</name>
				<script>mapper:clearLiaj()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/liaj_wyczysc$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Alias</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^do$</name>
					<script>inventory:weaponGet()</script>
					<command></command>
					<packageName></packageName>
					<regex>^do$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^op$</name>
					<script>inventory:weaponPut()</script>
					<command></command>
					<packageName></packageName>
					<regex>^op$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/buy_light$</name>
					<script>send("buy 'pikowany kaptur';buy 'ciezka peleryna';buy 'pikowane naramienniki';buy 'gruba skorzana kurtka';buy 'ochraniacze nog';buy 'skorzane buty';")</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buy_light$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^loot$</name>
					<script>send("get all.klej "..matches[2])
send("get all.gem "..matches[2])
send("get all.klucz "..matches[2])
send("exam "..matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^loot (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^loot2 (.*)$</name>
					<script>send("un "..matches[2])
send("open "..matches[2])
send("get kupka "..matches[2])
send("get all.klej "..matches[2])
send("get all.gem "..matches[2])
send("exam "..matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^loot2 (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^bs (.*)$</name>
					<script>character:bs(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^bs (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Trapper</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^carve$</name>
					<script>send("remove pawe; wield szty;carve cialo examine")</script>
					<command></command>
					<packageName></packageName>
					<regex>^carve$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Roller</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/roller_start$</name>
					<script>roller:start()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/roller_start$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/roller_stop$</name>
					<script>roller:stop()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/roller_stop$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/roller_help$</name>
					<script>roller:help()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/roller_help$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/roller_target$</name>
					<script>roller:target(matches[2], matches[3], matches[4],matches[5],matches[6],matches[7],matches[8])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/roller_target sum=(\d+), str=(\d+), dex=(\d+), con=(\d+), int=(\d+), wis=(\d+), cha=(\d+).*$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/start$</name>
				<script>scripts:start(1)</script>
				<command></command>
				<packageName></packageName>
				<regex>^/start$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>^/def$</name>
				<script>character:defensiveSpells()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/def$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Base</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/btc$</name>
					<script>base:teacherClosest()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/btc$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/bbc$</name>
					<script>base:bookClosest()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/bbc$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/dif$</name>
					<script>base:dif(matches[2], matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/dif(.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/test$</name>
					<script>base:test()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/test$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/help (.*)$</name>
					<script>base:help(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/help(.*)?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/tat (.*)$</name>
					<script>base:tat(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/tat (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Exp</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/exp$</name>
					<script>path:start(matches[2], matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/exp ([a-z0-9]+)( r)?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/exp_go$</name>
					<script>exp.paused=false</script>
					<command></command>
					<packageName></packageName>
					<regex>^/exp_go$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Buff</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/buff_add (.*)$</name>
					<script>buff:listAdd(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buff_add (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/buff_list$</name>
					<script>buff:listRender()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buff_list$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/buff_reset$</name>
					<script>buff:reset()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buff_reset$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/buff_set$</name>
					<script>buff:show()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buff_set$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/buff$</name>
					<script>buff:cast("ms")</script>
					<command></command>
					<packageName></packageName>
					<regex>^/buff$</regex>
				</Alias>
			</AliasGroup>
			<Alias isActive="yes" isFolder="no">
				<name>^/mem$</name>
				<script>mem:show()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/mem$</regex>
			</Alias>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Opener</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/opener_list$</name>
					<script>opener:listRender()</script>
					<command></command>
					<packageName></packageName>
					<regex>^/opener_list$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/opener_add (.*) (.*) (.*)$</name>
					<script>opener:listAdd(matches[2], matches[3], matches[4])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/opener_add (.*) (.*) (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Boss</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/boss (.*)$</name>
					<script>boss:search(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/boss (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Other</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/env (.*)$</name>
					<script>learn:env(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/env (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>GPS</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/gps(.*)$</name>
					<script>path:search(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/gps(.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/gps_add(.*)$</name>
					<script>path:add(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/gps_add(.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Action</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/action_start$</name>
					<script>footer:actionMode(true)</script>
					<command></command>
					<packageName></packageName>
					<regex>^/action_start$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/action_stop$</name>
					<script>footer:actionMode(false)</script>
					<command></command>
					<packageName></packageName>
					<regex>^/action_stop$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/action_sub$</name>
					<script>footer:subOnly(matches[2], matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/action_sub (.*) (.*)$</regex>
				</Alias>
			</AliasGroup>
		</AliasGroup>
		<Alias isActive="yes" isFolder="no">
			<name>LUA</name>
			<script>local f, e = loadstring("return "..matches[2])
if not f then
  f, e = assert(loadstring(matches[2]))
end

local r =
  function(...)
    if not table.is_empty({...}) then
      display(...)
    end
  end
r(f())</script>
			<command></command>
			<packageName></packageName>
			<regex>^lua (.*)$</regex>
		</Alias>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>`echo</name>
			<script></script>
			<command></command>
			<packageName>`echo</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>`echo</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
feedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`echo (.+)</regex>
			</Alias>
		</AliasGroup>
	</AliasPackage>
	<ActionPackage />
	<ScriptPackage>
		<Script isActive="yes" isFolder="no">
			<name>init</name>
			<packageName></packageName>
			<script>local path = package.path
local homeDirectory = getMudletHomeDir():gsub("\\", "/") .. "/killer/"
local luaDirectory = string.format("%s/%s", homeDirectory, [[?.lua]])

package.path = string.format("%s;%s", luaDirectory, path)
package.loaded.init = nil
require("init")</script>
			<eventHandlerList />
		</Script>
	</ScriptPackage>
	<KeyPackage>
		<KeyGroup isActive="yes" isFolder="yes">
			<name>barsawia</name>
			<packageName>barsawia</packageName>
			<script></script>
			<command></command>
			<keyCode>0</keyCode>
			<keyModifier>0</keyModifier>
			<KeyGroup isActive="yes" isFolder="yes">
				<name>Movement</name>
				<packageName></packageName>
				<script></script>
				<command></command>
				<keyCode>-1</keyCode>
				<keyModifier>0</keyModifier>
				<Key isActive="yes" isFolder="no">
					<name>Southwest</name>
					<packageName></packageName>
					<script>mapper:move("sw")</script>
					<command></command>
					<keyCode>49</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>South</name>
					<packageName></packageName>
					<script>mapper:move("s")</script>
					<command></command>
					<keyCode>50</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Southeast</name>
					<packageName></packageName>
					<script>mapper:move("se")</script>
					<command></command>
					<keyCode>51</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>West</name>
					<packageName></packageName>
					<script>mapper:move("w")</script>
					<command></command>
					<keyCode>52</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>East</name>
					<packageName></packageName>
					<script>mapper:move("e")</script>
					<command></command>
					<keyCode>54</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Northwest</name>
					<packageName></packageName>
					<script>mapper:move("nw")</script>
					<command></command>
					<keyCode>55</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>North</name>
					<packageName></packageName>
					<script>mapper:move("n")</script>
					<command></command>
					<keyCode>56</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Northeast</name>
					<packageName></packageName>
					<script>mapper:move("ne")</script>
					<command></command>
					<keyCode>57</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Out</name>
					<packageName></packageName>
					<script></script>
					<command>out</command>
					<keyCode>42</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Up</name>
					<packageName></packageName>
					<script>mapper:move("u")</script>
					<command></command>
					<keyCode>45</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
				<Key isActive="yes" isFolder="no">
					<name>Down</name>
					<packageName></packageName>
					<script>mapper:move("d")</script>
					<command></command>
					<keyCode>43</keyCode>
					<keyModifier>536870912</keyModifier>
				</Key>
			</KeyGroup>
			<Key isActive="yes" isFolder="no">
				<name>New key</name>
				<packageName></packageName>
				<script>display("test")</script>
				<command></command>
				<keyCode>16777238</keyCode>
				<keyModifier>0</keyModifier>
			</Key>
		</KeyGroup>
	</KeyPackage>
	<VariablePackage>
		<HiddenVariables />
	</VariablePackage>
</MudletPackage>
