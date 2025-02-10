
#data and cleaning
aviation_data <- read.csv("aviation-demand-efficiency.csv")

aviation_data <- aviation_data %>%
  select(-Code)
aviation_data[1, 4] <- 56125
aviation_data$Passenger.demand <- as.numeric(as.character(aviation_data$Passenger.demand))
aviation_data$Freight.demand <- as.numeric(as.character(aviation_data$Freight.demand))
aviation_data$Aviation.demand <- aviation_data$Passenger.demand + aviation_data$Freight.demand
