loaded = loaded or false
stopRecursion = false
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
        "scripts/db",
        "scripts/mem",
        "scripts/mode",
        "scripts/state/top",
        "scripts/state/state",
        "scripts/footer",
        "scripts/action",
        "scripts/character/core",
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
        "scripts/gps/explore",
        "scripts/gps/path",
        "scripts/updater",
        "mapper/core",
        "mapper/area",
        "mapper/helper",
        "mapper/move",
        "mapper/draw",
        "mapper/events",
        "mapper/bind",
    }
    for i = 1, #obj do
        package.loaded[obj[i]] = nil
        require(obj[i])
    end
    loaded = true
    printer:success("Skrypty Killer", "Zaladowane!")
end
function reloadObjects()
    stopRecursion = true
    cecho("\n<cyan>Przerywam reukrencje...\n")
    tempTimer(1, function()
      package.loaded.init = nil
      require("init")
      loadObjects(true)
      profile:loadLast()
      mapper:centerGMCP()
    end)
end
loadObjects(false)
