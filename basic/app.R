box::use(
  shiny[actionButton, fluidPage, observeEvent, renderText, shinyApp, textOutput],
)

box::use(
  ./module,
)

options(shiny.autoreload = TRUE)


env <- environment() # Store environment where box::use is called
shiny:::autoReloadCallbacks$register(function() {
  evalq(box::reload(module), env) # Call reload within the stored environment
})

shinyApp(
  fluidPage(
    actionButton("print", "print"),
    textOutput("t")
  ),
  function(input, output, session) {
    observeEvent(input$print, ignoreNULL = FALSE, {
      print(module$foo)
      output$t <- renderText(module$foo)
    })
  }
)
