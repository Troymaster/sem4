//---------------------------------------------------------------------------

#ifndef ContainerH
#define ContainerH
//---------------------------------------------------------------------------
#include <String>
#include <list>
using namespace std;
//---------------------------------------------------------------------------
struct TRegion {
	TRegion() : region(""), center(""){}
	TRegion(UnicodeString reg, UnicodeString ctr) : region(reg), center(ctr){}
    TRegion(string reg, string ctr) : region(reg.c_str()), center(ctr.c_str()){}
	friend bool operator==(const TRegion &a, const TRegion &b) {return a.region==b.region && a.center==b.center;}
	UnicodeString region,center;
};

class TRegionBook {
public:
	list <TRegion> book;
	bool Contain(TRegion region);
private:

};

//---------------------------------------------------------------------------
#endif
