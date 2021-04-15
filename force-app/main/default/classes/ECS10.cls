public class ECS10 {
    
    public void AccountMultiSelect(){ //4th
        List<Account> aclist=[Select id,Name,Enrollment_Year__c from Account WHERE Enrollment_Year__c includes ('2010','2013;2014')];
        system.debug(''+aclist);
    }
    public  void AccountBillingState(){//5th
        list<account> alist=[Select Name From Account WHERE BillingState NOT In ('Maharashtra','Kerala')ORDER BY BillingState DESC NULLS LAST Limit 10000];
        system.debug(''+ alist);
    }
     public void OpportunityHundredRecord(){ //6th
        List<Opportunity> opplist=[Select Name,Amount from opportunity WHERE Amount>10000 Limit 100 OFFSET 50 ALL ROWS];
        system.debug(''+opplist);
    }
    ////////////////////////////////////////////////////////////Aggregate Functions
    public void aggregatemethod(){ //1st
         List<AggregateResult> aglist=[Select SUM(Amount)Total,CALENDAR_YEAR(closeDate)Year from Opportunity Where isclosed=true AND 
                                     closedate=This_Fiscal_Year GROUP BY CALENDAR_YEAR(closedate)];
        
        Map<integer,decimal> SumToYear=new Map<integer,decimal>();
        
        for(AggregateResult agr:aglist){
            SumToYear.put((integer)agr.get('Year'),(decimal)agr.get('Total'));
            system.debug(''+SumToYear);
        }
    }
    public void countdistinct(){ //2nd
       List<AggregateResult> aglist=[Select count_distinct(name)Total,leadSource from lead GROUP BY leadsource HAVING count_distinct(name)>3];
		 Map<String,Integer> leadmap=new Map<String,Integer>(); 
        
        for(AggregateResult ag:aglist){
            integer countlead=(integer)ag.get('Total');
            string stgName=(string)ag.get('leadsource');
            system.debug('Leads per leadsource :'+StgName+'='+countlead);
        }
    }
    
     public static void agrResult(){ //3rd
    Map<String,Map<String,Integer>> mymap=new Map<string,Map<String,Integer>>();
    Map<String,Integer> leadMap=new Map<String,Integer>();
    
     list<AggregateResult> arg=[Select Count(Name)Total,status,LeadSource from Lead GROUP BY status,Leadsource];
        
        for(AggregateResult res:arg){
            leadMap.put((string)res.get('status'),(integer)res.get('Total'));
            mymap.put((string)res.get('leadsource'),leadMap);
        }
        system.debug('Result is'+myMap);
    }
///////////////////////////////////////////////////////Relationship query,Child to parent.
    public void ChildtoPaConMedia(){ //1st
        List<Contact> clist=[Select Name,Account.Name,Account.Industry from Contact WHERE Account.Active__c='Yes' AND Account.Industry='Media'];
    }
    public void CNameJohn(){ //2nd
        List<C__c> clist=[Select Name__c,A__r.Name__c,B__r.B_s_Name__c from C__c where Name__c='John'];
    }
////////////////////////////////////////////////////////////Parent to child
 	 public void ParToChildAccJohn(){
        List<Account> acclist=[Select Id, Name,(Select Id, FirstName From Contacts Where FirstName LIKE 'john') From Account];
    }
       
     public  void AccOppClosedWon(){ //2nd
        List<Account> alist=[SELECT Id ,Name,(SELECT Id,AccountId FROM Opportunities WHERE StageName='Closed Won') FROM Account];
        system.debug(''+alist);
    }
    public void AParToChild(){ //3rd
        list<A__c> alist=[Select Name__c,(Select Name__c,A__c,B__c from C__r WHERE Name__c='john')from A__c];
    }
    public void TestSOSL(){ //SOSL
        //[FIND {"Test"}IN Name Fields RETURNING lead(name), contact(name),Account(name),User(name)];
    }
//////////////////////////////////////////////////////////////////////// DML
 public void DmlMethod(){ //1st
  // Create two leads, one of which is missing a required field
	Lead[] ld = new List<Lead>{
    new Lead(FirstName='Lead1'),
    new Lead()};
	Database.SaveResult[] srList = Database.insert(ld, false);
 
// Iterate through each returned result
	for (Database.SaveResult sr : srList) {
    if (sr.isSuccess()) {
       
        // Operation was successful, so get the ID of the record that was processed
        System.debug('Successfully inserted Lead. Lead ID: ' + sr.getId());
    }
    else {
        // Operation failed, so get all errors                
        for(Database.Error err : sr.getErrors()) {
            Logs__c lc=new Logs__c();
            lc.Error__c=err.getMessage();
            insert lc;
            System.debug('The following error has occurred.');                    
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Account fields that affected this error: ' + err.getFields());
        }
        
    }
}
    }
    public void DelInactiveAcc(){//2nd
        list<Account> alist=[Select id from Account WHERE Active__c='No' AND CreatedDate =:(Date.Today() - 90)];
        Delete alist;
    }
}