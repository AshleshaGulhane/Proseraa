/*
 * class Name:CampaignMemberHandlerTest
 * Description:This class is return to cover CampaignMemberHandler.
 * Created by:Ashlesha 
 * Created Date:06/04/2021
 */


@isTest
public class CampaignMemberHandlerTest {
     
    @isTest static void CampaignMethod(){
       
        List<CampaignMember> cmlist=new List<CampaignMember>();
        CampaignMember cm=new CampaignMember();
        cm.RSVP__c='Yes';
        cm.Status='Sent';
        //cmlist.add(cm);
        insert cm;
        
        Lead l=new Lead();
        l.RSVP__c='Yes';
        l.Company='Prosera';
        l.LastName='abc';
        insert l;
        CampaignMemberHandler.Callrsvpmethod(cmlist);
    }
}