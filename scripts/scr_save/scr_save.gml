function scr_save(argument0) {
	var file, i;
	file = file_text_open_write(argument0)
	file_text_write_string(file, ds_map_write(global.worldmap))
	file_text_writeln(file)
	file_text_write_string(file, ds_map_write(global.cardgame))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.coins)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(lives)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(score)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.powerup)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.reserveitem)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.palacered)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.palaceblue)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.palaceyellow)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.palacegreen)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.yoshi)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.ycolor)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.cardscore)))
	file_text_writeln(file)
	for (i = 0; i < 16; i++)
	{
	    file_text_write_string(file, base64_encode(string(global.inventory[i])))
	    file_text_writeln(file)
	}
	file_text_close(file)



}