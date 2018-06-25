public class ContactsListController {
   public List<Contact> getContacts(){

       List<Contact> listContacts = Database.query('Select Id, FirstName, LastName');
       return listContacts;
   }
}