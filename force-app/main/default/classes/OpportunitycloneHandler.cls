public class OpportunitycloneHandler {
    
    public static void oppclone(List<Opportunity> opportunitylist){
        if(chkrecurs.runOnce()){
        List<Opportunity> opplist=new list<Opportunity>();
        for(Opportunity opp:opportunitylist){
            opplist.add(opp.clone());
        }
        insert opplist;
    }
    }

}