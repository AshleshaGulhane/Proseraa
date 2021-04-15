trigger ECS12Trigger on Contact (before insert,before update) {
 /*   
  List<Account> alist=new list<Account>();
    Map<id,integer> mac=new Map<id,integer>();
    Integer count=0;
    List<Contact> clist=new list<Contact>();
    List<String> conlist=new list<String>();
    Set<id> cid=new Set<id>();
    Set<id> sid=new Set<id>();
    
    for(Contact cs:trigger.new){
        conlist.add(cs.Primary_Email_Address__c);
        cid.add(cs.AccountId);
        Contact con=trigger.newMap.get(cs.Id);
        sid.add(cs.Id);    
    }
    
    clist=[Select id,Primary_Contact__c,AccountId from Contact Where AccountId in:cid AND Primary_Contact__c=true AND id NOT in:sid];
    for(Contact ct:clist){
        mac.put(ct.AccountId, 1);
    }
    for(Contact c:trigger.new){
        if(c.AccountId!=null && mac.containsKey(c.AccountId)){
            count=mac.get(c.AccountId);
            if((c.Primary_Contact__c==true)&&(count==1)){
                c.adderror('Primary Contact Already exists');
                
            }
        }
    }
   */
   /* set<id>AccIDset=new set<id>();
    for(contact con:trigger.new){
        if(con.AccountId!=null && con.Primary_Contact__c==true){
           AccIDset.add(con.AccountId); 
        }
        list<contact>conList=[select id,Primary_Contact__c from contact where accountid in:AccIDset];
        if(conList.size()>0){
        for(contact cont:conList){
            if(cont.Primary_Contact__c==true){
                for(contact c:trigger.new){
                    c.addError('There is Already a primery contact !!!');
                }
            }
        }
        }
    }*/
    if(trigger.isBefore){
        if(trigger.isinsert || trigger.isUpdate){
            ECS12TriggerHandler.makePrimeryContact(trigger.new);
        }
        if(trigger.isInsert){
            ECS12TriggerHandler.ContactAccountAssociation(trigger.new);
        }
    }
    
}