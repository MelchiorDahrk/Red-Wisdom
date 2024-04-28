local tooltipsComplete = include("Tooltips Complete.interop")
local tooltipData = {
    { id = "md24_inscguarhide", description = "This ancient guar hide is inscribed with esoteric symbols.", itemType = "miscItem" },
    { id = "md24_c_AshbaneGirdle", description = "Crafted from supple leather and dyed in the fiery hues of sunset, the belt exudes a faint warmth reminiscent of the fires of Red Mountain itself.", itemType = "clothing" }
	{ id = "md24_c_StoneOfGrounding", description = "The stone's surface is etched with scars from repeated lightning strikes.", itemType = "clothing" }
	{ id = "md24_c_TheTwelfthTalisman", description = "A large, aquamarine stone sits in the center of the talisman. Colorful shells woven together by leather straps seem to whisper tales of forgotten shores if you listen closely.", itemType = "clothing" }
	{ id = "md24_c_TheWhirlingband", description = "A sleek, ebony ring adorned with swirling glyphs that seem to dance and writhe like tendrils of smoke. When worn, the ring emits a faint hum, as if echoing the wind itself.", itemType = "clothing" }
}
local function initialized()
    if tooltipsComplete then
        for _, data in ipairs(tooltipData) do
            tooltipsComplete.addTooltip(data.id, data.description, data.itemType)
        end
    end
end
event.register("initialized", initialized)