public class AccountTaskHandler {
    
    public static void accounttaskmethod(List<Account> alist){
         List<Task> tasklist=new list<Task>();
    
    for(Account acc:alist){
        if(acc.Name!=null){
            tasklist.add(new Task(Subject='Meeting with Eternus',WhatId=acc.Id));
        }
        if(tasklist.size()>0){
            insert tasklist;
        }
    }
    }

}