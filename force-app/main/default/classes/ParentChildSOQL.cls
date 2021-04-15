public class ParentChildSOQL {
    
    public void SOQLMethod(){
        List<Account> acclist=new List<Account>();
        acclist=[Select Name, (Select Contact.FirstName, Contact.LastName from Account.Contacts) from Account];
        system.debug('Parent to child SOQL' + acclist);
    }

}