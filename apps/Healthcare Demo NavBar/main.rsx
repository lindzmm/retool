<App>
  <GlobalWidgetOutput id="userGroup" value="{{select1.value}}" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "#f3f4f6" }] }}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Navigation
        id="navigation1"
        disabled=""
        hidden={null}
        horizontalAlignment="center"
        itemMode="static"
        maintainSpaceWhenHidden={null}
        orientation="vertical"
        showInEditor={null}
        style={{
          ordered: [
            { dropdownBackground: null },
            { color: null },
            { dropdownBorder: null },
            { highlightText: "rgb(0, 0, 0)" },
            { highlightBackground: "rgb(171, 224, 189)" },
            { hoverText: "rgb(88, 189, 125)" },
          ],
        }}
      >
        <Option
          id="07350"
          appTarget="6219329a-a33e-11ed-86a5-a3a792265b00"
          itemType="app"
          label="Appointments"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "f15195bc-50a8-11ed-91fc-cbbd57bb3ed1" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="94d6b"
          appTarget="cb3128be-91cd-11ed-8d9a-57203d999c58"
          highlight={null}
          itemType="app"
          label="Inbox"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "cb3128be-91cd-11ed-8d9a-57203d999c58" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="11626"
          appTarget="6355031a-50a9-11ed-91fc-335557cbc3e1"
          highlight={null}
          itemType="app"
          label="Patients"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "6355031a-50a9-11ed-91fc-335557cbc3e1" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="9a1db"
          appTarget="d7a2c8ec-50a9-11ed-ac5d-776ff71a3efc"
          highlight={null}
          itemType="app"
          label="Orders"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "d7a2c8ec-50a9-11ed-ac5d-776ff71a3efc" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
      </Navigation>
      <Select
        id="select1"
        itemMode="static"
        label=""
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        style={{ ordered: [{ background: "rgba(242, 243, 245, 0)" }] }}
        value={'{{urlparams.preapproval_id ? "Staff" : "Provider"}}'}
      >
        <Option
          id="1e6b0"
          color="black"
          icon="bold/health-medical-heart-care-2"
          value="Provider"
        />
        <Option
          id="8d3b6"
          color="black"
          icon="bold/interface-user-single"
          value="Staff"
        />
      </Select>
    </ModuleContainerWidget>
  </Frame>
</App>
