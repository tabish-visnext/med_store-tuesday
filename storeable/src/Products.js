import React from 'react';

function Products(props){
    return(
        <div>
            {props.products.map((product) => {
                return (
                    <div className="myclass" key={product.id}>
                        <h2>{product.title}</h2>
                        <h2>{product.price}</h2>
                    </div>
                )
            }) }

            
        </div>
    )
}
export default Products;