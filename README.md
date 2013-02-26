Autocomplete-Visualforce-Component
=========

This is a visualforce component that can convert any field into a Autocomplete Component

Few features of the autocomplete component
-

* Uses Jquery UI to create the autocomplete component.
* Look And Feel - Has exactly same look and feel as native components
* Uses Js Remoting to populate data and hence the component is very fast and light weight.
* Configurable : The search field can be configured to search fields other than "Name" field. Even the value that is returned to controller can be configured return fields other than record Id.

Version
-

1.0


Installation
--------------

* .Install the Package from https://login.salesforce.com/packaging/installPackage.apexp?p0=04t90000000M9Ul


Usage
-
    <c:Autocomplete labelField="Name" valueField="Id" SObject="Contact" targetField="{!targetFieldCon}" /> 
  
    
