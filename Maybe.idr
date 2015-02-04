module MaybeMessAround

m_app : Maybe (a -> b) -> Maybe a -> Maybe b
m_app (Just f) (Just a)  = Just (f a)
m_app _ _ = Nothing

mAdd : Maybe Int -> Maybe Int -> Maybe Int
mAdd x y = [ x' + y' | x' <- x, y' <- y ]

mAdd' : Maybe Int -> Maybe Int -> Maybe Int
mAdd' x y = [| x + y |]

