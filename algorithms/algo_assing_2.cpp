int main(){
  Node* s=NULL;  
  insert(s, 10); 
  insert(s, 5);
  insert(s, 15);
  insert(s, 14);
  insert(s, 16);

  for(Node::iterator it = s->begin(); it != s->end(); ++it){
    cout << *it <<' ';
  }
  cout << endl;
}
