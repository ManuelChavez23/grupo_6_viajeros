import React from 'react';
import SmallCard from './SmallCard';

/*  Cada set de datos es un objeto literal */

/* <!-- Movies in DB --> */

let Productos = {
    title: 'Total de productos',
    color: 'primary', 
    cuantity: 49,
    icon: 'fa-clipboard-list'
}

/* <!-- Total awards --> */

let Usuarios = {
    title:'Total de usuarios', 
    color:'success', 
    cuantity: '21',
    icon:'fa-user-check',
}

/* <!-- Actors quantity --> */

let Categorias = {
    title:'Total de categorias',
    color:'warning',
    cuantity:'2',
    icon:'fa-award'
}

let cartProps = [Productos, Usuarios, Categorias];

function ContentRowMovies(){
    return (
    
        <div className="row">
            
            {cartProps.map( (movie, i) => {

                return <SmallCard {...movie} key={i}/>
            
            })}

        </div>
    )
}

export default ContentRowMovies;