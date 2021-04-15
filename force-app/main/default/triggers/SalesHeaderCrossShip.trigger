trigger SalesHeaderCrossShip on SalesHeader__c (After insert,After update) {
   
    SalesHeaderCrossShipHandler.CrossShipMethod(trigger.new);

}