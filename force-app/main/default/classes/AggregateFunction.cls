public class AggregateFunction {
    
    public static void aggrFunc(){
       /* List<AggregateResult> aglist=[Select SUM(Amount)Total,CALENDAR_YEAR(closeDate)Year from Opportunity Where isclosed=true AND 
                                     closedate=This_Fiscal_Year GROUP BY CALENDAR_YEAR(closedate)];
        
        Map<integer,decimal> SumToYear=new Map<integer,decimal>();
        
        for(AggregateResult agr:aglist){
            SumToYear.put((integer)agr.get('Year'),(decimal)agr.get('Total'));
            system.debug(''+SumToYear);
        }*/
        
        List<AggregateResult> aglist=[Select count_distinct(name)Total,leadSource from lead GROUP BY leadsource HAVING count_distinct(name)>3];
		 Map<String,Integer> leadmap=new Map<String,Integer>(); 
        
        for(AggregateResult ag:aglist){
            integer countlead=(integer)ag.get('Total');
            string stgName=(string)ag.get('leadsource');
            system.debug('Leads per leadsource :'+StgName+'='+countlead);
        }
        
    }

}