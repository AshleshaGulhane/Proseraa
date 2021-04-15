/*
 * class Name:EFTTransStatusHandlerTest
 * Description:This class is return to cover EFTTransStatusHandler.
 * Created by:Ashlesha 
 * Created Date:05/04/2021
 */

@isTest
public class EFTTransStatusHandlerTest {
    
    @isTest static void Eftmethod(){
        
        EFT_Transaction_Status__c eft=new EFT_Transaction_Status__c();
        eft.Method_Name__c='Credit Card Address Verify';
        eft.Transaction_Status__c='Declined';
        insert eft;
        
         SalesHeader__c s=new SalesHeader__c();
        s.Status__c='Open';
        s.Total_Amount__c='400';
        s.Names__c='Bill to customer';
        s.Bill_to_City__c='Pune';
        s.Bill_to_Postal_Code__c='101';
        s.Bill_to_State__c='Maharashtra';
        s.Bill_to_street__c='NIT';
        insert s;
        
       /* SalesHeader__c sh=new SalesHeader__c();
           sh.Status__c='Open';
           sh.Total_Amount__c='500';
           insert sh;
        
        EFT_Transaction_Status__c ef=new EFT_Transaction_Status__c();
       
       ef.Transaction_Status__c='Declined';
       ef.Method_Name__c='Credit Card Address Verify';
       ef.SalesHeader__c=sh.id;
       insert ef;*/
      
       // Test.startTest();
          List<EFT_Transaction_Status__c> elist=new list<EFT_Transaction_Status__c>();
         
            EFTTransStatusHandler.eftMethod(elist);
        //Test.stopTest();
            
    }

}