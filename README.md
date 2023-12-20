# CarConnect Case Study

## Overview
The CarConnect project is a robust Car Rental Platform developed on the .NET platform using C#. It features a structured directory hierarchy with packages for entity/model, dao, exception, util, and main.

## Key Features
- **User Authentication:** Secure authentication system to safeguard user data.
- **CRUD Operations:** Comprehensive operations for managing vehicles.
- **Real-time Reservations:** Efficient handling of reservations in real-time.
- **Administrative Reporting:** Reporting tools for administrators to monitor and analyze data.

## Architecture
- **Package Structure:**
  - `entity/model`: Contains model/entity classes with private variables, constructors, and getters/setters.
  - `dao`: Implements Data Access Objects for database interactions.
  - `exception`: Handles custom exceptions like AuthenticationException and ReservationException.
  - `util`: Utilizes utility functions for various purposes.
  - `main`: Houses the main application logic.

- **SQL Schema:**
  - Tables for `Customer`, `Vehicle`, `Reservation`, and `Admin` ensure organized data storage.

- **Service Classes:**
  - `CustomerService`, `VehicleService`, `ReservationService`, and `AdminService` implement interfaces for their respective functionalities.

## Database
- Connects to a SQL Server database to store and retrieve data efficiently.

## Testing
- Includes NUnit test cases for unit testing various components, ensuring correctness and reliability.
