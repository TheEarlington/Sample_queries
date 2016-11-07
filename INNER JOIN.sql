SELECT p.firstname,p.lastname,pp.phonenumber
FROM Person.person p
INNER JOIN person.personphone pp ON p.BusinessEntityID = pp.BusinessEntityID;