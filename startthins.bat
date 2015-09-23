set RAILS_ENV=production
start /B thin.bat -p 3002 -e production start
start /B thin.bat -p 3003 -e production start
start /B thin.bat -p 3004 -e production start
