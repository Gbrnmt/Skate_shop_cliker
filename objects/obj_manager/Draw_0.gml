/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();
//desenhando meu custo
draw_set_halign(1);
draw_set_halign(1);
var _str = "R$ " + string_format(custo,0,2);
var _txt = comprado == true ? "vendido!!!" : _str;
draw_text(x + sprite_width / 2, y, _txt);
draw_set_halign(-1);
draw_set_halign(-1);