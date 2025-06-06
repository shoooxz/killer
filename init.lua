loaded = loaded or false
function loadObjects(force)
    if not force and loaded then
        return
    end
    local obj = {
        "scripts/printer/core",
        "scripts/printer/help",
        "scripts/printer/notice",
        "scripts/utils",
        "scripts/settings",
        "scripts/mem",
        "scripts/mode",
        "scripts/state/top",
        "scripts/state/state",
        "scripts/footer",
        "scripts/character/core",
        "scripts/character/warrior",
        "scripts/character/necro",
        "scripts/base/base",
        "scripts/base/boss",
        "scripts/base/envenomer",
        "scripts/core",
        "scripts/keybind/callback",
        "scripts/keybind/core",
        "scripts/keybind/trigger",
        "scripts/profile",
        "scripts/inventory/core",
        "scripts/inventory/filter",
        "scripts/inventory/rating",
        "scripts/inventory/repair",
        "scripts/roller/roller",
        "scripts/gag",
        "scripts/box",
        "scripts/miner",
        "scripts/herbalist",
        "scripts/learn",
        "scripts/buff",
        "scripts/opener",
        "scripts/gps/exp",
        "scripts/gps/path",
        "mapper/core",
        "mapper/area",
        "mapper/helper",
        "mapper/move",
        "mapper/draw",
        "mapper/events",
        "mapper/bind",
        "mapper/walker",
        "mapper/gps",
    }
    for i = 1, #obj do
        package.loaded[obj[i]] = nil
        require(obj[i])
    end
    loaded = true
    printer:success("Skrypty Killer", "Zaladowane!")
end
function reloadObjects()
    package.loaded.init = nil
    require("init")
    loadObjects(true)
    profile:loadLast()
    mapper:centerGMCP()
end
loadObjects(false)
