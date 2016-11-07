SELECT st.name,Sum(sp.bonus) AS Bonus_total
FROM sales.salesperson sp
INNER JOIN sales.salesterritory st
	ON sp.territoryid = st.territoryID
WHERE st.name = 'Northwest'
GROUP BY sp.territoryID,st.name
