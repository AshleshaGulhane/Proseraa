/*
 * class Name:InheritanceTest
 * Description:This class is return to cover Inheritance and Inheritancechild.
 * Created by:Ashlesha 
 * Created Date:07/04/2021
 */



@isTest
public class InheritanceTest {
    
    @isTest static void inhrtMethod(){
        
        Inheritance inhrt=new Inheritance();
        inhrt.inheritmethod();
        Inheritancechild inhrtchld=new Inheritancechild();
        inhrtchld.inheritmethod();
    }

}