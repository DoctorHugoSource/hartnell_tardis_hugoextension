local E = {
    ID = "hartnelltardis",
    Base = "base",
    Name = "1963 Brachacki Box",
	Category = "Exteriors.Categories.PoliceBoxes",
	PhaseMaterial = "models/hartnell/phasemat.vmt",
	Model="models/torrent/hartnell/mainexterior.mdl",
	Mass=2000,
	Portal={
		pos = Vector(25.627, 0, 47.025),
		ang = Angle(0, 0, 0),
		width = 41,
		height = 90.5,
		thickness=26,
		inverted=true,
	},
	Fallback={
		pos=Vector(46, 0, 5),
		ang=Angle(0,0,0)
	},
	Sounds={
		Teleport={
			mat="torrent/hartnell/main/mat.ogg",
			demat="torrent/hartnell/main/demat.ogg",
			mat_fast = "torrent/hartnell/main/mat_fast.ogg",
			demat_fast = "torrent/hartnell/main/demat.ogg",
			fullflight="torrent/hartnell/main/fast_demat.ogg",
			demat_damaged = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged = "torrent/hartnell/main/mat_damaged.ogg",
			demat_damaged_fast = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged_fast = "torrent/hartnell/main/mat_fast_damaged.ogg",
			fullflight_damaged="torrent/hartnell/main/fast_demat_damaged.ogg",
		},
		Door={
			enabled=true,
			open="torrent/hartnell/main/door_open.ogg",
			close="torrent/hartnell/main/door_close.ogg",
		},
		FlightLoop="torrent/hartnell/main/flight_loop.wav",
		FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
		Spawn = "torrent/hartnell/main/spawn2.ogg",
		Delete = "torrent/hartnell/main/delete.ogg",
		FlightLand = "torrent/hartnell/main/land_ext.ogg",
		RepairFinish="torrent/hartnell/main/spawn.ogg",
		Hum={
			path="torrent/hartnell/main/interior_hum.wav",
			volume=0.2
		},
	},
	Light={
		enabled=true,
		pos=Vector(0,0,111),
		color=Color(248,245,190),
		brightness=2,
		dynamicpos = Vector(0, 0, 118),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
			model="models/torrent/hartnell/door.mdl",
			posoffset=Vector(-25.627,0,-47.025),
			angoffset=Angle(0,0,0)
		},
	},
}

TARDIS:AddExterior(E)

local E = {
    ID = "alteredtardis",
    Base = "base",
    Name = "1966 Alt. Brachacki Box",
	Category = "Exteriors.Categories.PoliceBoxes",
	PhaseMaterial = "models/hartnell/phasemat.vmt",
	Model="models/torrent/hartnell/altexterior.mdl",
	Mass=2000,
	Portal={
		pos = Vector(25.627, 0, 47.025),
		ang = Angle(0, 0, 0),
		width = 41,
		height = 90.5,
		thickness=26,
		inverted=true,
	},
	Fallback={
		pos=Vector(46, 0, 5),
		ang=Angle(0,0,0)
	},
	Sounds={
		Teleport={
			mat="torrent/hartnell/main/mat.ogg",
			demat="torrent/hartnell/main/demat.ogg",
			mat_fast = "torrent/hartnell/main/mat_fast.ogg",
			demat_fast = "torrent/hartnell/main/demat.ogg",
			fullflight="torrent/hartnell/main/fast_demat.ogg",
			demat_damaged = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged = "torrent/hartnell/main/mat_damaged.ogg",
			demat_damaged_fast = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged_fast = "torrent/hartnell/main/mat_fast_damaged.ogg",
			fullflight_damaged="torrent/hartnell/main/fast_demat_damaged.ogg",
		},
		Door={
			enabled=true,
			open="torrent/hartnell/main/door_open.ogg",
			close="torrent/hartnell/main/door_close.ogg",
		},
		FlightLoop="torrent/hartnell/main/flight_loop.wav",
		FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
		Spawn = "torrent/hartnell/main/spawn2.ogg",
		Delete = "torrent/hartnell/main/delete.ogg",
		FlightLand = "torrent/hartnell/main/land_ext.ogg",
		RepairFinish="torrent/hartnell/main/spawn.ogg",
		Hum={
			path="torrent/hartnell/main/interior_hum.wav",
			volume=0.2
		},
	},
	Light={
		enabled=true,
		pos=Vector(0,0,105),
		color=Color(248,245,190),
		brightness=2,
		dynamicpos = Vector(0, 0, 118),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
			model="models/torrent/hartnell/altinteriordoor.mdl",
			posoffset=Vector(-25.627,0,-47.025),
			angoffset=Angle(0,0,0)
		},
	},
}

TARDIS:AddExterior(E)

local E = {
    ID = "massacretardis",
    Base = "base",
    Name = "1965 'The Massacre' Box",
	Category = "Exteriors.Categories.PoliceBoxes",
	PhaseMaterial = "models/hartnell/phasemat.vmt",
	Model="models/torrent/hartnell/massacreexterior.mdl",
	Mass=2000,
	Portal={
		pos = Vector(25.627, 0, 47.025),
		ang = Angle(0, 0, 0),
		width = 41,
		height = 90.5,
		thickness=26,
		inverted=true,
	},
	Fallback={
		pos=Vector(46, 0, 5),
		ang=Angle(0,0,0)
	},
	Sounds={
		Teleport={
			mat="torrent/hartnell/main/mat.ogg",
			demat="torrent/hartnell/main/demat.ogg",
			mat_fast = "torrent/hartnell/main/mat_fast.ogg",
			demat_fast = "torrent/hartnell/main/demat.ogg",
			fullflight="torrent/hartnell/main/fast_demat.ogg",
			demat_damaged = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged = "torrent/hartnell/main/mat_damaged.ogg",
			demat_damaged_fast = "torrent/hartnell/main/demat_damaged.ogg",
			mat_damaged_fast = "torrent/hartnell/main/mat_fast_damaged.ogg",
			fullflight_damaged="torrent/hartnell/main/fast_demat_damaged.ogg",
		},
		Door={
			enabled=true,
			open="torrent/hartnell/main/door_open.ogg",
			close="torrent/hartnell/main/door_close.ogg",
		},
		FlightLoop="torrent/hartnell/main/flight_loop.wav",
		FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
		Spawn = "torrent/hartnell/main/spawn2.ogg",
		Delete = "torrent/hartnell/main/delete.ogg",
		FlightLand = "torrent/hartnell/main/land_ext.ogg",
		RepairFinish="torrent/hartnell/main/spawn.ogg",
		Hum={
			path="torrent/hartnell/main/interior_hum.wav",
			volume=0.2
		},
	},
	Light={
		enabled=true,
		pos=Vector(0,0,111),
		color=Color(248,245,190),
		brightness=2,
		dynamicpos = Vector(0, 0, 118),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
			model="models/torrent/hartnell/door.mdl",
			posoffset=Vector(-25.627,0,-47.025),
			angoffset=Angle(0,0,0)
		},
	},
}

TARDIS:AddExterior(E)

local E = {
    ID = "pilottardis",
    Base = "base",
    Name = "1963 Pilot Brachacki Box",
	Category = "Exteriors.Categories.PoliceBoxes",
	PhaseMaterial = "models/hartnell/phasemat.vmt",
	Model="models/torrent/hartnell/pilotexterior.mdl",
	Mass=2000,
	Portal={
		pos = Vector(25.627, 0, 47.025),
		ang = Angle(0, 0, 0),
		width = 41,
		height = 90.5,
		thickness=26,
		inverted=true,
	},
	Fallback={
		pos=Vector(46, 0, 5),
		ang=Angle(0,0,0)
	},
	Sounds={
		Teleport={
			mat="torrent/hartnell/pilot/mat.ogg",
			demat="torrent/hartnell/pilot/demat.ogg",
			mat_fast = "torrent/hartnell/pilot/mat_fast.ogg",
			demat_fast = "torrent/hartnell/pilot/demat.ogg",
			fullflight="torrent/hartnell/pilot/fast_demat.ogg",
			demat_damaged = "torrent/hartnell/pilot/demat_damaged.ogg",
			mat_damaged = "torrent/hartnell/pilot/mat_damaged.ogg",
			demat_damaged_fast = "torrent/hartnell/pilot/demat_damaged.ogg",
			mat_damaged_fast = "torrent/hartnell/pilot/mat_fast_damaged.ogg",
			fullflight_damaged="torrent/hartnell/pilot/fast_demat_damaged.ogg",
		},
		Door={
			enabled=true,
			open="torrent/hartnell/main/door_open.ogg",
			close="torrent/hartnell/main/door_close.ogg",
		},
		FlightLoop="torrent/hartnell/pilot/flight_loop.wav",
		FlightLoopDamaged = "torrent/hartnell/pilot/flight_loop_damaged.wav",
		Spawn = "torrent/hartnell/pilot/spawn2.ogg",
		Delete = "torrent/hartnell/pilot/delete.ogg",
		FlightLand = "torrent/hartnell/pilot/land_ext.ogg",
		RepairFinish="torrent/hartnell/pilot/spawn.ogg",
		Hum={
			path="torrent/hartnell/pilot/exterior_hum.wav",
			volume=0.2
		},
	},
	Light={
		enabled=true,
		pos=Vector(0,0,111),
		color=Color(248,245,190),
		brightness=2,
		dynamicpos = Vector(0, 0, 118),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
			model="models/torrent/hartnell/pilotdoor.mdl",
			posoffset=Vector(-25.627,0,-47.025),
			angoffset=Angle(0,0,0)
		},
	},
}

TARDIS:AddExterior(E)