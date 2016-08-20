<cfcomponent>
	<cffunction name="getState" returnformat="json" access="remote">
		<cfquery name="getQ" datasource="testdb">
			SELECT id, name, state
			  FROM flowstate
		</cfquery>
		<cfreturn getQ>
		<cfdump var="#getQ#">
	</cffunction>

	<cffunction name="updState" returnformat="json" access="remote" >
		<cfargument name="id" type="numeric" required="true">
		<cfargument name="state" type="numeric" required="true">
		<cfquery name="updQ" datasource="testdb">
			UPDATE flowstate
			       SET state = <cfqueryparam value="#state#" cfsqltype="cf_sql_integer">
			 WHERE id = <cfqueryparam value="#id#" cfsqltype="cf_sql_integer">
		</cfquery>
		<cfreturn true>
	</cffunction>

</cfcomponent>
