--[[

	This file is part of 'Masque', an add-on for World of Warcraft. For license information,
	please see the included License.txt file.

	* File...: Core\Utility.lua
	* Author.: StormFX

	Utility

]]

-- GLOBALS:

local _, Core = ...

----------------------------------------
-- Lua
---

local type = type

----------------------------------------
-- Functions
---

do
	----------------------------------------
	-- Size
	---

	-- Returns the height and width of a region.
	local function GetSize(Width, Height, xScale, yScale)
		local w = (Width or 36) * xScale
		local h = (Height or 36) * yScale
		return w, h
	end

	----------------------------------------
	-- Point
	---

	-- Clears and sets the points for a region.
	local function SetPoints(Region, Button, Skin, Default, SetAllPoints)
		Region:ClearAllPoints()

		-- Set All
		if SetAllPoints then
			Region:SetAllPoints(Button)

		-- Custom
		else
			-- Skin
			-- Point must be set for RelPoint to be used.
			local Point = Skin.Point
			local RelPoint = Skin.RelPoint or Point

			-- Internal
			if not Point then
				Point = Default and Default.Point

				if Point then
					RelPoint = Default.RelPoint or Point

				-- Default
				else
					Point = "CENTER"
					RelPoint = Point
				end
			end

			-- Offsets
			local OffsetX = Skin.OffsetX
			local OffsetY = Skin.OffsetY

			-- Default
			if Default and not OffsetX and not OffsetY then
				OffsetX = Default.OffsetX or 0
				OffsetY = Default.OffsetY or 0
			end

			Region:SetPoint(Point, Button, RelPoint, OffsetX or 0, OffsetY or 0)
		end
	end

	----------------------------------------
	-- Color
	---

	-- Returns a set of color values.
	local function GetColor(Color, Alpha)
		if type(Color) == "table" then
			return Color[1] or 1, Color[2] or 1, Color[3] or 1, Alpha or Color[4] or 1
		else
			return 1, 1, 1, Alpha or 1
		end
	end

	----------------------------------------
	-- Coords
	---

	-- Returns a set of texture coordinates.
	local function GetTexCoords(Coords)
		if type(Coords) == "table" then
			return Coords[1] or 0, Coords[2] or 1, Coords[3] or 0, Coords[4] or 1
		else
			return 0, 1, 0, 1
		end
	end

	----------------------------------------
	-- Core
	---

	-- Returns a list of utility functions.
	function Core.Utility()
		return GetSize, SetPoints, GetColor, GetTexCoords
	end

	----------------------------------------
	-- Scale
	-- @ Core\Button.lua
	-- @ Core\Regions\Frame.lua
	---

	-- Returns the x and y scale of a button.
	function Core.GetScale(Button)
		local x = (Button:GetWidth() or 36) / 36
		local y = (Button:GetHeight() or 36) / 36
		return x, y
	end

	----------------------------------------
	-- Region-Skinning Metatable
	---

	-- Use a metatable to call region-skinning functions.
	Core.SkinRegion = setmetatable({}, {
		__call = function(self, Region, ...)
			local func = Region and self[Region]
			if func then
				func(...)
			end
		end,
	})
end
