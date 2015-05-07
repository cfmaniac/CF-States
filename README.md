# CF-States
ColdFusion UDF for the Automatic Generation of a Drop List of US States.

Tested on ColdFusion 8-10, Railo 4

# Usage
Easy Usage: #SelectState()# - That is it.

Additional Usage:

Auto-Select a State:             #selectState(selected='FL')#

Change the Name of the Field:    #selectState(name='myState')#

Exclude a State:                 #selectState(omit='DC')#

Change the Value:                #selectState(value='fullname')# | #selectState(value='abbreviations')#

Change the Label:                #selectState(label='fullname')# | #selectState(label='abbreviations')#

#Notes: 
You can use all the parameters above together, or set them as a attribute array like any other ColdFusion Function.
