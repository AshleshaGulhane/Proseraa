public class AParToChild {
    
    public AParToChild(){
        list<A__c> alist=[Select Name__c,(Select Name__c,A__c,B__c from C__r WHERE Name__c='john')from A__c];
    }

}