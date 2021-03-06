require("../third-party/angular/angular")
#require("../third-party/angular-sanitize/angular-sanitize")

require("../third-party/textAngular/textAngular-sanitize")
#require("../third-party/textAngular/src/textAngularSetup")
require("../third-party/textAngular/textAngular")

require("../third-party/mgo-mousetrap/mousetrap")
require("../third-party/mgo-mousetrap/wMousetrap")

require("../third-party/angular-strap/dist/modules/dimensions")
require("../third-party/angular-strap/dist/modules/tooltip")
require("../third-party/angular-strap/dist/modules/dropdown")
require("../third-party/angular-strap/dist/modules/popover")
require("../third-party/angular-strap/dist/modules/parse-options")
require("../third-party/angular-strap/dist/modules/select")

# just for experiments
# require("/usr/share/ubuntu-html5-ui-toolkit/0.1/ambiance/js/core.js")

controllers = require('./controllers')
services = require('./services')
directives = require('./directives')

global.app = angular.module('gmail-send-mail', [
    #'ngSanitize'
    'mgo-mousetrap'
    , 'mgcrea.ngStrap.helpers.dimensions'
    , 'mgcrea.ngStrap.helpers.parseOptions'
    , 'mgcrea.ngStrap.tooltip'
    , 'mgcrea.ngStrap.dropdown'
    , 'mgcrea.ngStrap.popover'
    , 'mgcrea.ngStrap.select'
    , 'textAngular'
])

global.app.service('PlatformService', services.PlatformService)
global.app.service('WindowService', services.WindowService)
global.app.service('GuiService', services.GuiService)

global.app.controller('mainController', controllers.mainController)
global.app.controller('PanelHeadingController', controllers.PanelHeadingController)
global.app.controller('PanelFooterController', controllers.PanelFooterController)
global.app.controller('EMailSettingController', controllers.EMailSettingController)
global.app.controller('EMailContentController', controllers.EMailContentController)

global.app.directive('panelHeading', directives.PanelHeading)
global.app.directive('panelFooter', directives.PanelFooter)
global.app.directive('eMailSetting', directives.EMailSetting)
global.app.directive('eMailContent', directives.EMailContent)