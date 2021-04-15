public class DatabaseDmlLead {
   
    public void DmlMethod(){
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

}