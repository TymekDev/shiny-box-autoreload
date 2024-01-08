box::use(
  shiny[actionButton, fluidPage, observeEvent, renderText, textOutput],
)

box::use(
  ./module,
)

# NOTE: wrapping it in a function works fine as well
#' @export
ui <- fluidPage(
  actionButton("print", "print"),
  textOutput("t")
)

#' @export
server <- function(input, output, session) {
  observeEvent(input$print, ignoreNULL = FALSE, {
    print(module$foo)
    output$t <- renderText(module$foo)
  })
}
