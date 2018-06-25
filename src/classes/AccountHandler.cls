/**
 * Created by Basko_Y on 11.06.2018.
 */

public with sharing class AccountHandler {
public static Account insertNewAccount(String name){
    Account acc = new Account(Name=name);
    try{

        insert acc;
    }
    catch (DmlException e){
        System.debug('A DML exception has occurred: ' +
                e.getMessage());
        return null;
    }

return acc;
}
}