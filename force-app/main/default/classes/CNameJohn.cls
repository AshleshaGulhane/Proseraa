public class CNameJohn {
    
    public CNameJohn(){
        List<C__c> clist=[Select Name__c,A__r.Name__c,B__r.B_s_Name__c from C__c where Name__c='John'];
    }

}