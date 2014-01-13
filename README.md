Autocomplete-Visualforce-Component
=========

This is a visualforce component that can convert any field into a Autocomplete Component

[This component is deprecated you can have a look on a improved verison of the same here .https://github.com/Avinava/Autocomplete-Visualforce-Component-V2]

Few features of the autocomplete component
-

* Uses Jquery UI to create the autocomplete component.
* Look And Feel - Has exactly same look and feel as native components
* Uses Js Remoting to populate data and hence the component is very fast and light weight.
* Configurable : The search field can be configured to search fields other than "Name" field. Even the value that is returned to controller can be configured return fields other than record Id.

Version
-

1.3


Installation
--------------

* .http://blogforce9dev-developer-edition.ap1.force.com/ProjectDetail?id=a0290000007rf2z


Usage
-
    <c:Autocomplete labelField="Name" valueField="Id" SObject="Contact" targetField="{!targetFieldCon}" /> 
    
Demo
-
http://blogforce9dev-developer-edition.ap1.force.com/autocomplete
  
    
