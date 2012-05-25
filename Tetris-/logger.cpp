#include "logger.h"
#include "f_exception.h"
#include <iostream>

using namespace std;

namespace ft
{
	//system time 
	
	Logger::Logger(char* _filePath,bool _append)
	{
		append = _append;
		filePath = _filePath;
		if(append)
			logFile.open(filePath,ios::app);
		else
			logFile.open(filePath);
			
		if(!logFile.is_open())
			throw FException();
		
		defaultClogBuf = clog.rdbuf();
		clog.rdbuf(logFile.rdbuf());
	}
	
	Logger::Logger(bool append)
	{
		append = true;
	}
	
	Logger::~Logger()
	{
		clog.rdbuf(defaultClogBuf);
		logFile.close();
	}
	
	
	void Logger::setLogFile(char* filePath)
	{
		this->filePath = filePath;
		
		logFile.close();
		if(append)
			logFile.open(filePath,ios::app);
		else
			logFile.open(filePath);	
			
		if(!logFile.is_open())
			throw FException();
			
		clog.rdbuf(logFile.rdbuf());
	}
	
	Logger* Logger::print(const int integerData)
	{
		clog << integerData;
		return this;
	}
	
	Logger* Logger::print(const char* textData)
	{
		clog << textData;
		return this;
	}
	
	Logger* Logger::newParagraph(const char fill, const unsigned fillAmount)
	{
		clog << endl << endl;
		for(unsigned i=0;i<fillAmount;i++)
			clog << fill;
		clog << endl;
		
		return this;
	}

	Logger* Logger::clear()
	{
		logFile.close();
		logFile.open(filePath);
		if(!logFile.is_open())
			throw FException();
			
		return this;
	}
}

