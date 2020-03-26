/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_MainHud, 0, 0, 0);
draw_sprite(spr_kid2,0,0,0);
draw_sprite(spr_meat_bones,0,180,0);
draw_set_colour(c_white);
draw_set_font(score_font);
draw_text(view_xview+100, view_yview+45, "Kids: " + string(number_kids));
draw_text(view_xview+270, view_yview+45, "Meat + Bones: ");
draw_text(view_xview+300, view_yview+80, string(meat_and_bones));
draw_text(view_xview+150, view_yview+ 150, "Wave #: " + string(wave_number));