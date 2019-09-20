const String DEFAULT_TITLE = "List of Tracks";

// name enum of tabs
enum TabName {
  HomeScreen,
  TrackList,
}

// convert from TabName to String
String tabNameToString(TabName name) {
  switch (name) {
    case TabName.HomeScreen:
      return "Home Screen";
      break;
    case TabName.TrackList:
      return "Track List";
      break;
    default:
      return DEFAULT_TITLE;
  }
}

// convert to String from TabName
TabName tabNameFromString(String name) {
  TabName tabName;
  TabName.values.map((TabName _tabName) {
    if (name == tabNameToString(_tabName)) {
      tabName = _tabName;
    }
  });
  if (tabName != null) {
    return tabName;
  } else {
    return TabName.HomeScreen;
  }
}
