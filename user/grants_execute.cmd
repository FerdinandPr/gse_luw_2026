db2 -x select "'grant execute on package NULLID.'||rtrim(pkgname)||' to role execute_packages' from syscat.packages where pkgschema ='NULLID'" | db2 +p

db2 "grant role execute_packages to user dbsecadm"
db2 "grant role execute_packages to user user1"
db2 "grant role execute_packages to user user2"
