trigger RSVPCam on CampaignMember (Before insert) {
   
    CampaignMemberHandler.Callrsvpmethod(trigger.new);
}