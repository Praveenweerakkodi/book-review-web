const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql2');
const multer = require('multer');
const path = require('path');
const fs = require('fs');

// Set up Express app
const app = express();
app.use(cors());
app.use(bodyParser.json());

// Serve static files (images) from the 'uploads' directory
app.use('/uploads', express.static('uploads'));

// Configure file storage with Multer
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        const dir = './uploads/';
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir);
        }
        cb(null, dir);
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname));
    },
});

const upload = multer({ storage: storage });

// Database Connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root', // Replace with your MySQL password
    database: 'book_reviews',
});

db.connect((err) => {
    if (err) {
        console.log('Database connection error:', err);
    } else {
        console.log('Connected to MySQL Database');
    }
});

// API Endpoints

// Create a new review
app.post('/reviews', upload.single('bookImage'), (req, res) => {
    const { title, author, rating, review_text, reviewer } = req.body;
    const image = req.file ? '/uploads/' + req.file.filename : null;
    const query = 'INSERT INTO reviews (title, author, rating, reviewer, review_text, image) VALUES (?, ?, ?, ?, ?, ?)';
    
    db.query(query, [title, author, rating, reviewer, review_text, image], (err, result) => {
        if (err) throw err;
        res.status(201).send('Review added');
    });
});

// Get all reviews
app.get('/reviews', (req, res) => {
    db.query('SELECT * FROM reviews', (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// Update a review by ID
app.put('/reviews/:id', upload.single('bookImage'), (req, res) => {
    const reviewId = req.params.id;
    const { title, author, rating, review_text, reviewer } = req.body;
    const image = req.file ? '/uploads/' + req.file.filename : null;

    // Build the update query
    let updateQuery = 'UPDATE reviews SET title = ?, author = ?, rating = ?, reviewer = ?, review_text = ?';
    const params = [title, author, rating, reviewer, review_text];

    // If there is a new image, update the image column as well
    if (image) {
        updateQuery += ', image = ?';
        params.push(image);
    }

    updateQuery += ' WHERE id = ?';
    params.push(reviewId);

    // Execute the query
    db.query(updateQuery, params, (err, result) => {
        if (err) throw err;
        if (result.affectedRows === 0) {
            return res.status(404).send('Review not found');
        }
        res.send('Review updated');
    });
});

// Delete a review by ID
app.delete('/reviews/:id', (req, res) => {
    const reviewId = req.params.id;

    // Delete query to remove the review from the database
    const deleteQuery = 'DELETE FROM reviews WHERE id = ?';
    db.query(deleteQuery, [reviewId], (err, result) => {
        if (err) throw err;
        if (result.affectedRows === 0) {
            return res.status(404).send('Review not found');
        }
        res.send('Review deleted');
    });
});

// Start Server
app.listen(5000, () => {
    console.log('Server running on http://localhost:5000');
});
