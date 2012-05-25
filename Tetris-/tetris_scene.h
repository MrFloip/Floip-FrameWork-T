#ifndef TETRISSCENE_H
#define TETRISSCENE_H

#include "image_cache.h"
#include <vector>
using std::vector;

namespace ft
{

class TetrisScene {

private:
		unsigned **tetrisPlane;
		unsigned sizeH;
		unsigned sizeW;
		float scenePosX;
		float scenePosY;
		static const int spriteSize = 16;
		
		sf::Sprite background;
	
		void createScene();
public:
	TetrisScene(float x, float y,unsigned h, unsigned w);
	~TetrisScene();
	
	void onRender(sf::RenderWindow& rw);
};

}

#endif // TETRISSCENE_H
