public class DelInactiveAcc {
    
    public DelInactiveAcc(){
        list<Account> alist=[Select id from Account WHERE Active__c='No' AND CreatedDate =:(Date.Today() - 90)];
        Delete alist;
    }

}