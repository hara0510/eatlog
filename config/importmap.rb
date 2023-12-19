# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "menucolor", to: "menucolor.js"
pin "menu-side", to: "menu-side.js"
pin "mouseover-border", to:"mouseover-border.js"
pin "dropdownmenu", to:"dropdownmenu.js"