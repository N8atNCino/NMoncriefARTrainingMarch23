<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Mark_Active_as_FALSE</fullName>
        <field>LLC_BI__Active__c</field>
        <literalValue>0</literalValue>
        <name>Mark Active as FALSE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PMB_Populate_FI_Effective_Date</fullName>
        <field>LLC_BI__Effective_Date__c</field>
        <formula>LLC_BI__Related_Covenant__r.LLC_BI__Effective_Date__c</formula>
        <name>PMB_Populate FI Effective Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UBLOSUpdate_Cov_Definition</fullName>
        <field>UBLOS_Covenant_Definition__c</field>
        <formula>LLC_BI__Covenant_Type__r.UBLOS_Standard_Covenant_Definition__c</formula>
        <name>Update Cov Definition</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>PMB_Populate FI Effective Date</fullName>
        <actions>
            <name>PMB_Populate_FI_Effective_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populates the Effective Date on Financial Indicator Covenant Mgmt records when their related Covenant Mgmt record is a Financial Statement Requirement</description>
        <formula>AND( NOT(ISBLANK(LLC_BI__Related_Covenant__c)), NOT(ISBLANK(LLC_BI__Related_Covenant__r.LLC_BI__Effective_Date__c)), ISPICKVAL(LLC_BI__Related_Covenant__r.LLC_BI__Covenant_Type__r.LLC_BI__Category__c, &apos;Financial Statement Requirements&apos;), $User.No_Workflow__c = False )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update standard definition</fullName>
        <actions>
            <name>UBLOSUpdate_Cov_Definition</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Covenant2__c.UBLOS_Covenant_Definition__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>