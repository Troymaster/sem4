//---------------------------------------------------------------------------

#ifndef BookDeclarationH
#define BookDeclarationH
//---------------------------------------------------------------------------
#include <list>
#include <string>
using namespace std;
//---------------------------------------------------------------------------
class TCountry {
public:
	UnicodeString country;
	UnicodeString park;
	int animals;

	TCountry();
	TCountry(UnicodeString _country, UnicodeString _park, int _animals):
		country	(_country),
		park	(_park),
		animals	(_animals)
	{}
	TCountry(UnicodeString _country, UnicodeString _park, UnicodeString _animals):
		country	(_country),
		park	(_park),
		animals	(stoi(_animals.c_str()))
	{}
	TCountry(string _country, string _park, int _animals):
		country	(_country.c_str()),
		park	(_park.c_str()),
		animals	(_animals)
	{}
	TCountry(string _country, string _park, string _animals):
		country	(_country.c_str()),
		park	(_park.c_str()),
		animals	(stoi(_animals))
	{}
private:
};

class TBook {
public:
	list <TCountry> data;
};
//TBook book;
//---------------------------------------------------------------------------
#endif
