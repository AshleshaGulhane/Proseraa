public class ESPL9Set2 {
    
    public static void primeOrnot(){
        Integer i,n=7,count=0;
        for(i=1;i<=n;i++)
            if(math.mod(n, i)==0){
                count++;
            }
        if(count==2){
            system.debug('Prime number');
        }
        else{
            system.debug('Not a Prime number');
        }
    }
    public static void palindromeString(){
        
        String s='TOT';
        String Palindrome=s.reverse();
        System.debug(''+Palindrome);
        if(s==Palindrome){
            system.debug('String is Palindrome');
        }
        else{
            system.debug('String is not Palindrome');
        }
    }
        public static void Aoccurrence(){
        
        string s='Prosera Analytics';
        string replacechar=s.replace('a','b');
        system.debug(''+ replacechar);
    }
    public static void LengthStr(){
    List<String> str=new List<String>();
        string st='ashlesha';
        str=st.split('');
        system.debug('Length of string ='+str.size());
    }
    public static void UniqueNum(){
        Integer[] newlist=new list<integer>{1,2,6,3,2,1};
         set<integer> sid=new set<integer>(newlist);
        system.debug('Unique Number are'+sid);
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////OOPS Concept
    //Parametrized constructor
    Integer RollNo;
    String Name;
    
    public ESPL9Set2(Integer x,String y){
        RollNo=x;
        Name=y;
    }
    ////////////////////////////////////////////////////////////////////////////////////////Advanced Concept
    public void oppid(){ //2nd
    List<Opportunity> opplist=new List<Opportunity>([Select id,AccountId from Opportunity]);
        Set<id> accidset=new Set<id>();
    for(Opportunity opp:opplist){
        if(opp.AccountId!=Null){
            accidset.add(opp.AccountId);
            system.debug(''+opp);
            system.debug(''+accidset);
        }
    }
    }
       public void ListInMap(){ //2nd and 4th
        Map<id,list<Opportunity>> macOpp=new Map<id,list<Opportunity>>();
        List<Opportunity> opplist=[Select id,AccountID from Opportunity WHERE AccountId!=null];
        for(Opportunity op:opplist){
            macOpp.get(op.AccountId);
        }
      
    } 
    public static void AccountNameA(){ // 3rd
        List<Account> acclistupdate=new list<Account>();
        List<Account> acclist=[Select Name from Account WHERE Name Like 'a%'];
        Integer count=acclist.size();
        System.debug('No of records are'+count);
        for(Account acc:acclist){
            acc.Name=acc.Name+'Updated via DML operation';
            acclistupdate.add(acc);
        }
        update acclistupdate;
    }
     public void CampaignsName(){ //5th
        List<Campaign> clist=[Select Id,Name from Campaign ORDER BY Name ASC Limit 10];
        List<Campaign> camlist=[Select Id,Name from Campaign ORDER BY Name DESC Limit 10];
        System.debug(''+ clist);
        System.debug(''+ camlist);
        
    }
   public void DatemethodLastMod(){ //6th
        List<Contact> clist=[Select id from Contact WHERE LastModifiedDate=TODAY];
        system.debug(''+clist);
    }

}