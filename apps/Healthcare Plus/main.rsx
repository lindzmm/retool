<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./sidebar.rsx" />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <Include src="./src/container1.rsx" />
    <Container
      id="container6"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
    >
      <Header>
        <Icon
          id="icon2"
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          icon="bold/mail-send-envelope"
          style={{ ordered: [{ color: "primary" }] }}
        />
        <Text
          id="containerTitle6"
          _disclosedFields={{ array: [] }}
          value="#### Inbox"
          verticalAlign="center"
        />
        <Button
          id="button2"
          _disclosedFields={{ array: [] }}
          iconBefore="bold/mail-send-envelope"
          style={{ ordered: [{ background: "rgba(60, 146, 220, 0)" }] }}
          styleVariant="solid"
          text="View All"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "52d375fc-f7cc-11ec-bcb8-a772252b2543" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="45949" viewKey="View 1">
        <ListView
          id="listView1"
          instances="5"
          paddingType="normal"
          style={{ ordered: [{ "border-color": "rgba(209, 209, 209, 0)" }] }}
        >
          <Text
            id="text3"
            _disclosedFields={{ array: [] }}
            value={
              '<b style="color: #454545"> {{getEmails.data.subject[i]}} </b> \nTo: {{current_user.email}}\nFrom: {{getEmails.data.sender_email[i]}}'
            }
            verticalAlign="center"
          />
          <Avatar
            id="avatar4"
            _disclosedFields={{ array: [] }}
            fallback="{{getEmails.data.sender_email[i]}}"
            imageSize={32}
            label="{{getEmails.data.sender_email[i]}}"
            labelCaption="{{moment(getEmails.data.timestamp[i]).format('MM/DD/YY')}}"
            style={{ ordered: [{ background: "automatic" }] }}
          />
          <Alert
            id="alert1"
            description=""
            events={[]}
            title="{{getEmails.data.status[i][0].toUpperCase() + getEmails.data.status[i].substring(1)}}"
            type="{{getEmails.data.status[i] === 'unread' ? 'error' : 'warning'}}"
          />
          <Divider id="divider3" _disclosedFields={{ array: [] }} />
        </ListView>
      </View>
    </Container>
    <Container
      id="container8"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
    >
      <Header>
        <Icon
          id="icon3"
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          icon="bold/health-medical-medicines"
          style={{ ordered: [{ color: "primary" }] }}
        />
        <Text
          id="containerTitle8"
          _disclosedFields={{ array: [] }}
          value="#### Orders"
          verticalAlign="center"
        />
        <Button
          id="button5"
          _disclosedFields={{ array: [] }}
          iconBefore="bold/health-medical-medicines"
          style={{ ordered: [{ background: "rgba(60, 146, 220, 0)" }] }}
          styleVariant="solid"
          text="View All"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "d7a2c8ec-50a9-11ed-ac5d-776ff71a3efc" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="45949" viewKey="View 1">
        <TableLegacy
          id="table3"
          _columns={[
            "patient_id",
            "patient_fullname",
            "description",
            "status",
            "code",
            "units",
            "dosage",
            "appointment_id",
            "reason_description",
            "reason_code",
            "provider_id",
            "start_date",
            "stop_date",
            "id",
          ]}
          _columnSummaryTypes={{
            ordered: [
              { status: "" },
              { code: "sum" },
              { patient_fullname: "" },
            ],
          }}
          _columnSummaryValues={{
            ordered: [{ status: "" }, { code: "" }, { patient_fullname: "" }],
          }}
          _columnVisibility={{
            ordered: [
              { reason_description: false },
              { reason_code: false },
              { provider_id: false },
              { start_date: true },
              { stop_date: true },
              { units: false },
              { status: true },
              { patient_id: false },
              { dosage: false },
              { id: false },
              { appointment_id: false },
              { description: false },
            ],
          }}
          _compatibilityMode={false}
          columnAlignment={{
            ordered: [
              { status: "left" },
              { code: "right" },
              { patient_fullname: "left" },
            ],
          }}
          columnColors={{
            ordered: [
              { reason_description: "" },
              { reason_code: "" },
              { provider_id: "" },
              { start_date: "" },
              { stop_date: "" },
              { code: "" },
              { units: "" },
              { status: "" },
              { patient_fullname: "" },
              { patient_id: "" },
              { dosage: "" },
              { id: "" },
              { appointment_id: "" },
              { description: "" },
            ],
          }}
          columnEditable={{ ordered: [{ patient_fullname: false }] }}
          columnFormats={{
            ordered: [
              { status: "SingleTagDataCell" },
              { code: "NumberDataCell" },
              { patient_fullname: "default" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { reason_description: "Reason" },
              { start_date: "Start Date" },
              { stop_date: "Stop Date" },
              { code: "Code" },
              { units: "Units" },
              { status: "Status" },
              { patient_fullname: "Patient" },
              { dosage: "Dosage" },
              { description: "Description" },
            ],
          }}
          columnMappers={{ ordered: [{ status: "" }] }}
          columnTypeProperties={{
            ordered: [
              {
                status: {
                  ordered: [
                    { optionData: "{{ currentColumn }}" },
                    { colorMode: "auto" },
                    { allowCustomValue: true },
                    { optionLabels: { array: [] } },
                    { optionColors: { array: [] } },
                    { optionValues: { array: [] } },
                  ],
                },
              },
              {
                code: {
                  ordered: [{ showSeparators: false }, { padDecimal: true }],
                },
              },
              {
                patient_fullname: {
                  ordered: [{ uploadLabel: "Browse images" }],
                },
              },
            ],
          }}
          columnWidths={[
            { object: { id: "description", value: 132.40625762939453 } },
            { object: { id: "patient_fullname", value: 129.9965362548828 } },
            { object: { id: "start_date", value: 115.00000762939453 } },
            { object: { id: "stop_date", value: 119.00000762939453 } },
            { object: { id: "code", value: 97.4045181274414 } },
            { object: { id: "status", value: 168.00000762939453 } },
          ]}
          customButtonName=""
          data="{{ getOrders2.data }}"
          doubleClickToEdit={true}
          showBoxShadow={false}
          showDownloadButton={false}
          showFilterButton={false}
          showRefreshButton={false}
          showTableBorder={false}
          style={{
            ordered: [
              { border: "surfaceSecondary" },
              { headerBackground: "surfacePrimary" },
              { headerText: "rgb(37, 113, 64)" },
              { toolbarText: "rgb(37, 113, 64)" },
            ],
          }}
        />
      </View>
    </Container>
    <Container
      id="container7"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden="{{healthcareDemoNavBar1.userGroup === 'Staff'}}"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
    >
      <Header>
        <Icon
          id="icon1"
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          icon="bold/interface-calendar-alternate"
          style={{ ordered: [{ color: "primary" }] }}
        />
        <Text
          id="containerTitle7"
          _disclosedFields={{ array: [] }}
          value="#### Upcoming Appointments"
          verticalAlign="center"
        />
        <Button
          id="button3"
          _disclosedFields={{ array: [] }}
          iconBefore="bold/interface-calendar-alternate"
          style={{ ordered: [{ background: "rgba(60, 146, 220, 0)" }] }}
          styleVariant="solid"
          text="View All"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6219329a-a33e-11ed-86a5-a3a792265b00" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="45949" viewKey="View 1">
        <TableLegacy
          id="table2"
          _columns={[
            "id",
            "date",
            "start",
            "end",
            "patient_id",
            "provider_id",
            "hospital_id",
            "insurance_plan_id",
            "appointment_type",
            "description",
            "base_encounter_cost",
            "total_claim_cost",
            "payer_coverage",
            "birthdate",
            "ssn",
            "prefix",
            "first",
            "last",
            "marital",
            "race",
            "ethnicity",
            "gender",
            "address",
            "city",
            "state",
            "zip_code",
            "lat",
            "lon",
            "healthcare_expenses",
            "healthcare_coverage",
            "allergies",
            "conditons",
            "credit_card",
            "phone",
            "pharmacy_id",
            "email",
          ]}
          _columnSummaryTypes={{
            ordered: [
              { appointment_type: "" },
              { start_time: "" },
              { description: "" },
              { provider: "" },
              { patient: "" },
              { total_claim_cost: "sum" },
            ],
          }}
          _columnSummaryValues={{
            ordered: [
              { appointment_type: "" },
              { start_time: "" },
              { description: "" },
              { provider: "" },
              { patient: "" },
              { total_claim_cost: "" },
            ],
          }}
          _columnVisibility={{
            ordered: [
              { hospital_id: false },
              { gender: false },
              { pharmacy_id: false },
              { base_encounter_cost: false },
              { conditons: false },
              { provider_id: false },
              { zip_code: false },
              { city: false },
              { lon: false },
              { insurance_plan_id: false },
              { birthdate: false },
              { healthcare_expenses: false },
              { phone: false },
              { ssn: false },
              { first: false },
              { state: false },
              { race: false },
              { prefix: false },
              { payer_coverage: false },
              { marital: false },
              { address: false },
              { patient_id: false },
              { credit_card: false },
              { last: false },
              { healthcare_coverage: false },
              { end: true },
              { id: false },
              { email: false },
              { allergies: false },
              { ethnicity: false },
              { lat: false },
            ],
          }}
          _compatibilityMode={false}
          columnAlignment={{
            ordered: [
              { appointment_type: "left" },
              { start_time: "left" },
              { description: "left" },
              { provider: "left" },
              { patient: "left" },
              { total_claim_cost: "right" },
            ],
          }}
          columnColors={{
            ordered: [
              { hospital_id: "" },
              { gender: "" },
              { start: "" },
              { patient: "" },
              { pharmacy_id: "" },
              { base_encounter_cost: "" },
              { conditons: "" },
              { provider_id: "" },
              { start_time: "" },
              { zip_code: "" },
              { city: "" },
              { total_claim_cost: "" },
              { lon: "" },
              { insurance_plan_id: "" },
              { birthdate: "" },
              { healthcare_expenses: "" },
              { phone: "" },
              { ssn: "" },
              { date: "" },
              { first: "" },
              { state: "" },
              { provider: "" },
              { race: "" },
              { prefix: "" },
              { payer_coverage: "" },
              { appointments: "" },
              { marital: "" },
              { address: "" },
              { patient_id: "" },
              { credit_card: "" },
              { last: "" },
              { healthcare_coverage: "" },
              { appointment_type: "" },
              { end: "" },
              { id: "" },
              { email: "" },
              { description: "" },
              { allergies: "" },
              { ethnicity: "" },
              { lat: "" },
            ],
          }}
          columnFormats={{
            ordered: [
              { appointment_type: "SingleTagDataCell" },
              { start_time: "DateTimeDataCell" },
              { description: "TextMultiDataCell" },
              { provider: "TextDataCell" },
              { patient: "TextDataCell" },
              { total_claim_cost: "CurrencyDataCell" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { start: "Start Time" },
              { patient: "Patient" },
              { start_time: "Time" },
              { total_claim_cost: "Co-Pay" },
              { date: "Date" },
              { first: "Patient First" },
              { provider: "Provider" },
              { appointment_type: "Type" },
              { end: "End Time" },
              { description: "Description" },
            ],
          }}
          columnMappers={{
            ordered: [
              { appointment_type: "" },
              { provider: "Dr. {{self.first + ' ' + self.last}}" },
              { patient: "{{ self.first + ' ' + self.last }}" },
            ],
          }}
          columnTypeProperties={{
            ordered: [
              {
                appointment_type: {
                  ordered: [
                    { optionData: "{{ currentColumn }}" },
                    { colorMode: "auto" },
                    { allowCustomValue: true },
                    { optionLabels: { array: [] } },
                    { optionColors: "" },
                    { optionValues: { array: [] } },
                  ],
                },
              },
              {
                start_time: {
                  ordered: [
                    { manageTimeZone: true },
                    { dateFormat: "MMM d, yyyy" },
                    { valueTimeZone: "00:00" },
                    { displayTimeZone: "local" },
                  ],
                },
              },
              { description: { ordered: [] } },
              { provider: { ordered: [] } },
              { patient: { ordered: [] } },
              {
                total_claim_cost: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "USD" },
                    { padDecimal: true },
                  ],
                },
              },
            ],
          }}
          columnWidths={[
            { object: { id: "provider", value: 163.40625 } },
            { object: { id: "total_claim_cost", value: 78.05729675292969 } },
            { object: { id: "description", value: 169.6510467529297 } },
            { object: { id: "appointment_type", value: 107.63195037841797 } },
            { object: { id: "end", value: 82.00000762939453 } },
            { object: { id: "start", value: 81.07118225097656 } },
          ]}
          customButtonName=""
          data="{{ getPatients.data }}"
          defaultSortByColumn={null}
          doubleClickToEdit={true}
          hasNextAfterCursor="{{ getAppointments.data.hasMore }}"
          serverPaginated={true}
          showBoxShadow={false}
          showTableBorder={false}
          style={{
            ordered: [
              { border: "rgba(209, 209, 209, 0)" },
              { headerBackground: "rgba(247, 247, 247, 0)" },
              { headerText: "rgb(37, 113, 64)" },
              { toolbarText: "rgb(37, 113, 64)" },
            ],
          }}
          totalRowCount="1000"
        />
      </View>
    </Container>
    <Container
      id="container9"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden="{{healthcareDemoNavBar1.userGroup === 'Staff'}}"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
    >
      <Header>
        <Icon
          id="icon4"
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          icon="bold/interface-security-shield-person—shield-secure-security-person"
          style={{ ordered: [{ color: "primary" }] }}
        />
        <Text
          id="containerTitle9"
          _disclosedFields={{ array: [] }}
          value="#### Patients "
          verticalAlign="center"
        />
        <Button
          id="button4"
          _disclosedFields={{ array: [] }}
          iconBefore="bold/interface-security-shield-person—shield-secure-security-person"
          style={{ ordered: [{ background: "rgba(60, 146, 220, 0)" }] }}
          styleVariant="solid"
          text="View All"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6355031a-50a9-11ed-91fc-335557cbc3e1" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="45949" viewKey="View 1">
        <ListView
          id="listView4"
          instances="6"
          paddingType="normal"
          style={{ ordered: [{ "border-color": "rgba(209, 209, 209, 0)" }] }}
        >
          <Avatar
            id="avatar2"
            _disclosedFields={{ array: [] }}
            fallback="{{getPatients.data.first[i] + ' ' + getPatients.data.last[i]}}"
            imageSize={32}
            label="{{getPatients.data.first[i] + ' ' + getPatients.data.last[i]}}"
            labelCaption="{{getPatients.data.email[i]}}"
            src="{{ current_user.profilePhotoUrl }}"
            style={{ ordered: [{ background: "automatic" }] }}
          />
          <Alert
            id="alert2"
            description=""
            title="{{getPatients.data.appointment_type[i][0].toUpperCase() + getPatients.data.appointment_type[i].substring(1)}} Appointment on {{getPatients.data.date[i]}}"
            type="{{getPatients.data.appointment_type[i] === 'wellness' ? 'success' : getPatients.data.appointment_type[i] === 'emergency' ? 'failure' : getPatients.data.appointment_type[i] === 'ambulatory'|| 'inpatient' ? 'warning' : 'info'}}"
          />
          <Divider id="divider4" _disclosedFields={{ array: [] }} />
        </ListView>
      </View>
    </Container>
  </Frame>
</App>
