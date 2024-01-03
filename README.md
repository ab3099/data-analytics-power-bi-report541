# Data Analytics Power BI Report

1. [Importing and Organising Data](#Importing-Organising-Data)
   - [Overview](#Overview)
   - [Prerequisites](#prerequisites)
2. [Milestone 1](#milestone-1)
3.  [Milestone 2](#milestone-2)
  -  [Cleaning and Transforming Product data](#cleaning-and-transforming-product-data)   
   - [Importing Stores Data from Azure Blob Storage](#importing-stores-data-from-azure-blob-storage)
   - [Importing and Transforming Customer Data](#importing-and-transforming-customer-data)
4. [Milestone 3](#milestone-3)

5. [Report Set Up](#report-set-up)
   - [Overview](#Overview)
   
6. [Milestone 4 & 5](#Milestone-4&5)
7. [Milestone 6](#milestone-6)
8. [Milestone 7](#milestone-7)
9. [Milestone 8](#milestone-8)

   
## Importing and Preparing Data

### Overview:

The first phase of our project, which includes Milestones 1 to 4, focuses on data loading and preparation within Power BI. The objective is to connect to an Azure SQL Database, a Microsoft Azure Storage account, and web-hosted CSV files to import the necessary components of the dataset. Once the data is imported, the next steps involve cleaning and organizing the data. This includes removing unnecessary columns, splitting date-time details, and ensuring overall data consistency.

The final step in this phase involves renaming the columns to align with Power BI conventions. This crucial step sets the stage for subsequent parts of the project, ensuring a standardized and organized dataset for effective reporting and analysis.

### Prerequisites:
- Power BI desktop 

### Milestone 1:
Connect to the Azure SQL Database, import the "orders_powerbi" table into Power BI, and perform necessary data cleaning and formatting.

### Azure SQL Database credentials:
  - Server Name: `my-server-maya.database.windows.net`
  - Database Name: `orders_db`
  - Username: `maya`
  - Password: `AiCore127!`

### Steps:

#### 1. Connect to Azure SQL Database:
   - Open Power BI and select "Get Data."
   - Choose "Azure" and select "Azure SQL Database."
   - Enter the server name, database name, username, and password. Choose "Database" under the Privacy level.

#### 2. Import "orders_powerbi" Table:
   - Select the "orders_powerbi" table for import. 

#### 3. Power Query Editor:
   - Navigate to the Power Query Editor to perform additional data transformations.

#### 4. Delete [Card Number] Column:
   - Locate the column named [Card Number] and delete it to ensure data privacy.

#### 5. Split [Order Date] and [Shipping Date]:
   - Utilize the "Split Column" feature to separate [Order Date] and [Shipping Date] into two distinct columns each: one for the date and another for the time.

#### 6. Filter Out Null Values:
   - Remove any rows where the [Order Date] column has missing or null values to maintain data integrity.

#### 7. Rename Columns:
   - Rename columns to align with Power BI naming conventions for consistency and clarity in the report.

### Example Renaming:
   - Rename [store_code] to [Store Code]


## Milestone 2:
1. Cleaning and Transforming Products Data

### Overview:

In Milestone 2, the focus is **first** on cleaning and transforming the data within the Products table. This involves downloading the Products.csv file and utilizing Power BI's Get Data option to import the file into your project. Subsequent steps include removing duplicates, extracting information from the weight column, and ensuring a standardized and organized dataset.


### Steps:

#### 1. Download Products.csv File:
   - Download the Products.csv file provided.

#### 2. Import Data into Power BI:
   - Use Power BI's Get Data option to import the Products.csv file into your project.

#### 3. Remove Duplicates:
   - In the Data view, use the Remove Duplicates function on the product_code column to ensure each product code is unique.

#### 4. Clean and Transform Weight Column:
   - In Power Query Editor:
     - Use the Column From Examples feature to generate two new columns from the weight column - one for the weight values and another for the units (e.g., kg, g, ml).
     - Sort the weight column by descending to get enough different examples to work with.
     - Replace any blank entries in the newly created units column with "kg".
     - Convert the values column data type to a decimal number.
     - If any errors arise during the conversion, replace those error values with the number 1.

#### 5. Create Calculated Column:
   - In the Data view, create a new calculated column:
     - If the unit in the units column is not "kg," divide the corresponding value in the values column by 1000 to convert it to kilograms.

#### 6. Delete Unnecessary Columns:
   - Return to the Power Query Editor and delete any columns that are no longer needed.

#### 7. Rename Columns:
   - Rename columns in your dataset to match Power BI naming conventions, ensuring a consistent and clear presentation in your report.
#### Example Renaming:
   - Rename [cost_price] to [Cost Price]

## Milestone 2:
2. Importing Stores Data from Azure Blob Storage

### Overview:

Here we focus on importing the Stores table from Azure Blob Storage into Power BI. This involves connecting to Azure Blob Storage using provided credentials, importing the data, and ensuring that the dataset adheres to Power BI naming conventions for clarity and consistency.

### Steps:

#### 1. Connect to Azure Blob Storage:
   - Use Power BI's Get Data option to connect to Azure Blob Storage.
   - Provide the following Blob Storage credentials:
      - Account Name: `powerbistorage2`
      - Account Key: `ZPUQ+verSniHMG7EqR5/VAQc0aUYYG1utLQQuke0JQqR18TRRZI1/vTX65OqeXfUgWAugYLL73Gp+AStozRNKw==`
      - Container Name: `data-analytics`

#### 2. Import Stores Table:
   - Import the Stores table from Azure Blob Storage into your Power BI project.
    # Power BI Development Environment Setup Guide

#### 3. Generate Google Maps API Key to convert Latitude and Longitute values into address:
   - Create a Google Maps API Key through your Google account.
   - Set up a billing account for your project to function.

#### 4. Enable Geocoding API:
   - In the Google Cloud Console, create credentials by selecting "API & Services" and then "Credentials."
   - Search for "Geocoding API" and enable it.

#### 5. Connect to Power BI Desktop:
   - Use Power BI Desktop, select "Get Data," and connect to the dataset with latitude and longitude columns.

#### 6. Transform Data in Power Query:
   - Select "Transform Data."
   - In Power Query, create a new source by choosing "Web" and insert the Google Maps API URL with your API key.

#### 7. Configure M Code for Dynamic Geocoding:
   - Rename and save the query.
   - Return to the Home tab, select "Advanced Editor," and modify the M code to dynamically use latitude and longitude from your dataset.
#### 6.  Rename Columns:
- Example Renaming:
   - Rename [store_code] to [Store Code]
   - Rename [store_type] to [Store Type]


## Milestone 2: 
3. Importing and Transforming Customer Data

### Overview:

This task involves importing and transforming customer data from the Customers folder. This task requires downloading the Customers.zip file, unzipping it locally, and then importing the data into Power BI. The data is organized into three CSV files, one for each region, with the same column format.

### Steps:

#### 1. Download and Unzip Customers.zip
   - Download the Customers.zip file from the provided link.
   - Unzip the file on your local machine, revealing a folder with three CSV files.

#### 2. Import Customers Data into Power BI
   - Use Power BI's Get Data option and choose the Folder data connector.
   - Navigate to the folder containing the three CSV files.
   - Select Combine and Transform to automatically append the three files into one query.

#### 3. Create Full Name Column
   - In Power BI, after loading the data, create a new column named "Full Name" by combining the [First Name] and [Last Name] columns.

#### 4. Delete Unused Columns
   - Delete any obviously unused columns, such as index columns, to streamline the dataset.

#### 5. Rename Columns
   


## Milestone 3: Creating a Continuous Date Table and Adding Time Intelligence Columns

## Overview

Milestone 3 focuses on preparing a continuous date table in Power BI to leverage time intelligence functions effectively. This involves creating a date table spanning from the earliest 'Order Date' to the latest 'Shipping Date' within the Orders table. Additionally, DAX formulas will be used to add essential time-related columns to enhance time analysis capabilities.

### Steps

 #### 1. Create a Continuous Date Table

- Utilize a DAX formula to generate a continuous date table covering the entire time period of your data.

```dax
DateTable = DateTable = CALENDAR(MIN(Orders[Order Date]),MAX(Orders[Shipping Date]))
```

 #### 2.Add Time Intelligence Columns:

Once the date table is created, enhance it by adding specific time intelligence columns.

```dax
"Day of Week" = Day of Week = WEEKDAY([Date])

"Month Number" = MONTH([Date])

"Month Name" = FORMAT([Date], "MMMM")

"Quarter" = QUARTER([Date])

"Year" = YEAR([Date])

"Start of Year" = STARTOFYEAR([Date])

"Start of Quarter" = STARTOFQUARTER([Date])

"Start of Month" = STARTOFMONTH([Date])

"Start of Week" = STARTOFWEEK([Date])
```

#### 3: Creating Relationships for Star Schema

In this task, we establish relationships between tables to form a star schema, ensuring that the relationships are one-to-many with a single filter direction from the one side to the many side. The primary focus is on the "Orders" table, which serves as the central fact table.

### Relationships:

1. **Orders[product_code] to Products[product_code]**
   - Type: One-to-Many
   - Direction: Orders to Products

2. **Orders[Store Code] to Stores[store code]**
   - Type: One-to-Many
   - Direction: Orders to Stores

3. **Orders[User ID] to Customers[User UUID]**
   - Type: One-to-Many
   - Direction: Orders to Customers

4. **Orders[Order Date] to Date[date] (Active Relationship)**
   - Type: One-to-Many
   - Direction: Orders to Date
   - Active Relationship: Yes

5. **Orders[Shipping Date] to Date[date]**
   - Type: One-to-Many
   - Direction: Orders to Date

### Notes:

- The "Orders[Order Date] to Date[date]" relationship is set as the active relationship. This indicates that it will be used as the default relationship when querying the data, providing a clear and consistent date reference for analysis.

- The one-to-many relationships ensure that each record in the "Orders" table relates to one and only one record in the connected tables, maintaining data integrity.

- The single filter direction from the "Orders" table to the related tables ensures a straightforward flow of filtering criteria, simplifying queries and enhancing the efficiency of the star schema.

By establishing these relationships, we create a well-defined star schema.

#### 4. Creating Measures Table

To effectively manage measures in our data model and keep it organized, we'll create a separate table named "Measures Table." This helps in easy navigation and provides visibility in the Query Editor for debugging and troubleshooting purposes. There are two ways to create this table, and we recommend the latter approach using the Power Query Editor.

### Steps:

#### 4.1 Access Model View
#### 4.2 Create Measures Table
#### 4.3 Name the New Blank Table and Load the table
#### 4.4 Create key measures
### Key Measures

#### **Total Orders**
- **Description:** Counts the number of orders in the Orders table.
- **Formula:**
  ```DAX
  Total Orders = COUNTROWS(Orders)
   ```
#### **Total Revenue**
- **Description:** Multiplies the quantity of products in each order by the sale price of the products for each row and then sums the result.
- **Formula:**
  ```DAX
  Total Revenue = SUMX(Orders, Orders[Product Quantity] * RELATED(Products[Sale_Price]))
  ```
 #### **Total Profit**
- **Description:** For each row, subtracts the cost price from the sale price of the products and then multiplies the result by the product quantity. Sums the result for all rows.
- **Formula:**
  ```DAX
  Total Profit = SUMX(Orders, (Orders[Product Quantity] * RELATED(Products[Sale_Price]) - RELATED(Products[Cost_Price])))
  ```
  #### **Total Customers**
- **Description:** Counts the number of unique customers in the Orders table. This measure dynamically adjusts as the Orders table is filtered.
- **Formula:**
  ```DAX
  Total Customers = CALCULATE(COUNTROWS(VALUES(Orders[CustomerID])))
  ### Total Quantity
- **Description:** Counts the number of items sold in the Orders table.
- **Formula:**
  ```DAX
  Total Quantity = SUM(Orders[Product Quantity])
  ```
####  **Profit YTD**
- **Description:** Calculates the total profit for the current year.
- **Formula:**
  ```DAX
  Profit YTD = TOTALYTD([Total Profit], Orders[Order Date])
#### **Revenue YTD**
- **Description:** Calculates the total revenue for the current year.
- **Formula:**
  ```DAX
  Revenue YTD = TOTALYTD([Total Revenue], Orders[Order Date])

#### 5. Date Hierarchy

To facilitate drill-down in line charts, a date hierarchy with the following levels has been implemented:

- Start of Year
- Start of Quarter
- Start of Month
- Start of Week
- Date

#### 6 Calculated Columns
### 6.1 Country

A new calculated column named **Country** has been added to the Stores table. This column assigns a full country name to each row based on the Stores[Country Code] column, following the scheme:

- GB: United Kingdom
- US: United States
- DE: Germany

#### 6.2 Geography

calculated column, **Geography**, has been introduced in the Stores table. This column generates a full geography name for each row based on the Stores[Country Region] and Stores[Country] columns, separated by a comma and a space.

#### 7. Data Category Assignment

To ensure accurate representation, the following columns have been assigned appropriate data categories:

- **World Region**: Continent
- **Country**: Country
- **Country Region**: State or Province

#### 8. Geography Hierarchy

A hierarchy with the following levels has been created:

1. World Region
2. Country
3. Country Region

   
## Report Set Up
In the second stage of our report, we will set up the report by creating and formatting the Executive Summary, Customer Detail, Product Detail, and Store Map pages. 


## Milestone 4 and 5: 
Report set up and Customer-Level Analysis Report

### Overview
Here first (Milestone 4), we will create the essential report pages- **Executive Summary, Customer Detail, Product Detail, Stores Map**- and add a navigation sidebar to facilate movement between pages. 
Seconndly, Milestone 5 focuses on Creating Visuals for the Customer-Level report page.  

### Steps
### 1. Design Card Visuals

- Create two rectangles and arrange them in the top left corner of the report page. These will serve as backgrounds for the card visuals.

### 2 Create card visuals
#### 2.1 Total Customers Card Visual

- Add a card visual for the `[Total Customers]` measure. Rename the field to `Unique Customers`.
 <img width="74" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/51945cb8-e01c-4ae0-aded-e71ad441846a">


#### 2.2 Revenue per Customer Card Visual

- Create a new measure in the Measures Table called `[Revenue per Customer]`. This should be calculated as `[Total Revenue]` divided by `[Total Customers]`.

- Add a card visual for the `[Revenue per Customer]` measure.
<img width="76" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/ea336ec8-2b1b-40a4-8e15-263617880541">

---

### 3 Summary Charts
#### 3.1 Donut Chart Visual by Country

- Add a Donut Chart visual showing the total customers for each country.
  - Use the `Users[Country]` column to filter the `[Total Customers]` measure.
    <img width="213" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/d7c2617b-3180-458a-ac25-f0b75ec50936">


#### 3.2 Column Chart Visual by Product Category

- Add a Column Chart visual showing the number of customers who purchased each product category.
  - Use the `Products[Category]` column to filter the `[Total Customers]` measure.

---
<img width="275" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/6e203330-678d-480a-8d91-e914b00ec850">

### 3 Line Chart with Trend Line and Forecast

#### 3.1 Add a Line Chart visual to the top of the page.
  - Show `[Total Customers]` on the Y axis.
  - Use the Date Hierarchy created previously for the X axis.
  - Allow users to drill down to the month level, but not to weeks or individual dates.

   - Include a trend line and a forecast for the next 10 periods with a 95% confidence interval.
<img width="426" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/a017f0d3-7e43-4235-89a1-a3103dabb3f7">

### Create Top Customers Table with Conditional Formatting

#### 4.1 New Table for Top 20 Customers

- Create a new table displaying the top 20 customers, filtered by revenue.
  - Include columns for each customer's full name, revenue, and number of orders.

#### 4.2 Conditional Formatting for Revenue Column

- Add conditional formatting to the revenue column in the new table.
  - Display data bars to visually represent revenue values.
<img width="257" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/c3bf6526-903c-4fe5-b81d-c6ee169c0244">

### 5: Top Customer Insights: Three Card Visuals for Top Customer Insights
- Create a set of three card visuals to provide insights into the top customer by revenue.

  - **Card 1: Top Customer's Name**
    - Display the name of the top customer by revenue.

  - **Card 2: Number of Orders by Top Customer**
    - Show the number of orders made by the top customer.

  - **Card 3: Total Revenue by Top Customer**
    - Present the total revenue generated by the top customer.
      <img width="293" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/ea28ab6f-f8bc-4f9d-a7e1-ea1a08fe4a78">
      
### 6: Enhance User Interaction with Date Slicer

### 6.1 Date Slicer for Filtering by Year

- Add a date slicer to the report page to enhance user interaction.
  - Users can filter the page by selecting a specific year using the slicer.
  - Apply the "Between" slicer style to provide a range-based selection.
<img width="326" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/474fa4d2-43ed-4cc5-a1c8-7c8989bc1e4d">

#### Customer Detail Report Page: overview

<img width="594" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/d7c4c84d-8dca-45de-b947-d4ec49e95183">

## Milestone 6: 
## Overview

In this milestone, the goal is to create an Executive Summary Page providing a high-level overview of the company's performance for C-suite executives. The page includes key visuals to quickly convey insights and compare outcomes against key targets.
## Steps 
### 1. Visual Components

### 1.1 Create Card Visuals

- Copy a grouped card visual from the Customer Detail page to the Executive Summary page.
- Duplicate it two more times.
- Arrange the three cards to span about half of the width of the page.

### 1.2 Assign Measures

- Assign the following measures to the respective cards:
  - **Card 1:** Total Revenue
  - **Card 2:** Total Orders
  - **Card 3:** Total Profit

### 1.3 Formatting

- Use the Format > Callout Value pane to ensure consistent decimal places:
  - For Total Revenue and Total Profit cards, set a maximum of 2 decimal places.
  - For the Total Orders card, limit to 1 decimal place.
<img width="298" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/d71216d1-2b8e-4412-9846-1b73c1b60354">


### 2. Add Revenue Trending line
   - Copy the line graph visualization from the customer detail page. 
   - Set the X-axis to your Date Hierarchy.Display only the following levels: Start of Year, Start of Quarter, and Start of Month.
   - Set the Y-axis to represent Total Revenue.

<img width="322" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/913ac2f9-e477-43dc-8a68-2631f5a7294c">

### 3. Add Donut Charts for Total Revenue Breakdown

- Add a pair of donut charts to the right of the cards at the top of the page.
  - **Donut Chart 1:** Total Revenue by Store Country
  - **Donut Chart 2:** Total Revenue by Store Type
- Copy formatting from the Customer Detail page to maintain a consistent look.
<img width="307" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/438075e2-6804-4ceb-a790-de4b972521b8">
### 4. Bar Chart for Number of Orders by Product Category

- Copy the "Total Customers by Product Category" donut chart from the Customer Detail page.
- In the on-object Build a visual pane, change the visual type to a Clustered Bar Chart.
- Change the X-axis field from "Total Customers" to "Total Orders."
- With the Format pane open, click on one of the bars to bring up the Colors tab, and select an appropriate color for your theme.

<img width="310" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/22f93ce4-7ec2-4646-bb4a-e8fd6bd97c14">

### 5. KPIs for Quarterly Metrics

- Create measures for the following:
  - Previous Quarter Profit
  - Previous Quarter Revenue
  - Previous Quarter Orders
  - Targets (equal to 5% growth in each measure compared to the previous quarter)

- Add new KPIs for Quarterly Revenue, Orders, and Profit:
  - The Value field should be Total Revenue, Total Orders, and Total Profit, respectively.
  - The Trend Axis should be Start of Quarter.
  - The Target should be Target Revenue, Target Orders, and Target Profit, respectively.
  - In the Format pane, set the Trend Axis to On, expand the associated tab, and set the values as follows:
    - Direction: High is Good
    - Bad Colour: Red
    - Transparency: 15%
  - Format the Callout Value so that it only shows to 1 decimal place.

- Duplicate each KPI card two more times, setting appropriate values for the Profit and Orders cards.

<img width="367" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/773f89b2-12fc-468f-8b90-76d87432c431">

#### 6. Executive Summary Page: Overview

<img width="596" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/536fb1e3-1325-4a69-b45e-74c60ff202fb">

---


---


*Note: Customize the styling and formatting of visuals for a clean and professional look. Ensure that the visuals provide valuable insights into customer-level analysis.*




