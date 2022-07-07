void grilla(){

 for ( int x = 0; x < g; x++ ) {

      for ( int y = 0; y < g; y++ ) {
        if (x+y%2==0) {
          fill(0,255,44);
          rect(x*tam, y*tam, tam, tam);
        } else {
          rect(x*tam, y*tam, tam, tam);
        } if(estado.equals("jugando")== true) {
          
        }
      }
    } 
}
