import React from "react";
import imagenFondoFilipinas from '../assets/images/filipinas3.jpeg';
import imagenFondoGrecia from '../assets/images/grecia1.jpg';
import imagenFondoEspana from '../assets/images/españa.jpeg';
import imagenFondoRusia from '../assets/images/rusia2.jpeg';
import imagenFondoMexico from '../assets/images/mexico.jpeg';
import imagenFondoTailandia from '../assets/images/tailandia.jpeg';

function GenresInDb() {
  return (
    <div className="col-lg-6 mb-4">
      <div className="card shadow mb-4">
        <div className="card-header py-3">
          <h5 className="m-0 font-weight-bold text-gray-800">
            Viajes destacados
          </h5>
        </div>
        <div className="card-body">
          <div className="row">
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow" >
              <img className="card-img" src={imagenFondoFilipinas}/>
              <div class="card-img-overlay">
                <div className="card-body">Filipinas</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={imagenFondoGrecia} />
              <div class="card-img-overlay">
                <div className="card-body">Grecia</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img" src={imagenFondoEspana} />
              <div class="card-img-overlay">
                <div className="card-body">España</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img" src={imagenFondoRusia} />
              <div class="card-img-overlay">
                <div className="card-body">Rusia</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img" src={imagenFondoMexico} />
              <div class="card-img-overlay">
                <div className="card-body">Mexico</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img" src={imagenFondoTailandia} />
              <div class="card-img-overlay">
                <div className="card-body">Tailandia</div>
              </div>
            </div>
            </div>
          </div> 
        </div>
      </div>


      <div className="card shadow mb-4">
        <div className="card-header py-3">
          <h5 className="m-0 font-weight-bold text-gray-800">
            Categorias
          </h5>
        </div>
        <div className="card-body">
          <div className="row">

          <div className="col-lg-6 mb-4">
              <div className="card bg-info text-white shadow">
                <div className="card-body">Portugal</div>
              </div>
            </div>
            
            <div className="col-lg-6 mb-4">
              <div className="card bg-info text-white shadow">
                <div className="card-body">Portugal</div>
              </div>
            </div>
            
    
      
          </div> 
        </div>
      </div>
    </div>
  );
}

export default GenresInDb;
