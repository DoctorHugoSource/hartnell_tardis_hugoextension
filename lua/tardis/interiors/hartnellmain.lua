-- The Hartnell TARDIS

local T={}
T.Base="base"
T.Name="The Hartnell TARDIS"
T.ID="hartnelltardis"

T.Versions = {
	randomize = false,
	allow_custom = true,
	randomize_custom = true,

	main = {
		classic_doors_id = "hartnelltardis_cl",
		double_doors_id = "hartnelltardis",
	},
	other={
		{
			name="1963 Pilot Brachacki Box",
			double_doors_id = "hartnelltardispilot",
			classic_doors_id = "hartnelltardispilot_cl",
		},
		{
			name="1965 'The Massacre' Box",
			double_doors_id = "hartnelltardismassacre",
			classic_doors_id = "hartnelltardismassacre_cl",
		},
		{
			name="1966 Alt. Brachacki Box",
			double_doors_id = "hartnelltardisaltered",
			classic_doors_id = "hartnelltardisaltered_cl",
		},
	},
}

T.Exterior = {
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
		color=Color(255,223,39),
		brightness=2,
		dynamicpos = Vector(0, 0, 111),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
			model="models/torrent/hartnell/door.mdl",
			posoffset=Vector(-25.627,0,-47.025),
			angoffset=Angle(0,0,0)
		},

		stephelper = {pos = Vector(14,0,-4.2), ang = Angle(0, 0, 0), },  -- first step/lower step
		stephelper2 = {pos = Vector(11,0,-1), ang = Angle(0, 0, 0), },  -- second step/upper step

		vortex={
			model="models/torrent/vortex/hartnellvortex.mdl",
			pos=Vector(0,0,50),
			ang=Angle(0,0,0),
			scale=5  -- should be 5 for vortex travel movement's scale to feel right
		},
	},
	Teleport = {
		SequenceSpeed = { Mat = 0.2, Demat = 0.3 },
		SequenceSpeedWarning = { Mat = 0.2, Demat = 0.3 },
		SequenceSpeedFast = 0.3,
		SequenceSpeedWarnFast = 0.3,
		MatSequence = {
			255
		},
		PrematDelay = 6.25,
		DematSequence = {
			0
		},
		DematSequenceDelays={
			[1] = 4.5
		},
	},
}

T.Interior={
	Model="models/torrent/hartnell/interior.mdl",
	Portal={
		pos=Vector(311, 179.7,54.4),
		ang=Angle(0,-150,0),
		width=50,
		height=150,
	},
	Fallback={
		pos=Vector(287.939, 166.403, 12),
		ang=Angle(0,0,0),
	},

	Travelcontrols = true,

	TransducerCell = {
	position = Vector(-87.32,-218.97,22.54)		-- defines the position the transducer cell spawns in, relative to the main interior entity
	},											-- protip: use the addon 'no more guessing' to easily get a vector relative to the interior entity

	WindowTint = {
		Vortex = Color(149, 213, 255):ToVector()*3,	    -- color for the window tint during vortex travel
		TintMult = 6,										 -- multiplier for window tint brightness
		ExtTint = Color(82, 120, 141):ToVector(),			-- exterior window tint color
		Extambient = Color(160, 220, 255),					-- exterior ambient lighting color
		},

		PhaseData = {
		DefaultPhongExponent = 3,
		DefaultPhongBoost = 2,
		PhaseMult = 2,
		PhongBoostMult = 2,
		},

		TintProxies_Int = {
		[1] = "models/hugoextension/windows/torrentnewhartnell/63window.vmt",
		[4] = "models/hugoextension/windows/torrentnewhartnell/63window.vmt",
		[5] = "models/hugoextension/windows/torrentnewhartnell/63window.vmt",
		},
		TintProxies_Ext = {
		[1] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		[5] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		[6] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		},
		TintProxies_ExtDoor = {
		[1] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		[3] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		[4] = "models/hugoextension/windows/torrentnewhartnell/63window_ext.vmt",
		},
		TintProxies_ExtDoorInt = {
		[2] = "",
		},
	Seats={
		{
			pos=Vector(114.519, -99.232, 30),
			ang=Angle(0, 30, 0),
		},
		{
			pos=Vector(197.741, 212.702, 23),
			ang=Angle(0, 120, 0),
		},
		{
			pos=Vector(-190.965, 348.544, 23),
			ang=Angle(0, -60, 0),
		},
		{
			pos=Vector(-202.797, 369.821, 23),
			ang=Angle(0, -60, 0),
		},
		{
			pos=Vector(-215.077, 390.099, 23),
			ang=Angle(0, -60, 0),
		},
		{
			pos=Vector(-272.95, 388.445, 30.635),
			ang=Angle(0, -150, 60),
		},
		{
			pos=Vector(-334.958, 356.331, 30.148),
			ang=Angle(0, -150, 60),
		},
		{
			pos=Vector(-351.888, 116.381, 30.894),
			ang=Angle(0, -60, 60),
		},
	},
	Scanners={
		{
			part="newhartnellrearlights",
			mat="models/hartnell/newscanner",
			width=512,
			height=512,
			ang=Angle(0,0,0),
			fov=90,
		},
	},
	Light={
		color=Color(246, 232, 177),
		pos = Vector(127.031, 82.171, 155.302),
		brightness=0.25,

		warncolor=Color(159,0,0),
		warn_pos = Vector(0, 0, 125),
		warn_brightness = 0.25,
	},
	Lights={
		sideroomlight1={
			color=Color(252,220,144),
			pos=Vector(-375.128, 220.521, 130.929),
			brightness=0.2,

			warncolor=Color(159,0,0),
			warn_pos = Vector(-375.128, 220.521, 130.929),
			warn_brightness = 0.25,
		},
		sideroomlight2={
			color=Color(252,220,144),
			pos=Vector(-157.938, 353.168, 127.206),
			brightness=0.2,

			warncolor=Color(159,0,0),
			warn_pos = Vector(-157.938, 353.168, 127.206),
			warn_brightness = 0.25,
		},
	},
	LightOverride = {
		basebrightness=0.005,
		lowpowerbrightness=0.001,
		nopowerbrightness=0,
		viewmodeladd = 0.13
	},
	Lamps={
		entrance1={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.2,
			pos = Vector(266.205078125, 152.1494140625, 6.291015625),
			ang = Angle(-31.44407081604, 32.00899887085, -161.54208374023),

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.2,
				pos = Vector(266.205078125, 152.1494140625, 6.291015625),
				ang = Angle(-31.44407081604, 32.00899887085, -161.54208374023),
			},
		},
		entrance2={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(259.052734375, 148.9189453125, 113.779296875),
			ang = Angle(32.135116577148, 29.985542297363, 69.578384399414),

			lowpowerdisable =  true,

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(259.052734375, 148.9189453125, 113.779296875),
				ang = Angle(32.135116577148, 29.985542297363, 69.578384399414),
			},
		},
		sidelight={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 90,
			distance = 150,
			brightness = 0.2,
			pos = Vector(15.69677734375, 258.64453125, 128.2705078125),
			ang = Angle(82.186065673828, -73.416229248047, -110.98947143555),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 90,
				distance = 150,
				brightness = 0.2,
				pos = Vector(15.69677734375, 258.64453125, 128.2705078125),
				ang = Angle(82.186065673828, -73.416229248047, -110.98947143555),
			},
		},
		hexagon1={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(207.17431640625, 124.6044921875, 130.2802734375),
			ang = Angle(27.520009994507, 28.762979507446, 86.126083374023),

			lowpowerdisable =  true,

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(207.17431640625, 124.6044921875, 130.2802734375),
				ang = Angle(27.520009994507, 28.762979507446, 86.126083374023),
			},
			off_warn = {
				color = Color(159,0,0)
			},
			nopower = true,
		},
		hexagon2={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(135.197265625, 191.5361328125, 144.7177734375),
			ang = Angle(41.439075469971, 94.819511413574, 84.236633300781),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(135.197265625, 191.5361328125, 144.7177734375),
				ang = Angle(41.439075469971, 94.819511413574, 84.236633300781),

			},
		},
		hexagon3={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(213.5185546875, 35.314544677734, 129.86328125),
			ang = Angle(27.520000457764, -34.515727996826, 86.12606048584),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(213.5185546875, 35.314544677734, 129.86328125),
				ang = Angle(27.520000457764, -34.515727996826, 86.12606048584),
			},
		},
		hexagon4={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(41.6572265625, 129.95703125, 135.2587890625),
			ang = Angle(39.041980743408, 151.41607666016, 90.003814697266),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(41.6572265625, 129.95703125, 135.2587890625),
				ang = Angle(39.041980743408, 151.41607666016, 90.003814697266),
			},
		},
		hexagon5={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(136.728515625, -18.6513671875, 131.771484375),
			ang = Angle(27.520011901855, -90.966018676758, 86.126052856445),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(136.728515625, -18.6513671875, 131.771484375),
				ang = Angle(27.520011901855, -90.966018676758, 86.126052856445),

			},
		},
		hexagon6={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.2,
			pos = Vector(53.40576171875, 29.60205078125, 136.7861328125),
			ang = Angle(32.906799316406, -147.91342163086, 90.337226867676),

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.2,
				pos = Vector(53.40576171875, 29.60205078125, 136.7861328125),
				ang = Angle(32.906799316406, -147.91342163086, 90.337226867676),
			},
			off_warn = {
				color = Color(159,0,0)
			},
			nopower = true,
		},
		rearroundel={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 125,
			distance = 150,
			brightness = 0.1,
			pos = Vector(-225.01904296875, 75.0361328125, 130.13671875),
			ang = Angle(29.885059356689, 120.48216247559, 45.780364990234),

			lowpowerdisable =  true,

			warn = {
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 125,
				distance = 150,
				brightness = 0.1,
				pos = Vector(-225.01904296875, 75.0361328125, 130.13671875),
				ang = Angle(29.885059356689, 120.48216247559, 45.780364990234),
			},
		},
		faultlocator1={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(-239.32568359375, 9.2568359375, 131.4541015625),
			ang = Angle(33.608173370361, -150.79669189453, 89.149597167969),

			lowpowerdisable =  true,

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(-239.32568359375, 9.2568359375, 131.4541015625),
				ang = Angle(33.608173370361, -150.79669189453, 89.149597167969),
			},
		},
		faultlocator2={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(-178.3056640625, -100.3974609375, 130.853515625),
			ang = Angle(39.306648254395, -145.30136108398, 63.049987792969),

			lowpowerdisable =  true,

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(-178.3056640625, -100.3974609375, 130.853515625),
				ang = Angle(39.306648254395, -145.30136108398, 63.049987792969),
			},
		},
		faultlocator3={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(-106.00708007813, -211.8466796875, 127.8056640625),
			ang = Angle(33.608173370361, -152.24732971191, 89.149597167969),

			lowpowerdisable =  true,

			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(-106.00708007813, -211.8466796875, 127.8056640625),
				ang = Angle(33.608173370361, -152.24732971191, 89.149597167969),
			},
		},
		paperroundelwall1={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(-50.4384765625, -233.072265625, 134.1171875),
			ang = Angle(33.815696716309, -59.842594146729, 123.58111572266),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(-50.4384765625, -233.072265625, 134.1171875),
				ang = Angle(33.815696716309, -59.842594146729, 123.58111572266),
			},
		},
		paperroundelwall2={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(161.0498046875, -96.150390625, 132.083984375),
			ang = Angle(32.48413848877, -61.990169525146, 118.07583618164),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(161.0498046875, -96.150390625, 132.083984375),
				ang = Angle(32.48413848877, -61.990169525146, 118.07583618164),
			},
		},
		paperroundelwall3={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.1,
			pos = Vector(50.408203125, -155.4912109375, 130.201171875),
			ang = Angle(33.965393066406, -67.317169189453, 113.14671325684),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.1,
				pos = Vector(50.408203125, -155.4912109375, 130.201171875),
				ang = Angle(33.965393066406, -67.317169189453, 113.14671325684),
			},
		},
		powerhexagon={
			color = Color(255, 255, 255),
			texture = "models/hartnell/powerhexagonlight",
			fov = 125,
			distance = 100,
			brightness = 0.5,
			pos = Vector(85.57568359375, 156.2490234375, 60.1572265625),
			ang = Angle(88.686332702637, 176.03382873535, 55.481170654297),
			warn={
				color = Color(159,0,0),
				texture = "models/hartnell/powerhexagonlight",
				fov = 125,
				distance = 100,
				brightness = 0.5,
				pos = Vector(85.57568359375, 156.2490234375, 60.1572265625),
				ang = Angle(88.686332702637, 176.03382873535, 55.481170654297),
			},
		},
		powerhexagon2={
			color = Color(255, 255, 255),
			texture = "effects/flashlight001",
			fov = 70,
			distance = 100,
			brightness = 0.5,
			pos = Vector(114.501953125, 106.1416015625, 90.595703125),
			ang = Angle(-62.753143310547, -60.417266845703, 29.404159545898),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 70,
				distance = 100,
				brightness = 0.5,
				pos = Vector(114.501953125, 106.1416015625, 90.595703125),
				ang = Angle(-62.753143310547, -60.417266845703, 29.404159545898),
			},
		},
		sidedoor1={
			color = Color(252,220,144),
			texture = "effects/flashlight001",
			fov = 100,
			distance = 150,
			brightness = 0.05,
			pos = Vector(-59.771484375, 168.99751281738, 111.7314453125),
			ang = Angle(38.778732299805, 121.1111831665, -18.230834960938),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight001",
				fov = 100,
				distance = 150,
				brightness = 0.05,
				pos = Vector(-59.771484375, 168.99751281738, 111.7314453125),
				ang = Angle(38.778732299805, 121.1111831665, -18.230834960938),
			},
		},
		rearlight1={
			color = Color(255, 255, 255),
			texture = "models/hartnell/rearlightproject",
			fov = 100,
			distance = 50,
			brightness = 0.1,
			pos = Vector(-125.63638305664, -72.28466796875, 40),
			ang = Angle(87.018135070801, -136.15940856934, -31.432189941406),
			warn={
				color = Color(159,0,0),
				texture = "models/hartnell/rearlightproject",
				fov = 100,
				distance = 50,
				brightness = 0.1,
				pos = Vector(-125.63638305664, -72.28466796875, 40),
				ang = Angle(87.018135070801, -136.15940856934, -31.432189941406),
			},
		},
		rearlight2={
			color = Color(255, 255, 255),
			texture = "models/hartnell/rearlightproject",
			fov = 100,
			distance = 50,
			brightness = 0.1,
			pos = Vector(-55.582275390625, -95.47900390625, 40),
			ang = Angle(88.254821777344, -114.15991973877, -14.812561035156),
			warn={
				color = Color(159,0,0),
				texture = "models/hartnell/rearlightproject",
				fov = 100,
				distance = 50,
				brightness = 0.1,
				pos = Vector(-55.582275390625, -95.47900390625, 40),
				ang = Angle(88.254821777344, -114.15991973877, -14.812561035156),
			},
		},
		rearlight3={
			color = Color(255, 255, 255),
			texture = "models/hartnell/rearlightproject",
			fov = 100,
			distance = 50,
			brightness = 0.1,
			pos = Vector(-110.7607421875, -5.87451171875, 40),
			ang = Angle(86.438232421875, 99.888969421387, -146.39723205566),
			warn={
				color = Color(159,0,0),
				texture = "models/hartnell/rearlightproject",
				fov = 100,
				distance = 50,
				brightness = 0.1,
				pos = Vector(-110.7607421875, -5.87451171875, 40),
				ang = Angle(86.438232421875, 99.888969421387, -146.39723205566),
			},
		},
		rotor={
			color = Color(239,224,190,255),
			texture = "effects/flashlight001",
			fov = 60,
			distance = 70,
			brightness = 1,
			pos = Vector(0, 0, 13),
			ang = Angle(-90, 60, 0),
			warn={
				color = Color(239,224,190,255),
				texture = "effects/flashlight001",
				fov = 60,
				distance = 70,
				brightness = 1,
				pos = Vector(0, 0, 13),
				ang = Angle(-90, 60, 0),
			},
		},
	},
	Sounds={
		Damage = {
            Crash = "torrent/hartnell/main/damage_collision.ogg",
            BigCrash = "torrent/hartnell/main/damage_bigcollision.ogg",
            Explosion = "torrent/hartnell/main/damage_explode.ogg",
            Death = "torrent/hartnell/main/damage_death.ogg",
            Artron = "torrent/hartnell/main/force_artron.ogg",
        },
		Teleport={
			mat="torrent/hartnell/main/mat_int.ogg",
			demat="torrent/hartnell/main/demat_int.ogg",
			fullflight="torrent/hartnell/main/fast_demat_int.ogg",
			demat_damaged = "torrent/hartnell/main/demat_int_damaged.ogg",
			mat_damaged = "torrent/hartnell/main/mat_int_damaged.ogg",
			fullflight_damaged="torrent/hartnell/main/fast_demat_int_damaged.ogg",
			interrupt ="torrent/hartnell/main/spawn.ogg",
		},
		Door={
			enabled=true,
			open="torrent/hartnell/main/door_open.ogg",
			close="torrent/hartnell/main/door_close.ogg",
		},
		Power = {
			On = "torrent/monk/power_on.ogg",
			Off = "torrent/monk/power_off.ogg",
		},
	Cloister = "torrent/monk/cloister.wav",
	FlightLoop="torrent/hartnell/main/flight_loopint.wav",
	FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
	FlightLand = "torrent/hartnell/main/land_int.ogg",
	},
	IdleSound={
		{
			path="torrent/hartnell/main/interior_hum.wav",
			volume=1.5,
		},
	},
	Parts={
		door={
			model="models/torrent/hartnell/interiordoor.mdl",
			posoffset=Vector(25.627,0,-47),
			angoffset=Angle(0,180,0)
		},
		newhartnellconsole={ang=Angle(0,120,0)},
		newhartnellblack=true,
		newhartnellmetal=true,
		newhartnellswitchbase={pos = Vector(0.38,0.7,0)},
		newhartnellthirdperson=true,
		newhartnelldestselect={pos = Vector(0, 0, 0.1)},
		newhartnellbiglever1=true,
		newhartnellbiglever2={ang=Angle(0,-60,0),pos = Vector(-0.65,0.65,0)},
		newhartnellbiglever3={ang=Angle(0,-60,0),pos = Vector(-6.25,10.25,0)},
		newhartnellswitch1={pos = Vector(-0.1, -23, 48.25)},
		newhartnellswitch2={pos = Vector(-1.6, -23, 48.25)},
		newhartnellswitch4={pos = Vector(-3.1, -23, 48.25)},
		newhartnellswitch3={pos = Vector(1.425, -23, 48.25)},
		newhartnellswitch5={pos = Vector(2.9, -23, 48.25)},
		newhartnellswitch6={ang=Angle(0,180,0),pos = Vector(3.15, 22.57, 48.4)},
		newhartnellswitch7={ang=Angle(0,180,0),pos = Vector(3.15, 27.57, 46.85)},
		newhartnellswitch8={ang=Angle(0,180,0),pos = Vector(3.15, 32.57, 45.3)},
		newhartnellswitch9={ang=Angle(0,180,0),pos = Vector(1.15, 32.57, 45.3)},
		newhartnellswitch10={ang=Angle(0,-120,0),pos = Vector(-16.425, 20.489, 47.663)},
		newhartnellswitch11={ang=Angle(0,-60,0),pos = Vector(-23.646, -17.834, 46.3)},
		newhartnellswitch12={ang=Angle(0,-60,0),pos = Vector(-22.987, -19.15, 46.3)},
		newhartnellswitch13={ang=Angle(0,-60,0),pos = Vector(-22.234, -20.489, 46.3)},
		newhartnellswitch14={ang=Angle(0,-60,0),pos = Vector(-21.514, -21.779, 46.3)},
		newhartnellswitch15={ang=Angle(0,-60,0),pos = Vector(-20.734, -23.069, 46.3)},
		newhartnellswitch16={ang=Angle(0,-60,0),pos = Vector(-20.024, -24.399, 46.3)},
		newhartnelltinydial1={pos = Vector(10.82, 26.5, 46.583)},
		newhartnelltinydial2={scale = 0.8,ang=Angle(0,-60,0),pos = Vector(26.816, 22.374, 44.165)},
		newhartnelltinydial3={scale = 0.8,ang=Angle(0,-60,0),pos = Vector(28.438, 19.626, 44.165)},
		newhartnelltinydial4={scale = 0.8,ang=Angle(0,-120,0),pos = Vector(32.219, -9.406, 44.697)},
		newhartnelltinydial5={scale = 0.8,ang=Angle(0,-120,0),pos = Vector(30.041, -13.32, 44.679)},
		newhartnellcoordinates=true,
		newhartnellvirtualconsole=true,
		newhartnellvortexflight={pos = Vector(0,0.6,0)},
		newhartnellmetallever1={pos = Vector(-3, 22.295, 48.5)},
		newhartnellmetallever2={pos = Vector(0, 22.295, 48.5)},
		newhartnellmetallever3={ang=Angle(16.75,90,20), pos = Vector(13.487, 30.384, 46)},
		newhartnellmetallever4={ang=Angle(-12.3,-45,0), pos = Vector(14.012, 33.191, 45)},
		newhartnellmetallever5={ang=Angle(0,180,0), pos = Vector(-7.877, -30.596, 46)},
		newhartnellmetallever6={ang=Angle(0,180,0), pos = Vector(7.877, -30.596, 46)},
		newhartnellmetallever7={ang=Angle(0,60,0),pos = Vector(-22.817, 29.957, 45)},
		newhartnellmetallever8={ang=Angle(0,60,0),pos = Vector(-21.221, 25.493, 45.7)},
		newhartnellmetallever9={ang=Angle(0,60,0),pos = Vector(-20.177, 11.21, 48)},
		newhartnelltinydial6={scale = 0.5,ang=Angle(0,-120,0),pos = Vector(32.557, -8.004, 45.004)},
		newhartnelltinydial7={scale = 0.5,ang=Angle(0,-120,0),pos = Vector(33.701, -8.683, 44.578)},
		newhartnelltinydial8={scale = 0.5,ang=Angle(0,-120,0),pos = Vector(29.084, -14.08, 45)},
		newhartnelltinydial9={scale = 0.5,ang=Angle(0,-120,0),pos = Vector(30.195, -14.74, 44.641)},
		newhartnellhads={pos = Vector(0,1,0.25)},
		newhartnellminiswitch1={pos = Vector(-6.2, 33.708, 44.8)},
		newhartnellminiswitch2={ang=Angle(0,-60,0),pos = Vector(29.868, 17.095, 44.45)},
		newhartnellminiswitch3={ang=Angle(0,-60,0),pos = Vector(31.26, 14.783, 44.45)},
		newhartnellminiswitch4={ang=Angle(0,-60,0),pos = Vector(32.938, 11.848, 44.45)},
		newhartnellminiswitch5={ang=Angle(0,-60,0),pos = Vector(33.65, 10.659, 44.45)},
		newhartnellminiswitch6={ang=Angle(0,-120,0),pos = Vector(31.493, -10.739, 45)},
		newhartnellminiswitch7={ang=Angle(0,-120,0),pos = Vector(30.654, -12.4, 45)},
		newhartnellminiswitch8={ang=Angle(0,60,0),pos = Vector(-26.2, 20.6, 44.9)},
		newhartnellminiswitch9={ang=Angle(0,60,0),pos = Vector(-27.168, 18.8, 44.9)},
		newhartnellminiswitch10={ang=Angle(0,60,0),pos = Vector(-28.168, 17, 44.9)},
		newhartnellminiswitch11={ang=Angle(0,60,0),pos = Vector(-27.716, 21.52, 44.45)},
		newhartnellminiswitch12={ang=Angle(0,60,0),pos = Vector(-28.716, 19.7, 44.45)},
		newhartnellminiswitch13={ang=Angle(0,60,0),pos = Vector(-29.716, 17.9, 44.45)},
		newhartnellfastreturn=true,
		newhartnellboggle=true,
		newhartnellvents2=true,
		newhartnellmainframe=true,
		newhartnelllights={ang=Angle(0,-120,0)},
		newhartnellceiling=true,
		newhartnellpaperroundels={ang=Angle(0,-120,0)},
		newhartnellpowerhexagon={ang=Angle(0,-120,0)},
		newhartnellfaultlocator=true,
		newhartnellbigdoormain={ang=Angle(0,-120,0)},
		newhartnellsidedoor={ang=Angle(0,-120,0)},
		newhartnelllightboxes=true,
		newhartnellrearlights=true,
		newhartnellscreenwalls={ang=Angle(0,-120,0)},
		newhartnellsideroomcontrols={ang=Angle(0,-120,0)},
		newhartnellgokudoors={ang=Angle(0,-120,0)},
		newhartnellfurniture1=true,
		newhartnellfurniture2=true,
		newhartnellfurniture3=true,
		newhartnellfurniture4=true,
		newhartnellfurniture5=true,
		newhartnellfurniture6=true,
		newhartnellcloset_door=true,
		newhartnellscanner=true,
		newhartnellconsole_hatch={ang=Angle(0,120,0)},
		newhartnellunderswitch={ang=Angle(0,120,0)},
		newhartnellblackbox=true,
		newhartnellrotor={ang=Angle(0,12,0)},
		newhartnelltimespacevisualizer=true,


		-- hugoextension parts
		tardisfireexting            	= {pos = Vector(-128.26, 197.82, 4), ang = Angle(0, 30, 0), },
		chronoplasmicshell            	= {matrixScale = Vector(20,20,20),},
	},
	Controls={
		newhartnellthirdperson="thirdperson",
		newhartnelldestselect="destination",
		newhartnellbiglever1="power",
		newhartnellbiglever2="handbrake",
		newhartnellbiglever3="teleport_double",
		newhartnellswitch4="shields",
		newhartnellswitch5="redecorate",
		newhartnellswitch6="teleport_double",
		newhartnellswitch7="float",
		newhartnellswitch8="flight",
		newhartnellswitch9="toggle_console",
		newhartnellswitch10="cloak",
		newhartnellswitch16="toggle_scanners",
		newhartnelltinydial1="doorlock",
		newhartnelltinydial5="spin_switch",
		newhartnellcoordinates="coordinates",
		newhartnellvirtualconsole="virtualconsole",
		newhartnellvortexflight="vortex_flight",
		newhartnellmetallever6="repair",
		newhartnellmetallever7="physlock",
		newhartnelltinydial6="isomorphic",
		newhartnellminiswitch1="door",
		newhartnellminiswitch4="toggle_scanners",
		newhartnellfastreturn="fastreturn",
		newhartnellboggle="engine_release",
		newhartnellhads="hads",
		newhartnellminiswitch9="repair",
		newhartnellunderswitch="teleport_double",


		-- hugoextension controls
		newhartnelltinydial3            = "vortexswap",
        newhartnelltinydial2            = "windowopacity",
        newhartnellmetallever9          = "maptravel",
        newhartnellmetallever5          = "returntobar",
        newhartnellmetallever8          = "randomjazzmap",
        newhartnellmetallever2          = "manualmapdestination",
        newhartnelltinydial8            = "hadssensitivity",
		newhartnelltinydial9            = "hadssensitivity",
        newhartnellmetallever1          = "mathop",
        newhartnellmetallever4          = "mathop_shortcut",
        newhartnellswitch14             = "vortexdrift",
        newhartnellswitch11             = "multiloopstabiliser",
		newhartnellmetallever3		    = "fastvortexremat",
		newhartnellswitch12		    	= "timeswap",
		newhartnellminiswitch5			= "timetravel_increment",
	},

	PartTips={
		newhartnellthirdperson={pos = Vector(-10.349, -34.149, 44.081),left = true,text="Manual Flight"},
		newhartnellfurniture={pos = Vector(10.195, -33.932, 44.586),right = true,text="Manual Flight"},
		newhartnellfaultlocator={pos = Vector(21.013, -27.157, 45.107),left = true,text="Manual Flight"},
		newhartnellmetal={pos = Vector(-7.446, 23.293, 47.71),right = true,text="Manual Flight"},
		newhartnellblack={pos = Vector(-32.851, 10.656, 44.587),right = true,text="Manual Flight"},
		newhartnelldestselect={pos = Vector(21.291, 12.09, 46.752),up = true,text="Manual Destination Select"},
		newhartnellbiglever1={pos = Vector(0.025, -30.673, 46.1),up = true,text="Power"},
		newhartnellbiglever2={pos = Vector(-28.204, -14.8, 46.247),up = true,text="Handbrake"},
		newhartnellbiglever3={pos = Vector(-32.411, -4.669, 46.316),up = true,text="Throttle"},
		newhartnellswitch4={pos = Vector(-3.1, -23, 48.25),left = true,text="Shields"},
		newhartnellswitch5={pos = Vector(2.9, -23, 48.25),right = true,text="Redecorate"},
		newhartnellswitch6={pos = Vector(3.15, 22.57, 48.4),left = true,text="Throttle"},
		newhartnellswitch7={pos = Vector(3.15, 27.57, 46.85),right = true,text="Anti-Gravs"},
		newhartnellswitch8={pos = Vector(3.15, 32.57, 45.3),left = true,text="Flight"},
		newhartnellswitch9={pos = Vector(1.15, 32.57, 45.3),right = true,text="Disable Console"},
		newhartnellswitch10={pos = Vector(-16.425, 20.489, 47.663),left = true,text="Cloak"},
		newhartnellswitch16={pos = Vector(-20.024, -24.399, 46.3),right = true,text="Scanner"},
		newhartnelltinydial1={pos = Vector(10.82, 26.5, 46.583),left = true,text="Door Lock"},
		newhartnelltinydial5={pos = Vector(30.041, -13.32, 44.679),left = true,text="Spin"},
		newhartnellcoordinates={pos = Vector(-27.028, -22.595, 44.297),right = true,text="Directional Unit Input"},
		newhartnellvirtualconsole={pos = Vector(-31.58, 4.187, 45.337),right = true,text="Virtual Console"},
		newhartnellvortexflight={pos = Vector(-30.644, -10.067, 45.418),down = true,text="Vortex Flight"},
		newhartnellmetallever6={pos = Vector(7.877, -30.596, 46),right = true,text="Self-Repair"},
		newhartnellmetallever7={pos = Vector(-22.817, 29.957, 45),left = true,text="Physlock"},
		newhartnelltinydial6={pos = Vector(32.557, -8.004, 45.004),right = true,text="Isomorphic Security"},
		newhartnellminiswitch1={pos = Vector(-6.2, 33.708, 44.8),right = true,text="Door Switch"},
		newhartnellminiswitch4={pos = Vector(32.938, 11.848, 44.45),left = true,text="Scanner"},
		newhartnellfastreturn={pos = Vector(-13.606, -16.537, 49.098),right = true,text="Fast-Return"},
		newhartnellboggle={pos = Vector(21.496, 25.465, 44.963),right = true,text="Engine Release"},
		newhartnelltinydial10={pos = Vector(12.576, -14.329, 49),left = true,text="H.A.D.S."},
		newhartnellminiswitch9={pos = Vector(-27.168, 18.8, 44.9),right = true,text="Self-Repair"},


		-- hugoextension tips
		tardisfireexting       			= {pos = Vector(-128.26, 197.82, 4 + 26),	text = "Fire Extinguisher", right = true, down = false},
        newhartnelltinydial2            = {pos = Vector(26.93,22.36,44.49),    		text = "Window Opacity", right = true,     down = false, },
        newhartnellmetallever9          = {pos = Vector(-19.85,11,48.41),        	right = true,     down = false, },
        newhartnellmetallever5          = {pos = Vector(-7.86,-30.57,46.4),    		right = true,     down = false, },
        newhartnellmetallever8          = {pos = Vector(-20.98,25.27,46.08),        right = true,     down = false, },
        newhartnellmetallever2          = {pos = Vector(0.05,22.5,48.79),           right = true,     down = false, },
        newhartnelltinydial8            = {pos = Vector(29.11,-14.24,45.29),        right = true,     down = false, },
		newhartnelltinydial9            = {pos = Vector(30.2,-14.78,44.92),         right = true,     down = false, },
        newhartnellmetallever1          = {pos = Vector(-2.96,22.17,48.92),         right = true,     down = false, },
        newhartnellmetallever4          = {pos = Vector(13.76,33.09,45.42),         right = true,     down = false, },
        newhartnellswitch14             = {pos = Vector(-21.44,-21.67,47.2),        right = true,     down = false, },
        newhartnellswitch11             = {pos = Vector(-23.66,-17.8,47.11),        right = false,    down = false, },
		newhartnelltinydial3            = {pos = Vector(28.61,19.63,44.59),    		right = true,     down = false, },
		newhartnellmetallever3			= {pos = Vector(14.24,30.41,45.91),    		right = true,     down = false, },
		newhartnellswitch1				= {pos = Vector(0.02,-22.76,48.47),  		text = "Exterior Appearance Reconfiguration", right = true,     down = false, },
		newhartnellswitch12				= {pos = Vector(-22.04,-18.62,47.19),    	right = true,     down = false, },
		newhartnellminiswitch5			= {pos = Vector(33.37,10.49,44.52),    		right = true,     down = false, },



	},
}

T.Interior.TextureSets = {

	["normal"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/instrument_light", },

		{ "newhartnellswitch1", 1, "monk/smallyellow", },
		{ "newhartnellswitch3", 1, "monk/smallyellow", },
		{ "newhartnellswitch7", 1, "monk/smallyellow", },
		{ "newhartnellswitch9", 1, "monk/smallyellow", },
		{ "newhartnellswitch13", 1, "monk/smallyellow", },
		{ "newhartnellswitch14", 1, "monk/smallyellow", },
		{ "newhartnelltinydial10", 0, "monk/console_white", },
		{ "newhartnelldestselect", 1, "monk/destselect", },

		{ "newhartnellfaultlocator", 5, "monk/console_lights", },
		{ "newhartnellmetal", 2, "monk/console_lights", },
		{ "newhartnellconsole", 4, "monk/console_lights", },
		{ "self", 4, "monk/roundel_indented", },
		{ "newhartnell3droundels", 1, "monk/roundel_indented", },
		{ "self", 3, "hartnell/doorlight", },
		{ "newhartnellmainframe", 4, "monk/roundel_indented", },
		{ "newhartnellaltframe", 5, "monk/roundel_indented", },
		{ "newhartnellpilotframe", 4, "monk/roundel_indented", },
		{ "newhartnelllights", 1, "hartnell/ceilinglight", },
		{ "newhartnelllights2", 1, "hartnell/ceilinglight", },
		{ "newhartnellpowerhexagon", 2, "monk/powerhexagon", },
		{ "newhartnellpowerhexagon2", 2, "monk/powerhexagon", },

		{ "newhartnellbigdoormain", 0, "monk/roundel_indented", },
		{ "newhartnellbigdoordeadline", 0, "monk/roundel_indented", },
		{ "newhartnellbigdooreod", 0, "monk/roundel_indented", },
		{ "newhartnellbigdoorpog", 0, "monk/roundel_indented", },
		{ "newhartnellbigdoorpilot", 0, "monk/roundel_indented", },
		{ "newhartnellbigdoortuat", 0, "monk/roundel_indented", },
		{ "intdoor", 0, "monk/roundel_indented", },

		{ "newhartnellrearlights", 1, "monk/powerhexagon", },
		{ "newhartnellrearlights", 4, "hartnell/instrument_light", },
		{ "newhartnelllightboxes", 1, "hartnell/ceilinglight", },
		{ "newhartnelllightboxes", 4, "hartnell/instrument_light", },
		{ "newhartnellfurniture6", 8, "monk/console_lights", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},


	["lowpower"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/off/instrument_light_off", },

		{ "newhartnelldestselect", 1, "monk/destselect", },

		{ "newhartnellfaultlocator", 5, "monk/console_lights", },
		{ "newhartnellmetal", 2, "monk/console_lights", },
		{ "newhartnellconsole", 4, "monk/console_lights", },
		{ "self", 4, "monk/off/roundel_indented_off", },
		{ "newhartnell3droundels", 1, "monk/off/roundel_indented_off", },
		{ "self", 3, "hartnell/doorlight", },
		{ "newhartnellmainframe", 4, "monk/roundel_indented", },
		{ "newhartnellaltframe", 5, "monk/roundel_indented", },
		{ "newhartnellpilotframe", 4, "monk/roundel_indented", },
		{ "newhartnelllights", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnelllights2", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnellpowerhexagon", 2, "monk/powerhexagon", },
		{ "newhartnellpowerhexagon2", 2, "monk/powerhexagon", },

		{ "newhartnellbigdoormain", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoordeadline", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdooreod", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoorpog", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoorpilot", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoortuat", 0, "monk/off/roundel_indented_off", },
		{ "intdoor", 0, "monk/off/roundel_indented_off", },

		{ "newhartnellrearlights", 1, "monk/powerhexagon", },
		{ "newhartnellrearlights", 4, "hartnell/off/instrument_light_off", },
		{ "newhartnelllightboxes", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnelllightboxes", 4, "hartnell/off/instrument_light_off", },
		{ "newhartnellfurniture6", 8, "monk/console_lights", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},

	["poweroff"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/off/instrument_light_off", },

		{ "newhartnelldestselect", 1, "monk/off/destselect_off", },

		{ "newhartnellfaultlocator", 5, "monk/off/console_lights_off", },
		{ "newhartnellmetal", 2, "monk/off/console_lights_off", },
		{ "newhartnellconsole", 4, "monk/off/console_lights_off", },
		{ "self", 4, "monk/off/roundel_indented_off", },
		{ "newhartnell3droundels", 1, "monk/off/roundel_indented_off", },
		{ "self", 3, "hartnell/off/doorlight_off", },
		{ "newhartnellmainframe", 4, "monk/off/roundel_indented_off", },
		{ "newhartnellaltframe", 5, "monk/off/roundel_indented_off", },
		{ "newhartnellpilotframe", 4, "monk/off/roundel_indented_off", },
		{ "newhartnelllights", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnelllights2", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnellpowerhexagon", 2, "monk/off/powerhexagon_off", },
		{ "newhartnellpowerhexagon2", 2, "monk/off/powerhexagon_off", },

		{ "newhartnellbigdoormain", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoordeadline", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdooreod", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoorpog", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoorpilot", 0, "monk/off/roundel_indented_off", },
		{ "newhartnellbigdoortuat", 0, "monk/off/roundel_indented_off", },
		{ "intdoor", 0, "monk/off/roundel_indented_off", },

		{ "newhartnellrearlights", 1, "monk/off/powerhexagon_off", },
		{ "newhartnellrearlights", 4, "hartnell/off/instrument_light_off", },
		{ "newhartnelllightboxes", 1, "hartnell/off/ceilinglight_off", },
		{ "newhartnelllightboxes", 4, "hartnell/off/instrument_light_off", },
		{ "newhartnellfurniture6", 8, "monk/off/console_lights_off", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},





	["warning"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/instrument_light", },

		{ "newhartnelldestselect", 1, "monk/destselect", },

		{ "newhartnellfaultlocator", 5, "monk/console_lights", },
		{ "newhartnellmetal", 2, "monk/console_lights", },
		{ "newhartnellconsole", 4, "monk/console_lights", },
		{ "self", 4, "monk/warning/roundel_indented_warning", },
		{ "newhartnell3droundels", 1, "monk/warning/roundel_indented_warning", },
		{ "self", 3, "hartnell/warning/doorlight_warning", },
		{ "newhartnellmainframe", 4, "monk/warning/roundel_indented_warning", },
		{ "newhartnellaltframe", 5, "monk/warning/roundel_indented_warning", },
		{ "newhartnellpilotframe", 4, "monk/warning/roundel_indented_warning", },
		{ "newhartnelllights", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnelllights2", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnellpowerhexagon", 2, "monk/warning/powerhexagon_warning", },
		{ "newhartnellpowerhexagon2", 2, "monk/warning/powerhexagon_warning", },

		{ "newhartnellbigdoormain", 0, "monk/warning/roundel_indented_warning", },
		{ "newhartnellbigdoordeadline", 0, "monk/warning/roundel_indented_warning", },
		{ "newhartnellbigdooreod", 0, "monk/warning/roundel_indented_warning", },
		{ "newhartnellbigdoorpog", 0, "monk/warning/roundel_indented_warning", },
		{ "newhartnellbigdoorpilot", 0, "monk/warning/roundel_indented_warning", },
		{ "newhartnellbigdoortuat", 0, "monk/warning/roundel_indented_warning", },
		{ "intdoor", 0, "monk/warning/roundel_indented_warning", },

		{ "newhartnellrearlights", 1, "monk/warning/powerhexagon_warning", },
		{ "newhartnellrearlights", 4, "hartnell/instrument_light", },
		{ "newhartnelllightboxes", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnelllightboxes", 4, "hartnell/instrument_light", },
		{ "newhartnellfurniture6", 8, "monk/console_lights", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},
	["flight"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/instrument_light", },

		{ "newhartnelldestselect", 1, "monk/flight/destselect_flight", },

		{ "newhartnellfaultlocator", 5, "monk/console_lights", },
		{ "newhartnellmetal", 2, "monk/flight/console_lights_flight", },
		{ "newhartnellconsole", 4, "monk/console_lights", },
		{ "self", 4, "monk/flight/roundel_indented_flight", },
		{ "newhartnell3droundels", 1, "monk/flight/roundel_indented_flight", },
		{ "self", 3, "hartnell/doorlight", },
		{ "newhartnellmainframe", 4, "monk/flight/roundel_indented_flight", },
		{ "newhartnellaltframe", 5, "monk/flight/roundel_indented_flight", },
		{ "newhartnellpilotframe", 4, "monk/flight/roundel_indented_flight", },
		{ "newhartnelllights", 1, "hartnell/ceilinglight", },
		{ "newhartnelllights2", 1, "hartnell/ceilinglight", },
		{ "newhartnellpowerhexagon", 2, "monk/powerhexagon", },
		{ "newhartnellpowerhexagon2", 2, "monk/powerhexagon", },

		{ "newhartnellbigdoormain", 0, "monk/flight/roundel_indented_flight", },
		{ "newhartnellbigdoordeadline", 0, "monk/flight/roundel_indented_flight", },
		{ "newhartnellbigdooreod", 0, "monk/flight/roundel_indented_flight", },
		{ "newhartnellbigdoorpog", 0, "monk/flight/roundel_indented_flight", },
		{ "newhartnellbigdoorpilot", 0, "monk/flight/roundel_indented_flight", },
		{ "newhartnellbigdoortuat", 0, "monk/flight/roundel_indented_flight", },
		{ "intdoor", 0, "monk/flight/roundel_indented_flight", },

		{ "newhartnellrearlights", 1, "monk/powerhexagon", },
		{ "newhartnellrearlights", 4, "hartnell/instrument_light", },
		{ "newhartnelllightboxes", 1, "hartnell/ceilinglight", },
		{ "newhartnelllightboxes", 4, "hartnell/instrument_light", },
		{ "newhartnellfurniture6", 8, "monk/console_lights", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},
	["warning_flight"] = {
		prefix = "models/",

		{ "newhartnellrotor2", 9, "hartnell/instrument_light", },

		{ "newhartnelldestselect", 1, "monk/flight/destselect_flight", },

		{ "newhartnellfaultlocator", 5, "monk/console_lights", },
		{ "newhartnellmetal", 2, "monk/flight/console_lights_flight", },
		{ "newhartnellconsole", 4, "monk/console_lights", },
		{ "self", 4, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnell3droundels", 1, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "self", 3, "hartnell/warning/doorlight_warning", },
		{ "newhartnellmainframe", 4, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellaltframe", 5, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellpilotframe", 4, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnelllights", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnelllights2", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnellpowerhexagon", 2, "monk/warning/powerhexagon_warning", },
		{ "newhartnellpowerhexagon2", 2, "monk/warning/powerhexagon_warning", },

		{ "newhartnellbigdoormain", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellbigdoordeadline", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellbigdooreod", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellbigdoorpog", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellbigdoorpilot", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "newhartnellbigdoortuat", 0, "monk/warning_flight/roundel_indented_warning_flight", },
		{ "intdoor", 0, "monk/warning_flight/roundel_indented_warning_flight", },

		{ "newhartnellrearlights", 1, "monk/warning/powerhexagon_warning", },
		{ "newhartnellrearlights", 4, "hartnell/instrument_light", },
		{ "newhartnelllightboxes", 1, "hartnell/warning/ceilinglight_warning", },
		{ "newhartnelllightboxes", 4, "hartnell/instrument_light", },
		{ "newhartnellfurniture6", 8, "monk/console_lights", },
		{ "newhartnellfurniture6", 12, "hartnell/sofa", },

	},
}


T.EntryMusicThemes = {
	-- add more by filling in this part {path = "", volume = 1.0}

	{path = "torrent/hartnell/main/entrance.ogg", volume = nil},
	{path = "", volume = 0.25},
}
T.EntryMusicThemeCount = 0
for theme_no, theme in ipairs(T.EntryMusicThemes) do
	if theme.path ~= "" then
		T.EntryMusicThemeCount = T.EntryMusicThemeCount + 1
	end
end

T.SyncDoorBodygroups = true
T.SyncExteriorBodygroupToDoors = false

T.CustomHooks = {
	travel_textures = {
		exthooks = {
			["PostInitialize"] = true,
			["PowerToggled"] = true,
			["WarningToggled"] = true,
			["DematStart"] = true,
			["MatStart"] = true,
			["PreMatStart"] = true,
			["StopDemat"] = true,
			["StopMat"] = true,
			["FlightToggled"] = true,
			["InterruptTeleport"] = true,
		},
		inthooks = {
			["PostInitialize"] = true,
		},
		func = function(ext, int, data_id, data_value)

			prefix = "models/torrent/hartnell/"

			local power = ext:GetData("power-state")
			local warning = ext:GetData("health-warning")
			local teleport = ext:GetData("teleport")
			local flight = ext:GetData("flight")
			local vortex = ext:GetData("vortex")
			local lowpower = int:GetData("lowpowermode", true)

			if lowpower and not power then
				int:ApplyTextureSet("lowpower")
				ext:ApplyTextureSet("lowpower")
			elseif not power and not lowpower then
				int:ApplyTextureSet("poweroff")
				ext:ApplyTextureSet("poweroff")
			elseif flight or teleport or vortex then
				int:ApplyTextureSet(warning and "warning_flight" or "flight")
				ext:ApplyTextureSet(warning and "warning_flight" or "flight")
			else
				int:ApplyTextureSet(warning and "warning" or "normal")
				ext:ApplyTextureSet(warning and "warning" or "normal")
			end
		end,
	},
	scanner_sound = {
		inthooks = {
			["ScannersToggled"] = true,
		},
		func = function(ext, int, on)
			if on then
				int:EmitSound("torrent/hartnell/main/hartnellscanner.ogg")
			end
		end,
	},

	entrance_music = {
		exthooks = {
			["PlayerEnter"] = true,
		},
		func = function(ext,int,ply)
			if SERVER then return end
			if ply ~= nil and ply ~= LocalPlayer() then return end
			-- this shouldn't happen but better check for future changes
			ply = LocalPlayer()

			local st = TARDIS:GetCustomSetting("hartnelltardis", "music_on_enter", LocalPlayer())

			if st == "never" then
				ply.TARDISHartnellPlayedMusic = nil
				ext:SetData("hartnell_music_played", nil, false)
				return
			end

			if st == "any_spawn" and ext:GetData("hartnell_music_played") then
				return
			end

			if st == "first_spawn" and ply.TARDISHartnellPlayedMusic then
				return
			end

			ply.TARDISHartnellPlayedMusic = true
			ext:SetData("hartnell_music_played", true, false) -- no networking!

			local function theme_setting_check(theme_no)
				if T.EntryMusicThemeCount <= 1 then
					return true
				end
				return TARDIS:GetCustomSetting("hartnelltardis", "use_entry_music_theme_" .. theme_no, LocalPlayer())
			end

			local validMusicThemes = {}
			for theme_no, theme in ipairs(ext.metadata.EntryMusicThemes) do
				if theme.path ~= "" and theme_setting_check(theme_no) then
					table.insert(validMusicThemes, theme)
				end
			end

			if #validMusicThemes > 0 then
				local selectedTheme = validMusicThemes[math.random(#validMusicThemes)]
				ply.TARDISHartnellMusic = CreateSound(ply, selectedTheme.path)
				ply.TARDISHartnellMusic:Play()
				if selectedTheme.volume then
					ply.TARDISHartnellMusic:ChangeVolume(selectedTheme.volume, 0)
				end
				ply.TARDISHartnellMusicEntity = ext
			end
		end,
	},
	entrance_music_stop = {
		exthooks = {
			["PlayerExit"] = true,
			["OnRemove"] = true,
		},
		func = function(ext,int)
			if SERVER then return end

			local ply = LocalPlayer()
			if not ply.TARDISHartnellMusic then return end

			-- making sure that the music being removed comes from this TARDIS
			if IsValid(ply.TARDISHartnellMusicEntity)
				and ply.TARDISHartnellMusicEntity ~= ext
			then
				return
			end

			ply.TARDISHartnellMusic:Stop()
			ply.TARDISHartnellMusic = nil
			ply.TARDISHartnellMusicEntity = nil
		end,
	},
}

T.CustomSettings = {

	interior_hum = {
		text = "Interior Hum",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "1963 (Default)",
			["interiorhum_cushing1"] = "Dr. Who and the Daleks",
			["interiorhum_cushing2"] = "Daleks' Invasion Earth: 2150 AD",
			["interiorhum_deadline"] = "Unbound: Deadline",
			["interiorhum_edgeofdestruction"] = "Edge of Destruction",
			["interiorhum_spacemuseum"] = "The Space Museum",
			["interiorhum_webplanet"] = "The Web Planet",
			["interiorhum_pilot"] = "Pilot",
			["interiorhum_tuat"] = "Twice Upon a Time",
			["interiorhum_aisat"] = "An Adventure in Space and Time",
		}
	},

	flight = {
		text = "Take-Off, Landing, & Flight",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "1963 (Default)",
			["flight_pilot"] = "Pilot",
			["flight_tuat"] = "Twice Upon a Time",
			["flight_massacre"] = "The Massacre",
			["flight_cushing"] = "Dr. Who and the Daleks/Daleks' Invasion Earth: 2150 AD",
			["flight_aisat"] = "An Adventure in Space and Time",
			["flight_chase"] = "The Chase",
			["flight_long"] = "1963 (An Unearthly Child)",
		}
	},

	exteriorhum = {
		text = "Exterior Hum",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "1963 (Default)",
			["exteriorhum_cushing1"] = "Dr. Who and the Daleks",
			["exteriorhum_cushing2"] = "Daleks' Invasion Earth: 2150 AD",
			["exteriorhum_deadline"] = "Unbound: Deadline",
			["exteriorhum_edgeofdestruction"] = "Edge of Destruction",
			["exteriorhum_spacemuseum"] = "The Space Museum",
			["exteriorhumm_webplanet"] = "The Web Planet",
			["exteriorhum_pilot"] = "Pilot",
			["exteriorhum_tuat"] = "Twice Upon a Time",
			["exteriorhum_none"] = "Disabled",
			["exteriorhum_aisat"] = "An Adventure in Space and Time",
		}
	},

	bigdoor = {
		text = "Big Door",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "1963 (Default)",
			["bigdoor_deadline"] = "Unbound: Deadline",
			["bigdoor_eod"] = "Edge of Destruction",
			["bigdoor_pog"] = "Planet of Giants",
			["bigdoor_pilot"] = "Pilot",
			["bigdoor_tuat"] = "Twice Upon a Time",
		}
	},

	roundelwall = {
		text = "Roundel Wall",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Paper Roundels (Default)",
			["roundelwall_3D"] = "3D Roundels",
			["roundelwall_hexals"] = "Hexals",
		}
	},
	
	wallcolor = {
		text = "Wall Color",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Clay Ash (Default)",
			["white_walls"] = "White",
			["beige_walls"] = "Beige",
		}
	},
	
	lighting = {
		text = "Lighting",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Warm White (Default)",
			["lighting_day"] = "Daylight White",
			["lighting_night"] = "Cool White",
			["lighting_eod"] = "Edge of Destruction",
		}
	},

	music_on_enter = {
		text = (T.EntryMusicThemeCount > 1) and " Enabled" or "Entrance Music",
		category = (T.EntryMusicThemeCount > 1) and "Entrance Music" or nil,
		value_type = "list",
		value = "first_spawn",
		options = {
			["first_spawn"] = "Once per game",
			["any_spawn"] = "Once per TARDIS",
			["never"] = "Never",
		}
	},
	
	hartnell_shake = {
        text = "Demat Shake",
        value_type = "bool",
        value = false,
    },
	
	yearometer = {
		text = "YEAR-OMETER",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Disabled (Default)",
			["hartnell_yearometer"] = "Enabled",
		}
	},
	
	datapylons = {
		text = "Pilot Light Poles",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Disabled (Default)",
			["datapylons"] = "Enabled",
		}
	},
	
	powerhexagon = {
		text = "Canopy Light",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "Hanging (Default)",
			["powerhexagon"] = "Grounded",
			["powerhexagon_off"] = "Disabled",
		}
	},
	
	pilotfaultlocator = {
		text = "Fault Locator",
		value_type = "list",
		value = "default",
		options = {
			["default"] = "1963 (Default)",
			["pilotfaultlocator"] = "Pilot",
		}
	},

}

-- Adding music to setting
if T.EntryMusicThemeCount > 1 then
	for theme_no, theme in ipairs(T.EntryMusicThemes) do
		if theme.path ~= "" then
			T.CustomSettings["use_entry_music_theme_" .. theme_no] = {
				text = theme.path,
				value_type = "bool",
				category = "Entrance Music",
				value = true,
			}
		end
	end
end

T.Templates = {

-- Fault Locator

	pilotfaultlocator = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "pilotfaultlocator", ply)
			return (setting_val == "pilotfaultlocator")
		end,
	},

-- Canopy Light

	powerhexagon = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "powerhexagon", ply)
			return (setting_val == "powerhexagon")
		end,
	},
	
	powerhexagon_off = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "powerhexagon", ply)
			return (setting_val == "powerhexagon_off")
		end,
	},

-- Pilot Data Pylons

	datapylons = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "datapylons", ply)
			return (setting_val == "datapylons")
		end,
	},

-- YEAR-OMETER

	hartnell_yearometer = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "yearometer", ply)
			return (setting_val == "hartnell_yearometer")
		end,
	},

-- Demat Shake

	hartnell_shake = {
        override = true,
        condition = function(id, ply, ent)
            return TARDIS:GetCustomSetting(id, "hartnell_shake", ply)
        end,
    },

-- Lighting

	lighting_day = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "lighting", ply)
			return (setting_val == "lighting_day")
		end,
	},
	
	lighting_night = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "lighting", ply)
			return (setting_val == "lighting_night")
		end,
	},
	
	lighting_eod = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "lighting", ply)
			return (setting_val == "lighting_eod")
		end,
	},

-- Wall Color

	white_walls = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "wallcolor", ply)
			return (setting_val == "white_walls")
		end,
	},
	
	beige_walls = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "wallcolor", ply)
			return (setting_val == "beige_walls")
		end,
	},

-- Roundel Walls

	roundelwall_3D = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "roundelwall", ply)
			return (setting_val == "roundelwall_3D")
		end,
	},

	roundelwall_hexals = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "roundelwall", ply)
			return (setting_val == "roundelwall_hexals")
		end,
	},

-- Big Doors + Scanner

	clbigdoor_default = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "default")
		end,
	},

	bigdoor_deadline = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (not classic_doors and setting_val == "bigdoor_deadline")
		end,
	},

	clbigdoor_deadline = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "bigdoor_deadline")
		end,
	},

	bigdoor_eod = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (not classic_doors and setting_val == "bigdoor_eod")
		end,
	},

	clbigdoor_eod = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "bigdoor_eod")
		end,
	},

	bigdoor_pog = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (not classic_doors and setting_val == "bigdoor_pog")
		end,
	},

	clbigdoor_pog = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "bigdoor_pog")
		end,
	},

	bigdoor_pilot = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (not classic_doors and setting_val == "bigdoor_pilot")
		end,
	},

	clbigdoor_pilot = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "bigdoor_pilot")
		end,
	},

	bigdoor_tuat = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (not classic_doors and setting_val == "bigdoor_tuat")
		end,
	},

	clbigdoor_tuat = {
		override = true,
		condition = function(id, ply, ent)
			local classic_doors = TARDIS.Metadata[id].EnableClassicDoors
			local setting_val = TARDIS:GetCustomSetting(id, "bigdoor", ply)
			return (classic_doors and setting_val == "bigdoor_tuat")
		end,
	},

-- Exterior Hums

	exteriorhum_cushing1 = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_cushing1")
		end,
	},

	exteriorhum_cushing2 = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_cushing2")
		end,
	},

	exteriorhum_deadline = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_deadline")
		end,
	},

	exteriorhum_edgeofdestruction = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_edgeofdestruction")
		end,
	},

	exteriorhum_spacemuseum = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_spacemuseum")
		end,
	},

	exteriorhum_webplanet = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_webplanet")
		end,
	},

	exteriorhum_pilot = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_pilot")
		end,
	},

	exteriorhum_tuat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_tuat")
		end,
	},
	
	exteriorhum_aisat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_aisat")
		end,
	},

	exteriorhum_none = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "exteriorhum", ply)
			return (setting_val == "exteriorhum_none")
		end,
	},

-- Interior Hums

	interiorhum_cushing1 = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_cushing1")
		end,
	},

	interiorhum_cushing2 = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_cushing2")
		end,
	},

	interiorhum_deadline = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_deadline")
		end,
	},

	interiorhum_edgeofdestruction = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_edgeofdestruction")
		end,
	},

	interiorhum_spacemuseum = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_spacemuseum")
		end,
	},

	interiorhum_webplanet = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_webplanet")
		end,
	},

	interiorhum_pilot = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_pilot")
		end,
	},

	interiorhum_tuat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_tuat")
		end,
	},
	
	interiorhum_aisat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_hum", ply)
			return (setting_val == "interiorhum_aisat")
		end,
	},

-- Teleport and Flight

	flight_pilot = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_pilot")
		end,
	},

	flight_tuat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_tuat")
		end,
	},

	flight_massacre = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_massacre")
		end,
	},

	flight_cushing = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_cushing")
		end,
	},
	
	flight_aisat = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_aisat")
		end,
	},
	
	flight_chase = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_chase")
		end,
	},
	
	flight_long = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "flight", ply)
			return (setting_val == "flight_long")
		end,
	},
}

TARDIS:AddInterior(T)

