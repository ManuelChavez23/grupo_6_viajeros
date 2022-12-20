import React, { useState, useEffect } from 'react';
import SmallCard from './SmallCard';
/*  Cada set de datos es un objeto literal */

/* <!-- Movies in DB --> */



function ContentRowMovies(props){
    let Productos = {
        title: 'Total de productos',
        color: 'primary', 
        cuantity: props.destinys.length ? props.destinys.length : 0,
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
console.log(props.destinys);
    return (
        <div className="row">
            
            {cartProps.map( (destinys, i) => {

                return <SmallCard {
                    ...destinys
                } key={i}/>
            
            })}

        </div>
    )
}

export default ContentRowMovies;