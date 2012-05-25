#ifndef LOGGER_H
#define LOGGER_H
#include <string>
#include <fstream>
using namespace std;

namespace ft
{

class Logger {
private:
	char* filePath;
	ofstream logFile;
	streambuf* defaultClogBuf;
	bool append;
public:
	Logger(char* filePath,bool append);
	Logger(bool append);
	~Logger();
	
	void setLogFile(char* logFile);
	Logger* print(const int integerData);
	Logger* print(const char* textData);
	Logger* newParagraph(const char fill = ' ',const unsigned fillAmount = 0);
	Logger* clear();
};

}
#endif // LOGGER_H
