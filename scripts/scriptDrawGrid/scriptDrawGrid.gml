var gridWidth = 1;

draw_set_color(c_white);

for(var i = inst_3EF1125A.ystart; i < room_height && i < inst_708777D6.ystart ; i+=32){
	draw_line_width(inst_ED8F5E9.xstart+16,i,inst_381CD4ED.xstart-16,i,gridWidth);
}

for(var i = inst_ED8F5E9.xstart+16; i < room_width && i < inst_381CD4ED.xstart; i+=32){
	draw_line_width(i,inst_3EF1125A.ystart,i,inst_708777D6.ystart-32,gridWidth);
}