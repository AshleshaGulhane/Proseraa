public class AccountMultiSelect {
    
    public AccountMultiSelect(){
        List<Account> aclist=[Select id,Name,Enrollment_Year__c from Account WHERE Enrollment_Year__c includes ('2010','2013;2014')];
        system.debug(''+aclist);
    }

}