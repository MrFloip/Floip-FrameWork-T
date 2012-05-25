#ifndef FEXCEPTION_H
#define FEXCEPTION_H
#include <exception>
#include <string>
using std::string;

namespace ft
{

class FException: public std::exception  {
	string errorMessage;
public:
	FException(string _errorMessage,int errorCode);
	FException(){}
	~FException()throw(){}
	
	const char* what() const throw()
	{
		if(errorMessage.length() > 0)
			return errorMessage.c_str();
			
		return "unable to retrieve error data.";
	}
};

}

#endif // FEXCEPTION_H
