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
