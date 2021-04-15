trigger CloneAccount on Account (After insert) {
    
    CloneAccountHandler.accountclonemethod(trigger.new);
}