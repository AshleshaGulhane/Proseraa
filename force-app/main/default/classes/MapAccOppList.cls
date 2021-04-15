public class MapAccOppList {
    
    public void ListInMap(){
        Map<id,list<Opportunity>> macOpp=new Map<id,list<Opportunity>>();
        List<Opportunity> opplist=[Select id,AccountID from Opportunity WHERE AccountId!=null];
        for(Opportunity op:opplist){
            macOpp.get(op.AccountId);
        }
      
    }

}