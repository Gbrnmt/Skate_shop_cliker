/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//me desenhando
draw_self();

//desenhando o produto a minha esquerda
draw_sprite(spr_item,0,x,y - 16);

//aliando meu texto
draw_set_valign(1);
draw_set_halign(1);

//desenhando meu level
//fazendo uma elipse atras do texto
var _x = x;
var _y = y + 24;
draw_ellipse_color(_x - 24,_y - 16,_x + 24, _y + 16, c_gray, c_dkgrey, false);
draw_text(_x, _y,level);


//desenhando a barra de progresso
var _x1 = x + 42;
var _y1 = y - 38;
var _larg = sprite_width / 1.5;
var _x2 = _x1 + _larg;
var _y2 = _y1 + sprite_height / 4;
//desenhando borda das barras
draw_rectangle_color(_x1 - 1, _y1 - 1, _x2 + 1, _y2 + 1,c_black,c_black,c_black,c_black, false);
//deenhando o fundo da barra 
draw_rectangle_color(_x1, _y1, _x2, _y2,c_gray,c_gray,c_gray,c_gray, false);
//desenhando o progresso da barra
var _progresso = (timer / tempo) * _larg;
draw_rectangle_color(_x1, _y1, _x1 + _progresso, _y2,c_green,c_green,c_green,c_green, false);
 
draw_text(20,20,timer);

//resetando o meu alinhamento do meu texto
draw_set_valign(-1);
draw_set_halign(-1);