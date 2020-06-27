<?xml version="1.0" encoding="UTF-8"?>
<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<UiMod name="CityFix" version="1.0" date="06/27/2020" >
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" />
		<Author name="Zomega" email="" />
		<Description text="Chat commands to fix common UI issues in city sieges. Type /city for details." />
		<Dependencies>
			<Dependency name="EA_ChatWindow"/>
			<Dependency name="LibSlash" />
		</Dependencies>
		<Files>
			<File name="CityFix.lua" />
		</Files>
		<OnInitialize>
			<CallFunction name="CityFix.OnInitialize" />
		</OnInitialize>
	</UiMod>
</ModuleFile>
