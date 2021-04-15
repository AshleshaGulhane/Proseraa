public class SimpleInterest {
    Double Principle=6000,t=2,rate=4,result;
    public void calculate(){
        result=Principle*t*rate/100;
        System.debug('Simple interest is' +result);
    }

}