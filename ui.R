

shinyUI(
        pageWithSidebar(
                
                headerPanel("Giving a solution for your mood"),
                sidebarPanel(
                        textInput('mood', label="Tell me your mood ?"),
                        textInput('movie', label="Tell me the the type of the movie you like"),
                        submitButton('Submit')
                ),
                mainPanel(
                        h1('Suggested Solution'),
                        h4('Your feeling is'),
                        verbatimTextOutput("inputValue"),
                        h4('and the type of the movie you like is'),
                        verbatimTextOutput("inputValue2"),
                        h4('Then, Here is the solution'),
                        verbatimTextOutput("prediction"),
                        h4('and you can watch this movie '),
                        verbatimTextOutput("prediction2")
                )
        )
)