# Milestone 2: Power BI Development Environment Setup Guide

## Task 1: Importing and Preparing Data

### Overview:

The first phase of our project focuses on data loading and preparation within Power BI. The objective is to connect to an Azure SQL Database, a Microsoft Azure Storage account, and web-hosted CSV files to import the necessary components of the dataset. Once the data is imported, the next steps involve cleaning and organizing the data. This includes removing unnecessary columns, splitting date-time details, and ensuring overall data consistency.

The final step in this phase involves renaming the columns to align with Power BI conventions. This crucial step sets the stage for subsequent parts of the project, ensuring a standardized and organized dataset for effective reporting and analysis.

### Objective 1:
Connect to the Azure SQL Database, import the "orders_powerbi" table into Power BI, and perform necessary data cleaning and formatting.

### Prerequisites:
- Azure SQL Database credentials:
  - Server Name: `my-server-maya.database.windows.net`
  - Database Name: `orders_db`
  - Username: `maya`
  - Password: `AiCore127!`

### Steps:

1. **Connect to Azure SQL Database:**
   - Open Power BI and select "Get Data."
   - Choose "Azure" and select "Azure SQL Database."
   - Enter the server name, database name, username, and password. Choose "Database" under the Privacy level.

2. **Import "orders_powerbi" Table:**
   - Select the "orders_powerbi" table for import. 

3. **Power Query Editor:**
   - Navigate to the Power Query Editor to perform additional data transformations.

4. **Delete [Card Number] Column:**
   - Locate the column named [Card Number] and delete it to ensure data privacy.

5. **Split [Order Date] and [Shipping Date]:**
   - Utilize the "Split Column" feature to separate [Order Date] and [Shipping Date] into two distinct columns each: one for the date and another for the time.

6. **Filter Out Null Values:**
   - Remove any rows where the [Order Date] column has missing or null values to maintain data integrity.

7. **Rename Columns:**
   - Rename columns to align with Power BI naming conventions for consistency and clarity in the report.

### Example Renaming:
   - Rename [store_code] to [Store Code]


## Task 2: Cleaning and Transforming Products Data

### Overview:

In Task 2, the focus is on cleaning and transforming the data within the Products table. This involves downloading the Products.csv file and utilizing Power BI's Get Data option to import the file into your project. Subsequent steps include removing duplicates, extracting information from the weight column, and ensuring a standardized and organized dataset.

### Steps:

1. **Download Products.csv File:**
   - Download the Products.csv file provided.

2. **Import Data into Power BI:**
   - Use Power BI's Get Data option to import the Products.csv file into your project.

3. **Remove Duplicates:**
   - In the Data view, use the Remove Duplicates function on the product_code column to ensure each product code is unique.

4. **Clean and Transform Weight Column:**
   - In Power Query Editor:
     - Use the Column From Examples feature to generate two new columns from the weight column - one for the weight values and another for the units (e.g., kg, g, ml).
     - Sort the weight column by descending to get enough different examples to work with.
     - Replace any blank entries in the newly created units column with "kg".
     - Convert the values column data type to a decimal number.
     - If any errors arise during the conversion, replace those error values with the number 1.

5. **Create Calculated Column:**
   - In the Data view, create a new calculated column:
     - If the unit in the units column is not "kg," divide the corresponding value in the values column by 1000 to convert it to kilograms.

6. **Delete Unnecessary Columns:**
   - Return to the Power Query Editor and delete any columns that are no longer needed.

7. **Rename Columns:**
   - Rename columns in your dataset to match Power BI naming conventions, ensuring a consistent and clear presentation in your report.
### Example Renaming:
   - Rename [cost_price] to [Cost Price]

# Power BI Development Environment Setup Guide

## Task 3: Importing Stores Data from Azure Blob Storage

### Overview:

In Task 3 3, we focus on importing the Stores table from Azure Blob Storage into Power BI. This involves connecting to Azure Blob Storage using provided credentials, importing the data, and ensuring that the dataset adheres to Power BI naming conventions for clarity and consistency.

### Steps:

1. **Connect to Azure Blob Storage:**
   - Use Power BI's Get Data option to connect to Azure Blob Storage.
   - Provide the following Blob Storage credentials:
      - Account Name: `powerbistorage2`
      - Account Key: `ZPUQ+verSniHMG7EqR5/VAQc0aUYYG1utLQQuke0JQqR18TRRZI1/vTX65OqeXfUgWAugYLL73Gp+AStozRNKw==`
      - Container Name: `data-analytics`

2. **Import Stores Table:**
   - Import the Stores table from Azure Blob Storage into your Power BI project.
    # Power BI Development Environment Setup Guide

3. **Generate Google Maps API Key to convert Latitude and Longitute values into address:**
   - Create a Google Maps API Key through your Google account.
   - Set up a billing account for your project to function.

4. **Enable Geocoding API:**
   - In the Google Cloud Console, create credentials by selecting "API & Services" and then "Credentials."
   - Search for "Geocoding API" and enable it.

3. **Connect to Power BI Desktop:**
   - Use Power BI Desktop, select "Get Data," and connect to the dataset with latitude and longitude columns.

4. **Transform Data in Power Query:**
   - Select "Transform Data."
   - In Power Query, create a new source by choosing "Web" and insert the Google Maps API URL with your API key.

5. **Configure M Code for Dynamic Geocoding:**
   - Rename and save the query.
   - Return to the Home tab, select "Advanced Editor," and modify the M code to dynamically use latitude and longitude from your dataset.
6.  **Rename Columns:**
### Example Renaming:
   - Rename [store_code] to [Store Code]
   - Rename [store_type] to [Store Type]
# Power BI Development Environment Setup Guide

## Task 5: Importing and Transforming Customer Data

### Overview:

Task 5 involves importing and transforming customer data from the Customers folder. This task requires downloading the Customers.zip file, unzipping it locally, and then importing the data into Power BI. The data is organized into three CSV files, one for each region, with the same column format.

### Steps:

1. **Download and Unzip Customers.zip:**
   - Download the Customers.zip file from the provided link.
   - Unzip the file on your local machine, revealing a folder with three CSV files.

2. **Import Customers Data into Power BI:**
   - Use Power BI's Get Data option and choose the Folder data connector.
   - Navigate to the folder containing the three CSV files.
   - Select Combine and Transform to automatically append the three files into one query.

3. **Create Full Name Column:**
   - In Power BI, after loading the data, create a new column named "Full Name" by combining the [First Name] and [Last Name] columns.

4. **Delete Unused Columns:**
   - Delete any obviously unused columns, such as index columns, to streamline the dataset.

5. **Rename Columns:**
   

