#include <simplecpp>
#include <fstream>
#include <cassert>

struct routedata{
  string name;
  vector<int> stops;
  vector<double> downArr, upArr;
  // when first down bus arrives.  and first up bus.  Will be calculated.
  double headway;
};

struct stopdata{
  string name;
  vector<int> routes;
};
  
struct graph{
  vector<routedata> routes;
  vector<stopdata> stops;
  graph(ifstream &infile){
    int nstops; infile >> nstops;
    stops.resize(nstops+1);   // stop numbering begins from 1
    cout<<"Will read "<<nstops<<" stop data."<<endl;
    string dummy;
    getline(infile, dummy);  // just to eject newline after nstops
    assert(dummy.size() == 0); 
    for(int i=1; i<nstops+1; i++)
      getline(infile, stops[i].name);
    cout <<"Read of "<<nstops<<" stops."<<endl;

    int nroutes; infile >> nroutes;
    cout <<"Will read "<<nroutes<<" routes"<<endl;
    routes.resize(nroutes);
    for(int i=0; i < nroutes; i++){
      infile >> routes[i].name >> routes[i].headway;
      int nstops; infile >> nstops;
      cout<<i<<nstops<<endl;
      routes[i].stops.resize(nstops);
      routes[i].downArr.resize(nstops);
      routes[i].upArr.resize(nstops);
      infile >> routes[i].stops[0];
      double timefromprevious;
      for(int j=1; j<nstops; j++){
	infile >> timefromprevious >> routes[i].stops[j];
	routes[i].downArr[j] = routes[i].downArr[j-1] + timefromprevious;
      }
      double total = routes[i].downArr[nstops-1];
      for(int j=0; j<nstops; j++){
	routes[i].upArr[j] = total - routes[i].downArr[j];
	stops[routes[i].stops[j]].routes.push_back(i);
      }
    }
  }
  void printroute(size_t r){
    assert(r < routes.size());
    cout << routes[r].name <<' '<<routes[r].headway<<endl;
    for(size_t s=0; s<routes[r].stops.size(); s++){
      cout <<stops[routes[r].stops[s]].name<<' '
	   <<routes[r].downArr[s]<<' '
	   <<routes[r].upArr[s]<<endl;
    }
  }

  void printstops(size_t s){
    assert(s < stops.size());
    cout << stops[s].name <<": ";
    for(auto r : stops[s].routes) cout << r <<' ';
    cout << endl;
  }

};

int main(){
  ifstream infile("schedule.txt");
  graph G(infile);

  for(size_t s=1; s<G.stops.size(); s++) G.printstops(s);
  for(size_t r=0; r<G.routes.size(); r++) G.printroute(r);

}