-- The Hartnell TARDIS (Pilot Classic Doors)

local T={
	ID="hartnelltardispilot_cl",
	Base="hartnelltardis_cl",
	IsVersionOf="hartnelltardis",
	Name="1963 Pilot Brachacki Box",
}

T.Exterior = {
	Model="models/torrent/hartnell/pilotexterior.mdl",

	Parts={
		door={
			model="models/torrent/hartnell/pilotdoor.mdl",
		},
	},
}

T.Interior={
	Parts={
		door={
			model="models/torrent/hartnell/pilotinteriordoor.mdl",
		},
		newhartnellmainframe=false,
		newhartnellpilotframe=true,
	},
}


TARDIS:AddInterior(T)
