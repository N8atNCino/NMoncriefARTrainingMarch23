<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Appraiser_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Appraiser</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Appraiser Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Attorney_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Attorney</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Attorney Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Inspector_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Inspector</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Inspector Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Insurance_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Insurance</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Insurance Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Third_Party_Reports_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Third_Party_Reports</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Third Party Reports Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Service Mgmt Detail - Appraiser Record Type</fullName>
        <actions>
            <name>Set_Appraiser_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Service_Mgmt_Detail__c.LLC_BI__Type__c</field>
            <operation>equals</operation>
            <value>Appraiser</value>
        </criteriaItems>
        <description>Workflow Rule to specify the Appraiser Record Type to display the Appraiser Service Mgmt Detail Page Layout if the Type = &quot;Appraiser&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Mgmt Detail - Attorney Record Type</fullName>
        <actions>
            <name>Set_Attorney_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Service_Mgmt_Detail__c.LLC_BI__Type__c</field>
            <operation>equals</operation>
            <value>Attorney</value>
        </criteriaItems>
        <description>Workflow Rule to specify the Appraiser Record Type to display the Appraiser Service Mgmt Detail Page Layout if the Type = &quot;Attorney&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Mgmt Detail - Inspector Record Type</fullName>
        <actions>
            <name>Set_Inspector_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Service_Mgmt_Detail__c.LLC_BI__Type__c</field>
            <operation>equals</operation>
            <value>Inspector</value>
        </criteriaItems>
        <description>Workflow Rule to specify the Appraiser Record Type to display the Appraiser Service Mgmt Detail Page Layout if the Type = &quot;Inspector&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Mgmt Detail - Insurance Record Type</fullName>
        <actions>
            <name>Set_Insurance_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Service_Mgmt_Detail__c.LLC_BI__Type__c</field>
            <operation>equals</operation>
            <value>Insurance</value>
        </criteriaItems>
        <description>Workflow Rule to specify the Appraiser Record Type to display the Appraiser Service Mgmt Detail Page Layout if the Type = &quot;Insurance&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Mgmt Detail - Third Party Reports Record Type</fullName>
        <actions>
            <name>Set_Third_Party_Reports_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Service_Mgmt_Detail__c.LLC_BI__Type__c</field>
            <operation>equals</operation>
            <value>Third Party Reports</value>
        </criteriaItems>
        <description>Workflow Rule to specify the Appraiser Record Type to display the Appraiser Service Mgmt Detail Page Layout if the Type = &quot;Third Party Reports&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>