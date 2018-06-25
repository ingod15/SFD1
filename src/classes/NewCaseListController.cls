/**
 * Created by Basko_Y on 20.06.2018.
 */

public with sharing class NewCaseListController {
    public List<Case> getNewCases(){
    //List<Case> cases = Database.query('Select Id,CaseNumber from Case where status=' + '"new' +'"');
        List <Case> cases = new List<Case>();
        for (Case a:[SELECT Id FROM Case WHERE Status='New']){
            cases.add(a);
        }
        return cases;
    }



}