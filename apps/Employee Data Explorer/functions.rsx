<GlobalFunctions>
  <SqlQueryUnified
    id="query1"
    query={include("./lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c4ac9097-8cc8-4c53-bf53-e7d049d66d1a"
    resourceTypeOverride=""
    warningCodes={[]}
  />
  <JavascriptQuery
    id="query2"
    notificationDuration={4.5}
    query={include("./lib/query2.js", "string")}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
