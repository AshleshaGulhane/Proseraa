public class MathOperations {
   
    public static Integer Result;
    public static void Calculator(String Operation,Integer n,Integer m){
        if(Operation=='SUM'){
            Result=n+m;
        }
        else if(Operation=='SUB'){
            Result=n-m;
        }
        else if(Operation=='MULT'){
            Result=n*m;
        }
        else if(Operation=='DIV'){
            Result=n/m;
            
        }
        System.debug(''+Result);
    }

}