/// @description Insert description here
// You can write your code in this editor
global.gridTableX = ds_grid_create(17*12,3)
global.gridTableY = ds_grid_create(17*12,3)
for (var i = 0 ; i < 17 ; i++)
{
ds_grid_set(global.gridTableX,i,1,(inst_ED8F5E9.xstart+7+16)+(32*(i)))
ds_grid_set(global.gridTableY,i,2,(inst_3EF1125A.ystart-0.8+16)+(32*(0)))
}
for (var i2 = 17 ; i2 < 17*2 ; i2++)
{
ds_grid_set(global.gridTableX,i2,1,(inst_ED8F5E9.xstart+7+16)+(32*(i2-17)))
ds_grid_set(global.gridTableY,i2,2,(inst_3EF1125A.ystart-0.8+16)+(32*(1)))
}
for (var i3 = 17*2 ; i3 < 17*3 ; i3++)
{
ds_grid_set(global.gridTableX,i3,1,(inst_ED8F5E9.xstart+7+16)+(32*(i3-17*2)))
ds_grid_set(global.gridTableY,i3,2,(inst_3EF1125A.ystart-0.8+16)+(32*(2)))
}
for (var i4 = 17*3 ; i4 < 17*4 ; i4++)
{
ds_grid_set(global.gridTableX,i4,1,(inst_ED8F5E9.xstart+7+16)+(32*(i4-17*3)))
ds_grid_set(global.gridTableY,i4,2,(inst_3EF1125A.ystart-0.8+16)+(32*(3)))
}
for (var i5 = 17*4 ; i5 < 17*5 ; i5++)
{
ds_grid_set(global.gridTableX,i5,1,(inst_ED8F5E9.xstart+7+16)+(32*(i5-17*4)))
ds_grid_set(global.gridTableY,i5,2,(inst_3EF1125A.ystart-0.8+16)+(32*(4)))
}
for (var i6 = 17*5 ; i6 < 17*6 ; i6++)
{
ds_grid_set(global.gridTableX,i6,1,(inst_ED8F5E9.xstart+7+16)+(32*(i6-17*5)))
ds_grid_set(global.gridTableY,i6,2,(inst_3EF1125A.ystart-0.8+16)+(32*(5)))
}
for (var i7 = 17*6 ; i7 < 17*7 ; i7++)
{
ds_grid_set(global.gridTableX,i7,1,(inst_ED8F5E9.xstart+7+16)+(32*(i7-17*6)))
ds_grid_set(global.gridTableY,i7,2,(inst_3EF1125A.ystart-0.8+16)+(32*(6)))
}
for (var i8 = 17*7 ; i8 < 17*8 ; i8++)
{
ds_grid_set(global.gridTableX,i8,1,(inst_ED8F5E9.xstart+7+16)+(32*(i8-17*7)))
ds_grid_set(global.gridTableY,i8,2,(inst_3EF1125A.ystart-0.8+16)+(32*(7)))
}
for (var i9 = 17*8 ; i9 < 17*9 ; i9++)
{
ds_grid_set(global.gridTableX,i9,1,(inst_ED8F5E9.xstart+7+16)+(32*(i9-17*8)))
ds_grid_set(global.gridTableY,i9,2,(inst_3EF1125A.ystart-0.8+16)+(32*(8)))
}
for (var i10 = 17*9 ; i10 < 17*10 ; i10++)
{
ds_grid_set(global.gridTableX,i10,1,(inst_ED8F5E9.xstart+7+16)+(32*(i10-17*9)))
ds_grid_set(global.gridTableY,i10,2,(inst_3EF1125A.ystart-0.8+16)+(32*(9)))
}
for (var i11 = 17*10 ; i11 < 17*11 ; i11++)
{
ds_grid_set(global.gridTableX,i11,1,(inst_ED8F5E9.xstart+7+16)+(32*(i11-17*10)))
ds_grid_set(global.gridTableY,i11,2,(inst_3EF1125A.ystart-0.8+16)+(32*(10)))
}
for (var i12 = 17*11 ; i12 < 17*12 ; i12++)
{
ds_grid_set(global.gridTableX,i12,1,(inst_ED8F5E9.xstart+7+16)+(32*(i12-17*11)))
ds_grid_set(global.gridTableY,i12,2,(inst_3EF1125A.ystart-0.8+16)+(32*(11)))
}







/*
17 width
12 height

for(var i = inst_3EF1125A.ystart-0.8; i < room_height && i < inst_708777D6.ystart ; i+=32){
	draw_line_width(inst_ED8F5E9.xstart+5.7,i,inst_381CD4ED.xstart-22,i,gridWidth);
}

for(var i = inst_ED8F5E9.xstart+7; i < room_width && i < inst_381CD4ED.xstart; i+=32){
	draw_line_width(i,inst_3EF1125A.ystart-0.8,i,inst_708777D6.ystart-32,gridWidth);
}