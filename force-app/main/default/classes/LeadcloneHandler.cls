public class LeadcloneHandler {
    
    public static void leadmethod(list<lead> llist){
        if(chkrecurs.runOnce()){
        List<Lead> leadlist=new List<Lead>();
        for(lead ls:llist){
            leadlist.add(ls.clone());
        }
        insert leadlist;
    }
    }

}