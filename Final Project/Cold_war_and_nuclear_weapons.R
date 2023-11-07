#### The Cold War and Nuclear Weapons 

# This project is based on the data sources provided by [OurWorldInData project]: https://ourworldindata.org/nuclear-weapons.
# Cited: Max Roser, Bastian Herre and Joe Hasell (2013) - "Nuclear Weapons". Published online at OurWorldInData.org. Retrieved from: 'https://ourworldindata.org/nuclear-weapons' [Online Resource].

# Packages

library(tidyverse)
library(ggplot2)


# Data
Nuclear_Weapons_Countries <- read.csv("data/country-position-nuclear-weapons.csv")
View(Nuclear_Weapons_Countries) # Checking the data

Nuclear_Weapons_Tests <- read.csv("data/number-of-nuclear-weapons-tests.csv")
View(Nuclear_Weapons_Tests) # Checking the data


# Inspect data

head(Nuclear_Weapons_Countries)
head(Nuclear_Weapons_Tests)

# The data looks good for my purpose



### Visulazation of Nuclear weapons over time

# Countries with Nuclear Weapons (1945)

# Load data

Nuclear_Weapons_Countries <- read.csv("data/country-position-nuclear-weapons.csv")


# Filter the data 

Nuclear_Weapons_1945 <- read.csv("data/country-position-nuclear-weapons.csv") %>%
  filter(Year == 1945)


# Create a visualization

ggplot(data = Nuclear_Weapons_1945, aes(x = Entity, y = nuclear_weapons_status)) +
  geom_col() +
  labs(title = "Nuclear Weapons Status in 1945", x = "Country", y = "Nuclear Weapons Status") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Sorting the data by "Nuclear Weapons Status" in descending order

sorted_data1 <- Nuclear_Weapons_1945 %>%
  arrange(desc(nuclear_weapons_status))



# Selecting the top 20 countries with the highest "Nuclear Weapons Status" scores

top_20_countries1945 <- head(sorted_data1, 20)


# Creating a plot for the 20 countries with highest nuclear weapons score

ggplot(data = top_20_countries1945, aes(x = reorder(Entity, -nuclear_weapons_status), y = nuclear_weapons_status)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Top 20 Countries with the Highest Nuclear Weapons Status (1945)",
       x = "Country",
       y = "Nuclear Weapons Status") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Countries with Nuclear Weapons during the Cold War (1975)

# Load data

Nuclear_Weapons_Countries <- read.csv("data/country-position-nuclear-weapons.csv")


# Filter the data 

Nuclear_Weapons_1975 <- read.csv("data/country-position-nuclear-weapons.csv") %>%
  filter(Year == 1975)


# Create a visualization

ggplot(data = Nuclear_Weapons_1975, aes(x = Entity, y = nuclear_weapons_status)) +
  geom_col() +
  labs(title = "Nuclear Weapons Status in 1975", x = "Country", y = "Nuclear Weapons Status") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Sorting the data by "Nuclear Weapons Status" in descending order

sorted_data2 <- Nuclear_Weapons_1975 %>%
  arrange(desc(nuclear_weapons_status))


# Selecting the top 20 countries with the highest "Nuclear Weapons Status" scores

top_20_countries1975 <- head(sorted_data2, 20)


# Creating a visualization for the 20 countries with highest nuclear weapons

ggplot(data = top_20_countries1975, aes(x = reorder(Entity, -nuclear_weapons_status), y = nuclear_weapons_status)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Top 20 Countries with the Highest Nuclear Weapons Status (1975)",
       x = "Country",
       y = "Nuclear Weapons Status") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Countries with Nuclear Weapons in the present (2020)

# Load data

Nuclear_Weapons_Countries <- read.csv("data/country-position-nuclear-weapons.csv")


# Filter the data 

Nuclear_Weapons_2020 <- read.csv("data/country-position-nuclear-weapons.csv") %>%
  filter(Year == 2020)

# Create a visualization

ggplot(data = Nuclear_Weapons_2020, aes(x = Entity, y = nuclear_weapons_status)) +
  geom_col() +
  labs(title = "Nuclear Weapons Status in 2020", x = "Country", y = "Nuclear Weapons Status") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Sorting the data by "Nuclear Weapons Status" in descending order

sorted_data3 <- Nuclear_Weapons_2020 %>%
  arrange(desc(nuclear_weapons_status))

# Selecting the top 20 countries with the highest "Nuclear Weapons Status" scores

top_20_countries2020 <- head(sorted_data3, 20)

# Creating a visualization for the 20 countries with highest nuclear weapons score

ggplot(data = top_20_countries2020, aes(x = reorder(Entity, -nuclear_weapons_status), y = nuclear_weapons_status)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Top 20 Countries with the Highest Nuclear Weapons Status (2020)",
       x = "Country",
       y = "Nuclear Weapons Status") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



### Nuclear weapons testing over time

# Load data

Nuclear_Weapons_Tests <- read.csv("data/number-of-nuclear-weapons-tests.csv")

head(Nuclear_Weapons_Tests)


# Creating visualization Nuclear Weapons Tests Over Time

ggplot(data = Nuclear_Weapons_Tests, aes(x = Year, y = nuclear_weapons_tests)) +
  geom_col() +
  labs(title = "Nuclear Weapons Tests Over Time", x = "Year", y = "Nuclear Weapons Tests") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Creating visualization Nuclear Weapons Tests: Countries testing over time


ggplot(data = Nuclear_Weapons_Tests, aes(x = Entity, y = nuclear_weapons_tests, color = Entity)) +
  geom_line() +
  labs(title = "Nuclear Weapons Tests Countries (1945 - 2019)", x = "Country", y = "Nuclear Weapons Tests") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Testing Countries in 1975

#Filter the data

Nuclear_Weapons_Tests1975 <- read.csv("data/number-of-nuclear-weapons-tests.csv") %>%
  filter(Year == 1975)


# Creating visualization testing in 1975

ggplot(data = Nuclear_Weapons_Tests1975, aes(x = Entity, y = nuclear_weapons_tests, color = Entity)) +
  geom_col() +
  labs(title = "Nuclear Weapons Tests Countries (1975)", x = "Country", y = "Nuclear Weapons Tests") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Testing Countries in 2010

# Filter the data 

Nuclear_Weapons_Tests2010 <- read.csv("data/number-of-nuclear-weapons-tests.csv") %>%
  filter(Year == 2010)

# Creating plot testing in 2010

ggplot(data = Nuclear_Weapons_Tests2010, aes(x = Entity, y = nuclear_weapons_tests, color = Entity)) +
  geom_col() +
  labs(title = "Nuclear Weapons Tests Countries (2010)", x = "Country", y = "Nuclear Weapons Tests") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

# Nuclear Weapon Testing with plotly

# Install packages

install.packages("plotly")

# Packages

library(plotly)
library(dplyr)


# Load data

Nuclear_Weapons_Tests_Plotly <- read.csv("data/number-of-nuclear-weapons-tests.csv")

# Creating an interactive line visualization

plotly_Nuclear_Weapons <- Nuclear_Weapons_Tests_Plotly %>%
  plot_ly(x = ~Year, y = ~nuclear_weapons_tests, color = ~Entity, type = 'scatter', mode = 'lines+markers')

# Setting the title and axis labels

plotly_Nuclear_Weapons%>%
  layout(title = "Nuclear Weapons Tests Over Time") %>%
  layout(xaxis = list(title = "Year")) %>%
  layout(yaxis = list(title = "Nuclear Weapons Tests"))

# Show

plotly_Nuclear_Weapons

