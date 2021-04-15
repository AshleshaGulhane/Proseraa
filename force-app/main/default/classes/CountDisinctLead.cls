public class CountDisinctLead {
    
    public static void agrResult(){
    Map<String,Map<String,Integer>> mymap=new Map<string,Map<String,Integer>>();
    Map<String,Integer> leadMap=new Map<String,Integer>();
    
     list<AggregateResult> arg=[Select Count(Name)Total,status,LeadSource from Lead GROUP BY status,Leadsource];
        
        for(AggregateResult res:arg){
            leadMap.put((string)res.get('status'),(integer)res.get('Total'));
            mymap.put((string)res.get('leadsource'),leadMap);
        }
        system.debug('Result is'+myMap);
    }
}