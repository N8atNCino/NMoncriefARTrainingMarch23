<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>LoanTeamCloserAssigned</fullName>
        <field>LLC_BI__MailerTeamKey__c</field>
        <formula>&apos;LoanTeamCloserAssigned&apos;</formula>
        <name>LoanTeamCloserAssigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>LLC_BI__Loan__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LoanTeamPortfolioManagerAssigned</fullName>
        <field>LLC_BI__MailerTeamKey__c</field>
        <formula>&apos;LoanTeamPortfolioManagerAssigned&apos;</formula>
        <name>LoanTeamPortfolioManagerAssigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>LLC_BI__Loan__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LoanTeamUnderwriterAssigned</fullName>
        <field>LLC_BI__MailerTeamKey__c</field>
        <formula>&apos;LoanTeamUnderwriterAssigned&apos;</formula>
        <name>LoanTeamUnderwriterAssigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>LLC_BI__Loan__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Loan Team - Closer Assigned</fullName>
        <actions>
            <name>LoanTeamCloserAssigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will Fire the Team Key Mailer &amp; Corresponding Email Template when an Closer has been Assigned to a Loan</description>
        <formula>LLC_BI__Assigned_Role__r.Name = &apos;Closer&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Loan Team - Portfolio Manager Assigned</fullName>
        <actions>
            <name>LoanTeamPortfolioManagerAssigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will Fire the Team Key Mailer &amp; Corresponding Email Template when a Portfolio Manager has been Assigned to a Loan</description>
        <formula>LLC_BI__Assigned_Role__r.Name = &apos;Portfolio Manager&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Loan Team - Underwriter Assigned</fullName>
        <actions>
            <name>LoanTeamUnderwriterAssigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will Fire the Team Key Mailer &amp; Corresponding Email Template when an Underwriter has been Assigned to a Loan</description>
        <formula>LLC_BI__Assigned_Role__r.Name = &apos;Credit Analyst / Underwriter&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>