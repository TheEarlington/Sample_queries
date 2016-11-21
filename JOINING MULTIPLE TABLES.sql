select HE.nationalIDnumber,
	PP.FirstName
	,PP.Lastname
	,PA.rowguid,
	PA.modifieddate
FROM Person.businessentityaddress PA 
INNER JOIN person.person PP 
	ON PA.businessentityID = PP.businessentityID
INNER JOIN Humanresources.employee HE
	ON PA.businessentityID = HE.businessentityID
WHERE PP.firstname LIKE 'D%'
