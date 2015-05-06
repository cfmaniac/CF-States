<cffunction name="SelectState">
    <cfargument    name="selected"    default="Select State:">
    <cfargument    name="name"      default="state">
    <cfargument    name="id"          default="#name#">
    <cfargument    name="omit"      default="">
    <cfargument    name="ability"  default="enabled">
    <cfargument    name="onchange" default="">
    <cfargument    name="value"      default="abbreviations">
    <cfargument    name="label"      default="fullnames">
    <cfset abbreviations=<br>
            "00,AL,AK,AZ,AR,CA,CO,CT,DE,DC,FL,GA,HI,ID,IL,IN,IA,KS,KY,LA,ME,MD,MA,MI,MN,MS,MO,MT,NE,NV,NH,NJ,NM,NY,NC,ND,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VT,VA,WA,WV,WI,WY,--">
    <cfset fullnames=<br>
            "Select State:,Alabama,Alaska,Arizona,Arkansas,California,Colorado,Connecticut,Delaware,D.C.,Florida,Georgia,Hawaii,Idaho,Illinois,Indiana,Iowa,Kansas,Kentucky,Louisiana,Maine,Maryland,Massachusetts,Michigan,Minnesota,Mississippi,Missouri,Montana,Nebraska,Nevada,New Hampshire,New Jersey,New Mexico,New York,North Carolina,North Dakota,Ohio,Oklahoma,Oregon,Pennsylvania,Puerto Rico,Rhode Island,South Carolina,South Dakota,Tennessee,Texas,Utah,Vermont,Virginia,Washington,West Virginia,Wisconsin,Wyoming,NOT IN USA">
 <br>
    <cfoutput>
    <select>
        name="#name#" id="#id#" #ability#<br>
        <cfif isdefined("style")&gt;style="#style#"</cfif>
         <cfif isdefined("onchange")&gt;onchange="#onchange#"</cfif>
    
    <cfloop from="1" to="#listlen(fullnames)#" index="state">
        <cfif not listcontains(omit,#listgetat(evaluate(value), state)#) and not listcontains(omit,#listgetat(evaluate(label), state)#)>
            <option value="#listgetat(evaluate(value), state)#"<br>
                <cfif #listgetat(evaluate(value), state)# is "#selected#"&gt;selected</cfif>
                 <cfif isdefined("style")&gt;style="#style#"</cfif&gt;>
                #listgetat(evaluate(label), state)#<br>
            </option>
        </cfif>
    </cfloop>
    </select>
    </cfoutput>
 <br>
</cffunction>
