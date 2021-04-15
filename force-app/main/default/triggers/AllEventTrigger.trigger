trigger AllEventTrigger on Account (before insert,before update,before delete,after insert,after update,after undelete) {
    if(trigger.isInsert){
        if(trigger.isAfter || trigger.isBefore){
            for(Account acc:trigger.new){
                system.debug(acc.Name);
            }
        }
        if(trigger.isAfter){
            for(Account acc:trigger.newMap.Values()){
                system.debug(acc.Name);
                
            }
        }
    }
    if(trigger.isUpdate){
        for(Account acc:trigger.new){
          Account a=trigger.oldmap.get(acc.id);
            system.debug(''+a);
        }
        for(Account acc:trigger.old){
          Account at=trigger.newmap.get(acc.id);
            system.debug(''+at);
        }
        
    }
    if(trigger.isDelete){
        if(trigger.isBefore){
            for(Account acct:trigger.old){
                system.debug(''+acct);
                system.debug(trigger.oldmap.get(acct.Id).Name);
            }
        }
        for(Account act:trigger.oldmap.values()){
            system.debug(act.Name);
}
    }
}