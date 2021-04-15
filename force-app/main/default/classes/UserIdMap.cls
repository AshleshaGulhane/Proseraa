public class UserIdMap {
    Map<Id,User> macc=new Map<Id,User>([Select id,Name from User where IsActive=true ]);
    public void mapmethod(){
        system.debug('User who are active' + macc);
    }
}