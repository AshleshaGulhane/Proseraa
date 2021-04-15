public class AccountMap {
    
    Map<id,sobject> macc=new Map<id,sobject>([Select Account.Name,AccountId from Contact]);
    public void accmap(){
        system.debug(''+macc);
    }

}