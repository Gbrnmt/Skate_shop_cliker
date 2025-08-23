/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (comprado)
{
	if (fazer)
	{
	
		//aumentando o time 
		timer += global.framerate;
	
		//enchi a barra
		if (timer > tempo)
		{
			timer = 0;
			fazer = tenho_manager;
			//dando o lucro
			global.gold += lucro;
		}
	}
}

//checando se a pessoa clicou nele
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

if(_mouse_sobre)
{
	if (_mouse_click)
	{
		fazer = true;
	}
	//checando se o mouse esta na caixa de compra
	var _x1 = x + 42;
	var _y1 = y + 8;
	var _x2 = _x1 + 64;
	var _y2 = _y1 + 32;
	var _mouse_caixa = point_in_rectangle(mouse_x,mouse_y,_x1,_y1,_x2,_y2);
	efeito_comprar = _mouse_caixa;
	if (_mouse_caixa)
	{
		//avisando para fazer o efeirto de compra
		
		//checando se a pessoa clicou
		if (_mouse_click)
		{
			//checando se a pessoa tem dinheiro
			if (global.gold >= custo)
			{
				global.gold -= custo;
				comprado = true;
				
				//aumentanddo o custo dele
				custo *= 2;
				//ajustando o lucro
				//subindo 1 level
				level++;
				//lucro aumenta com base no level e no lucro base
				lucro = lucro_base * level;
			}
			
		}
	}
}
var _x1 = x + 42;
var _y1 = y + 8;
var _x2 = _x1 + 64;
var _y2 = _y1 + 32;
var _mouse_caixa = point_in_rectangle(mouse_x,mouse_y,_x1,_y1,_x2,_y2);
efeito_comprar = _mouse_caixa;