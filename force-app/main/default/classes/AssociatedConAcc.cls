public class AssociatedConAcc {
    
    List<Contact> clist=new List<Contact>();
    
    public void conrecordmethod(){
        clist=[select AccountId from Contact];
        System.debug('Associated contact with account are' + clist);
    }

}