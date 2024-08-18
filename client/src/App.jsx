import './App.css'
import FashionHouse from "./components/FashionHouse";
import ProductDetails from './components/ProductDetails';
import AdminView from './components/AdminView';
import { Routes, Route } from "react-router-dom";
import React, { useEffect, useState } from "react";

function App() {
  const [houseName, setHouseName] = useState("");
  const [collectionYear, setCollectionYear] = useState("");

  useEffect(() => {
    async function fetchHouseData() {
      try {
        const response = await fetch("/api/products/shows/1");
        const data = await response.json();

        setHouseName(data.house_name);
        setCollectionYear(data.collectionYear);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    }
    fetchHouseData();
  }, []); 

  return (
    <div className="app-container">
      <header>
        <div className="header-styling">
        <h1>{houseName}</h1>
        <h2>{collectionYear}</h2>
        </div>
      </header>
      
      <Routes>
        <Route path="/" element={<FashionHouse />} />
        <Route path="/products/:id" element={<ProductDetails />} />
        <Route path="/admin" element={<AdminView />} />
      </Routes>
    </div>
  )
}

export default App;
