-- The Hartnell TARDIS (The Massacre Classic Doors)

local T={
	ID="hartnelltardismassacre_cl",
	Base="hartnelltardis_cl",
	IsVersionOf="hartnelltardis",
	Name="1965 'The Massacre' Box (Classic Doors)",
}

T.Exterior = {
	Model="models/torrent/hartnell/massacreexterior.mdl",
	Parts={
		door={
			model="models/torrent/hartnell/door.mdl",
		},
	},
}

T.Interior={

}

TARDIS:AddInterior(T)
