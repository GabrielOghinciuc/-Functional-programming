data Arbore a -> [a]
tunde (Frunza a) = [a]
tunde (Ramificatie ram1 ram2)=tunde ram1 ++ tunde ram2
