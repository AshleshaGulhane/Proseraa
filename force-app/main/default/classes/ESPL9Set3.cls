public class ESPL9Set3 {
    Integer i,n=5,t1=0,t2=1,nextterm;
    public void fibnumber(){
        for(i=1;i<=n;i++){
            nextterm=t1+t2;
            t1=t2;
            t2=nextterm;
        }
    }
    public void reverseString(){
         String s='Salesforce';
        String Rev=s.reverse();
        System.debug(''+Rev);
    }
    public void StringWord(){
        string s='Welcome to @pex Programming';
        string replacestr=s.replace('@','A');
        system.debug(''+replacestr);
        string substr=s.substring(10);
        system.debug(''+substr);
        string removespace=s.replaceAll('\\s+','');
        system.debug(''+removespace);
        string uppercaseword=s.toUpperCase();
        system.debug(''+uppercaseword);
        string lowercaseword=s.toLowerCase();
        system.debug(''+lowercaseword);
    }
     public static void getcharOccur(string str){
           List<String> wordlist=str.split('');
        Set<String> strset=new Set<String>(wordlist);
        Map<string,Integer> myMap=new Map<string,Integer>();
        
        for(String st:strset){
            Integer count=0;
            for(string wl:wordlist){
                if(st==wl){
                    count+=1;
                    myMap.put(st,count);
                }
            }
        } 
        for(string st:strset){
            system.debug(st+' appears (' + myMap.get(st) + ') times');   
        }  
    }    
    /////////////////////////////////////////////////////////////////OOPS Concept
    public void callMethod(){ //1st
        System.debug('Call static method form non-static class');
        ESPL9Set2.primeOrnot();
    }
     public void helloworld(){ //2nd
        System.debug('Hello World');
    }
    //////////////////////////////////////////////////////////////////Advanced Concept.
    
    List<Contact> clist=new List<Contact>(); //1st
    public void conRecord(){
        clist=[Select Name from Contact];
        system.debug('' +clist);
    }
     
    public void conrecordmethod(){ //2nd
        List<Contact> clist=new List<Contact>();
        clist=[select AccountId from Contact];
        System.debug('Associated contact with account are' + clist);
    }
     public void DmlOperation(){  //3rd
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
 public void SOQLMethod(){ //4th
        List<Account> acclist=new List<Account>();
        acclist=[Select Name, (Select Contact.FirstName, Contact.LastName from Account.Contacts) from Account];
        system.debug('Parent to child SOQL' + acclist);
    }
    public void mapmethod(){ //5th
         Map<Id,User> macc=new Map<Id,User>([Select id,Name from User where IsActive=true ]);
        system.debug('User who are active' + macc);
    }
    
    public void accMapmethod(){ //6th (a)
     List<Account> acclist=[Select id from Account];
    Map<string,id> accmap=new Map<string,id>();
   for(Account acc:acclist){
        accmap.put(acc.Name,acc.Id);
        system.debug(''+accmap);
            }
    }
    public void accidmethod(){ //6th (b)
        List<Account> acclist=[Select id from Account];
        Map<id,Account> accountidmap =new Map<id,Account>();
        for(Account acct:acclist){
            accountidmap.get(acct.Id);
            system.debug(''+accountidmap);
        }
    }

}