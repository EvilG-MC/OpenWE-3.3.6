if (state == 3 && global.apariencia == 0)
    draw_sprite_ext(sprite_index, image_index, (x - (6 * direct)), (y + 1), direct, image_yscale, 0, c_white, image_alpha)
else if (stompstyle == 1 || (helice_fly > 0 && helice_fly < 5 && global.apariencia == 3))
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), 1, image_yscale, 0, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), direct, image_yscale, 0, c_white, image_alpha)
if (isflashing == 1 && global.effect_star == 1)
{
    shader_set(sha_blendreplace)
    if (state == 3 && global.apariencia == 0)
        draw_sprite_ext(sprite_index, image_index, (x - (6 * direct)), (y + 1), direct, 1, 0, blend_star, 1)
    else if (stompstyle == 1 || (helice_fly > 0 && helice_fly < 5 && global.apariencia == 3))
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), 1, 1, 0, blend_star, 1)
    else
        draw_sprite_ext(sprite_index, image_index, (round(x) + shake), (round(y) + 1), direct, 1, 0, blend_star, 1)
}
if (isflashing == 1 && global.effect_star == 1)
    shader_reset()
if (helice_fly == 4)
    draw_sprite(spr_NSMBU_mario_helice_remolino, image_index, x, (y + 1))
if (global.condiciones == 1 && global.condiciones_clear == 1)
{
    if (global.powerup == 0 || global.powerup == -85)
        var posyy = 1
    else
        posyy = 11
    if (global.apariencia > 1)
        sprite_cond = spr_condicion_obtenida
    else
        sprite_cond = spr_SMB3_condicion_obtenida
    draw_sprite(sprite_cond, global.jugador, (x - 19), (y - posyy))
}