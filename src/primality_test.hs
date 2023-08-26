import Text.Read (readMaybe)

-- 数値でないなら-1を返す
checkNum :: String -> Integer
checkNum str = case readMaybe str :: Maybe Integer of
    Just number -> number
    Nothing -> -1

-- 0ならTrueを返す
isZero :: Integer -> Bool
isZero 0 = True
isZero _ = False

-- 素数判定を行う
getPrimalityTest :: Integer -> String
getPrimalityTest 2 = "2は素数です。"
getPrimalityTest num = if length resultList == 0 -- resultListにある0の個数が0個か？
                       then show num ++ "は素数です。"
                       else show num ++ "は合成数です。"
    -- resultListにある0の個数、すなわち、割り切れる個数を調べることで素数判定を行う
    where targetNumList = [2 .. floor (sqrt (fromIntegral num)) + 1]
          modNumList = map (mod num) targetNumList
          resultList = filter isZero modNumList

main :: IO()
main = do
    putStrLn "素数判定プログラムへようこそ！"
    putStrLn "素数判定したい整数を入力してください。"
    -- 入力を受け取る
    n <- getLine
    -- 入力に問題がないか確認する(2以上の整数値であるか確認する)
    case checkNum n >= 2 of
        True -> putStrLn result
            where result = getPrimalityTest (checkNum n)
        False -> putStrLn "2以上の整数値を入力してください。"
