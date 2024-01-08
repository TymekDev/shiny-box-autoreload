box::use(
  shiny[actionButton, fluidPage, moduleServer, NS, observeEvent, renderText, textOutput],
)

box::use(
  ./module,
)

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
