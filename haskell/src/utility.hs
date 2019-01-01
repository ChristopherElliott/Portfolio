data Expr = Val Int | Div 

eval :: Expr -> Int 
eval (Val n) = n 
eval (`Div` x y) = eval x / eval y

safediv :: Int -> Int -> Maybe Int 
safediv n m = if m == 0 then 
                 Nothing 
                else 
                    Just (n / m)