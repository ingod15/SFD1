/**
 * Created by Basko_Y on 12.06.2018.
 */

trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> listOpportunities = new List<Task>();
    for(Opportunity a:Trigger.new){
        if(a.StageName=='Closed Won'){
            Task task = new Task (Subject='Follow Up Test Task',WhatId=a.Id,Status = 'Active',ActivityDate = system.today()
            );
            listOpportunities.add(task);
        }
    }
insert listOpportunities;
}