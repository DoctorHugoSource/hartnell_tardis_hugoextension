TARDIS:AddInteriorTemplate("flight_pilot", {
	Exterior = {
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
			FlightLoop="torrent/hartnell/pilot/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/pilot/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/pilot/land_ext.ogg",
			RepairFinish="torrent/hartnell/pilot/spawn.ogg",
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
				[1] = 19.75
			},
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/pilot/mat_int.ogg",
				demat="torrent/hartnell/pilot/demat_int.ogg",
				fullflight="torrent/hartnell/pilot/fast_demat_int.ogg",
				demat_damaged = "torrent/hartnell/pilot/demat_int_damaged.ogg",
				mat_damaged = "torrent/hartnell/pilot/mat_int_damaged.ogg",
				fullflight_damaged="torrent/hartnell/pilot/fast_int_demat_damaged.ogg",
				interrupt ="torrent/hartnell/pilot/spawn.ogg",
			},
			Cloister = "torrent/monk/cloister.wav",
			FlightLoop="torrent/hartnell/pilot/flight_loopint.wav",
			FlightLoopDamaged = "torrent/hartnell/pilot/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/pilot/land_int.ogg",
		},
	},
})

TARDIS:AddInteriorTemplate("flight_tuat", {
	Exterior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/tuat/mat.ogg",
				demat="torrent/hartnell/tuat/demat.ogg",
				mat_fast = "torrent/hartnell/tuat/mat_fast.ogg",
				demat_fast = "torrent/hartnell/tuat/demat.ogg",
				fullflight="torrent/hartnell/tuat/fast_demat.ogg",
				demat_damaged = "torrent/hartnell/tuat/demat_damaged.ogg",
				mat_damaged = "torrent/hartnell/tuat/mat_damaged.ogg",
				demat_damaged_fast = "torrent/hartnell/tuat/demat_damaged.ogg",
				mat_damaged_fast = "torrent/hartnell/tuat/mat_fast_damaged.ogg",
				fullflight_damaged="torrent/hartnell/tuat/fast_demat_damaged.ogg",
			},
			FlightLoop="torrent/hartnell/tuat/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/tuat/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/tuat/land_ext.ogg",
			RepairFinish="torrent/hartnell/tuat/spawn.ogg",
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/tuat/mat_int.ogg",
				demat="torrent/hartnell/tuat/demat_int.ogg",
				fullflight="torrent/hartnell/tuat/fast_demat_int.ogg",
				demat_damaged = "torrent/hartnell/tuat/demat_int_damaged.ogg",
				mat_damaged = "torrent/hartnell/tuat/mat_int_damaged.ogg",
				fullflight_damaged="torrent/hartnell/tuat/fast_demat_int_damaged.ogg",
				interrupt ="torrent/hartnell/tuat/spawn.ogg",
			},
			Cloister = "torrent/monk/cloister.wav",
			FlightLoop="torrent/hartnell/tuat/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/tuat/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/tuat/land_int.ogg",
		},
	},
})

TARDIS:AddInteriorTemplate("flight_massacre", {
	Exterior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/massacre/mat.ogg",
				demat="torrent/hartnell/massacre/demat.ogg",
				mat_fast = "torrent/hartnell/massacre/mat_fast.ogg",
				demat_fast = "torrent/hartnell/massacre/demat.ogg",
				fullflight="torrent/hartnell/massacre/fast_demat.ogg",
				demat_damaged = "torrent/hartnell/main/demat_damaged.ogg",
				mat_damaged = "torrent/hartnell/main/mat_damaged.ogg",
				demat_damaged_fast = "torrent/hartnell/main/demat_damaged.ogg",
				mat_damaged_fast = "torrent/hartnell/main/mat_fast_damaged.ogg",
				fullflight_damaged="torrent/hartnell/main/fast_demat_damaged.ogg",
			},
			FlightLoop="torrent/hartnell/main/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/main/land_ext.ogg",
			RepairFinish="torrent/hartnell/massacre/spawn.ogg",
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/massacre/mat_int.ogg",
				demat="torrent/hartnell/massacre/demat_int.ogg",
				fullflight="torrent/hartnell/massacre/fast_demat_int.ogg",
				demat_damaged = "torrent/hartnell/main/demat_int_damaged.ogg",
				mat_damaged = "torrent/hartnell/main/mat_int_damaged.ogg",
				fullflight_damaged="torrent/hartnell/main/fast_demat_int_damaged.ogg",
				interrupt ="torrent/hartnell/massacre/spawn.ogg",
			},
			Cloister = "torrent/monk/cloister.wav",
			FlightLoop="torrent/hartnell/main/flight_loopint.wav",
			FlightLoopDamaged = "torrent/hartnell/main/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/main/land_int.ogg",
		},
	},
})

TARDIS:AddInteriorTemplate("flight_cushing", {
	Exterior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/cushing/mat.ogg",
				demat="torrent/hartnell/cushing/demat.ogg",
				mat_fast = "torrent/hartnell/cushing/mat_fast.ogg",
				demat_fast = "torrent/hartnell/cushing/demat.ogg",
				fullflight="torrent/hartnell/cushing/fast_demat.ogg",
				demat_damaged = "torrent/hartnell/cushing/demat_damaged.ogg",
				mat_damaged = "torrent/hartnell/cushing/mat_damaged.ogg",
				demat_damaged_fast = "torrent/hartnell/cushing/demat_damaged.ogg",
				mat_damaged_fast = "torrent/hartnell/cushing/mat_fast_damaged.ogg",
				fullflight_damaged="torrent/hartnell/cushing/fast_demat_damaged.ogg",
			},
			FlightLoop="torrent/hartnell/cushing/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/cushing/flight_loop_damaged.wav",
			Spawn = "torrent/hartnell/cushing/spawn.ogg",
			FlightLand = "torrent/hartnell/cushing/spawn.ogg",
			RepairFinish="torrent/hartnell/cushing/spawn.ogg",
		},
		Teleport = {
			SequenceSpeed = { Mat = 0.7, Demat = 4 },
			SequenceSpeedWarning = { Mat = 0.7, Demat = 4 },
			SequenceSpeedFast = 0.46,
			SequenceSpeedWarnFast = 0.46,
			MatSequence = {
				255
			},
			PrematDelay = 6.35,
			DematSequence = {
				0
			},
			DematSequenceDelays={
				[1] = 7.5
			},
			MatSequenceDelays={
				[1] = 5.5
			},
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/cushing/mat.ogg",
				demat="torrent/hartnell/cushing/demat.ogg",
				fullflight="torrent/hartnell/cushing/fast_demat.ogg",
				demat_damaged = "torrent/hartnell/cushing/demat_damaged.ogg",
				mat_damaged = "torrent/hartnell/cushing/mat_damaged.ogg",
				fullflight_damaged="torrent/hartnell/cushing/fast_demat_damaged.ogg",
				interrupt ="torrent/hartnell/cushing/spawn.ogg",
			},
			Cloister = "torrent/monk/cloister.wav",
			FlightLoop="torrent/hartnell/cushing/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/cushing/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/cushing/spawn.ogg",
		},
	},
})

TARDIS:AddInteriorTemplate("flight_aisat", {
	Exterior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/aisat/mat.ogg",
				demat="torrent/hartnell/aisat/demat.ogg",
				mat_fast = "torrent/hartnell/aisat/mat_fast.ogg",
				demat_fast = "torrent/hartnell/aisat/demat.ogg",
				fullflight="torrent/hartnell/aisat/fast_demat.ogg",
				demat_damaged = "torrent/hartnell/tuat/demat_damaged.ogg",
				mat_damaged = "torrent/hartnell/tuat/mat_damaged.ogg",
				demat_damaged_fast = "torrent/hartnell/tuat/demat_damaged.ogg",
				mat_damaged_fast = "torrent/hartnell/tuat/mat_fast_damaged.ogg",
				fullflight_damaged="torrent/hartnell/tuat/fast_demat_damaged.ogg",
			},
			FlightLoop="torrent/hartnell/tuat/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/tuat/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/aisat/land_ext.ogg",
			RepairFinish="torrent/hartnell/aisat/spawn.ogg",
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/aisat/mat_int.ogg",
				demat="torrent/hartnell/aisat/demat_int.ogg",
				fullflight="torrent/hartnell/aisat/fast_demat_int.ogg",
				demat_damaged = "torrent/hartnell/tuat/demat_int_damaged.ogg",
				mat_damaged = "torrent/hartnell/tuat/mat_int_damaged.ogg",
				interrupt ="torrent/hartnell/aisat/spawn.ogg",
			},
			Cloister = "torrent/monk/cloister.wav",
			FlightLoop="torrent/hartnell/tuat/flight_loop.wav",
			FlightLoopDamaged = "torrent/hartnell/tuat/flight_loop_damaged.wav",
			FlightLand = "torrent/hartnell/tuat/land_int.ogg",
		},
	},
})

TARDIS:AddInteriorTemplate("flight_chase", {
	Exterior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/chase/mat.ogg",
				demat="torrent/hartnell/chase/demat.ogg",
				fullflight="torrent/hartnell/chase/fast_demat.ogg",
				mat_fast = "torrent/hartnell/chase/mat_fast.ogg",
				demat_fast = "torrent/hartnell/chase/demat.ogg",
			},
		},
		Teleport = {
			SequenceSpeed = { Mat = 0.5, Demat = 1 },
			SequenceSpeedFast = 0.5,
			MatSequence = {
				255
			},
			PrematDelay = 1,
			DematSequence = {
				0
			},
			DematSequenceDelays={
				[1] = 4
			},
			MatSequenceDelays={
				[1] = 4
			},
		},
	},
	Interior = {
		Sounds={
			Teleport={
				mat="torrent/hartnell/chase/mat.ogg",
				demat="torrent/hartnell/chase/demat.ogg",
				fullflight="torrent/hartnell/chase/fast_demat.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("flight_long", {
	Exterior = {
		Sounds={
			Teleport={
				demat="torrent/hartnell/long/demat.ogg",
				mat="torrent/hartnell/long/mat.ogg",
			},
		},
		Teleport = {
			SequenceSpeed = { Mat = 0.0625, Demat = 0.055 },
			MatSequence = {
				255
			},
			PrematDelay = 8,
			DematSequence = {
				0
			},
			DematSequenceDelays={
				[1] = 7
			},
			MatSequenceDelays={
				[1] = 7
			},
		},
	},
	Interior = {
		Sounds={
			Teleport={
				demat="torrent/hartnell/long/demat_int.ogg",
				mat="torrent/hartnell/long/mat.ogg",
			},
		},
	},
})
