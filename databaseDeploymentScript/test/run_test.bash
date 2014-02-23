#!/bin/bash

function setCurrentDirectory() {
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$scriptDir"	#Go to the this script directory
}
setCurrentDirectory
echo "Begin test"
rm testResult.txt
mySqlLogin="root"
mySqlPassword="mysql"
java -jar testJdbc.jar $mySqlLogin $mySqlPassword > testResult.txt
diffResult=$(diff expectedTestResult.txt testResult.txt)
if [ "$diffResult" = "" ]; then
	echo "Test passed, deployment successful"
else
	echo 'Test FAILED!!!'
	echo 'See "test/testResult.txt" to check output data'
	echo 'Check your Java'
	echo 'or MySQL (login, password, port) configuration'
	echo 'see source code for details'
	echo 'report problems to victor@tuxayo.net'
fi
