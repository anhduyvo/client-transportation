# demo-news: 
- angularjs
- expressjs
- nodejs
- mssql
- mongodb

# route port 3000 => 80 on localhost
sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
sudo iptables --table nat --list