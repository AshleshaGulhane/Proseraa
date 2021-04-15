trigger AccountTask on Account (After insert) {
    
   AccountTaskHandler.accounttaskmethod(trigger.new);

}