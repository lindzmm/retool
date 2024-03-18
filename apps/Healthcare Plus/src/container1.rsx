<Container
  id="container1"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hoistFetching={true}
  padding="12px"
  paddingType="normal"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle1"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="45949" viewKey="View 1">
    <Container
      id="container2"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="45949" viewKey="View 1">
        <Statistic
          id="statistic1"
          _disclosedFields={{ array: [] }}
          currency="USD"
          icon="bold/mail-send-envelope-alternate"
          label="Messages for {{current_user.fullName}}"
          labelCaption="Since Last Week"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=".40"
          showSeparators={true}
          value="{{countUnreadEmails.data.count['0']}}"
        />
      </View>
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "52d375fc-f7cc-11ec-bcb8-a772252b2543" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="45949" viewKey="View 1">
        <Statistic
          id="statistic2"
          _disclosedFields={{ array: [] }}
          currency="USD"
          icon="bold/interface-file-clipboard-text"
          label="Orders Awaiting Pre-Approval"
          labelCaption="Since Last Month"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="-.20"
          showSeparators={true}
          value="{{countOrders.data.count['0']}}"
        />
      </View>
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "d7a2c8ec-50a9-11ed-ac5d-776ff71a3efc" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="container4"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle4"
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="45949" viewKey="View 1">
        <Statistic
          id="statistic4"
          _disclosedFields={{ array: [] }}
          currency="USD"
          icon="bold/money-bank"
          label="Orders Awaiting Submission"
          labelCaption="Since Last Month"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue={0.08}
          showSeparators={true}
          value="{{countawaitOrders.data.count['0']}}"
        />
      </View>
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "d7a2c8ec-50a9-11ed-ac5d-776ff71a3efc" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="container5"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle5"
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="45949" viewKey="View 1">
        <Statistic
          id="statistic3"
          _disclosedFields={{ array: [] }}
          currency="USD"
          icon="bold/interface-calendar-add"
          label="Appointments Today"
          labelCaption="Since Yesterday"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{countAppointmentsToday.data.count['0'] -countAppointmentsYesterday.data.count['0']}}"
          showSeparators={true}
          value="{{countAppointmentsToday.data.count['0']}}"
        />
      </View>
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "6219329a-a33e-11ed-86a5-a3a792265b00" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </View>
</Container>
