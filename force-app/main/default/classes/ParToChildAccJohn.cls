public class ParToChildAccJohn {
    
    public ParToChildAccJohn(){
        List<Account> acclist=[Select Id, Name,(Select Id, FirstName From Contacts Where FirstName LIKE 'john') From Account];
    }
        
    

}