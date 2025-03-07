library(tidyverse)
library(here)



#read in data
tank <-  read_csv(here("Data", "tank_capacity.csv"))

large <- tank |> filter(facility %in% c("SeaSims", "Mote Lab"))
small <- tank |> filter(facility %in% c("Plant A Million Coral", "Ciralium"))

large_plot <- ggplot(large, aes(x = facility, y = capacity, fill = capacity_type)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "", x = "Lab", y = "Capacity") +
  scale_fill_manual(values = c("current_capacity" = "darkorange", "ResiliReefs_capacity" = "limegreen")) +
  theme_classic()


small_plot <- ggplot(small, aes(x = facility, y = capacity, fill = capacity_type)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Tank Capacities in Different Labs", x = "Lab", y = "Capacity") +
  scale_fill_manual(values = c("current_capacity" = "darkorange", "ResiliReefs_capacity" = "limegreen")) +
  theme_classic()
small_plot
