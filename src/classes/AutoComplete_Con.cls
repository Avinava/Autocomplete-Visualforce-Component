public class AutoComplete_Con {

    public String labelField{ get; set; }
    public String valueField{ get; set; }
    public String sObjVal{get;set;}
    public Integer randomJsIden{get;set;}
    public String cacheField{get;set;} 
   
    public AutoComplete_Con(){
        randomJsIden = getRandomNumber(1000000);
        sObjVal='Account';
        labelField='Name';
        valueField='Id';
    }

    
    /*
    *Random number generator to change the js function name if multiple components us
    ***/
    private Integer getRandomNumber(Integer size){
        Double d = Math.random() * size;
        return d.intValue();
    }
    
    /*
    *This method queries data according to the passed parameters
    ***/
    @RemoteAction
    public static List<SObject> getData(String sObjVal,String labelField,String valueField,String param){
        param = String.escapeSingleQuotes(param);
        return Database.query('SELECT '+valueField+','+labelField+' FROM '+sObjVal+' WHERE '+labelField+' LIKE \'%'+param+'%\'');
    }
    
    /*
    *Unit test method
    **/
    static testMethod void test_getData(){
        //create some test account
        List<Account> accountList = new List<Account>();
        for(Integer i =0 ; i < 200 ; i++){
            accountList.add(new Account(Name='Test'+i));
        }
        //insert hte records
        insert accountList;
        Test.startTest();
            System.assertEquals(accountList.size(),AutoComplete_Con.getData('Account','Name','Id','T').size());
            System.assertEquals(1,AutoComplete_Con.getData('Account','Name','Id','Test111').size());
            System.assertEquals(0,AutoComplete_Con.getData('Account','Name','Id','xxxxxxx').size());
            AutoComplete_Con controller = new AutoComplete_Con ();
        Test.stopTest();
        
    }
}