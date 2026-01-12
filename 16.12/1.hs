-- Tipuri de date cu reuniune, aka cu mai multi constructori

data Vreme = Buna | Rea
             deriving (Ord, Show, Eq)
             
data Ziua = Luni | Marti | Miercuri | Joi | Vineri | Sambata | Duminica
            deriving (Ord, Show, Eq)
            
schimbaVremea :: Vreme -> Vreme
schimbaVremea Buna = Rea
schimbaVremea Rea = Buna

arataMi :: Vreme -> String
arataMi Buna = "Vremea este buna"
arataMi Rea = "Vremea este rea"

maine :: Ziua -> Ziua
maine Luni =        Marti
maine Marti =       Miercuri
maine Miercuri =    Joi
maine Joi =         Vineri
maine Vineri =      Sambata
maine Sambata =     Duminica
maine Duminica =    Luni

poimaine :: Ziua -> Ziua
poimaine = maine . maine
