# Elina Paakala
# 24.2.2017
# bull data

#Read the AY and HOL bull datas into R
AY <- read.table("H:/Jatko-opinnot/Open data science/IODS-final/AY.csv", sep=";", header=TRUE)
HOL <- read.table("H:/Jatko-opinnot/Open data science/IODS-final/HOL.csv", quote = "", sep=";", header=TRUE)

#Explore the structure and dimensions of the two datasets
str(AY)
dim(AY)
str(HOL)
dim(HOL)

#Summaries of the variables
summary(AY)
summary(HOL)

#There are 20 variables in both data sets. AY data has information of 176 Ayrshire bulls 
#and HOL data has information of 232 Holstein bulls.

# The variables:
# BovineIdBull = Bulls ID in the Finnish cattle database
# Freq = Number of times the bull was used inseminations in 2015
# BirthCountry = Birth country of the bull, CAN = Canada, DNK = Denmark, FIN = Finland, NOR = Norway, SWE = Sweden and USA = United States
# BirthYear = Birth year of the bull
# NameLong = Bulls name
# Yield = Breeding value(BV) for milk yield
# Growth = BV for growth
# Fertility = BV for fertility
# Birth = BV for birth index
# Calving = BV for calving index
# Udder.health = BV for udder health
# Other.diseases = BV for other diseases (than udder and claw diseases)
# Frame = BV for frame conformation
# Feet..Legs = BV for feet and leg conformation
# Udder = BV for udder conformation
# Milkability = BV for milkability (milking speed)
# Temperament = BV for temperament
# Longevity = BV for longevity 
# Claw health = BV for claw health
# NTM = Total merit index combined of the 14 above BVs with weighting


# The PCA is performed with only the 14 BVs so a new data with only these variables is needed
AY_PCA = subset(AY, select = -c(1, 2, 3, 4, 5, 20) )
HOL_PCA = subset(HOL, select = -c(1, 2, 3, 4, 5, 20) )

# Look at the structure of the two new datasets
str(AY_PCA)
str(HOL_PCA)

# There are now only the 14 BV variables in both datasets.

# Save the datasets to working directory
write.csv(AY_PCA, file = "AY_PCA.csv")
write.csv(HOL_PCA, file = "HOL_PCA.csv")

