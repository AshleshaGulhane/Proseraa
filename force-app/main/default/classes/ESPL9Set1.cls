public class ESPL9Set1 {
	Integer n=5;
    public void even(){
        if(math.mod(n, 2)==0){
            system.debug('Number is even');
        }
        else{
            system.debug('Number is odd');
        }
    }
    public static string[] printArray(Integer n){
        string[] myArray=new List<string>();
        for(Integer i=0;i<=n;i++){
            myArray.add('Test'+i);
            System.debug(myArray[i]);
        }
        return myArray;  
    }
    public static list<Integer> SortAscending(integer[] numbers){
        numbers.sort();
        System.debug('Numbers in ascending order'+ numbers);
        return numbers;
    }
    public static void Descending(){
        List<Integer> desclist=new list<Integer>();
        Integer[] num=new list<Integer>{1,4,6,7,2};
        for(integer i=0;i<num.size();i++){
            for(integer j=i+1;j<=num.size()-1;j++){
                integer x=0;
                if(num[i]<num[j]){
                    x=num[i];
                    num[i]=num[j];
                    num[j]=x;
                    System.debug(''+num);
                    
                }
                
            }
            desclist.add(num.get(i));
            system.debug(''+desclist);
        }
    }
    public void minNum(){
        Integer maxvalue,minvalue;
        Integer[] num=new list<Integer>{4,2,6,1,5};
           num.sort();
        maxvalue=num[4];
        minvalue=num[0];
        System.debug('Maximum value is'+maxvalue);
        System.debug('Minimum value is'+minvalue);
    }
    public static void findDuplicate(){
        Integer[] str=new list<Integer>{1,1,2,2,3,4,5};
            set<integer> setint=new set<integer>();
            set<integer> Duplicateset=new set<integer>();
        for(integer s:str){
            if(!setint.add(s)){
                Duplicateset.add(s);
                System.debug(''+Duplicateset);
            }
            
        }
    }
    public static void countOcurrences(){
     Integer[] arr=new list<integer>{2,2,4,3,3,2};
          Map<string,integer> mapocurr=new Map<string,integer>();
        
        for(Integer i=0;i<arr.size();i++){
            List<string> charr=string.valueOf(arr[i]).split('');
            for(Integer j=0;j<charr.size();j++){
                if(mapocurr.containsKey(charr[j])){
                    mapocurr.put(charr[j],mapocurr.get(charr[j])+1);
                }
                else{
                    mapocurr.put(charr[j],1);
                }
            }
        }
        system.debug(''+mapocurr);
    }
    public void sumNum(){
        Integer sum=0,m,n=26;
        While(n>0){
            m=math.mod(n, 10);
            sum=sum+m;
            n=n/10;
            
        }
        System.debug('Sum is'+sum);
    }
    
    public void calculate(){
        Double Principle=6000,t=2,rate=4,result;
        result=Principle*t*rate/100;
        System.debug('Simple interest is' +result);
    }
    List<Contact> clist=new list<Contact>();//Constructor
    public ESPL9Set1(){
        clist=[Select id,name from Contact];
         system.debug(''+clist);    
    }
     public static Integer Result;
    public static void Calculator(String Operation,Integer n,Integer m){
        if(Operation=='SUM'){
            Result=n+m;
        }
        else if(Operation=='SUB'){
            Result=n-m;
        }
        else if(Operation=='MULT'){
            Result=n*m;
        }
        else if(Operation=='DIV'){
            Result=n/m;
            
        }
        System.debug(''+Result);
    }


    //////////////////////////////////////////////////////////////////////////////////////////Advanced concepts.
    public static void traditionalForloop(){ //1st
        for(Integer i=0;i<10;i++){
            System.debug('Value of I' +i);
        }
    }
    public static void AdvancedForloop(){
       
		List<Account> accs = [SELECT Id, Name FROM Account];
		for(Account a : accs){
   			System.debug('a.name'+ a.Name);
		}
        
    }
    public static void Whileloop(){
        Integer i=1;
        while(i<10){
            System.debug('Count'+i);
            i++;
        }
        
    }
     public static void leadid(){  //2nd
   List<lead> lid=[Select id from lead];
    Set<id> sid=new Set<id>();
    
    for(Lead ls:lid)
    {
        sid.add(ls.id);
    }
        System.debug('Lead Id are' +sid);
    }
     public static void countcon(){ //3rd
        List<Account> acclist=new List<Account>();
        List<Contact> conlist=[Select id,Name,AccountId from Contact where account.name='Eternus'];
        List<Account> alist=[Select Contact_Count__c from Account where name='Eternus'];
        
        for(Account ac:alist){
            ac.Contact_Count__c=conlist.size();
            acclist.add(ac);
        }
        update acclist;
    }
    Public void childparentSoql(){ //5th
        List<Contact> clist=[Select Name,AccountId from Contact];
        System.debug(''+clist);   
    }
    public void DatemethodToday(){ //6th
        List<Contact> clist=[Select id from Contact WHERE CreatedDate=TODAY];
        system.debug(''+clist);
    }
    
}