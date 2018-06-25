/**
 * Created by Basko_Y on 13.06.2018.
 */

@IsTest
private class TestRestrictContactByName {
@isTest static void testWrongContactName(){
    Contact contact = new Contact(LastName='INVALIDNAME');
    insert contact;
    Test.startTest();
    Database.DeleteResult result = Database.delete(contact);
    Test.stopTest();
    System.assert(!result.success);
    System.assert(result.getErrors().size() > 0);
    System.assertEquals('Cannot create or update.',
            result.getErrors()[0].getMessage());
}
@isTest static void testGoodContactName(){
    Contact contact = new Contact(LastName='Normal');
    insert contact;
    Test.startTest();
    Database.DeleteResult result = Database.delete(contact);
    Test.stopTest();
    System.assert(result.success);
}

}