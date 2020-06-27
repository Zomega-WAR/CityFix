-- Released under CC0.

CityFix = {}

function CityFix.Message (text)

	local htext = CreateHyperLink (L"0", L"[CityFix] "..towstring (text), { 0, 255, 0 }, {})
	EA_ChatWindow.Print (htext)

end

function CityFix.OnInitialize ()

	LibSlash.RegisterSlashCmd ("city", CityFix.OnSlashCmd)

	EA_ChatWindow.Print (L"<icon57> CityFix 1.0 loaded. Type /city for a list of commands.")

end

function CityFix.OnSlashCmd (args)

	-- Groups / Parties
	if (string.sub (args, 1, 2) == "gr") or (string.sub (args, 1, 2) == "pa") then
		CityFix.Message ("Attempting to show scenario groups window...")
		WindowSetShowing ("ScenarioGroupWindow", true)
		return
	end

	-- Join
	if (string.sub (args, 1, 2) == "jo") then
		CityFix.Message ("Attempting to show scenario join window...")
		BroadcastEvent (SystemData.Events.SCENARIO_INSTANCE_JOIN_NOW)
		return
	end

	-- Score
	if (string.sub (args, 1, 2) == "sc") then
		CityFix.Message (L"Attempting to show scenario scoreboard window...")
		WindowSetShowing ("ScenarioSummaryWindow", true)
		return
	end

	-- List all commands
	CityFix.Message ("--------------------------------")
	CityFix.Message ("CityFix options")
	CityFix.Message ("--------------------------------")
	CityFix.Message ("")
	CityFix.Message ("/city group")
	CityFix.Message ("/city party")
	CityFix.Message ("     Shows the city/scenario groups and parties window.")
	CityFix.Message ("")
	CityFix.Message ("/city join")
	CityFix.Message ("     Tries to show the join city/scenario window.")
	CityFix.Message ("")
	CityFix.Message ("/city score")
	CityFix.Message ("     Shows the city/scenario scoreboard window.")
	CityFix.Message ("")
	CityFix.Message ("--------------------------------")

end