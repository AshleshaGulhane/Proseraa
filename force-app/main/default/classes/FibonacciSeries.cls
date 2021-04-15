public class FibonacciSeries {
    
    Integer i,n=5,t1=0,t2=1,nextterm;
    public void fibnumber(){
        for(i=1;i<=n;i++){
            nextterm=t1+t2;
            t1=t2;
            t2=nextterm;
        }
    }

}