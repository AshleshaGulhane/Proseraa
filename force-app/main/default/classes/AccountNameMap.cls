public class AccountNameMap {
    List<Account> acclist=[Select id from Account];
    Map<string,id> accmap=new Map<string,id>();
    Map<id,Account> accountidmap =new Map<id,Account>();
    public void accMapmethod(){
   /* for(Account acc:acclist){
        accmap.put(acc.Name,acc.Id);
        system.debug(''+accmap);
            }*/
        for(Account acct:acclist){
            accountidmap.get(acct.Id);
            system.debug(''+accountidmap);
        }
    }

}