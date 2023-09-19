#include <iostream>
#include <vector>
#include <sstream>
#include <fstream>
#include <string>
#include <math.h>

#define NOMBRE_ARCHIVO "points.csv"
using namespace std;


class Octree;
struct Point;

vector<Point> puntos;
#ifndef OCTREE_H
#define OCTREE_H

struct Point{
    double x;
    double y;
    double z;
    Point(){
        x = 0.0;
        y = 0.0;
        z = 0.0;
    }
    Point(double a, double b, double c) : x(a), y(b), z(c) {}
};


class Octree {
private:
   Octree *children[8];
   Point *points;


   Point bottomLeft;
   double h;

   int nPoints;

public:
    Octree();
    Octree(Point , double);
    bool exist( const Point & );
    void insert( const Point & );
    Point find_closest( const Point &, int radius) const;
};

Octree::Octree(){
    points = nullptr;
    nPoints = 0;
}

Octree::Octree(Point punto, double height){
    for (int i = 0; i < 8; ++i) children[i] = new Octree();
    points = nullptr;
    bottomLeft = punto;
    h = height;
    nPoints = 0;
}

#endif

bool Octree::exist(const Point & p){
    if(p.x < bottomLeft.x || p.x > bottomLeft.x + h || p.y < bottomLeft.y || p.y > bottomLeft.y + h || p.z < bottomLeft.z || p.z > bottomLeft.z + h ) return 0;

    if(nPoints == 0){
        return 0;
    }
    if(points != nullptr){
        if(p.x == points->x && p.y == points->y && p.z == points->z) return 1;
        return 0;
    }

    int child = 0;
    double childH = h / 2.0;
    if(p.x > bottomLeft.x + childH) child |= 1;
    if(p.y > bottomLeft.y + childH) child |= 2;
    if(p.z > bottomLeft.z + childH) child |= 4;

    return children[child]->exist(p);
}

void Octree::insert(const Point &p){
    if(p.x < bottomLeft.x || p.x > bottomLeft.x + h || p.y < bottomLeft.y || p.y > bottomLeft.y + h || p.z < bottomLeft.z || p.z > bottomLeft.z + h ) return;
    
    if(nPoints == 0){
        double childH = h / 2.0;
        for (int i = 0; i < 8; ++i) {
            double childX = (i & 1) ? bottomLeft.x + childH : bottomLeft.x;
            double childY = (i & 2) ? bottomLeft.y + childH : bottomLeft.y;
            double childZ = (i & 4) ? bottomLeft.z + childH : bottomLeft.z;
            children[i] = new Octree(Point(childX, childY, childZ), childH);
        }
        points = new Point(p.x,p.y,p.z);
        nPoints++;
        return;
    }
    else if(points != nullptr){
        if(p.x == points->x && p.y == points->y && p.z == points->z) return;
        Point * n_p = points;
        points = nullptr;
        int child = 0;
        double childH = h / 2.0;
        for (int i = 0; i < 8; ++i) {
            double childX = (i & 1) ? bottomLeft.x + childH : bottomLeft.x;
            double childY = (i & 2) ? bottomLeft.y + childH : bottomLeft.y;
            double childZ = (i & 4) ? bottomLeft.z + childH : bottomLeft.z;
            children[i] = new Octree(Point(childX, childY, childZ), childH);
        }
        if(n_p->x > bottomLeft.x + childH) child |= 1;
        if(n_p->y > bottomLeft.y + childH) child |= 2;
        if(n_p->z > bottomLeft.z + childH) child |= 4;
        children[child]->insert(*n_p);
    }
    int child = 0;
    double childH = h / 2.0;
    if(p.x > bottomLeft.x + childH) child |= 1;
    if(p.y > bottomLeft.y + childH) child |= 2;
    if(p.z > bottomLeft.z + childH) child |= 4;

    children[child]->insert(p);
    nPoints++;
    return;
}

Point Octree::find_closest( const Point &p, int radius) const{
    if(p.x < bottomLeft.x || p.x > bottomLeft.x + h || p.y < bottomLeft.y || p.y > bottomLeft.y + h || p.z < bottomLeft.z || p.z > bottomLeft.z + h ) return Point(0,0,0);
    if(points != nullptr){
        if(p.x == points->x && p.y == points->y && p.z == points->z) return p;
        return Point(0,0,0);
    }

    int child = 0;
    double childH = h / 2.0;
    if(p.x > bottomLeft.x + childH) child |= 1;
    if(p.y > bottomLeft.y + childH) child |= 2;
    if(p.z > bottomLeft.z + childH) child |= 4;

    Point k = children[child]->find_closest(p, 0);

    if(k.x == 0 && k.y == 0 && k.z == 0){
        return Point(0,0,0);
    }

    double dist = 1e6;
    for(int i = 0; i < 8; i++){
        if(children[i]->points != nullptr){
            double ndist = sqrt(pow((p.x - children[i]->points->x),2) + pow((p.y - children[i]->points->y),2) + pow((p.z - children[i]->points->z),2));
            if(ndist < dist){
                k = Point(children[i]->points->x, children[i]->points->y, children[i]->points->z);
                dist = ndist;
            }
        }
    }
    return k;
}

void Insercion_Datos(){
    ifstream archivo(NOMBRE_ARCHIVO);
    string linea;
    char delimitador = ',';
    double altura;
    double mxx = -1e6, mxy = -1e6, mxz = -1e6;
    double mnx = 1e6, mny = 1e6, mnz = 1e6;
    while(getline(archivo,linea)){

        stringstream stream(linea);
        string x, y, z;
        getline(stream, x, delimitador);
        getline(stream, y, delimitador);
        getline(stream, z, delimitador);
        double x_;
        istringstream(x) >> x_;
        double y_;
        istringstream(y) >> y_;
        double z_;
        istringstream(z) >> z_;
        mxx = max(mxx, x_);
        mxy = max(mxy,y_);
        mxz = max(mxz,z_);
        mnx = min(mnx,x_);
        mny = min(mny,y_);
        mnz = min(mnz,z_);
        puntos.push_back(Point(x_,y_,z_));
    }
    archivo.close();
    Point k(mnx,mny,mnz);
    altura = max((mxx-mnx),max((mxy-mny),(mxz-mnz)));
    Octree tree(k,altura);
    for(int i = 0; i < puntos.size(); i++){
        tree.insert(Point(puntos[i].x,puntos[i].y,puntos[i].z));
    }
    cout << tree.exist(Point(95,105,-34)) << endl;
    cout << tree.exist(Point(117,10.6999,-38)) << endl;
    Point m = tree.find_closest(Point(300,300,300),0);
    return;
}

int main()
{
    Insercion_Datos();
    return 0;
}