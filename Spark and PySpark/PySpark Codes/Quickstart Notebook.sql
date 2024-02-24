-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Databricks in 5 minutes

-- COMMAND ----------

-- MAGIC %md ## Run the notebook
-- MAGIC
-- MAGIC Press <img src="http://docs.databricks.com/_static/images/notebooks/nb-run-all.png"/></a> or select **Run all** from the **Run** menu to run the commands in the notebook. You may be prompted to select an existing cluster ([AWS](https://docs.databricks.com/notebooks/notebook-ui.html#attach-a-notebook-to-a-cluster)|[Azure](https://learn.microsoft.com/azure/databricks/notebooks/notebook-ui#attach-a-notebook-to-a-cluster)|[GCP](https://docs.gcp.databricks.com/notebooks/notebook-ui.html#attach-a-notebook-to-a-cluster)) or to create a personal compute resource ([AWS](https://docs.databricks.com/clusters/personal-compute.html)|[Azure](https://learn.microsoft.com/azure/databricks/clusters/personal-compute)). 
-- MAGIC
-- MAGIC As the notebook is running, <img src="http://docs.databricks.com/_static/images/notebooks/nb-run-all.png"/></a> changes to <img src="http://docs.databricks.com/_static/images/notebooks/nb-interrupt-button.png"/></a> and the compute button shows a green dot and the name of the compute resource <img src="http://docs.databricks.com/_static/images/notebooks/compute-indicator.png"/></a>.

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC ## The next command creates a table from a Databricks dataset

-- COMMAND ----------

DROP TABLE IF EXISTS diamonds;

CREATE TABLE diamonds
USING csv
OPTIONS (path "/databricks-datasets/Rdatasets/data-001/csv/ggplot2/diamonds.csv", header "true")


-- COMMAND ----------

SELECT * from diamonds

-- COMMAND ----------

-- MAGIC %python
-- MAGIC diamonds = spark.read.csv("/databricks-datasets/Rdatasets/data-001/csv/ggplot2/diamonds.csv", header="true", inferSchema="true")
-- MAGIC diamonds.write.format("delta").mode("overwrite").save("/delta/diamonds")

-- COMMAND ----------

DROP TABLE IF EXISTS diamonds;

CREATE TABLE diamonds USING DELTA LOCATION '/delta/diamonds/'

-- COMMAND ----------

SELECT * from diamonds

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## The next command manipulates the data and displays the results 
-- MAGIC
-- MAGIC Specifically, the command:
-- MAGIC 1. Selects color and price columns, averages the price, and groups and orders by color.
-- MAGIC 1. Displays a table of the results.

-- COMMAND ----------

SELECT color, avg(price) AS price FROM diamonds GROUP BY color ORDER BY color

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Convert the table to a chart
-- MAGIC
-- MAGIC Under the table, click the bar chart <img src="http://docs.databricks.com/_static/images/notebooks/chart-button.png"/></a> icon. 

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC ## Repeat the same operations using Python DataFrame API. 
-- MAGIC This is a SQL notebook; by default command statements are passed to a SQL interpreter. To pass command statements to a Python interpreter, include the `%python` magic command.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## The next command creates a DataFrame from a Databricks dataset

-- COMMAND ----------

-- MAGIC %python
-- MAGIC diamonds = spark.read.csv("/databricks-datasets/Rdatasets/data-001/csv/ggplot2/diamonds.csv", header="true", inferSchema="true")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## The next command manipulates the data and displays the results

-- COMMAND ----------

-- MAGIC %python
-- MAGIC from pyspark.sql.functions import avg
-- MAGIC
-- MAGIC display(diamonds.select("color","price").groupBy("color").agg(avg("price")).sort("color"))
