public class LastModifiedDate {
    
    public void Datemethod(){
        List<Contact> clist=[Select id from Contact WHERE LastModifiedDate=TODAY];
        system.debug(''+clist);
    }

}