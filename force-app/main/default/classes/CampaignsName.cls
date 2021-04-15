public class CampaignsName {
    
    public CampaignsName(){
        List<Campaign> clist=[Select Id,Name from Campaign ORDER BY Name ASC Limit 10];
        List<Campaign> camlist=[Select Id,Name from Campaign ORDER BY Name DESC Limit 10];
        System.debug(''+ clist);
        System.debug(''+ camlist);
        
    }

}