#include "image_cache.h"
#include <exception>
#include "f_exception.h"
#include <iostream>
#include <fstream>

#define WIN32_WINNt 0x0500
#define WINVER 0x0500 
#include <windows.h>
#include <stdio.h>


namespace ft
{
	//static variable definition.
	//////////////////////////////////////////
	ImageMap ImageCache::cache;
	PriorityVector ImageCache::priority;
	unsigned ImageCache::stackSize = 0;
	/////////////////////////////////////////
	
	//loads and image from file into the cache.
	void ImageCache::loadImage(string filePath)
	{
		try
		{
			if(cache.size() >= stackSize)
				discardBottomImage();
				
			cache[filePath] = new sf::Texture();
			if(!cache[filePath]->loadFromFile(filePath))
				throw std::exception();
			
			priority.push_back(filePath);
			
		}catch(std::exception &e)
		{
			std::string errorMessage = "error, exception: Cache:loadImage()\n";
			errorMessage.append(e.what());
			throw FException(errorMessage,0);
		}
		
	}

	void ImageCache::setStackSize(const unsigned _stackSize)
	{
		stackSize = _stackSize;
	}
	
	//removes a texure/image object from the resource-cache.
	//removes by string comparison.
	void ImageCache::discardImage(string filePath)
	{
		ImageMap::iterator it = cache.find(filePath);
		if(it != cache.end())
			cache.erase(it);
	}
	
	//removes the image at the bottom of the cache.
	unsigned ImageCache::discardBottomImage()
	{
		if(cache.size() > 0)
		{
			ImageMap::iterator it = cache.end();
			it--;
			cache.erase(it);
		}
		return cache.size();
	}
	
	//obtains a texture  object from the resource-cache
	//texture == image.
	sf::Texture* ImageCache::getImage(string filePath)
	{
		try
		{
			if(cache[filePath] == NULL)
				loadImage(filePath);
			else
			{
				PriorityVector::iterator it = std::find(priority.begin(),priority.end(),filePath);
				if(it != priority.end())
				{
					string temp = *it;
					priority.erase(it);
					priority.push_back(temp);
				}
			}
			
			return cache[filePath];
				
		}catch (std::exception &e)
		{
			std::string errorMessage = "error, exception: Cache::getImage()\n";
			errorMessage.append(e.what());
			throw FException(errorMessage,0);
		}

	}

}

