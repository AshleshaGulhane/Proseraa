/*
 * class Name:DuplicateConChkHandlerTest
 * Description:This class is return to cover DuplicateConChkHandler.
 * Created by:Ashlesha 
 * Created Date:06/04/2021
 */







@isTest
public class DuplicateConChkHandlerTest {
    
    @isTest static void ConDuplicateMethod(){
         List<Contact> conlist=new list<Contact>();
        Contact c=new Contact();
        c.FirstName='ash';
        c.LastName='proseraa';
        c.Email='ash@proseraa.com';
        c.Phone='9807654320';
        conlist.add(c);
        insert conlist;
      
        DuplicateConChkHandler.Contactchk(conlist);
        
    }
}