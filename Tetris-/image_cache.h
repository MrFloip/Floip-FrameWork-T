#ifndef IMAGECACHE_H
#define IMAGECACHE_H

#include <string>
#include <map>
#include <vector>
#include <SFML/graphics.hpp>

using std::string;
using std::map;
using std::vector;

namespace ft
{

	
typedef map<string,sf::Texture*> ImageMap;
typedef vector<string> PriorityVector;

class ImageCache {
private:

	//cache is the main container for texture objects
	static ImageMap cache;
	//priority is a vector designed to keep track of which texture object is being used the least,
	//and put it in the bottom of the cache to be removed if "discardBottomImage()" is called.
	static PriorityVector priority;
	
	//the total amount of images to be loaded at one time.
	static unsigned stackSize;
	
	
public:

	//sets the total amount of images to be loaded at one time.
	static void setStackSize(const unsigned _stackSize);
	
	//load  image-resources into memory.
	static void loadImage(string filePath);	

	//obtains an image-resource to be used.
	static sf::Texture* getImage(string filePath);
	
	//discard images from memory.
	static void discardImage(string filePath);
	//discards bottom image and return remaining vector size.
	static unsigned discardBottomImage();

};

}

#endif // IMAGECACHE_H
