import './App.css';
import axios from 'axios';
import Products from './Products';
import {useEffect, useState} from 'react';

const API_URL = "http://127.0.0.1:3000/api/v1/products"

function getApiData(){
  return axios.get(API_URL).then((response) => response.data)
}


function App() {
  const [products, setBooks] = useState([])

  useEffect(() => {
    let mounted = true
    getApiData().then((items) => {
      if(mounted){
        setBooks(items)
      }
    })
    return () => (mounted=false)
  }, [])
  return (
    <div className="App">
      <h1>Hello</h1>
      <Products products={products}>
      </Products>
        
    </div>
  );
}

export default App;
