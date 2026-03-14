
# Travel App Flutter 

A modern **Flutter travel application UI** that allows users to explore destinations, view details, and simulate a booking process. The project demonstrates clean Flutter architecture using reusable widgets, structured folders, and a consistent theme.

This project is designed as a  **learning example for Flutter UI development** , focusing on modular design and user-friendly navigation.

# Features

* Explore travel destinations
* View destination details
* Booking form interface
* Date selection for bookings
* Success confirmation dialog
* Clean navigation flow
* Reusable UI widgets

# Project Structure

The application follows a **modular Flutter architecture** to improve maintainability and scalability.






<pre class="overflow-visible! px-0!" data-start="960" data-end="1606"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>lib/</span><br/><span>│</span><br/><span>├── main.dart                # Application entry point</span><br/><span>│</span><br/><span>├── models/</span><br/><span>│   └── travel_data.dart     # Travel destination data model</span><br/><span>│</span><br/><span>├── screens/</span><br/><span>│   ├── home_screen.dart     # Main screen displaying destinations</span><br/><span>│   ├── detail_screen.dart   # Destination detail page</span><br/><span>│   └── booking_screen.dart  # Booking form interface</span><br/><span>│</span><br/><span>├── widgets/</span><br/><span>│   ├── category_chip.dart   # Category selection UI</span><br/><span>│   ├── custom_button.dart   # Reusable button component</span><br/><span>│   ├── destination_card.dart# Destination display card</span><br/><span>│   └── rating_widget.dart   # Rating display component</span><br/><span>│</span><br/><span>└── theme/</span><br/><span>    └── app_theme.dart       # Application theme and styling</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

This separation improves  **code readability and reusability** .

# Application Screens

### Home Screen

Displays travel destinations and categories.

### Destination Details

Shows full information about a selected destination.

### Booking Form

Allows the user to fill booking information.

### Booking Date Selection

### Booking Success Dialog

### Navigation Flow

# Getting Started

## 1. Clone the repository

<pre class="overflow-visible! px-0!" data-start="2506" data-end="2581"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>git clone https://github.com/EngineerFabrice/travel_app_flutter.git</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

## 2. Navigate to the project directory

<pre class="overflow-visible! px-0!" data-start="2629" data-end="2658"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>cd travel_app_flutter</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

## 3. Install dependencies

<pre class="overflow-visible! px-0!" data-start="2693" data-end="2716"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>flutter pub get</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

## 4. Run the application

<pre class="overflow-visible! px-0!" data-start="2750" data-end="2769"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>flutter run</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

# Technologies Used

* **Flutter**
* **Dart**
* Material Design UI components

# Learning Objectives

This project demonstrates:

* Flutter UI development
* Reusable widget creation
* Navigation between screens
* Clean project architecture
* Theming and styling in Flutter

# Contributing

Contributions are welcome. To contribute:

1. Fork the repository
2. Create a feature branch

<pre class="overflow-visible! px-0!" data-start="3180" data-end="3229"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>git checkout -b feature/your-feature-name</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

3. Commit your changes

<pre class="overflow-visible! px-0!" data-start="3255" data-end="3294"><div class="relative w-full mt-4 mb-1"><div class=""><div class="relative"><div class="h-full min-h-0 min-w-0"><div class="h-full min-h-0 min-w-0"><div class="border border-token-border-light border-radius-3xl corner-superellipse/1.1 rounded-3xl"><div class="h-full w-full border-radius-3xl bg-token-bg-elevated-secondary corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback"><div class="pointer-events-none absolute end-1.5 top-1 z-2 md:end-2 md:top-1"></div><div class="pe-11 pt-3"><div class="relative z-0 flex max-w-full"><div id="code-block-viewer" dir="ltr" class="q9tKkq_viewer cm-editor z-10 light:cm-light dark:cm-light flex h-full w-full flex-col items-stretch ͼk ͼy"><div class="cm-scroller"><div class="cm-content q9tKkq_readonly"><span>git commit -m "Add new feature"</span></div></div></div></div></div></div></div></div></div><div class=""><div class=""></div></div></div></div></div></pre>

4. Push to your fork and create a Pull Request.

# License

This project is intended for **educational purposes** and learning Flutter development.
