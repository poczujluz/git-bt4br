library(shiny)
library(ggplot2)
library(tidyr)

tpm_data <- read.csv("c:/Users/poczujluz/quarto/App_5/TPMs_table_100genes.csv")

tpm_data_long <- tpm_data %>%
  pivot_longer(
    cols = starts_with("Control") | starts_with("Treated"),
    names_to = "Sample",
    values_to = "TPM"
  )

server <- function(input, output, session) {
  
  observe({
    updateSelectInput(session, "gene", choices = unique(tpm_data$GeneID))
  })
  
  output$genePlot <- renderPlot({

    gene_data <- subset(tpm_data_long, GeneID == input$gene)

    ggplot(gene_data, aes(x = Sample, y = TPM)) +
      geom_bar(stat = "identity", fill = "#B8860B") +
      theme_minimal() +
      labs(title = paste("Expression of", input$gene),
           x = "Sample",
           y = "TPM") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
}