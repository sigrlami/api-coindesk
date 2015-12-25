module Lib
    ( queryCD
    ) where

import Data.Time

endpoint = "http://api.coindesk.com/v1/bpi/"

getCurrentPrice = endpoint ++ "currentprice.json"

-- | 
-- ++ <code>.json, EUR.json
getCurrentPriceInCurrency :: String -- ^ Currency code for conversion
                          -> String 
getCurrentPriceInCurrency c = endpoint ++ "currentprice/" ++ c ++ ".json"

-- | Returns history for month in USD
-- 
getHistory = endpoint ++ "historical/close.json"

-- | Returns history for month in desired currency
-- 
getHistoryInCurrency c = endpoint ++ "historical/close.json?currency="++c

getHistoryYesterday = getHistory ++ "?for=yesterday"

getHistoryInPeriod :: Day -> Day -> String
getHistoryInPeriod sdate edate = getHistory ++ "?start="++"&end="

-- | Execute defined query over CoindDesk API
-- 
queryCD :: IO ()
queryCD = putStrLn "someFunc"