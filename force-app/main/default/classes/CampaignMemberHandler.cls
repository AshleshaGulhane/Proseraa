public class CampaignMemberHandler {
    
    public static void Callrsvpmethod(List<CampaignMember> cmlist){
       
    List<id> clist=new list<id>();
    
    for(CampaignMember cm:cmlist){
        if(cm.LeadId!=null){
        clist.add(cm.LeadId);
        }
    }        
        for(lead ls:[Select id,RSVP__c from Lead where id in:clist]){
          if(ls.RSVP__c!=null){
         for(CampaignMember cmr:cmlist){
          cmr.RSVP__c=ls.RSVP__c;
      }
      }
    }
        }
    }