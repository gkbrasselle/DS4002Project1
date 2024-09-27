
library(ggplot2)

review <- read.csv("cleanedreviewdata.csv")

# Summary Statistics
summary(review)

# HelpfulnessNumerator

sd(review$HelpfulnessNumerator)

ggplot(review, aes(x = HelpfulnessNumerator)) +
  geom_histogram(bins = 100, fill = "grey", color="black") + 
  labs(title = "Histogram of HelpfulnessNumerator", 
       x = "Helpfulness Numerator", 
       y = "Frequency") + theme_minimal() + 
    theme(plot.title = element_text(hjust = 0.5)) 

# HelpfulnessDenominator

sd(review$HelpfulnessDenominator)

ggplot(review, aes(x = HelpfulnessDenominator)) +
  geom_histogram(bins = 100, fill = "grey", color="black") + 
  labs(title = "Histogram of HelpfulnessDenominator", 
       x = "Helpfulness Denominator", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

# Score

sd(review$Score)

ggplot(review, aes(x = Score)) +
  geom_histogram(bins = 15, fill = "grey", color="black") + 
  labs(title = "Histogram of Score", 
       x = "Score", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 

# Word Count

sd(review$WordCount)

ggplot(review, aes(x = WordCount)) +
  geom_histogram(bins = 280, fill = "grey", color="black") + 
  labs(title = "Histogram of WordCount", 
       x = "Word Count", 
       y = "Frequency") + theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5)) 


