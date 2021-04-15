public class DatabaseQuery {
    public static void query(){
        string que='Select id,Name from Account';
        List<Account> acclist=Database.query(que);
        system.debug(''+acclist);
    }

}

//Dynamic SOQL refers to the creation of a SOQL string at run time with Apex code. Dynamic SOQL enables you to create more flexible applications.
//For example, you can create a search based on input from an end user or update records with varying field names.

//To create a dynamic SOQL query at run time, use the database query method.
//The database query method can be used wherever an inline SOQL query can be used, such as in regular assignment statements and for loops. 
//The results are processed in much the same way as static SOQL queries are processed.