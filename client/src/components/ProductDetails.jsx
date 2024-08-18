import React, { useEffect, useState } from "react";
import { useParams, useNavigate } from "react-router-dom";
import "./ProductDetails.css";

export default function ProductDetails() {
  const { id } = useParams(); 
  const navigate = useNavigate();
  const [product, setProduct] = useState(null);

  // Function to get prod based on id
  useEffect(() => {
    async function fetchProductData() {
      try {
        const response = await fetch(`/api/products/${id}`);
        const data = await response.json();
        setProduct(data);
      } catch (error) {
        console.error("Error fetching product data:", error);
      }
    }
    fetchProductData();
  }, [id]);

  // Function to navigate to the previous product
  const goToPrevious = () => {
    if (product && product.id > 1) {
      navigate(`/products/${product.id - 1}`);
    }
  };

  // Function to navigate to the next product
  const goToNext = () => {
    if (product) {
      navigate(`/products/${product.id + 1}`);
    }
  };

  return (
    <div className="product-details-container">
      <div className="back-link"><a href="/" className="back-link-a">Go back</a></div>
      {product ? (
        <div className="product-details">
          <div className="product-image"><img src={product.img_url} alt={product.name} /></div>
          <div className="product-info">
            <div className="product-name">{product.name}</div>
            <div className="product-description">{product.descr}</div>
          </div>
        </div>  ) 
      : (<p>Loading product details...</p>)
      }

      <div className="navigation-buttons">
        <button onClick={goToPrevious} disabled={product && product.id <= 1}>←</button>
        <button onClick={goToNext}>→</button>
      </div>

      <div className="inquiries-info">
        <p>Interested in the item?</p>
          <p>For Haute Couture item inquiries, please contact us at +33 (0)1 85 73 29 76 or at customerservice@schiaparelli.com</p>
      </div>
    </div>
  );
}