# Couture Collection App

The Couture Collection "fashionapp" is an innovative app designed for fashion houses, particularly those specializing in couture, to present their latest collections in an immersive way and further secure their social media presence as well as attract new and existing clientele. This app allows the houses to showcase their runway shows and respective items including detailed descriptions, providing users with an all-in-one, visually pleasing and complete experience.

The initial (MySQL) database provided is inspired by the Schiaparelli FW 24/25 collection but the app is designed to work for any fashion house alike. 

 The app includes two main tables:
* products: Stores detailed information about individual fashion items
* shows: Stores information about fashion shows where the products are presented
  
## Database Schema

<img width="392" alt="Screenshot 2024-08-18 at 17 23 00" src="https://github.com/user-attachments/assets/fd5e28a9-9040-4950-a6d9-22f7b9f7df27">

## Visual Representation

<img width="644" alt="Screenshot 2024-08-18 at 17 37 04" src="https://github.com/user-attachments/assets/c685e84b-58ef-40f8-9764-6546189c7862">

## Used Technologies

Back-end: MySQL, Node, Express

Front-end: React, React Router, Vite, CSS, HTML

## Prerequisites

* Node.js
* npm
* MySQL

## Dependencies

* Clone the repository
* Run `npm install` in the project folder to install dependencies related to Express (the server).
* `cd client` and run `npm install` to install dependencies related to React (the client).

## Database Setup

* Create the database in MySQL: 
	`CREATE DATABASE fashionapp;`
* Use the provided _init_db.sql_ file to import the initial database 
* Ensure the tables have been correctly created by running the following in MySQL:
	```USE fashionapp;
	SHOW TABLES;
	DESCRIBE products;
	DESCRIBE shows;
* Edit the .env file to match your personal credentials

## Running the App in the Terminal

**Back-end**

`cd projectfolder`

`npm start`

Postman: http://localhost:4000/

**Front-end**

`cd projectfolder/client`

`npm run dev`

Browser: http://localhost:5173/

*_Replace “projectfolder” with whatever you’ve locally named the project folder_






