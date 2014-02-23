#!/bin/bash

function setCurrentDirectory() {
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$scriptDir"	#Go to the script directory
}

setCurrentDirectory
mysql -uroot -pmysql < ./gestion_peda_mysql.sql

bash ./test/run_test.bash
