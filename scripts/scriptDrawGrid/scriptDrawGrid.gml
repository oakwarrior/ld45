var gridWidth = 1;

draw_set_color(c_white);
draw_set_alpha(0.2)
for(var i = inst_3EF1125A.ystart-0.8; i < room_height && i < inst_708777D6.ystart ; i+=32){
	draw_line_width(inst_ED8F5E9.xstart+5.7,i,inst_381CD4ED.xstart-22,i,gridWidth);
}

for(var i = inst_ED8F5E9.xstart+7; i < room_width && i < inst_381CD4ED.xstart; i+=32){
	draw_line_width(i,inst_3EF1125A.ystart-0.8,i,inst_708777D6.ystart-32,gridWidth);
}
draw_set_alpha(1)