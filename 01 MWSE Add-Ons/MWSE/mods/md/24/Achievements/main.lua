local sb_achievements = require("sb_achievements.interop")

local function init()
    local iconPath = "Icons\\md24\\q\\"

    local cats = {
        main = sb_achievements.registerCategory("Main Quest"),
        side = sb_achievements.registerCategory("Side"),
        misc = sb_achievements.registerCategory("Miscellaneous")
    }

    sb_achievements.registerAchievement {
        id = "md24_elements",
        category = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "A1_1_FindSpymaster" } >= 1
        end,
        icon = iconPath .. "achievement_elements.tga",
        colour = sb_achievements.colours.red,
        title = "Tribal Elements", desc = "Collect all four of the Ashlander elemental trinkets."
    }

end

local function initializedCallback(e)
    init()
end
event.register("initialized", initializedCallback, { priority = sb_achievements.priority + 1 })
