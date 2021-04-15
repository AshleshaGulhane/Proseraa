public class OpportunityId {
    
    public void oppid(){
    List<Opportunity> opplist=new List<Opportunity>([Select id,AccountId from Opportunity]);
        Set<id> accidset=new Set<id>();
    for(Opportunity opp:opplist){
        if(opp.AccountId!=Null){
            accidset.add(opp.AccountId);
            system.debug(''+opp);
            system.debug(''+accidset);
        }
        
    }
    }

}