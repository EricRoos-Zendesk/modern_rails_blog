# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.41.0/dist/index.js"
pin "hotkeys-js", to: "https://ga.jspm.io/npm:hotkeys-js@3.9.0/dist/hotkeys.esm.js"
pin "@rails/actiontext", to: "actiontext.js"
pin "trix", to: "https://ga.jspm.io/npm:trix@2.0.0-beta.0/dist/trix.js"
pin "stimulus-popover", to: "https://ga.jspm.io/npm:stimulus-popover@5.0.1/dist/stimulus-popover.es.js"
