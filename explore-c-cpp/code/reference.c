void refe(int &a){
    a = 6;
}

void caller(){
    int a;
    refe(a);
}
