connect to gse2026;
grant connect on database to user user1;
grant connect on database to user user2;
grant connect on database to user dbsecadm;
grant secadm on database to user dbsecadm;
grant usage on workload SYSDEFAULTUSERWORKLOAD to user dbsecadm;
grant usage on workload SYSDEFAULTUSERWORKLOAD to user user1;
grant usage on workload SYSDEFAULTUSERWORKLOAD to user user2;
