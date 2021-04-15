public class StringCharOccurence {
    
    public static void getcharOccur(string str){
       /* string strArray=str.deleteWhitespace();
        string[] stringArray=strArray.split('');
        set<string> strSet=new set<String>();
        
        for(String st:stringArray){
            strSet.add(st);
        }
        list<string> strlist=new List<string>();
        for(string s:strSet){
            strlist.add(s);
        }
        for(integer i=0;i<strSet.size();i++){
            system.debug('String Character occures'+strlist[i]+':='+str.countMatches(strlist[i])+'Times');
            //countmatches-Returns the number of times the specified substring occurs in the current String.
        }
        system.debug(strlist);*/
        
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

}