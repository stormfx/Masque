--[[

	This file is part of 'Masque', an add-on for World of Warcraft. For bug reports,
	suggestions and license information, please visit https://github.com/SFX-WoW/Masque.

	* File...: Skins\Classic.lua
	* Author.: StormFX, Maul, Blizzard Entertainment

	'Classic' Skin

]]

local _, Core = ...

----------------------------------------
-- Locals
---

local L = Core.Locale
local WOW_RETAIL = Core.WOW_RETAIL

----------------------------------------
-- Classic
---

Core.AddSkin("Classic", {
	Template = "Default (Classic)",
	-- API_VERSION = Default.API_VERSION,
	-- Shape = Default.Shape,

	-- Info
	Description = L["An improved version of the game's default button style."],
	-- Version = Default.Version,
	Authors = {"StormFX", "|cff999999Maul|r", "|cff999999Blizzard Entertainment|r"},
	Websites = Core.Websites,

	-- Skin
	-- Mask = Default.Mask,
	Backdrop = {
		Texture = [[Interface\Buttons\UI-Quickslot]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 0.8},
		BlendMode = "BLEND",
		DrawLayer = "BACKGROUND",
		DrawLevel = -1,
		Width = 64,
		Height = 64,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- UseColor = nil,
		-- SetAllPoints = nil,
		BagSlot = {
			Texture = [[Interface\PaperDoll\UI-PaperDoll-Slot-Bag]],
			-- TexCoords = {0, 1, 0, 1},
			Color = {1, 1, 1, 0.8},
			BlendMode = "BLEND",
			DrawLayer = "BACKGROUND",
			DrawLevel = -1,
			Width = 36,
			Height = 36,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 0,
			-- UseColor = nil,
			-- SetAllPoints = nil,
		},
	},
	Icon = {
		TexCoords = {0.07, 0.93, 0.07, 0.93},
		DrawLayer = "BACKGROUND",
		DrawLevel = 0,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- Shadow = Default.Shadow,
	Normal = {
		Texture = [[Interface\Buttons\UI-Quickslot2]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 1},
		EmptyColor = {1, 1, 1, 0.5},
		BlendMode = "BLEND",
		DrawLayer = "ARTWORK",
		DrawLevel = 0,
		Width = 60,
		Height = 60,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = -0.5,
		-- UseStates = nil,
		-- SetAllPoints = nil,
		Backpack = (WOW_RETAIL and {
			Texture = [[Interface\Addons\Masque\Textures\Backpack\Normal-Classic]],
			-- TexCoords = {0, 1, 0, 1},
			Color = {1, 1, 1, 1},
			EmptyColor = {1, 1, 1, 0.5},
			BlendMode = "BLEND",
			DrawLayer = "ARTWORK",
			DrawLevel = 0,
			Width = 38,
			Height = 38,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0.5,
			OffsetY = -0.5,
			UseStates = true,
			-- SetAllPoints = nil,
		}) or nil,
		Pet = {
			Texture = [[Interface\Buttons\UI-Quickslot2]],
			-- TexCoords = {0, 1, 0, 1},
			Color = {1, 1, 1, 1},
			-- EmptyColor = {1, 1, 1, 0.5},
			BlendMode = "BLEND",
			DrawLayer = "ARTWORK",
			DrawLevel = 0,
			Width = 58,
			Height = 58,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0.5,
			OffsetY = -0.5,
			-- UseStates = nil,
			-- SetAllPoints = nil,
		},
	},
	-- Disabled = Default.Disabled,
	Pushed = {
		Texture = [[Interface\Buttons\UI-Quickslot-Depress]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "ARTWORK",
		DrawLevel = 1,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- UseColor = nil,
		-- SetAllPoints = nil,
	},
	Flash = {
		Texture = [[Interface\Buttons\UI-QuickslotRed]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 0.75},
		BlendMode = "BLEND",
		DrawLayer = "BORDER",
		DrawLevel = 1,
		Width = 34,
		Height = 34,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- UseColor = nil,
		-- SetAllPoints = nil,
	},
	HotKey = {
		JustifyH = "RIGHT",
		JustifyV = "MIDDLE",
		DrawLayer = "OVERLAY",
		Width = 0,
		Height = 0,
		Anchor = "Icon",
		Point = "TOPRIGHT",
		RelPoint = "TOPRIGHT",
		OffsetX = 0,
		OffsetY = 0,
	},
	Count = {
		JustifyH = "RIGHT",
		JustifyV = "MIDDLE",
		DrawLayer = "OVERLAY",
		Width = 0,
		Height = 0,
		Anchor = "Icon",
		Point = "BOTTOMRIGHT",
		RelPoint = "BOTTOMRIGHT",
		OffsetX = 0,
		OffsetY = 0,
	},
	Duration = {
		JustifyH = "CENTER",
		JustifyV = "MIDDLE",
		DrawLayer = "OVERLAY",
		Width = 0,
		Height = 0,
		Anchor = "Icon",
		Point = "TOP",
		RelPoint = "BOTTOM",
		OffsetX = 0,
		OffsetY = -2,
	},
	Checked = {
		Texture = [[Interface\Buttons\CheckButtonHilight]],
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 0.8},
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 33,
		Height = 33,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
		Pet = {
			Texture = [[Interface\Buttons\CheckButtonHilight]],
			-- TexCoords = {0, 1, 0, 1},
			Color = {1, 1, 1, 0.8},
			BlendMode = "ADD",
			DrawLayer = "OVERLAY",
			DrawLevel = 0,
			Width = 32,
			Height = 32,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 0,
			-- SetAllPoints = nil,
		},
	},
	-- Name = Default.Name,
	Border = {
		Texture = [[Interface\Buttons\UI-ActionButton-Border]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 57,
		Height = 57,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = 0.5,
		-- SetAllPoints = nil,
		Debuff = {
			Texture = [[Interface\Buttons\UI-Debuff-Overlays]],
			TexCoords = {0.296875, 0.5703125, 0, 0.515625},
			-- Color = {1, 1, 1, 1},
			BlendMode = "BLEND",
			DrawLayer = "OVERLAY",
			DrawLevel = 0,
			Width = 40,
			Height = 38,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 1,
			-- SetAllPoints = nil,
		},
		Enchant = {
			Texture = [[Interface\Buttons\UI-TempEnchant-Border]],
			-- TexCoords = {0, 1, 0, 1},
			-- Color = {1, 1, 1, 1},
			BlendMode = "BLEND",
			DrawLayer = "OVERLAY",
			DrawLevel = 0,
			Width = 40,
			Height = 40,
			Point = "CENTER",
			RelPoint = "CENTER",
			OffsetX = 0,
			OffsetY = 0,
			-- SetAllPoints = nil,
		},
	},
	-- IconBorder = Default.IconBorder,
	SlotHighlight = {
		Texture = [[Interface\Buttons\CheckButtonHilight]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 0,
		Width = 34,
		Height = 34,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- Gloss = Default.Gloss,
	-- NewAction = Default.NewAction,
	-- SpellHighlight = Default.SpellHighlight,
	AutoCastable = {
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 1,
		Width = 66,
		Height = 66,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = -0.5,
		-- SetAllPoints = nil,
	},
	-- IconOverlay = Default.IconOverlay,
	-- IconOverlay2 = Default.IconOverlay2,
	UpgradeIcon = {
		Atlas = "bags-greenarrow",
		UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 3,
		Width = 16,
		Height = 17,
		Point = "TOPLEFT",
		RelPoint = "TOPLEFT",
		OffsetX = 1,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	QuestBorder = {
		Border = [[Interface\ContainerFrame\UI-Icon-QuestBorder]],
		Texture = [[Interface\ContainerFrame\UI-Icon-QuestBang]],
		Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	NewItem = {
		Atlas = "bags-glow-white",
		UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		DrawLayer = "OVERLAY",
		DrawLevel = 2,
		Width = 36,
		Height = 36,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- SearchOverlay = Default.SearchOverlay,
	-- ContextOverlay = Default.ContextOverlay,
	JunkIcon = {
		Atlas = "bags-junkcoin",
		UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		DrawLayer = "OVERLAY",
		DrawLevel = 3,
		Width = 16,
		Height = 16,
		Point = "TOPLEFT",
		RelPoint = "TOPLEFT",
		OffsetX = 1,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	Highlight = {
		Texture = [[Interface\Buttons\ButtonHilight-Square]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		DrawLayer = "HIGHLIGHT",
		DrawLevel = 0,
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- UseColor = nil,
		-- SetAllPoints = nil,
	},
	AutoCastShine = {
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = -0.5,
		-- SetAllPoints = nil,
	},
	Cooldown = {
		-- Texture = nil,
		EdgeTexture = [[Interface\Cooldown\edge]],
		PulseTexture = [[Interface\Cooldown\star4]],
		Color = {0, 0, 0, 0.8},
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
	ChargeCooldown = {
		EdgeTexture = [[Interface\Cooldown\edge]],
		PulseTexture = [[Interface\Cooldown\star4]],
		Width = 32,
		Height = 32,
		Point = "CENTER",
		RelPoint = "CENTER",
		OffsetX = 0,
		OffsetY = 0,
		-- SetAllPoints = nil,
	},
})
