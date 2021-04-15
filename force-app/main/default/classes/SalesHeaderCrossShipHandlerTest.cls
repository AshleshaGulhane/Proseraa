/*
 * class Name:SalesHeaderCrossShipHandlerTest
 * Description:This class is return to cover SalesHeaderCrossShipHandler.
 * Created by:Ashlesha 
 * Created Date:05/04/2021
 */

@isTest
public class SalesHeaderCrossShipHandlerTest {
    
    @isTest static void casemethod(){
       SalesHeader__c s=new SalesHeader__c();
        s.Status__c='Open';
        s.Total_Amount__c='400';
        s.Bill_to_City__c='Pune';
        s.Bill_to_Postal_Code__c='101';
        s.Bill_to_State__c='Maharashtra';
        s.Bill_to_street__c='NIT';
        insert s;
      
       List<Case> caselist=new list<Case>();
       List<SalesHeader__c> slist=new list<SalesHeader__c>();
        EFT_Transaction_Status__c eft=new EFT_Transaction_Status__c();
        
        for(SalesHeader__c sh:slist){
         if(sh.Status__c=='Open'&& sh.Total_Amount__c>='300'&& sh.Bill_to_City__c!=sh.Ship_to_City__c || sh.Bill_to_Postal_Code__c!=sh.Ship_to_Postal_Code__c ||
                sh.Bill_to_State__c!=sh.Ship_to_State__c || sh.Bill_to_street__c!=sh.Ship_to_Street__c){
        for(integer i=0;i<=1000;i++){ 
              Case c=new Case();
              c.Origin='Internal';
              c.Reason='Unable to Cross Ship';
              c.Priority='Medium';
              c.Status='New';
              c.Subject=sh.Account__c+''+c.Type;
              c.Type='Unable to Cross Ship';
              c.Open_Sales_Order__c=sh.Id;
              c.Transaction_Status__c=eft.Transaction_Status__c;
              c.Order_Date__c=eft.Transaction_Date__c;
        	  caselist.add(c);
        }
        
        insert caselist;
        
        
       
    }
        }
    }
}