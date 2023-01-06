require("hs.ipc")

-- ================================ Setup Logging =================================

logger = hs.logger.new('windowManager')
logger.setLogLevel('info')

-- ========================== Spoons ===========================

arrangeDesktop = hs.loadSpoon('ArrangeDesktop')
arrangeDesktop.logger.setLogLevel('info')

-- ========================== Desktop Layout Management ===========================

hs.application.enableSpotlightForNameSearches(true)
hs.window.filter.ignoreAlways['Firefox Developer EditionCP Web Content'] = true
hs.window.filter.ignoreAlways['Firefox Developer EditionCP WebExtensions'] = true
hs.window.filter.ignoreAlways['Firefox Developer EditionCP RDD Process'] = true
hs.window.filter.ignoreAlways['Firefox Developer EditionCP Privileged Content'] = true
hs.window.filter.ignoreAlways['Firefox Developer EditionCP Socket Process'] = true
hs.window.filter.ignoreAlways['Slack Helper (Renderer)'] = true

-- ================================== Setup Menu ==================================

menubar = hs.menubar.new()
menubar:setIcon(hs.image.imageFromName("NSTouchBarIconViewTemplate"))

if menubar then
    local menuItems = {}

    menuItems = arrangeDesktop:addMenuItems(menuItems)

    menubar:setMenu(menuItems)
end

