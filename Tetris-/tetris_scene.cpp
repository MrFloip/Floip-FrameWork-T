#include "tetris_scene.h"
#include "image_cache.h"
#include "f_exception.h"
#include <iostream>

namespace ft
{


	
TetrisScene::TetrisScene(float x, float y, unsigned h, unsigned w)
{
	background.setTexture(*ImageCache::getImage("resources/scenebg.png"));
	background.setPosition(0,0);
	createScene();
	scenePosX = x;
	scenePosY = y;
	sizeW = w;
	sizeH = h;
}

TetrisScene::~TetrisScene()
{
	

}

void TetrisScene::createScene()
{
	try
	{
	
		/*tetrisPlane = new unsigned*[sizeH];
		for(unsigned i=0;i<sizeH;i++)
		{
			tetrisPlane[i] = new unsigned[sizeW];
		}*/
		
	} catch(std::exception &e)
	{
		std::string errorMessage = "error, exception: TetrisScene::createScene()\n";
		errorMessage.append(e.what());
		throw FException(errorMessage,0);
	}

}

void TetrisScene::onRender(sf::RenderWindow& rw)
{
	try
	{
		background.setPosition(scenePosX,scenePosY);
		for(unsigned i = 0;i<sizeH;i++)
			for(unsigned n = 0;n<sizeW;n++)
			{
				float posX = n*spriteSize + scenePosX;
				float posY = i*spriteSize + scenePosY;
				background.setPosition(sf::Vector2f(posX,posY));
				rw.draw(background);
			}
			
	} catch(std::exception &e)
	{
		std::string errorMessage = "error, exception: TetrisScene::onRender()\n";
		errorMessage.append(e.what());
		throw FException(errorMessage,0);
	}

}


}