public class AccounttNameA {
   
   public void AccountStartsWithA(){
       list<account>UpdatedAccount=new list<account>();
       list<account>AccList=[select id,name from account where name like 'a%'];
       integer NumberOfAcc=AccList.size();
       system.debug('No of records are '+NumberOfAcc);
       for(account acc:AccList){
           acc.name='‘Updated via update DML operation';
           UpdatedAccount.add(acc);
       }
       update UpdatedAccount;
   
        
    }

}