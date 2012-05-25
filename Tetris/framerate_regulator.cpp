#include "framerate_regulator.h"
#include "framerate_object.h"
#include <iostream>
#include <exception>

namespace ft
{

FrameRateRegulator::FrameRateRegulator(FrameRateObject* fpsObject, int callDelay)
{
	thread = new sf::Thread(&FrameRateRegulator::callBackProc,this);
	this->fpsObject = fpsObject;
	this->callDelay = callDelay;
	
	isRunning = false;
}

FrameRateRegulator::~FrameRateRegulator()
{
	try
	{
		delete thread;
	}
	catch(std::exception& e)
	{
		std::cerr << "Error Exception. Failed to delete thread:  " << e.what() << std::endl;
	}
}

void FrameRateRegulator::start()
{
	try
	{
		isRunning = true;
		thread->launch();
	}
	catch(std::exception& e)
	{
		std::cerr << "Error exception. Failed to initiate thread: " << e.what() << std::endl;
		exit(0);
	}

}

void FrameRateRegulator::stop()
{
	threadMutex.lock();
	isRunning = false;
	threadMutex.unlock();
}

void FrameRateRegulator::wait()
{
	thread->wait();
}

void FrameRateRegulator::callBackProc()
{
	sf::Clock clock;
	sf::Time elapsed = sf::seconds(1);


	bool running = true;
	while(running)
	{
		
		if((elapsed.asMilliseconds() + callDelay) <= clock.getElapsedTime().asMilliseconds())
		{
			std::cout << "FPS: " << clock.getElapsedTime().asMilliseconds() << std::endl;
			if(!fpsObject->onCycle())
				running = false;

			clock.restart();
			elapsed = clock.getElapsedTime();
		}
		
		threadMutex.lock();
		running = isRunning;
		threadMutex.unlock();
	}
}















}

