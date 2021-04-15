public class AccountBillingState {
    public AccountBillingState(){
        list<account> alist=[Select Name From Account WHERE BillingState NOT In ('Maharashtra','Kerala')ORDER BY BillingState DESC NULLS LAST Limit 10000];
        system.debug(''+ alist);
    }

}