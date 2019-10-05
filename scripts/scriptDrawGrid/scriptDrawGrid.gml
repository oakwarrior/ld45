var gridWidth = 1;

draw_set_color(c_white);

for(var i = inst_251CFEA9.ystart; i < room_height && i < inst_7EAAB713.ystart ; i+=32){
	draw_line_width(inst_4DF39D10.xstart+16,i,inst_693ECE72.xstart-16,i,gridWidth);
}

for(var i = inst_4DF39D10.xstart+16; i < room_width && i < inst_693ECE72.xstart; i+=32){
	draw_line_width(i,inst_251CFEA9.ystart,i,inst_7EAAB713.ystart-32,gridWidth);
}