public class DuplicateConChkHandler {
    
    public static void Contactchk(List<Contact> conlist){
    Set<string> emaillist=new set<string>();
    for(Contact cs:conlist){
        emaillist.add(cs.Email);
        emaillist.add(cs.Phone);
    }
    List<Contact> clist=[Select Name,Email,Phone from Contact where Email in:emaillist AND Phone in:emaillist];
    for(Contact cs:conlist){
        if(clist.size()>0){
            cs.adderror('A Contact with the same email address or phone number already exists in system');
        }
    }
    }

}