public class SummationofNum {
    
    Integer sum=0,m,n=26;
    public void sumNum(){
        While(n>0){
            m=math.mod(n, 10);
            sum=sum+m;
            n=n/10;
            
        }
        System.debug('Sum is'+sum);
    }

}