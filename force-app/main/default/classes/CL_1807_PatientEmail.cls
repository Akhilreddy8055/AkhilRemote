public class CL_1807_PatientEmail 
{
    Public static void ABC ( Set<Id> PID , List<Patient__c> PL)
    {
        List<Patient__c> OPL = [Select Id,Email__c from Patient__c where id in :PID ];
        
    For(Patient__c ENP:PL)
    {
        For(Patient__c EOP:OPL)
        {
            If(EOP.Id == ENP.Id)
            {
                If(ENP.Email__c != EOP.Email__c && EOP.Email__c != 'no@example.com' && EOP.Email__c != null)
                {
                    ENP.Email__c.adderror('Email should be same as original mail '+ EOP.Email__c);
                    system.debug('testjuhijkk');
                }
            }
        }
    }
    }
}
