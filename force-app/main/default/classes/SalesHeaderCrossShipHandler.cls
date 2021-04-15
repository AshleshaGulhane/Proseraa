public class SalesHeaderCrossShipHandler {
     
    
    public static void CrossShipMethod(List<SalesHeader__c> slist){
        List<Case> caselist=new list<Case>();
    for(SalesHeader__c sh:slist){
        EFT_Transaction_Status__c eft=new EFT_Transaction_Status__c();
        Case c=new Case();
        if(sh.Status__c=='Open'&& sh.Total_Amount__c>='300'&& sh.Bill_to_City__c!=sh.Ship_to_City__c || sh.Bill_to_Postal_Code__c!=sh.Ship_to_Postal_Code__c ||
                                                              sh.Bill_to_State__c!=sh.Ship_to_State__c || sh.Bill_to_street__c!=sh.Ship_to_Street__c){
                                                                  
              c.AccountId=sh.Account__c;
              c.ContactId=sh.Contact__c;
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
    }
    insert caselist;
    }
}