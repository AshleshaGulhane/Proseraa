public class Palindrome {
    public static void palindromeString(){
        
        String s='TOT';
        String Palindrome=s.reverse();
        System.debug(''+Palindrome);
        if(s==Palindrome){
            system.debug('String is Palindrome');
        }
        else{
            system.debug('String is not Palindrome');
        }
    }

}