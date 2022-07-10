const { Embed } = require('@discordjs/builders');
const { Client, Intents, DiscordAPIError, MessageEmbed } = require('discord.js')
const token = ""; // Token Goes Here
const prefix = ".";
const bot = new Client({ intents: [Intents.FLAGS.GUILDS] });
const axios = require('axios')

bot.on("ready", () => {
    console.log("Bot is up and running!")
});

bot.on('interactionCreate', async interaction => {
	if (!interaction.isCommand()) return;

	const { commandName } = interaction;

	if (commandName === 'whitelist') {
		axios.get('https://link_here/whitelist.php?discordName=' + interaction.member.displayName + '&discordID=' + interaction.member.id + '&userId' + interaction.options.get('roblox')); // Sends A Get Request To Your Server
		await interaction.reply({content: 'Registered your current discord account to your Roblox Account!', ephemeral: true}); // Sends A Message Back Only They Can See
    }
});

bot.login(token)