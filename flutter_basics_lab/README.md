# flutter_basics_lab

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Flutter Basics Lab — Answers
Student: ILFV3_MENDOZA_BENEDICT
GitHub repository: https://github.com/YOUR_USERNAME/flutter_basics_lab
Replace YOUR_USERNAME with your actual GitHub username after creating the repository. Check that the student name and section match your class list.

Activity 2 — Last three build() messages
These are the last three counter messages visible in my Debug Console when the counter reached its goal:
build() called: 4 glasses
build() called: 5 glasses
build() called: 6 glasses
Observations
Activity 2 — setState() experiment
When I moved _glasses++ outside setState(), the number changed in the variable, but Flutter was not told to rebuild the screen, so the displayed counter did not update immediately. When I put the change back inside setState(), the screen updated after each tap. The counter stopped at the goal of six glasses.
Activity 3 — Expanded experiment
When I removed Expanded from a statistics box in the Row, the boxes no longer shared the available row width evenly. Depending on the screen width, the row could look uneven or overflow. Putting Expanded back allowed the four statistics boxes to share the available width.
Activity 5 — Theme experiment
I changed the ElevatedButton corner radius in buildTheme() from 8 to 20. The buttons became more rounded. When I turned on Dark mode, the whole page changed to the dark theme because MaterialApp selected ThemeMode.dark.
Review questions
1. What is the difference between a StatelessWidget and a StatefulWidget? Give one example of each from this lab.
A StatelessWidget displays content that does not need to change while the app runs; an example is ProfileCard in Activity 1. A StatefulWidget can update when its data changes; examples are WaterTrackerPage in Activity 2 and ThemeDemoApp in Activity 5.
2. Why is a StatefulWidget written as two classes? What does each class do?
The widget class describes the widget and creates its state object. The State class stores data that can change and contains the build() method that draws the updated screen.
3. In Activity 2, what happened when you changed _glasses outside setState()? Why?
The counter variable changed, but the screen did not immediately update because Flutter was not notified to rebuild the widget. setState() tells Flutter that the state changed and the UI should be rebuilt.
4. Looking at the Debug Console in Activity 2, when is build() called?
build() is called when the screen is first created and again after state changes made with setState(), such as tapping the plus, minus, or reset button.
5. Explain the main axis and the cross axis of a Row and of a Column.
For a Row, the main axis goes horizontally and the cross axis goes vertically. For a Column, the main axis goes vertically and the cross axis goes horizontally.
6. In Activity 3, what happened when you removed Expanded from a StatBox? What does Expanded do?
Without Expanded, a statistics box no longer shared the row's available width equally, so the layout could look uneven or overflow. Expanded lets its child use a fair share of the remaining space in the Row.
7. Why do we use GridView.builder for the menu instead of a Column with many children?
GridView.builder arranges menu cards in a grid and builds items as they are needed for display. A Column puts children in one vertical line and does not provide the same grid layout or efficient scrolling for a long menu.
8. How do Stack and Positioned create the Best seller badge in Activity 4?
Stack layers the badge on top of the menu card. Positioned sets the badge's position relative to the card, such as a few pixels from the top and left edges.
9. What is the difference between customizing with ThemeData and with a style on one widget? Give one example of each from Activity 5.
ThemeData sets consistent appearance rules across the app, such as the color scheme and the ElevatedButton shape configured in buildTheme(). A style on one widget affects only that widget, such as setting a particular Text widget's font size.
10. When you flip the dark-mode switch in Activity 5, which widget holds the state, and how does the change reach MaterialApp?
_ThemeDemoAppState, the state class for ThemeDemoApp, stores the _isDark value. The switch calls the onDarkChanged callback, which runs _setDark() and uses setState(). Then MaterialApp rebuilds and themeMode chooses the light or dark theme.
Screenshot checklist
Save these seven screenshots in the screenshots folder. Each must show the activity title with my student name:
- [ ] activity1.png — profile card, including phone row
- [ ] activity2_start.png — water tracker at 0 glasses
- [ ] activity2_goal.png — water tracker at 6 glasses
- [ ] activity3.png — hometown weather and four statistics boxes
- [ ] activity4.png — café menu with category chips and the two added menu items
- [ ] activity5_light.png — light theme with the Save SnackBar visible and extra skill chip
- [ ] activity5_dark.png — settings page in dark mode