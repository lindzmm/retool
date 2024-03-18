<GlobalFunctions>
  <Folder id="PostgresQueries">
    <SqlQueryUnified
      id="getEmails"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/getEmails.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="getOrders2"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/getOrders2.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="getPatients"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/getPatients.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
  </Folder>
  <Folder id="AnalyticsQueries">
    <SqlQueryUnified
      id="countAppointmentsToday"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/countAppointmentsToday.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="countAppointmentsYesterday"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/countAppointmentsYesterday.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="countOrders"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/countOrders.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="countUnreadEmails"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/countUnreadEmails.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
    <SqlQueryUnified
      id="countawaitOrders"
      cacheKeyTtl="86400"
      enableCaching={true}
      query={include("./lib/countawaitOrders.sql", "string")}
      resourceName="32c07a68-cede-4390-b674-12890b530d14"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
      workflowBlockPluginId={null}
    />
  </Folder>
  <Folder id="GraphQLQueries">
    <GraphQLQuery
      id="getAppointments"
      body={include("./lib/getAppointments.gql", "string")}
      cacheKeyTtl="86400"
      enableCaching={true}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"offset","value":"{{ table2.paginationOffset }}"},{"key":"pageSize","value":"{{ table2.pageSize }}"}]'
      }
      resourceName="cca8ca11-d16a-4162-bdbe-c463bb0c2c60"
      resourceTypeOverride=""
      transformer="
return data.appointments"
      workflowBlockPluginId={null}
    />
    <GraphQLQuery
      id="getOrders"
      body={include("./lib/getOrders.gql", "string")}
      cacheKeyTtl="86400"
      enableCaching={true}
      enableTransformer={true}
      resourceName="cca8ca11-d16a-4162-bdbe-c463bb0c2c60"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.orders"
      workflowBlockPluginId={null}
    />
  </Folder>
  <Folder id="TempState">
    <State id="impersonateProvider" value="exampleprovider@gmail.com" />
  </Folder>
</GlobalFunctions>
