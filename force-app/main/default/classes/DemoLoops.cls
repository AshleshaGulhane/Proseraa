public class DemoLoops {
    public static void traditionalForloop(){
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

}