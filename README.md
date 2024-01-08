## {shiny} x {box} Autoreload
This repository contains an attempt to make Shiny autoreload work with [{box}][]
package.
The end-goal is to make autoreload work with [{rhino}]-based applications.

[{box}]: https://github.com/klmr/box
[{rhino}]: https://github.com/Appsilon/rhino


## Examples
### [Basic][]

1. Run `shiny::runApp("basic")`
1. Modify `foo` variable within `basic/module.R`
1. Changes will be reflected within the app (despite {box} caching!)

[Basic]: basic/

### [`main.R` module][]

1. Run `shiny::runApp("main-module")`
1. Modify anything: UI, server function, and/or variable within `main-module/`
1. Changes will be reflected within the app (despite {box} caching and nested
   modules!)

[`main.R` module]: main-module/

### [Namespaced `main.R` module][]

1. Run `shiny::runApp("main-module-ns")`
1. Modify anything: UI, server function, and/or variable within `main-module-ns/`
1. Changes will be reflected within the app (despite {box} caching, nested
   modules, and namespace!)

[Namespaced `main.R` module]: main-module-ns/
