connect to gse2026;
grant dataaccess on schema db2inst1 to role user_rw;
grant selectin on schema db2inst1 to role user_ro;
grant role user_rw to user user1;
grant role user_ro to user user2;
grant role user_ro,user_rw to group scientists;
