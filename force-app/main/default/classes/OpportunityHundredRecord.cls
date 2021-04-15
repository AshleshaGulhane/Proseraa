public class OpportunityHundredRecord {
    
    public OpportunityHundredRecord(){
        List<Opportunity> opplist=[Select Name,Amount from opportunity WHERE Amount>10000 Limit 100 OFFSET 50 ALL ROWS];
        system.debug(''+opplist);
    }

}