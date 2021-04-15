/*
 * class Name:AbstractTest
 * Description:This class is return to cover AbstractExample and Abstractexamplechild.
 * Created by:Ashlesha 
 * Created Date:07/04/2021
 */





@isTest
public class AbstractTest {
    
    @isTest static void absmethod(){
        //AbstractExample abs=new AbstractExample();
        //abs.myabstractmethod();
        //Abstractexamplechild abc=new Abstractexamplechild();
        //abc.myabstractmethod();
        
        AbstractExample abs=new Abstractexamplechild();
        abs.myabstractmethod();
    }

}