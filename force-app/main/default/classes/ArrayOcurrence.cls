public class ArrayOcurrence {
    
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
}