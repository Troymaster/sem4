//---------------------------------------------------------------------------

#ifndef ContainerH
#define ContainerH
//---------------------------------------------------------------------------
#include <String>
#include <list>
using namespace std;
//---------------------------------------------------------------------------
struct TRegion {
	TRegion(AnsiString reg, AnsiString ctr) : region(reg), center(ctr){}
	friend bool operator==(const TRegion &a, const TRegion &b) {return a.region==b.region && a.center==b.center;}
	AnsiString region,center;
};

class TRegionBook {
public:
	list <TRegion> book;
	bool Contain(TRegion region);
    void Clear();
private:

};

//---------------------------------------------------------------------------
#endif