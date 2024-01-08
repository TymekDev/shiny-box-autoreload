box::use(./main)

box::use(
  shiny[shinyApp],
)

options(shiny.port = 8080, shiny.autoreload = TRUE)

env <- environment()
shiny:::autoReloadCallbacks$register(function() {
  evalq(box::reload(main), env)
})

# NOTE: both main$ui and main$server() have to be wrapped in a function
shinyApp(
  function() main$ui,
  function(input, output, session) main$server(input, output, session)
)
