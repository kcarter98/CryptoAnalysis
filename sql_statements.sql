SELECT * FROM coins;

SELECT * FROM exchanges;

SELECT * FROM historical_market_data;

SELECT * FROM tickers;

SELECT * FROM tickers JOIN coins on coins.coin_id = tickers.coin_id JOIN exchanges ON exchanges.exchange_id = tickers.exchange_id



