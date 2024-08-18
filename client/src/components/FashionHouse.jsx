import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import "./FashionHouse.css";

export default function FashionHouse() {
  const [vidUrl, setVidUrl] = useState("");
  const [products, setProducts] = useState([]);
  const [about, setAbout] = useState("");
  const [creativeDir, setCreativeDir] = useState("");
  const navigate = useNavigate();

  useEffect(() => {
    async function fetchData() {
      try {
        // For the show vid and the abt the show + creative dir who wrote it
        const showResponse = await fetch("/api/products/shows/1");
        const showData = await showResponse.json();
        setVidUrl(showData.vid_url);
        setAbout(showData.about);
        setCreativeDir(showData.creative_dir);

        // For the products
        const productsResponse = await fetch("/api/products/shows/1");
        const productsData = await productsResponse.json();
        setProducts(productsData.products);

      } catch (error) {
        console.error("Error fetching data:", error);
      }
    }
    fetchData();
  }, []);

  // Navigate to ProductDetails page with the product ID
  const handleImageClick = (id) => {
    navigate(`/products/${id}`);
  };

  return (
    // VIDEO SECTION
    <div className="header-editor">
      <section>
        <h2>Watch the show</h2>
        {
        vidUrl 
        ? (<video controls><source src={vidUrl} type="video/mp4" />Your browser does not support the video format.</video>) 
        : (<p>No video available.</p>)}
      </section>

      {/* IMG CAROUSEL SECTION */}
      <section>
        <h2>Browse the collection</h2>
        <div className="image-container">
          {
          products.length > 0 
          // Check if there are products based on length, if yes, shew products (pic index, img_url from prods) and if no, show message 
          ? (products.map((product, index) => (<img key={index} src={product.img_url} alt={`Product ${index + 1}`}onClick={() => handleImageClick(product.id)} style={{ cursor: "pointer" }}/>))) 
          : (<p>No images available.</p>)}
        </div>
      </section>

      <section>
        <h2>The collection explained</h2>
        <p>{about || "There is no further information about the collection available at this moment."}</p>
        <p><strong>{creativeDir}</strong></p>
      </section>
    </div>
  );
}