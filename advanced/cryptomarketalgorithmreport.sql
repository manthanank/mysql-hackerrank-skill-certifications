Select Q1.Algorithm, Q1.v,q2.v,Q3.v,Q4.v from (Select C.Algorithm, Sum(Volume) as V from coins C
Inner Join transactions t on t.coin_code=c.code
Where Year(Dt)=2020 and quarter(dt)=1
Group by C.Algorithm)Q1
Inner Join
(Select C.Algorithm,Sum(Volume) as V from coins C
Inner Join transactions t on t.coin_code=c.code
Where Year(Dt)=2020 and quarter(dt)=2
Group by C.Algorithm)Q2 on Q1.Algorithm=Q2.Algorithm
Inner Join
(Select C.Algorithm,Sum(Volume) as V from coins C
Inner Join transactions t on t.coin_code=c.code
Where Year(Dt)=2020 and quarter(dt)=3
Group by C.Algorithm)Q3 on Q1.Algorithm=Q3.Algorithm 
Inner Join
(Select C.Algorithm,Sum(Volume) as V from coins C
Inner Join transactions t on t.coin_code=c.code
Where Year(Dt)=2020 and quarter(dt)=4
Group by C.Algorithm)Q4 on Q1.Algorithm=Q4. Algorithm
Order by Q1.Algorithm Asc