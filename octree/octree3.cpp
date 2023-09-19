#include <iostream>
#include <vector>
#include <sstream>
#include <fstream>
#include <string>

#define NOMBRE_ARCHIVO "points.csv"
using namespace std;


using namespace std;

#define OCTREE_H

class Octree;
class Node;
struct Point;

vector<Point> puntos;

//Puntos
struct Point{
    int x;
    int y;
    int z;
    Point():x(0),y(0),z(0){};
    Point(int a, int b, int c) : x(a), y(b), z(c) {}
};

 // Nodos
class Node{
private:
   Node *children[8];
   vector <Point *>points;
   
   Point bottomLeft;
   double height;

   int nPoints;
public:
    Node();
    Node(Point, double);
    Node(Node *);

    Point getBL() const { return bottomLeft; }
    double getH() const { return height; }
    int getNP() const { return nPoints; }
    Point* getPoint(int index) const {
        if (index >= 0 && index < points.size()) {
            return points[index];
        } else {
            return nullptr;
        }
    }
    Node * getChild(int i) const{
        return children[i];
    }
    const vector<Point*>& getV() const {
        return points;
    }

    void setBL(const Point& bl) { bottomLeft = bl; }
    void setH(double h) { height = h; }
    void setNP() { nPoints++; }
    void addPoint(Point* point) { points.push_back(point); }
    void copyV(const vector<Point *>& Vector) {
       points = Vector;
    }
};

Node::Node(){
    nPoints = 0;
}

Node::Node(Point bl, double h){
    bottomLeft = bl;
    height = h;
    nPoints = points.size();
    for (int i = 0; i < 8; ++i) children[i] = new Node();
}

Node::Node(Node *other){
    for(int i = 0; i < 8; ++i) children[i] = other->getChild(i);
    points = other->getV();
    bottomLeft = other->getBL();
    height = other->getH();
    nPoints = other->getNP();
}

//Octree
class Octree {
private:
   Node * root;
public:
   Octree(Point , double );
   bool exist( const Point & , Node * &, int &, Node *&);
   void insert( const Point &);
   bool esp_exist( const Point & , Node * &, int &, Node *&);
   void esp_insert( const Point &);
   Point find_closest( const Point &, int radius) const;
};

Octree::Octree(Point bl, double h){
    root = new Node(bl,h);
}

bool Octree::exist(const Point &p, Node * &n, int &pos, Node *& k){
    int child;
    Node * pp = n;
    if(p.x < root->getBL().x || p.x > root->getBL().x+root->getH() || p.y < root->getBL().y || p.y > root->getBL().y + root->getH() || p.z < root->getBL().z || p.z > root->getBL().z + root->getH()){
        return 1;
    }

    if(n->getNP() == 0){
        return 0;
    }

    if(n->getNP() == 1){
        if(p.x == n->getPoint(0)->x && p.y == n->getPoint(0)->y && p.z == n->getPoint(0)->z) return 1;
        else{
            return 0;
        }
    }

    int midx = (2*n->getBL().x + n->getH())/2;
    int midy = (2*n->getBL().y + n->getH())/2;
    int midz = (2*n->getBL().z + n->getH())/2;
    if(p.x <= midx && p.y <= midy && p.z <= midz) child = 0;
    else if(p.x > midx && p.y <= midy && p.z <= midz) child = 1;
    else if(p.x <= midx && p.y > midy && p.z <= midz) child = 2;
    else if(p.x > midx && p.y > midy && p.z <= midz) child = 3;
    else if(p.x <= midx && p.y <= midy && p.z > midz) child = 4;
    else if(p.x > midx && p.y <= midy && p.z > midz) child = 5;
    else if(p.x <= midx && p.y > midy && p.z > midz) child = 6;
    else if(p.x > midx && p.y > midy && p.z > midz) child = 7;
    k = n;
    n = n->getChild(child);
    pos = child;
    if(!this->exist(p,n,pos,k)){
        pp->addPoint(new Point(p.x,p.y,p.z));
        pp->setNP();
        return 0;
    }
    return 1;
}

void Octree::insert( const Point &p){
    Node * n = root;
    Node * pp;
    int pos;
    if(exist(p,n,pos,pp)) return;

    if(n->getNP() == 0){
        if(n != root){
            Node **m;
            Node *l = n;
            m = &l;
            n = nullptr;
            delete n;
            if (pos == 0) {
                Point BL(pp->getBL().x,pp->getBL().y,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 1) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 2) {
                Point BL(pp->getBL().x,pp->getBL().y+pp->getH()/2+1,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 3) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y+pp->getH()/2+1,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 4) {
                Point BL(pp->getBL().x,pp->getBL().y,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 5) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 6) {
                Point BL(pp->getBL().x,pp->getBL().y+pp->getH()/2+1,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 7) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y+pp->getH()/2+1,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            n->addPoint(new Point(p.x,p.y,p.z));
            n->setNP();
            **m = *n;
        }
        else{
            n->addPoint(new Point(p.x,p.y,p.z));
            n->setNP();
        }
        return;
    }
    else if(n->getNP() == 1){
        n->addPoint(new Point(p.x,p.y,p.z));
        n->setNP();
        Point s(n->getPoint(0)->x,n->getPoint(0)->y,n->getPoint(0)->z);
        this->esp_insert(s);
        this->esp_insert(p);
    }
}

void Octree::esp_insert( const Point &p){
    Node * n = root;
    Node * pp;
    int pos;
    if(esp_exist(p,n,pos,pp)) return;

    if(n->getNP() == 0){
        if(n != root){
            Node **m;
            Node *l = n;
            m = &l;
            n = nullptr;
            delete n;
            if (pos == 0) {
                Point BL(pp->getBL().x,pp->getBL().y,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 1) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 2) {
                Point BL(pp->getBL().x,pp->getBL().y+pp->getH()/2+1,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 3) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y+pp->getH()/2+1,pp->getBL().z);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 4) {
                Point BL(pp->getBL().x,pp->getBL().y,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 5) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 6) {
                Point BL(pp->getBL().x,pp->getBL().y+pp->getH()/2+1,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            else if (pos == 7) {
                Point BL(pp->getBL().x+pp->getH()/2+1,pp->getBL().y+pp->getH()/2+1,pp->getBL().z+pp->getH()/2+1);
                n = new Node(BL,pp->getH()/2);
            }
            n->addPoint(new Point(p.x,p.y,p.z));
            n->setNP();
            **m = *n;
        }
        else{
            n->addPoint(new Point(p.x,p.y,p.z));
            n->setNP();
        }
        return;
    }
    else if(n->getNP() == 1){
        n->addPoint(new Point(p.x,p.y,p.z));
        n->setNP();
        Point s(n->getPoint(0)->x,n->getPoint(0)->y,n->getPoint(0)->z);
        this->esp_insert(s);
        this->esp_insert(p);
    }
}

bool Octree::esp_exist(const Point &p, Node * &n, int &pos, Node *& k){
    int child;
    Node * pp = n;
    if(p.x < root->getBL().x || p.x > root->getBL().x+root->getH() || p.y < root->getBL().y || p.y > root->getBL().y + root->getH() || p.z < root->getBL().z || p.z > root->getBL().z + root->getH()){
        return 1;
    }

    if(n->getNP() == 0){
        return 0;
    }

    if(n->getNP() == 1){
        if(p.x == n->getPoint(0)->x && p.y == n->getPoint(0)->y && p.z == n->getPoint(0)->z) return 1;
        else{
            return 0;
        }
    }

    int midx = (2*n->getBL().x + n->getH())/2;
    int midy = (2*n->getBL().y + n->getH())/2;
    int midz = (2*n->getBL().z + n->getH())/2;
    if(p.x <= midx && p.y <= midy && p.z <= midz) child = 0;
    else if(p.x > midx && p.y <= midy && p.z <= midz) child = 1;
    else if(p.x <= midx && p.y > midy && p.z <= midz) child = 2;
    else if(p.x > midx && p.y > midy && p.z <= midz) child = 3;
    else if(p.x <= midx && p.y <= midy && p.z > midz) child = 4;
    else if(p.x > midx && p.y <= midy && p.z > midz) child = 5;
    else if(p.x <= midx && p.y > midy && p.z > midz) child = 6;
    else if(p.x > midx && p.y > midy && p.z > midz) child = 7;
    k = n;
    n = n->getChild(child);
    pos = child;
    return this->esp_exist(p,n,pos,k);
}

void Insercion_Datos(){
    ifstream archivo(NOMBRE_ARCHIVO);
    string linea;
    char delimitador = ',';
    int altura;
    int mxx = -1e6, mxy = -1e6, mxz = -1e6;
    int mnx = 1e6, mny = 1e6, mnz = 1e6;
    while(getline(archivo,linea)){

        stringstream stream(linea);
        string x, y, z;
        getline(stream, x, delimitador);
        getline(stream, y, delimitador);
        getline(stream, z, delimitador);
        int x_;
        istringstream(x) >> x_;
        int y_;
        istringstream(y) >> y_;
        int z_;
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
    altura = max(mxx,max(mxy,mxz));
    Octree tree(k,altura);
    for(int i = 0; i < puntos.size(); i++){
        tree.insert(Point(puntos[i].x,puntos[i].y,puntos[i].z));
    }

    return;
}

int main(){
    Insercion_Datos();
    return 0;
}