box::use(
  shiny[actionButton, fluidPage, moduleServer, NS, observeEvent, renderText, textOutput],
)

box::use(
  ./module,
)

# NOTE: wrapping it in a function works fine as well
#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    actionButton(ns("print"), "print"),
    textOutput(ns("t"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    observeEvent(input$print, ignoreNULL = FALSE, {
      print(module$foo)
      output$t <- renderText(module$foo)
    })
  })
}
