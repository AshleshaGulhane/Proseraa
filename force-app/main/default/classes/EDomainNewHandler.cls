public class EDomainNewHandler {
    
    public static void DomainName(List<Contact> clist){
        
        List<string> conlist=new list<string>();
        for(Contact ct:clist){
        conlist.add(ct.Email_Domain__c);
    }
    List<Account> accountlist=[Select id,EDomain__c from Account where EDomain__c LIKE : conlist];
    Map<string,id> mapaccount=new Map<string,id>();
    for(Account acc:accountlist){
        for(String dom:acc.EDomain__c.split(',')){
            mapaccount.put(dom,acc.Id);
        }
        
    }
    for(Contact ct:clist){
        if(mapaccount.get(ct.Email_Domain__c)!=null){
            ct.AccountId=mapaccount.get(ct.Email_Domain__c);
        }
    }
    }

}