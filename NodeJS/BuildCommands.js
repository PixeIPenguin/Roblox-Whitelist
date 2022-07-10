const { SlashCommandBuilder } = require('@discordjs/builders');
const { REST } = require('@discordjs/rest');
const { Routes } = require('discord-api-types/v9');
const clientId = ""; // Your Bots Client ID Here
const guildId = ""; // Your Server ID
const token = ""; // Token Here (Bot)

const commands = [
	new SlashCommandBuilder() // Registers New Slash CMD
		.setName('whitelist')
		.setDescription("Whitelist your roblox account.")
		.addStringOption(option =>
			option.setName('roblox')
				.setDescription('Roblox User ID to register.')
				.setRequired(true)),
]
	.map(command => command.toJSON());

const rest = new REST({ version: '9' }).setToken(token);

rest.put(Routes.applicationGuildCommands(clientId, guildId), { body: commands })
	.then(() => console.log('Successfully registered application commands.'))
	.catch(console.error);