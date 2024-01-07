# Data Analytics Power BI Report

1. [Importing and Organising Data](#Importing-Organising-Data)
      - [Overview](#Overview)
      - [Prerequisites](#prerequisites)
2. [Milestone 1](#milestone-1)
3.  [Milestone 2](#milestone-2)  
      3.1 [Cleaning and Transforming Product data](#cleaning-and-transforming-product-data)   
      3.2 [Importing Stores Data from Azure Blob Storage](#importing-stores-data-from-azure-blob-storage)
      3.3 [Importing and Transforming Customer Data](#importing-and-transforming-customer-data)
4. [Milestone 3](#milestone-3)
5. [Report Set Up](#report-set-up)
   - [Overview](#Overview)
   -  [Prerequisites](#prerequisites)
6. [Milestone 4 & 5](#Milestone-4&5)
7. [Milestone 6](#milestone-6)
8. [Milestone 7](#milestone-7)
9. [Milestone 8](#milestone-8)
10. [Milestone 9](#milestone-9)
11. [Milestone 10](#milestone-10)

   
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
### Overview
In the second stage of our report, we will set up the report by creating and formatting the Executive Summary, Customer Detail, Product Detail, and Store Map pages. 

### Preerequisites 
- Power BI desktop

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
#### 1. Visual Components

1.1 Create Card Visuals
- Copy a grouped card visual from the Customer Detail page to the Executive Summary page.
- Duplicate it two more times.
- Arrange the three cards to span about half of the width of the page.

1.2 Assign Measures
- Assign the following measures to the respective cards:
  - **Card 1:** Total Revenue
  - **Card 2:** Total Orders
  - **Card 3:** Total Profit

1.3 Formatting
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
5.1 Create measures for the following:
  - Previous Quarter Profit
  - Previous Quarter Revenue
  - Previous Quarter Orders
  - Targets (equal to 5% growth in each measure compared to the previous quarter)

5.2 Add new KPIs for Quarterly Revenue, Orders, and Profit:
  - The Value field should be Total Revenue, Total Orders, and Total Profit, respectively.
  - The Trend Axis should be Start of Quarter.
  - The Target should be Target Revenue, Target Orders, and Target Profit, respectively.
  - In the Format pane, set the Trend Axis to On, expand the associated tab, and set the values as follows:
    - Direction: High is Good
    - Bad Colour: Red
    - Transparency: 15%
  - Format the Callout Value so that it only shows to 1 decimal place.

5.3 Duplicate each KPI card two more times, setting appropriate values for the Profit and Orders cards.

<img width="367" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/773f89b2-12fc-468f-8b90-76d87432c431">

#### 6. Executive Summary Page: Overview

<img width="596" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/536fb1e3-1325-4a69-b45e-74c60ff202fb">

## Milestone 7: Product Detail Page

### Overview

In Milestone 7, our focus is on creating a comprehensive Product Detail Page to meet the request from the product team. The objective is to provide a detailed analysis of the performance of products within our inventory, with the added functionality of filtering by both product and region.

## Steps

#### 1. Add Gauges representing the current-quarter performance of Orders, Revenue, and Profit against their respecitve quartely target 

1.1 Measures:
   - Define DAX measures for the current-quarter performance of Orders, Revenue and Profit.
       ```DAX
     Current Quarter Orders = TOTALQTD([Total Orders], 'Date'[Date])
     Current Quarter Profit = TOTALQTD([Total Profit], 'Date'[Date])
     Current Quarter Revenue = TOTALQTD([Total Revenue], 'Date'[Date])
         ```

- Define DAX measures for the quarterly target: 10% quarter-on-quarter growth in all three metrics.
        ```DAX
       Orders Quarterly Target = [Current Quarter Orders] * 1.10
       Profit Quarterly Target = [Current Quarter Profit] * 1.10
       Revenue Quarterly Target = [Current Quarter Revenue] * 1.10
       ```

1.2 Gauge Filters:
   - Create three gauge filters.
   - Assign the current-quarter performance metrics to the Value Field. 
   - Set the maximum value of each gauge to the quarterly target.

1.3 Conditional Formatting:
   - Apply conditional formatting to the callout value in each gauge.
   - Display the number in red if the target is not met, and black otherwise.
     
1.4 Example Guage Visuals:
     <img width="494" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/2b265362-3eca-4f98-8e91-5f9cb362a9df">

#### 2. **Placeholder Shapes for Filter Cards:**
   - To the left of the gauges, add two rectangle shapes as placeholders for filter cards.
   - Use a color in keeping with the theme, and ensure that the combined space roughly equals one of the gauges.
     
#### 3. **Area Chart of Revenue by Product Category:**
- Introduce a new area chart to the page.
 - Configure the chart with the following fields:
     - X axis: Dates[Start of Quarter]
     - Y axis values: Total Revenue
     - Legend: Products[Category]
- Example visual from report: 
       <img width="355" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/15f0a406-7c92-4957-93a7-fbc2893cbc35">

#### 4. Add Top products table
- Copy the top customer table from the Customer Detail page
- Include the following in fields:
  Product Description
      - Total Revenue
      - Total Customers
      - Total Orders
      - Profit per Order
- Example visual from report:
<img width="337" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/75c779be-a563-4064-8a4f-d42f01e87ae5">

#### 5. Scatter Graph Quantity sold VS Profit per Item
- Create a new calculated column called `[Profit per Item]`in the'Products' table
  
```DAX
Profit per Item = [Sale Price] - [Cost Price]
```
- Add a new Scatter chart to the page, and configure it as follows:
Values should be Products[Description]
X-Axis should be Products[Profit per Item]
Y-Axis should be Products[Total Quantity]
Legend should be Products[Category]
- Example Visual from report:
<img width="289" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/b1717812-a544-45a5-a93f-a51c30a23d0a">

#### 6. Create a Slicer Toolbar 
 6.1 Add Button to Navigation Bar:
   - Add a new blank button to the top of your navigation bar.
   - Set the icon type to Custom in the Format pane.
   - Choose "Filter_icon.png" as the icon image.
   - Set the tooltip text to "Open Slicer Panel."

6.2 Add Toolbar Shape:
   - Add a new rectangle shape in the same color as your navigation bar.
   - Dimensions should be the same height as the page and 3-5X the width of the navigation bar.
   - Bring it to the top of the stacking order using the Selection pane.

6.3 Add Slicers:
   - Add two new slicers: one set to `Products[Category]` and the other to `Stores[Country]`.
   - Change slicer titles to "Product Category" and "Country," respectively.
   - Set both slicers to Vertical List style.
   - Allow multiple selections in the Product Category slicer and single selection in the Country slicer.
   - Configure the Country slicer to include a "Select All" option.
   - Ensure neat formatting that fits your report style.

6.4 Group Slicers with Toolbar Shape:
   - In the Selection pane, group the slicers with your slicer toolbar shape.

6.5 Add Back Button:
   - Add a new button and select the Back button type.
   - Position it sensibly, e.g., in the top-right corner of the toolbar.
   - In the Selection pane, drag the back button into the group with the slicers and toolbar shape.

6.6 Create Bookmarks:
   - Open the Bookmarks pane and add two new bookmarks: "Slicer Bar Closed" and "Slicer Bar Open."
   - Ensure Data is unchecked for both bookmarks to prevent altering slicer states when opening and closing the toolbar.

6.7. Assign Actions to Buttons:
   - Open the Format pane and turn on the Action setting for both the Filter button and the Back button.
   - Set the Type to Bookmark for each button and select the appropriate bookmark.

6.8 Testing:
   - Test your buttons and slicers (Ctrl-Click for button functionality during design in Power BI Desktop).
   - Slicer Bar Open
     <img width="83" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/87897557-c581-4951-b802-bf59d7d56648">

   - Slicer Bar Closed
    <img width="32" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/66f89778-af03-4343-8865-f713e8b32f59">
    
#### 6. Product Detail page: Overview
<img width="544" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/29f6c281-5f1f-4a63-afac-a81b3baeb7c8">

## Milestone 8
## Overview

In response to the specific needs of regional managers, Milestone 8 focuses on creating a dedicated Stores Map Page. This page is designed to allow regional managers to easily check on the stores under their control. The goal is to provide them with insights into the most profitable stores they are responsible for, as well as those on track to reach their quarterly profit and revenue targets. 

#### 1. Map Visual
1.1 Add a Map Visual:
   - Navigate to the Stores Map Page in your Power BI report.
   - Add a new map visual that occupies the majority of the page, leaving a narrow band at the top for a slicer.
   - Adjust the style of the map in the Format pane according to your satisfaction.
   - Ensure "Show Labels" is set to On for clear visibility.

1.2 Configure Map Controls:
   - Set the following controls for the map:
      - **Auto-Zoom:** On
      - **Zoom Buttons:** Off
      - **Lasso Button:** Off

1.3 Assign Data Fields:
   - Assign the Geography hierarchy to the Location field of the map.
   - Assign the ProfitYTD field to the Bubble Size field for a comprehensive representation.

1.4 Optimize Visual Appearance:
   - Fine-tune the visual appearance to align with the preferences and requirements of the regional managers.
     
1.5 Map visual:
<img width="465" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/81622c31-78b1-426f-a384-1b70f875cb47">

#### 2. Add country slicer
2.1 Add a Slicer:
   - Insert a slicer above the map on the Stores Map Page.
   - Set the slicer field to `Stores[Country]`.

2.2 Configure Slicer Style:
   - In the Format section, set the slicer style as Tile.
   - Adjust the Selection settings to Multi-select with Ctrl/Cmd.
   - Enable the "Select All" option in the slicer.

2.3 Slicer visual:
      <img width="445" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/4faa82fd-231e-4908-8983-a608afe78ab6">
      
#### 3. Stores Map Page: Overview
<img width="539" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/1ff582f2-0028-44a2-9675-ba6b1328498d">

#### 4. Create Drillthrough Page:
4.1 Create a new page named "Stores Drillthrough and Configure Page Information:
   - Open the Format pane and expand the Page Information tab.
   - Set the Page type to Drillthrough.
   - Set "Drill through when" to Used as category.
   - Set "Drill through from" to `Country Region`.

4.2 Create Necessary Measures:
   - Ensure you already have measures for Profit YTD and Revenue YTD.
   - Create measures for Profit Goal and Revenue Goal, representing a 20% increase on the previous year's year-to-date profit or revenue at the current point in the year.
     ```DAX
     Profit Goal = CALCULATE([Profit YTD], SAMEPERIODLASTYEAR('Date'[Date])) * 1.2
     Revenue Goal = CALCULATE([Revenue YTD], SAMEPERIODLASTYEAR('Date'[Date])) * 1.2
     ```
4.4 Add the following visuals Visuals to Drillthrough Page:
     - Table showing top 5 products with columns: Description, Profit YTD, Total Orders, Total Revenue.
     - Column chart showing Total Orders by product category for the store.
     - Gauges for Profit YTD against a profit target of 20% year-on-year growth.
     - Card visual showing the currently selected store.
     
4.5 Drillthrough Page
<img width="566" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/ecf90a86-6518-40fa-a10c-37546470f2e4">

#### 5 Create Stores Tooltip Page:
5.1 Add a new page named "Storea Tooltip" to your Power BI report.
    - Copy over the profit gauge visual from the main report page to the "Custom Tooltip" page.

5.2 Set Tooltip Configuration:
   - Open the Format pane for the profit gauge visual on the "Custom Tooltip" page.
   - Set the tooltip to the "Custom Tooltip" page you have created.

5.3 Enhance User Interaction:
   - Ensure that the custom tooltip provides insightful information on each store's year-to-date profit against the profit target.
   - Verify that users can easily access this information by hovering the mouse over a store on the map.
5.4  Stores Tooltip Page
     <img width="678" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/f328edc4-219b-4910-89ba-2d0bd4acbea5">

## Milestone 9: Cross Filtering and Navigation

### Overview
 Milestone 9 focuses on configuring interactions between visuals on various pages to enhance the user experience on refining the user experience. Secondly, this task also involves completing the navigation bar initiated earlier in the project. 

#### 1. Configure Interactions: Executive Summary Page
  - Navigate to the Edit Interactions view in the Format tab of the ribbon.
   - Set the following interactions:
     - Product Category bar chart and Top 10 Products table should not filter the card visuals or KPIs.

#### 2. Configure Interactions: Customer Detail Page
   - Top 20 Customers table should not filter any of the other visuals.
   - Total Customers by Product Donut Chart should not affect the Customers line graph.
   - Total Customers by Country donut chart should cross-filter Total Customers by Product Donut Chart.

#### 3. Configure Interactions: Product Detail Page
   - Orders vs. Profitability scatter graph should not affect any other visuals.
   - Top 10 Products table should not affect any other visuals.
#### 4. Add Navigation Buttons for Individual Report Pages
4.1 Add Navigation Buttons:**
   - On the Executive Summary page, in the sidebar, add four new blank buttons.
   - In the Format > Button Style pane, set the Apply settings to field to Default.
   - For each button, set the icon to the relevant white png in the Icon tab.
  
4.2 Configure Hover Effects:
   - For each button, go to Format > Button Style > Apply settings to and set it to On Hover.
   - Select the alternative colorway of the relevant button under the Icon tab.

4.3 Configure Page Navigation:
   - For each button, turn on the Action format option.
   - Select the type as Page navigation.
   - Choose the correct page under Destination.

4.4 Group Buttons:
   - Group the buttons together for better organization and management.

4.5 Copy Buttons Across Pages:
   - Copy the grouped buttons from the Executive Summary page to the other report pages.

4.6 Navigation Buttons: 
<img width="44" alt="image" src="https://github.com/ab3099/data-analytics-power-bi-report541/assets/148353384/656d2b60-621c-40db-8eb8-c2e72810d086">

## Milestone 10:  SQL Queries 
### Overview

In the final milestone, we expand our data analysis toolkit by incorporating SQL queries. This addition is crucial for scenarios where clients may not have direct access to specialized visualization tools like Power BI. SQL queries provide a versatile means to extract and disseminate key data insights, ensuring accessibility for a broader audience.

### Prerequisites
- Visual Studio Code 
- Extension: SQLTools PostgreSQL/Cockroach Driver
  
### Steps
#### 1. Create server connection
- click on new connection
- select pgadmin
- enter the following details
  **service address**: powerbi-data-analytics-server.postgres.database.azure.com
  **database name**: order-db
  **username**: maya
  **password** : AiCore127!

#### 2.  SQL Query to Retrieve Table Names and Save as CSV
```sql
SELECT 
    *
FROM
    information_schema.tables


and save the result to a csv file
```
#### 3. SQL Query to Retrieve Column Names and Save as CSV
- Example: dim_date table 
 ```sql
SELECT 
    *
FROM
    dim_date

and save the result to a csv file for user's reference.
``` 
#### 4. Determine how many staff are there in all of the UK stores
 ```sql
SELECT SUM(staff_numbers) as "Total Staff in the UK"
FROM
   dim_store
WHERE
   country = 'UK'
```
**Result**: 
"Total Staff in the UK"
"13273"

#### 5. Determine which month in 2022 has had the highest revenue. 

```sql
SELECT 
    d.date,
    month_name AS Month,
    year,
    SUM(country_region.sale_price * country_region.product_quantity) AS "Total Revenue"
FROM 
    dim_date d
INNER JOIN 
    country_region ON d.date = country_region.dates
WHERE
    year = 2022
GROUP BY
    d.date, month_name, year
ORDER BY
    "Total Revenue" DESC
LIMIT 1;
```
**Result**: 
"Month","Year","Total Revenue"
"Sep","2022",116231.35999999996

#### 6. Determine which German store type had the highest total revenue for 2022?
```sql
SELECT 
    dd.year,
    cr.country,
    SUM(cr.sale_price * cr.product_quantity) AS "Total Revenue",
    ds.store_type
FROM 
    dim_date dd
INNER JOIN 
    country_region cr ON dd.date = cr.dates
INNER JOIN
    dim_store ds ON cr.country = ds.country
WHERE
    cr.country = 'Germany' AND
    dd.year = 2022
GROUP BY
    dd.year, cr.country, ds.store_type
ORDER BY
    "Total Revenue" DESC
LIMIT 1;
```
**Result**: 
"year","country","Total Revenue","store_type"
"2022","Germany",28195956.66000709,"Local"

#### 7. Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders
```sql
-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders
CREATE VIEW "Sale Store" AS
SELECT
    ds.store_type AS "Store Type",
    SUM(dp.sale_price) AS "Total Sales",
    COUNT(o.product_quantity) AS "Order Count",
     (SUM(dp.sale_price) / SUM(SUM(dp.sale_price)) OVER ()) * 100 AS "Percentage  Total Sales"
FROM 
    orders  o
INNER JOIN
    dim_store ds ON o.store_code = ds.store_code
LEFT JOIN
    dim_product dp ON o.product_code = dp.product_code
GROUP BY
    ds.store_type

--  Query the table to see result
SELECT * FROM  "Sale Store"
```
**Result**: 
"Store Type","Total Sales","Order Count","Percentage  Total Sales"
"Local",1044744.6099997698,"78409",65.10146402933637
"Mall Kiosk",175513.9399999992,"13142",10.936849390933508
"Outlet",126171.62000000606,"9207",7.8621675597400795
"Super Store",257946.1999999851,"19276",16.07347393810123
"Web Portal",417.9700000000001,"43",0.026045081888814645

#### 8.Determine  which product category generated the most profit for the "Wiltshire, UK" region in 2021 
```sql
SELECT
    dp.category,
    ds.full_region,
    dim_date.year,
    SUM(cr.product_quantity * (cr.sale_price - cr.cost_price)) AS TotalProfit
FROM
    country_region cr
INNER JOIN
    dim_product dp ON cr.sale_price = dp.sale_price  
INNER JOIN
    dim_store ds ON cr.country = ds.country
INNER JOIN
    dim_date ON cr.dates = dim_date.date
WHERE
    ds.full_region = 'Wiltshire, UK' AND
    dim_date.year = 2021
GROUP BY
    dp.category, ds.full_region, dim_date.year
ORDER BY
    TotalProfit DESC
LIMIT 1;
```
**Result**: 
"category","full_region","year","totalprofit"
"homeware","Wiltshire, UK","2021",57730086.83648027

