gene <- "TP53"
gene 
print(gene) 

expression_levels <- c(2.3, 4.6, 3.6, 7.2, 4.7)

# Import a CSV file as a variable
raw_data <- read.csv(file.choose())
raw_data

gene1 <- 25    # Valid, number at the end

# No spaces in names
sample id <- "s01"  # Invalid: contains space

# Use underscore (_) or dot (.) instead
sample_id <- "s01"
sample.id <- "s02"

# R is case-sensitive
Glucose_level <- 110
glucose_level <- 110  # Treated as a different variable

# Variables can be overwritten without warning
glucose_level <- c(110, 90, 120)

# Example of variable overwriting in a data
# Removing Columns

# First create a copy of raw_data to preserve the original dataset
data <- raw_data

# Remove the 'patient_id' column from the original raw_data
# This overwrites raw_data permanently, and the column cannot be restored
# unless a copy (like 'data') was created beforehand
raw_data$patient_id <- NULL

# Alternatively, create a new dataset without the first column
# This keeps the original 'data' intact and stores the modified version in clean_data
clean_data <- data[, -1]

# --------------------------------------------------------------------------------------------------

#### 2. COMMENTS ####

# Comments improve code readability.
# They are ignored during execution.
# This is only for your own understanding
# R doesn’t consider it as a code
# It starts with # and anything after that is ignored by R when the code runs
# If your code begin with # R treats the entire line as a comment and skips it completely

# Example:
# data_2 <- 23
data_2 <- 23

# Comments can be used as headings:
#### Heading 1 ####
#### Heading 2 ####

# Best practice: always add comment before a code or at the end for clarity”

# --------------------------------------------------------------------------------------------------

#### 3. KEYWORDS ####

# Reserved words have predefined functions and cannot be used as variable names.
# Examples: if, else, TRUE, FALSE, for

help("reserved")  # Check the list of reserved words

# You can check the documentation for any R function using help(function_name) or ?function_name
help(mean) # check other R function
?median

# --------------------------------------------------------------------------------------------------

#### Sorting Data with TRUE & FALSE keywords ####

# Sort 'age' from largest to smallest
sorted_age <- sort(raw_data$age, decreasing = TRUE)
sorted_age

# Sort 'age' from smallest to largest
sorted_age2 <- sort(raw_data$age, decreasing = FALSE)
sorted_age2

# TRUE and FALSE are logical constants in R
# They are written in uppercase without quotation marks

# --------------------------------------------------------------------------------------------------

#### if & else: Logical Conditions ####

gene_expression <- 30

# if statement:
# Executes the code inside the curly braces only if the condition is TRUE
# Here, the condition checks if gene_expression is greater than 50

# If TRUE, prints the message "Gene is highly expressed"
if (gene_expression > 30) {
  print("Gene is highly expressed")
}

# If FALSE, nothing happens because there is no else block
if (gene_expression > 50) {
  print("Gene is highly expressed")
}


if (gene_expression > 50) {
  print("Gene is highly expressed")
} else {
  print("Gene expression is low")
}

str(raw_data)
clean_data <- raw_data
str(clean_data)
for (i in 1:ncol(clean_data)) {
  if (is.character(clean_data[[i]])) {
    clean_data[[i]] <- as.factor(clean_data[[i]])
  }
}
str(clean_data)
str(raw_data)
l”

cholesterol <- 230

# ----------------------------------------------------------------------------------------------------------------

# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”

Systolic_bp <- 130

# ----------------------------------------------------------------------------------------------------------------

# 3. Automating Data Type Conversion with for loop

# Use patient_info.csv data and metadata.csv
# Perform the following steps separately on each dataset (patient_info.csv data and metadata.csv)
# Create a copy of the dataset to work on.
# Identify all columns that should be converted to factor type.
# Store their names in a variable (factor_cols).

# Example: factor_cols <- c("gender", "smoking_status")

# Use a for loop to convert all the columns in factor_cols to factor type.
# Pass factor_cols to the loop as a vector.

# Hint:
# for (col in factor_cols) {
#   data[[col]] <- as.factor(data[[col]])  # Replace 'data' with the name of your dataset
# }

# ----------------------------------------------------------------------------------------------------------------

# 4. Converting Factors to Numeric Codes

# Choose one or more factor columns (e.g., smoking_status).
# Convert "Yes" to 1 and "No" to 0 using a for loop.

# Hint:
# binary_cols <- c("smoking_status")   # store column names in a vector
# use ifelse() condition inside the loop to replace Yes with 1 and No with 0
# for (col in binary_cols) {
#   data[[col]] <- # insert your ifelse() code here
# }

# ----------------------------------------------------------------------------------------------------------------

#  Verification:
#    Compare the original and modified datasets to confirm changes.
#    str(original_data)
#    str(data)

# ----------------------------------------------------------------------------------------------------------------

# Final Note:
# All instructions are written as comments.
# For actual code execution, remove the # symbol from each line you want to run.



