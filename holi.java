public class PruebaIterador{
  public static void main(String[] args){
    Espacio[] space=new Espacio[10];
    for(int i=0;i<space.length();i++)
      space[i]=new Espacio("ocupado");
    IteradorEspacios iterador=Espacio.iterador(space);
    while(iterador.mirarSiguiemte()){
      Espacio lugarActual=iterador.siguiente();
      System.out.println("Espacio "+lugarActual.estado()); 
    }
  }
}
