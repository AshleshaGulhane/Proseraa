public class CloneAccountHandler {
    
    public static void accountclonemethod(list<Account> alist){
         if(chkrecurs.runOnce()){
    List<Account> acclist=new list<Account>();
    for(Account acc:alist){
        acclist.add(acc.clone());
    }
    insert acclist;
    }
    }

}