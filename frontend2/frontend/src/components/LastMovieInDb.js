import React from 'react';
import imagenFondo from '../assets/images/albania.jpg';

function LastMovieInDb(){
    return(
        <div className="col-lg-6 mb-4">
            <div className="card shadow mb-4">
                <div className="card-header py-3">
                    <h5 className="m-0 font-weight-bold text-gray-800">Ultimo destino cargado</h5>
                </div>
                <div className="card-body">
                    <div className="text-center">
                        <img className="img-fluid px-3 px-sm-4 mt-3 mb-4 " style={{width: 40 +'rem'}} src={imagenFondo} alt=" Albania "/>
                    </div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, consequatur explicabo officia inventore libero veritatis iure voluptate reiciendis a magnam voluptatum?</p>
                    <a className="btn btn-warning" target="_blank" rel="nofollow" href="/">Ver detalle destino</a>
                </div>
            </div>
        </div>
    )
}

export default LastMovieInDb;
