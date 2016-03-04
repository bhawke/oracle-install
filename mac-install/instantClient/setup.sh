unzip -qq instantclient-basic-macos.x64-11.2.0.4.0.zip
unzip -qq instantclient-sqlplus-macos.x64-11.2.0.4.0.zip

mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/bin
mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/lib
mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/jdbc/lib
mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/rdbms/jlib
mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/sqlplus/admin
mkdir -p /Applications/oracle/product/instantclient_64/11.2.0.4.0/network/admin

cd instantclient_11_2
mv ojdbc* /Applications/oracle/product/instantclient_64/11.2.0.4.0/jdbc/lib/
mv x*.jar /Applications/oracle/product/instantclient_64/11.2.0.4.0/rdbms/jlib/
mv glogin.sql /Applications/oracle/product/instantclient_64/11.2.0.4.0/sqlplus/admin/
mv *dylib* /Applications/oracle/product/instantclient_64/11.2.0.4.0/lib/
mv *README /Applications/oracle/product/instantclient_64/11.2.0.4.0/
mv * /Applications/oracle/product/instantclient_64/11.2.0.4.0/bin/

cd ..
rm -rf instantclient_11_2
cp tnsnames.ora /Applications/oracle/product/instantclient_64/11.2.0.4.0/network/admin/



#ENV Variables:
#---------------
#export ORACLE_HOME="/Applications/oracle/product/instantclient_64/11.2.0.4.0"
#export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib
#export PATH=$ORACLE_HOME/bin:$PATH