// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações

//configurando temporizador do jogo
//definindo os  frames por segundo
#macro Frames 60
game_set_speed(Frames, gamespeed_fps);

//usando delata time para ajustar o tempo do meu jogo
//velocidade do jogo
global.game_spd = 1;
//definindo o framerate do jogo 
global.framerate = global.game_spd / Frames;
//identificando a duracao de um segundo no jogo
global.gamesegundo = 0;

//funcao para atualizar o tempo
function atualiza_tempo()
{
	//pegando o tempo em segundos
	global.gamesegundo = delta_time / 1000000;
	global.framerate = global.gamesegundo * global.game_spd;
}

// variaveis de dinheiro
global.gold = 1;

//informacoes dos manegers
global.managers = [0, 0, 0, 0, 0, 0, 0, 0,];

//lista de produtos
global.produtos = [0, 0, 0, 0, 0, 0, 0, 0,];

