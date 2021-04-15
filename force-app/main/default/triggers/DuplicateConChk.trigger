trigger DuplicateConChk on Contact (before insert) {
    
    DuplicateConChkHandler.Contactchk(trigger.new);

}