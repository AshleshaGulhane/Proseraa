/*
 * class Name:EDomainNewTest
 * Description:This class is written to cover EDomainNewHandler.
 * Created by:Ashlesha 10/03/2021
 * Modified by:
  
 */
@isTest
private class EDomainNewTest {
    
    @isTest static void TestOne(){
        
        List<Account> alist=new list<Account>();
        Integer count=100;
        For(Integer i=1;i<=count;i++){
        Account a=new Account();
        a.Name='My Account'+i;
        a.EDomain__c='www.gmail.com'+i;
        alist.add(a);
        
        }
        //insert alist;
        
        List<Contact> clist=new list<Contact>();
        For(Integer i=1;i<=count;i++){
            Contact c=new Contact();
            c.LastName='My Contact'+i;
            c.Email_Domain__c='www.gmail.com'+i;
            clist.add(c);
        }
        insert clist;
        
        List<Contact> conlist=[Select id,AccountId from contact where id in:clist ORDER BY Id];
        for(Integer i=0;i<=count;i++){
            System.assertEquals(alist[i].Id,conlist[i].accountId);
        }
    }
    
    

}