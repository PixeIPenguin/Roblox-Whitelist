<h1>Roblox Whitelist</h1>
This is a Roblox Whitelist that uses MySql, NodeJS, PHP, Roblox Lua (LUAU).

Enjoy!

<h1>How It Works</h1>
How this works is the following:

Simple Explanation
```
(Whitelisting Part)
Discord Bot -> Website Server -> MySql

(Roblox Script Part)
Roblox -> Website -> Checks For UserID Inside -> Returns Value -> Then Your Script
```

More Advanced Explanation
```
(Whitelisting Part)
You use a slash command with the discord bot, when you use it you're required to put your user id (roblox account id, referred to rai now), we use the rai so that if they change their username their rai still stays the same. Once we have that information via our discord bot, we will send a get request to our website. For our website php file we always get the variable(s) passed through the link and put them into a MySql table.

(Roblox Script Part)
When you execute the script on roblox it performs some security implementations, like setting your clipboard with some links and deleting console output, then sends a request to our website. Our website then takes the variable(s) passed through the link and checks for a rai in our MySql table to match with the one passed through, if it finds a match it returns that it is valid along with the discord username.
```

It has the following features: No logs (at least for my http logger), clear console, and discord username to roblox account.
