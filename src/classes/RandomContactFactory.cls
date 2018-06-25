/**
 * Created by Basko_Y on 13.06.2018.
 */

public with sharing class RandomContactFactory{
        public static List<Contact> generateRandomContacts(Integer numb,String lastName) {
          List<Contact> contactList = new List<Contact>();
            for(Integer i=0;i<numb;i++){
                contactList.add(new Contact(FirstName='Test'+i,LastName=lastName));
            }
return contactList;
}

}
