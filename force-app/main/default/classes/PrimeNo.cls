public class PrimeNo {
    public static Integer i,n=7,count=0;
    public static void primeOrnot(){
        for(i=1;i<=n;i++)
            if(math.mod(n, i)==0){
                count++;
            }
        if(count==2){
            system.debug('Prime number');
        }
        else{
            system.debug('Not a Prime number');
        }
    }

}