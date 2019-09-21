const String DEFAULT_TITLE = "List of Tracks";
const String HOME_SCREEN = "Home";
const String TRACK_LIST_SCREEN = "Track List";

// name enum of tabs
enum TabName {
  HomeScreen,
  TrackListScreen,
}

// convert from TabName to String
String tabNameToString(TabName name) {
  switch (name) {
    case TabName.HomeScreen:
      return HOME_SCREEN;
      break;
    case TabName.TrackListScreen:
      return TRACK_LIST_SCREEN;
      break;
    default:
      return DEFAULT_TITLE;
  }
}

// convert to String from TabName
TabName tabNameFromString(String name) {
  switch (name) {
    case HOME_SCREEN:
      return TabName.HomeScreen;
    case TRACK_LIST_SCREEN:
      return TabName.TrackListScreen;
    default:
      return TabName.HomeScreen;
  }
}
