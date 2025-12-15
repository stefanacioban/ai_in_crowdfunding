############################################################
# 0. Setup: create a data directory (optional)
############################################################
if (!dir.exists("data")) dir.create("data")
setwd("data")   # comment this out if you don't want to change WD
############################################################
# 1. GAPMINDER DATA (via R package)
############################################################

# Install once (comment out after first run)
# install.packages("gapminder")

library(gapminder)

# Load the built-in data frame
data("gapminder")

# Inspect structure (optional)
str(gapminder)
head(gapminder)


############################################################
# 2. WHOLESALE CUSTOMERS (UCI)
############################################################

# Original UCI URL for the data file
wholesale_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00316/Wholesale%20customers%20data.csv"

wholesale_customers <- read.csv(
  wholesale_url,
  header = TRUE
)

str(wholesale_customers)
head(wholesale_customers)

############################################################
# Wholesale Customers from UCI (zip)
############################################################

# URL of the official UCI zip (new archive)
wholesale_zip_url <- "https://cdn.uci-ics-mlr-prod.aws.uci.edu/292/wholesale%2Bcustomers.zip"

# Download the zip file
download.file(wholesale_zip_url,
              destfile = "wholesale_customers.zip",
              mode = "wb")

# Unzip in the current working directory
unzip("wholesale_customers.zip")

# Check what was extracted
list.files()

# One of the extracted files will be a CSV (e.g. 'Wholesale customers data.csv').
# Adjust the name below if needed:
wholesale_customers <- read.csv("Wholesale customers data.csv")

str(wholesale_customers)
head(wholesale_customers)




############################################################
# 4. SAMPLE SUPERSTORE (Tableau)
############################################################

# Install once if needed
# install.packages("readxl")

library(readxl)

# Assume you've placed the Excel file in the working directory as:
# "Sample - Superstore.xls"  OR  "Sample - Superstore.xlsx"

# For .xls:
superstore <- read_excel("Sample - Superstore.xls")

# For .xlsx (uncomment and comment the line above if using xlsx):
# superstore <- read_excel("Sample - Superstore.xlsx")

str(superstore)
head(superstore)


