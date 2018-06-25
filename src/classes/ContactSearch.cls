/**
 * Created by Basko_Y on 12.06.2018.
 */

public with sharing class ContactSearch {
public static List<Contact> searchForContacts(String lastName,String pCode){
    Contact [] contact  =[SELECT Name FROM Contact WHERE Contact.LastName=:lastName and Contact.MailingPostalCode=:pCode];
    return contact;
}
}