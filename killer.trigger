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
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
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
					<string>Witaj, (.*). Podaj swe haslo.* </string>
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
				<script>scripts:dead(matches[2])</script>
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
				</regexCodeList>
				<regexCodePropertyList>
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
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>butelka</name>
				<script>send("zniszcz butelke")</script>
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
					<string>Butelka oleju jest pusta.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
				</regexCodePropertyList>
			</Trigger>
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
						<string>.*Ostukujesz.*ze gdzies tutaj musza byc jakies wartosciowe mineraly.</string>
						<string>.*Wydobywajacy sie.*glebiej moga znajdowac sie bryly cenniejszego kruszcu.</string>
						<string>.*Pukasz delikatnie w sciane.* przed toba moga byc jakies wartosciowe mineraly.</string>
						<string> .*Wsuwasz dziobek.*jestes blisko wartosciowszych od gruzu mineralow.</string>
						<string>.*Przesuwasz ostrzem.*we wnetrzu skaly znajduja sie cenniejsze mineraly.</string>
						<string> .*Stukasz mloteczkiem.*gdzies w poblizu znajduje sie zyla cenniejszego kruszcu.</string>
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
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Position</name>
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
					<name>POWALA</name>
					<script>send("stand")</script>
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
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Wywala bron</name>
					<script>send("get macz;wield macz")</script>
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
						<string>Bron wypada ci z rak!</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
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
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>1</integer>
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
						<string>Podazasz.*za .*\.</string>
						<string>Wraz z druzyna.*</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
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
			</TriggerGroup>
		</TriggerGroup>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>New trigger</name>
			<script>--expandAlias("as")
send("as")</script>
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
				<string>angazuje sie w walke i wspomaga heroicznie</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>wstaje</name>
			<script>send("stand;c float;") -- </script>
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
				<string>Broli wstaje.</string>
				<string>Rymli wstaje.</string>
				<string>Lekril wstaje.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
				<integer>0</integer>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>siada</name>
			<script>send("rest;pray;rest")</script>
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
				<string>Broli siada i zaczyna odpoczywac.</string>
				<string>Rymli siada i zaczyna odpoczywac.</string>
				<string>Lekril siada i zaczyna odpoczywac.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
				<integer>0</integer>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>mirr</name>
			<script>send("c mirror")</script>
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
				<string>Wszystkie twoje lustrzane odbicia zniknely.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>blur</name>
			<script>send("c blur")</script>
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
				<string>Twoje cialo znow powraca do materialnej postaci.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>order</name>
			<script>send(matches[2])</script>
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
				<string>Broli rozkazuje ci '(.*)'.</string>
				<string>Rymli rozkazuje ci '(.*)'.</string>
				<string>Lekril rozkazuje ci '(.*)'.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
				<integer>1</integer>
				<integer>1</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>rozbraja</name>
			<script>send("get miecz;wield miecz;get szty;wield szty")</script>
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
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
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
			<mFgColor>#ffff00</mFgColor>
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
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>New trigger</name>
			<script>send("as;wardance;smite;parry;parry")</script>
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
				<string>Broli kiwa glowa.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>New trigger</name>
			<script>send("stand;fol broli")</script>
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
				<string>Broli kaze ci podazac za soba.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>New trigger</name>
			<script>send("stand")</script>
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
				<string>Tracisz kontrole nad swoim cialem i osuwasz sie polprzytomny na ziemie.</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>New trigger</name>
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
			</regexCodeList>
			<regexCodePropertyList>
				<integer>0</integer>
				<integer>0</integer>
			</regexCodePropertyList>
		</Trigger>
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
			<name>New timer</name>
			<script>send("get jab torb;eat jab; drink but")</script>
			<command></command>
			<packageName></packageName>
			<time>00:03:59.000</time>
		</Timer>
		<Timer isActive="yes" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>New timer</name>
			<script>send("who")</script>
			<command></command>
			<packageName></packageName>
			<time>00:00:55.000</time>
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
				<name>GPS</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^/gps\s?([a-z\s]+)?$</name>
					<script>mapper:gpsInit(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/gps\s?([a-z\s]+)?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^/gps_dodaj ([A-z0-9\s]+)$</name>
					<script>mapper:gpsAdd(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^/gps_dodaj ([A-z0-9\s]+)$</regex>
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
				<name>^/opcje\s?([a-z_]+)?\s?([a-z0-9]+)?$</name>
				<script>settings:change(matches)
profile:change(matches)
printer:settings()</script>
				<command></command>
				<packageName></packageName>
				<regex>^/opcje\s?([a-z_]+)?\s?([a-z0-9,]+)?$</regex>
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
					<name>^wlm$</name>
					<script>inventory:moneyPut()</script>
					<command></command>
					<packageName></packageName>
					<regex>^wlm$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>^wem$</name>
					<script>inventory:moneyGet()</script>
					<command></command>
					<packageName></packageName>
					<regex>^wem$</regex>
				</Alias>
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
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Trapper</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>^carve$</name>
					<script>send("remove pawe; wield noz;carve cialo examine")</script>
					<command></command>
					<packageName></packageName>
					<regex>^carve$</regex>
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
		<Alias isActive="yes" isFolder="no">
			<name>^as$</name>
			<script>send("as;smite")</script>
			<command></command>
			<packageName></packageName>
			<regex>^as$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>za</name>
			<script>send("kill ket; kill drzew; wardance; wardance; wardance; wardance; parry; parry; parry; parry; parry; parry;")
</script>
			<command></command>
			<packageName></packageName>
			<regex>^za$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>rest</name>
			<script>send("rest;med")</script>
			<command></command>
			<packageName></packageName>
			<regex>^rest$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>^combo$</name>
			<script>--  bash;stand;bash;stand;parry;parry;parry
send("rem miecz;turn;wield miecz;war;war;war;smite;over;over;over;stand;parry;")</script>
			<command></command>
			<packageName></packageName>
			<regex>^combo$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>^buff$</name>
			<script>--
send("c aura;c aid; c bless; c bull;c luck;c divine")</script>
			<command></command>
			<packageName></packageName>
			<regex>^buff$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>^cs$</name>
			<script>send("cast 'cure serious'")</script>
			<command></command>
			<packageName></packageName>
			<regex>^cs$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>^turn$</name>
			<script>send("remove miecz;turn;wield miecz")</script>
			<command></command>
			<packageName></packageName>
			<regex>^turn$</regex>
		</Alias>
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
		<Script isActive="yes" isFolder="no">
			<name>vitals</name>
			<packageName></packageName>
			<script>local run = true
function vitals()
  if run and tonumber(gmcp.Char.Vitals.mv) &lt;= 10 then
    send("say MALO MV - "..gmcp.Char.Vitals.mv)
    run = false 
    tempTimer(10, function() run = true end)
  end
end</script>
			<eventHandlerList>
				<string>gmcp.Char</string>
			</eventHandlerList>
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