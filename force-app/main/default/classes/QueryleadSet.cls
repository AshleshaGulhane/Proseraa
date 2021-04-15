public class QueryleadSet {
    public static void leadid(){
   List<lead> lid=[Select id from lead];
    Set<id> sid=new Set<id>();
    
    for(Lead ls:lid)
    {
        sid.add(ls.id);
    }
        System.debug('Lead Id are' +sid);
    }
   
}