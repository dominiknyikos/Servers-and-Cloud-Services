@echo off

set pass=Magik1908
dsadd ou "ou=Team, dc=gyakorlat, dc=local"
dsadd group "cn=team, ou=Team, dc=gyakorlat, dc=local"

setlocal enableextensions enabledelayedexpansion
	dsadd user "CN=emma, OU=Team, dc=gyakorlat,dc=local" -pwd %pass% -pwdneverexpires yes -samid emma -upn emma -memberof "cn=team, ou=Team, dc=gyakorlat, dc=local"
	dsmod user "CN=emma, OU=Team, dc=gyakorlat,dc=local" -disabled no

	dsadd user "CN=edit, OU=Team, dc=gyakorlat,dc=local" -pwd %pass% -pwdneverexpires yes -samid edit -upn edit -memberof "cn=team, ou=Team, dc=gyakorlat, dc=local"
	dsmod user "CN=edit, OU=Team, dc=gyakorlat,dc=local" -disabled no

endlocal