box::use(
  shiny[shinyApp],
)

box::use(
  ./main,
)

options(shiny.autoreload = TRUE)


env <- environment() # Store environment where box::use is called
shiny:::autoReloadCallbacks$register(function() {
  evalq(box::reload(main), env) # Call reload within the stored environment
})

# NOTE: both main$ui() and main$server() have to be wrapped in a function
shinyApp(
  function() main$ui("app"),
  function(input, output, session) main$server("app")
)
