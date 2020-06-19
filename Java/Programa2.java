import java.util.HashMap;

public class Programa2 {
    
 public static void main(String[] args){ 
        
        String texto="CLAVE";
        HashMap textos=new HashMap<String,String>();
        
        try {
            Thread.sleep(30000);
        }catch(InterruptedException ex){
            Thread.currentThread().interrupt();
        } 
        
        for(int i = 1; i < 101; i++){
            textos.put(texto+"_"+i,"VALOR_"+i);
        }
        
        System.out.println(textos);
    }
    
}