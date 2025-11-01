# Mini Food Delivery App

## Overview
This Flutter-based mini food delivery app simulates a typical food ordering experience with 4 main screens: Home, Cart, Orders, and Profile. It incorporates a bottom navigation bar for seamless screen switching, uses dummy data for ease of development, and demonstrates key features such as category filtering, item listing, cart management, order history, and user profile.

---

## Screens & Features

### 1. **Home Screen**
- **Header:** Displays the app name "FoodXpress"
- **Search Bar:** UI placeholder for search functionality (no actual search logic, dummy)
- **Categories Section:** Horizontal list of food categories (Pizza, Burger, Biryani, Drinks, etc.)
- **Food List:** Displays at least 6 food items with:
    - **Image**
    - **Name**
    - **Description**
    - **Price**
    - **Add Button:** To add items to the cart

### 2. **Cart Screen**
- **Food Items List:** Shows items added to cart with:
    - Name
    - Price
    - Remove option (icon/button)
- **Total Amount:** Sum of all cart items
- **Checkout Button:** Dummy button simulating checkout (no real backend)

### 3. **Orders Screen**
- **Static List:** Show past orders with:
    - Item Name
    - Price
    - Date of order
- Each order is displayed in a card for better visual separation.

### 4. **Profile Screen**
- **Static Profile Info:**
    - Name
    - Email
    - Profile Image
- **Logout Button:** Dummy, navigates back to Home (or initial screen)

---

## Navigation & User Flow
- Bottom Navigation Bar allows easy switch between all four screens.
- Uses `setState` for dynamic updates within screens.
- Local/dummy data is used for simplicity and demonstration purposes.

---

## Implementation Highlights
- **State Management:** Utilized `setState` for state updates, especially in Cart functionality.
- **Design Elements:** Clean UI with Cards, ListViews, and responsive layouts.
- **Code Structure:** Modular screens with reusable widgets and styling.

---

## Demo Video
Watch the walkthrough of the app here:  
[Demo Walkthrough Video](https://drive.google.com/file/d/1nNXTFZQPOpaiGnLW0l1r6Md6cNBZQUGg/view?usp=sharing)

---

## Code Repository
The entire implementation of the app is available [here](https://github.com/karanshrma/foodxpress).  
(Replace with your actual GitHub or GitLab repository URL)

---

## Setup Instructions
1. Clone the repository
2. Run `flutter pub get`
3. Start the app using `flutter run`

---

## Notes
- All features are implemented with dummy data; no backend integration.
- Future scope includes integrating real APIs, search functionality, and user authentication.
- Designed to demonstrate core Flutter skills: navigation, state management, UI design, and interaction.

---

