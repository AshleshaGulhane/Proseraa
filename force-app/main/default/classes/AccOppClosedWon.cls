public class AccOppClosedWon {
    
    public AccOppClosedWon(){
        List<Account> alist=[SELECT Id ,Name,(SELECT Id,AccountId FROM Opportunities WHERE StageName='Closed Won') FROM Account];
        system.debug(''+alist);
    }

}