/*
 * class Name:ECS12TriggerTest
 * Description:This class is return to cover ECS12TriggerHandler.
 * Created by:Ashlesha 
 * Created Date:05/04/2021
 */


@isTest
public class ECS12TriggerTest {
    
    @isTest static void FirstMethod(){
        //List<Contact> newCon=new list<Contact>();
        Contact c=new Contact();
        c.LastName='abc';
        c.Primary_Contact__c=true;
        //c.Account.Name='PrimaryCheck';
        c.Email='AA@proseraa.com';
        insert c;
       // newcon.add(c);
        //insert newcon;
        //ECS12TriggerHandler.ContactAccountAssociation(newCon);
        //ECS12TriggerHandler.makePrimeryContact(newCon);
    
    }
}