if (obj_levelmanager.editor == 1 && obj_levelmanager.editor_sonidos == 0 && global.resource_create == 0 && scr_insideview() && object_index != obj_resource_empty && obj_editormanager.expand_open == 0 && instance_exists(obj_cursor) && obj_cursor.dont_move == 0)
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            if (obj_parent_resource.alarm[0] == -1 && alarm[0] == -1)
            {
                if (mouse_x > x && mouse_x < (x + 16) && mouse_y > y && mouse_y < (y + 16))
                {
                    poder_girar = 1
                    draw_p = 1
                    obj_cursor.move_tuberia = 1
                }
                else if (mouse_x > x && mouse_x < (x + 16) && mouse_y > ((y + (16 * size_y)) - 16) && mouse_y < (y + (16 * size_y)))
                {
                    poder_girar = 2
                    draw_p = 2
                    obj_cursor.move_tuberia = 1
                }
                else
                {
                    audio_play_sound(snd_ground_bomb, 0, false)
                    xx = (x - mouse_x)
                    yy = (y - mouse_y)
                    with (obj_creation_preview)
                    {
                        xx = other.xx
                        yy = other.yy
                    }
                    x_start = x
                    y_start = y
                    global.resource_block = 1
                    drag = 1
                    obj_cursor.move = 1
                    ventana = 1
                    global.cursor = 1
                    with (obj_cursor)
                        event_user(0)
                    if (!instance_exists(obj_effect_touch))
                        instance_create(mouse_x, mouse_y, obj_effect_touch)
                    global.resource_move = object_index
                    alarm[0] = 1
                }
            }
        }
    }
}
