#ifndef FRAMERATEOBJECT_H
#define FRAMERATEOBJECT_H

namespace ft
{

class FrameRateObject {
public:
	FrameRateObject();
	~FrameRateObject();
	virtual bool onCycle(){return true;}
};

}

#endif // FRAMERATEOBJECT_H
