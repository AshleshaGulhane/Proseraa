trigger Opportunityclone on Opportunity (After insert) {
    
    OpportunitycloneHandler.oppclone(trigger.new);
}