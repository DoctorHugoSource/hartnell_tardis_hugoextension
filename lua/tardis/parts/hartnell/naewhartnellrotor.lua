local PART={}
PART.ID = "newhartnellrotor"
PART.Name = "rotor"
PART.Model = "models/torrent/hartnell/rotor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.UseTransparencyFix = true
PART.ShouldTakeDamage = true

PART.SoundPos = Vector(0, 0, 0)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
		self.rotorspinonly={}
		self.rotorspinonly.pos=0
		self.rotorspinonly.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local flight = exterior:GetData("flight")
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local float = exterior:GetData("float")
			local active = flight or teleport or vortex or float
		
		if self.rotorspinonly.pos==0 then
				self.rotorspinonly.pos=1
			elseif self.rotorspinonly.pos==1 then
				self.rotorspinonly.pos=0
			end
			self.rotorspinonly.pos=math.Approach( self.rotorspinonly.pos, self.rotorspinonly.mode, FrameTime()*0.02 )
			self:SetPoseParameter( "spin", self.rotorspinonly.pos )

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *0.15 )
			self:SetPoseParameter( "switch", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/documentary_click.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/rotor_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "newhartnellrotor2"
PART.Name = "rotor2"
PART.Model = "models/torrent/hartnell/rotor2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.UseTransparencyFix = true
PART.ShouldTakeDamage = true

PART.SoundPos = Vector(0, 0, 0)

if CLIENT then
	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
		self.rotorspinonly={}
		self.rotorspinonly.pos=0
		self.rotorspinonly.mode=1
        local ext=self.exterior
		self.column = false
		self.Time = CurTime()
	end

    function PART:Think()
        local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local flight = exterior:GetData("flight")
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local float = exterior:GetData("float")
			local active = flight or teleport or vortex or float
		
		if self.rotorspinonly.pos==0 then
				self.rotorspinonly.pos=1
			elseif self.rotorspinonly.pos==1 then
				self.rotorspinonly.pos=0
			end
			self.rotorspinonly.pos=math.Approach( self.rotorspinonly.pos, self.rotorspinonly.mode, FrameTime()*0.02 )
			self:SetPoseParameter( "spin", self.rotorspinonly.pos )

		if active or self.timerotor.pos != 1 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos = 0
			end
			
			self.timerotor.pos = math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime() *0.15 )
			self:SetPoseParameter( "switch", self.timerotor.pos )
			
			if active then 
				self.column = true
			end
		end

		if !active and self.timerotor.pos == 1 then
			if self.column == true then
				sound.Play("torrent/hartnell/main/documentary_click.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.column = false
				end
			end
		
		if CurTime() > self.Time + 1 and active and (self.timerotor.pos < 0.1 or (self.timerotor.pos > 1 and self.timerotor.pos < 1))then
				sound.Play("torrent/hartnell/main/rotor_clunk.ogg",self:LocalToWorld(Vector(0, 0, 45)))
				self.Time = CurTime()
			end
		end
	end
end

TARDIS:AddPart(PART)