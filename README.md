# CryptoAnalysis

## Introduction 

This analysis will look into metrics of the cryptocurrency market, such as open, high, low, close (OHLC) data, order volume and volume. This will compare the top exchanges as well as the top currencies in terms of volume. This topic was selected to better understand market trends, market share, and will try to predict future action of the market based on past performance.

#### Source Data

The data used in this analysis was pulled from the CoinGecko API. Both historical and current data will be used, and the historical data will be up to 3 years in the past ranging from Oct 31, 2018 to Oct 31, 2021. The documentation for this API can be found in the link below >>>

[CoinGecko Documentation](https://www.coingecko.com/en/api/documentation)

#### Questions Intended To Answer

In this analysis, I intend to answer the following questions:

- What is the trend of the cryptocurrency market in the past 3 years, and can this be used to predict the growth of the market?

- What are the top performing cryptocurrency projects and what is their share of the market? Is the market share becoming monopolized or is the distribution increasing?

- What are the most popular exchanges used, and what is their growth in the past 3 years? Will they keep growing and what is the expected growth if so?

## Analysis

### Database ERD and Structure

The data used in this project will be stored in PostgreSQL database after being retrieved and cleaned. The data will be stored in 6 tables that will be described below and shown in the ERD pictured.

![Database ERD](Images/DatabaseERD.PNG)

### Coins Table

The coins table will store the currencies and their information, such as symbol and name.

**Fields Used**

- **CoinID** (String) - Primary Key - The Coin ID field will be used as the unique identifier for each row. Each currency has it's own unique coin id.

- **Symbol** (String) - Abbreviated name of the currency.

- **Name** (String) - Full name of the currency.


### Exchanges Table

The exchanges table will be used to store exchanges, where you can buy and sell cryptocurrency, and their related information.

**Fields Used**

- **ExchangeID** (String) - Primary Key - The Exchange ID field will be used as the unique identifier for each row. Each exchange has it's own unique exchange id.

- **Name** (String) - Full name of the exchange.

- **Year_Established** - (Int) - Year the exchange was created.

- **Country** - (String) - Country of origin.

- **BTC_24hVolume** - (Float) - The amount of bitcoin (in bitcoin) traded on the exchange in the past 24 hours.


### OHLC Table

This table will store each currencies open, high, low, close (OHLC) data for all currencies being selected. This data will be historical data ranging from Oct 31, 2018 to Oct 31, 2021. The data is taken every 3 days.

**Fields Used**

- **Date** - (Datetime) - Primary Key - Date that the data on the table was taken. As there is no time that the crypto market opens and closes, this data is considered to be taken at 00:00 UTC. Used as a composite key with coin id.

- **CoinID**

- **Open**

- **High**

- **Low**

- **Close**


### Tickers Table

**Fields Used**

- **TickerID**

- **Ticker**

- **LastPrice**

- **Volume**

- **Time**

- **CoinID**

- **ExchangeID**


### HistoricalMarketData Table

**Fields Used**

- **Date**

- **CoinID**

- **Price**

- **Market_Cap**

- **Total_Volume**


### HistoricalExchangeVolume Table

**Fields Used**

- **Date**

- **ExchangeID**

- **Volume**
