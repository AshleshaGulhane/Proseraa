trigger Leadclone on Lead (After insert) {
   
    LeadcloneHandler.leadmethod(trigger.new);
}