Book Review Application

Overview
The Book Review Application allows users to browse, add, edit, and delete book reviews. It also allows users to submit their thoughts on books they have read, including ratings and comments. The application features a clean and modern UI for discovering and sharing reviews on books.

This is a full-stack web application developed using React for the frontend, Node.js with Express for the backend, and MySQL for the database.

Features Implemented

Frontend
Book Review Form: A form that allows users to add and edit reviews with fields for book title, author, rating (1-5 stars), review text, and reviewer name.
Book Review List: A page that displays all reviews. Each review shows the book title, author, rating, reviewer's name, review text, and an optional book cover image.
CRUD Operations: Ability to create, read, update, and delete reviews.
Responsive Design: The frontend layout adapts to various screen sizes for a seamless user experience on both desktop and mobile.
Rating and Sorting: The reviews are sorted by the date they were added and can be filtered by rating.

Backend
RESTful API: A fully functional REST API that handles creating, retrieving, updating, and deleting reviews.
MySQL Database: The reviews are stored persistently in a MySQL database, which includes the review title, author, rating, review text, reviewer's name, and image path for book cover images.
File Upload: Users can upload a book cover image when adding or updating a review, which is stored on the server.

Technologies Used
Frontend: React.js, HTML, CSS
Backend: Node.js, Express.js
Database: MySQL
API Requests: Axios (for communication between the frontend and backend)



Future Features to Implement

User Authentication:
Implement user registration, login for a more personalized review system.

Advanced Search and Filtering:
Implement more advanced filtering options such as searching by book title, author, or reviewer. Implement sorting based on rating or date added.

UI Enhancements:
Improve the overall design and UI using CSS frameworks or libraries like Bootstrap or Material-UI for a more polished look.















