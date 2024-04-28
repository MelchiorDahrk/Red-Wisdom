local ssqn = include("SSQN.interop") --Must come before function calls

local function init()
    if (ssqn) then
    	ssqn.registerQIcon("md24_j_redwisdom","\\Icons\\md24\\q\\quest_redwisdom.tga") --using several underscores in quest ID
		ssqn.registerQIcon("md24_j_guarhide","\\Icons\\md24\\q\\quest_redwisdom.tga")
    end
end

event.register(tes3.event.initialized, init)