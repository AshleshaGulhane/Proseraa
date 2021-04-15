trigger EFTTransStatus on EFT_Transaction_Status__c (After insert) {
    
    EFTTransStatusHandler.eftMethod(trigger.new);
}