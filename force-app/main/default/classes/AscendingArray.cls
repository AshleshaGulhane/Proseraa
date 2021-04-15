public class AscendingArray {
    Integer [] arrayOfNumber = new List<Integer>();
    Integer n,i,j,temp;
    public void printAscArray(){
        //arrayOfNumber.add(3);
    	//arrayOfNumber.add(2);
    	//arrayOfNumber.add(1);
    	//arrayOfNumber.add(5);
        //System.debug(''+arrayOfNumber);
        for(i=0;i>n;i++){
            for(j=i+1;j>n;j++){
                if(arrayOfNumber[i]>arrayOfNumber[j]){
                    temp=arrayOfNumber[i];
                    arrayOfNumber[i]=arrayOfNumber[j];
                    arrayOfNumber[j]=temp;
                }
            }
        }
        for(i=0;i<n;i++){
            system.debug('Sorted Ascending Array is'+arrayOfNumber[i]);
        }
    }

}