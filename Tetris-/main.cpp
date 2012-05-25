#include <iostream>
#include <fstream>
#include "FrameRate_Regulator.h"
#include "FrameRate_Object.h"
#include "image_cache.h"
#include "logger.h"
#include "tetris_scene.h"
#include "f_exception.h"
int main()
{
	sf::ContextSettings installningar;
	sf::RenderWindow app;
	app.create(sf::VideoMode(800,600,32),"SFML Window test");

		sf::Event event;
		
		try
		{
		
			//sf::Sprite test(*ft::ImageCache::getImage("resources/error.png"));
			ft::TetrisScene tetrisScene(300,100,20,10);
			
			while(app.isOpen())
			{
				//ft::ImageCache::loadImage("resources/error.png");
				while(app.pollEvent(event))
				{
					if(event.type == sf::Event::Closed)
					{
						app.close();
					}
				}
						
				app.clear();
				tetrisScene.onRender(app);;
				app.display();

			}
		
			while(ft::ImageCache::discardBottomImage() > 0);
		
		}
		catch(ft::FException& fe)
		{
			std::cout << fe.what() << std::endl;
			system("pause");
		}
		catch(std::exception &e)
		{
			
			std::cout << e.what() << std::endl;
			system("pause");
		}
	
    return EXIT_SUCCESS;
}
//hfeudhei