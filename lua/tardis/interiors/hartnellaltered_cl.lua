-- The Hartnell TARDIS (Altered)

local T={
	ID="hartnelltardisaltered_cl",
	Base="hartnelltardis_cl",
	IsVersionOf="hartnelltardis",
	Name="1966 Alt. Brachacki Box",
}

T.Exterior = {
	Model="models/torrent/hartnell/altexterior.mdl",

	Light={
		pos=Vector(0,0,105),
	},
	Parts={
		door={
			model="models/torrent/hartnell/altdoor.mdl",
		},
	},
}

T.Interior={
	Parts={
		door={
			model="models/torrent/hartnell/altinteriordoor.mdl",
		},
		newhartnellaltframe=true,
		newhartnellmainframe=false,
	},
}

TARDIS:AddInterior(T)
