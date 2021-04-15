public class ECS12TriggerHandler {
    
     public static void makePrimeryContact(list<contact>newCont){
        set<id>AccIDset=new set<id>();
    for(contact con:newCont){
        if(con.AccountId!=null && con.Primary_Contact__c==true){
           AccIDset.add(con.AccountId); 
        }
        list<contact>conList=[select id,Primary_Contact__c from contact where accountid in:AccIDset];
        for(contact cont:conList){
            if(cont.Primary_Contact__c==true && cont.id!=trigger.oldmap.get(cont.id).id){
                for(contact c:newCont){
                    c.addError('Primary Contact already exists !!!');
                }
            }
        }
    }
    }
    
    public static void ContactAccountAssociation(list<contact>newCon){
        set<string>emailDomainset=new set<string>();
        for(contact cont:newCon){
            if(cont.Email!=null && cont.Accountid==null){
              emailDomainset.add(cont.email.split('@')[1]);  
            }
            
        }
        list<contact>conList=[select accountid,email from contact where Primary_Contact__c=true and accountid!=null and email!=null];
        //set<string>ExistingEmailSet=new set<string>();
        for(contact ct:conList){
            
            if(emailDomainset.contains(ct.email.split('@')[1])){
              for(contact c:newCon){
                    c.accountid=ct.accountid;
                }  
            }
        }
       
    }
}