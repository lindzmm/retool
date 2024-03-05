<GlobalFunctions>
  <RESTQuery
    id="query1"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="products/search?q={{table1SearchFilter.value}}"
    resourceDisplayName="Dummy JSON"
    resourceName="f75e15ef-9b26-4565-9dee-100b20f59a4e"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="form1SubmitHandler"
    body={
      '[{"key":"Title","value":"{{form1.data.title}}"},{"key":"Description","value":"{{form1.data.description}}"},{"key":"Price","value":"{{form1.data.price}}"}]'
    }
    bodyType="json"
    notificationDuration={4.5}
    query="products/{{table1.selectedRow.id}}"
    resourceDisplayName="Dummy JSON"
    resourceName="f75e15ef-9b26-4565-9dee-100b20f59a4e"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="PUT"
  />
</GlobalFunctions>
