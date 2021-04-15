public class CallStaticMethodPrime {
   
    public void callMethod(){
        System.debug('Call static method form non-static class');
        PrimeNo.primeOrnot();
    }

}
//Notice that we did not initialize an object of static class . 
//This is because static methods and static variables are stored in the class. 
//When an object of the class is created, copies of instance members are made but copy of the static members are not made. 
//All instances of the class utilize the same static method and variable, but have their own copy of non-static methods and variables.