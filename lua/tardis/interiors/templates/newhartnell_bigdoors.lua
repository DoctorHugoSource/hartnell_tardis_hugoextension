TARDIS:AddInteriorTemplate("clbigdoor_default", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/main/bigdoor.ogg",
				close="torrent/hartnell/main/bigdoor.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("bigdoor_deadline", {
	Interior = {
		Parts={
			newhartnellbigdoordeadline={ang=Angle(0,-120,0)},
			newhartnellbigdoormain=false,
		},
	},
})

TARDIS:AddInteriorTemplate("clbigdoor_deadline", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/deadline/bigdoor.ogg",
				close="torrent/hartnell/deadline/bigdoor.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("bigdoor_eod", {
	Interior = {
		Parts={
			newhartnellbigdoormain=false,
			newhartnellbigdooreod={ang=Angle(0,-120,0)},
		},
	},
})

TARDIS:AddInteriorTemplate("clbigdoor_eod", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/etc/eod_bigdoor.ogg",
				close="torrent/hartnell/etc/eod_bigdoor.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("bigdoor_pog", {
	Interior = {
		Parts={
			newhartnellbigdoormain=false,
			newhartnellbigdoorpog={ang=Angle(0,-120,0)},
		},
	},
})

TARDIS:AddInteriorTemplate("clbigdoor_pog", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/etc/pog_bigdoor.ogg",
				close="torrent/hartnell/etc/pog_bigdoor.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("bigdoor_pilot", {
	Interior = {
		Parts={
			newhartnellbigdoormain=false,
			newhartnellbigdoorpilot={ang=Angle(0,-120,0)},
		},
	},
})

TARDIS:AddInteriorTemplate("clbigdoor_pilot", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/pilot/bigdoor_open.ogg",
				close="torrent/hartnell/pilot/bigdoor_close.ogg",
			},
		},
	},
})

TARDIS:AddInteriorTemplate("bigdoor_tuat", {
	Interior = {
		Parts={
			newhartnellbigdoormain=false,
			newhartnellbigdoortuat={ang=Angle(0,-120,0)},
		},
	},
	CustomHooks = {
		scanner_sound = {
			inthooks = {
				["ScannersToggled"] = true,
			},
			func = function(ext, int, on)
				if on then
					int:EmitSound("torrent/hartnell/tuat/scanner.ogg")
				end
			end,
		},
	},
})

TARDIS:AddInteriorTemplate("clbigdoor_tuat", {
	Interior = {
		Sounds={
			Door={
				enabled=true,
				open="torrent/hartnell/tuat/bigdoor.ogg",
				close="torrent/hartnell/tuat/bigdoor.ogg",
			},
		},
		IntDoorAnimationTime = 3.25,
	},
	CustomHooks = {
		scanner_sound = {
			inthooks = {
				["ScannersToggled"] = true,
			},
			func = function(ext, int, on)
				if on then
					int:EmitSound("torrent/hartnell/tuat/scanner.ogg")
				end
			end,
		},
	},
})
