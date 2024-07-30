-- The Hartnell TARDIS (The Massacre)

local T={
	ID="hartnelltardismassacre",
	Base="hartnelltardis",
	IsVersionOf="hartnelltardis",
	Name="1965 'The Massacre' Box",
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
