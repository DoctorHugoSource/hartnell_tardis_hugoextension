local PART={}
PART.ID = "newhartnellthousand"
PART.Name = "thousand"
PART.Model = "models/torrent/hartnell/thousand.mdl"
PART.AutoSetup = true
PART.Animate = true
PART.SoundPos = Vector(-20.981, -12.16, 47.403)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local active = teleport or vortex

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *0.25 )
			self:SetPoseParameter( "rotor", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/yearometer_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/one.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellhundred"
PART.Name = "hundred"
PART.Model = "models/torrent/hartnell/hundred.mdl"
PART.AutoSetup = true
PART.Animate = true
PART.SoundPos = Vector(-20.981, -12.16, 47.403)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local active = teleport or vortex

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *0.5 )
			self:SetPoseParameter( "rotor", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/yearometer_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/thousand.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellten"
PART.Name = "ten"
PART.Model = "models/torrent/hartnell/ten.mdl"
PART.AutoSetup = true
PART.Animate = true
PART.SoundPos = Vector(-20.981, -12.16, 47.403)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local active = teleport or vortex

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *0.75 )
			self:SetPoseParameter( "rotor", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/yearometer_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/hundred.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellone"
PART.Name = "one"
PART.Model = "models/torrent/hartnell/one.mdl"
PART.AutoSetup = true
PART.Animate = true
PART.SoundPos = Vector(-20.981, -12.16, 47.403)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local active = teleport or vortex

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *1 )
			self:SetPoseParameter( "rotor", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/yearometer_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/ten.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)