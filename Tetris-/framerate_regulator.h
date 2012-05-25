#ifndef FRAMERATEREGULATOR_H
#define FRAMERATEREGULATOR_H

#include <SFML/system.hpp>

namespace ft
{

class FrameRateObject;
class FrameRateRegulator{
private:
	bool isRunning;
	int callDelay;
	
	//The FrameRateRegulator is a threaded system.
	//This means that the main program thread will continue after the
	//execution of the regulator (FrameRateRegulator::start())
	//To not terminate the main thread a good practice would be to use "FrameRateRegulator::wait()",
	//after exectution.
	sf::Thread* thread;
	
	//A thread mutex to communicate start and stop of thre frameregulator-thread.
	sf::Mutex threadMutex;
	//A thread mutex to communicate changes in the delay between each thread-loop.
	sf::Mutex delayMutex;
	
	//A FrameRateObject is used to call the thread cycle.
	//the cycle to be framerate-regulated.
	FrameRateObject* fpsObject;
	
	//the thread callaback function.
	void callBackProc();
public:
	
	FrameRateRegulator(FrameRateObject*,int callDelay);
	~FrameRateRegulator();
	
	//starts to regulate.
	void start();
	//initiate stop.
	void stop();
	//waith for thread to finish.
	//should be issued after the "FrameRateRegulator::stop()" command.
	void wait();
};

}

#endif // FRAMERATEREGULATOR_H
