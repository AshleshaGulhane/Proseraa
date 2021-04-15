public class CountContact {
    
    public static void countcon(){
        List<Account> acclist=new List<Account>();
        List<Contact> conlist=[Select id,Name,AccountId from Contact where account.name='Eternus'];
        List<Account> alist=[Select Contact_Count__c from Account where name='Eternus'];
        
        for(Account ac:alist){
            ac.Contact_Count__c=conlist.size();
            acclist.add(ac);
        }
        update acclist;
    }

}