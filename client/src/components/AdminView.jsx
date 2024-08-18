import React from 'react';
import './AdminView.css';

export default function AdminView() {
  return (

    // Visual rep of what I want the admin view to look like (ish)

<form>
    <div class name="label1"><h2>Add show recording</h2></div>
  <label>Video URL <input type="text" name="vidUrl" /></label>
  <input type="submit" value="Submit" />

  <div class name="label2"><h2>Add new product</h2></div>
  <label>Product name<input type="text" name="prodName" /></label>

  <label>Image URL<input type="text" name="imgUrl" /></label>

  <label>Product description<textarea name="prodDescr"></textarea></label>
  <input type="submit" value="Submit" />
</form>

  )
}
