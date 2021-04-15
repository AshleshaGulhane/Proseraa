public class ChildtoPaConMedia {
    
    
    public ChildtoPaConMedia(){
        
        List<Contact> clist=[Select Name,Account.Name,Account.Industry from Contact WHERE Account.Active__c='Yes' AND Account.Industry='Media'];
    }
}