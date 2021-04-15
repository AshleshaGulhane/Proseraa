public class EFTTransStatusHandler {
    
    public static void eftMethod(List<EFT_Transaction_Status__c> eftlist){
        List<Case> caselist=new list<Case>();
    
    for(EFT_Transaction_Status__c eftt:eftlist){
        
        
        for(EFT_Transaction_Status__c eft:[Select id,Method_Name__c,Transaction_Date__c,SalesHeader__r.Names__c,Transaction_Status__c,SalesHeader__c,SalesHeader__r.Contact__c,SalesHeader__r.Account__c,SalesHeader__r.Status__c from EFT_Transaction_Status__c WHERE id in:trigger.new]){
        if(eft.Method_Name__c=='Credit Card Address Verify'&& eft.Transaction_Status__c=='Declined'&& eft.SalesHeader__r.Status__c=='Open'){
            
            Case cs=new Case();
            cs.AccountId=eft.SalesHeader__r.Account__c;
            cs.ContactId=eft.SalesHeader__r.Contact__c;
            cs.Origin='Internal';
            cs.Reason='Address Did Not Verify';
            cs.Priority='High';
            cs.Status='New';
            String sccname=[Select Name from Account WHERE id=:eft.SalesHeader__r.Account__c].Name;
            cs.Subject=sccname+' '+cs.Type;
            cs.Type='Address Did Not Verify';
            cs.Open_Sales_Order__c=eft.SalesHeader__c;
            cs.Transaction_Status__c=eft.Transaction_Status__c;
            cs.Sales_Order_Number__c=eft.SalesHeader__r.Names__c;
            cs.Order_Date__c=eft.Transaction_Date__c;
            caselist.add(cs);
        
        }
    }
   
    insert caselist;
    
    }
    }

}