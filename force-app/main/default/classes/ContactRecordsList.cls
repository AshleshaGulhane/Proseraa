public class ContactRecordsList {
    List<Contact> clist=new List<Contact>();
    
    public void conRecord(){
        clist=[Select Name from Contact];
        system.debug('' +clist);
    }

}