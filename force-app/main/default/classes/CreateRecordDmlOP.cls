public class CreateRecordDmlOP {
    
    public void DmlOperation(){
        contact c=new contact();
        c.LastName='abc';
        insert c;
        
        Lead l=new Lead();
        l.FirstName='abc corp';
        l.LastName='xyz';
        l.Company='BBC';
        insert l;
        
        Opportunity opp=new Opportunity();
        opp.Name='Sales';
        opp.StageName='Qualification';
        opp.CloseDate=System.today();
        insert opp;
        
        Account ac=new Account();
        ac.Name='Sbi Saving';
        insert ac;
        
    }
    

}