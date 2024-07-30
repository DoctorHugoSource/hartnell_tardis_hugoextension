TARDIS:AddInteriorTemplate("powerhexagon", {
	Interior = {
		Parts={
			newhartnellpowerhexagon=false,
			newhartnellpowerhexagon2=true,
		},
		Lamps={
			powerhexagon=false,
			powerhexagon2=false,
			powerhexagon3={
				color = Color(255, 255, 255),
				texture = "models/hartnell/powerhexagonlight",
				fov = 100,
				distance = 100,
				brightness = 0.5,
				pos = Vector(110.90673828125, 62.448974609375, 90),
				ang = Angle(87.399032592773, 60.09912109375, -150.18734741211),
				warn={
					color = Color(159,0,0),
					texture = "models/hartnell/powerhexagonlight",
					fov = 100,
					distance = 100,
					brightness = 0.5,
					pos = Vector(110.90673828125, 62.448974609375, 90),
					ang = Angle(87.399032592773, 60.09912109375, -150.18734741211),
				},
			},
			powerhexagon4={
				color = Color(255, 255, 255),
				texture = "effects/flashlight001",
				fov = 70,
				distance = 100,
				brightness = 0.5,
				pos = Vector(112.0830078125, 63.8310546875, 48.875),
				ang = Angle(-90, -50, -15),
				warn={
					color = Color(159,0,0),
					texture = "effects/flashlight001",
					fov = 70,
					distance = 100,
					brightness = 0.5,
					pos = Vector(110.90673828125, 62.448974609375, 90),
					ang = Angle(87.399032592773, 60.09912109375, -150.18734741211),
				},
			},
		},
	},
})

TARDIS:AddInteriorTemplate("powerhexagon_off", {
	Interior = {
		Parts={
			newhartnellpowerhexagon=false,
			newhartnellpowerhexagon2=false,
		},
		Lamps={
			powerhexagon=false,
			powerhexagon2=false,
			powerhexagon3=false,
			powerhexagon4=false,
		},
	},
})