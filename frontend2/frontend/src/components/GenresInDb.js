import React from "react";

function GenresInDb(props) {
  let nacional = props.total.length > 0 ? props.total[0] : { nombre: "", cantidad: "" }
 let internacional = props.total.length > 0 ? props.total[1] : { nombre: "", cantidad: "" }
 let portugal= props.destinys.length > 0 ? props.destinys[23] : {name:"", img:""}
 let tailandia= props.destinys.length > 0 ? props.destinys[45] : {name:"", img:""}
 let indonesia= props.destinys.length > 0 ? props.destinys[14] : {name:"", img:""}
 let argentina= props.destinys.length > 0 ? props.destinys[21] : {name:"", img:""}
  /*let china= props.destinys.length > 0 ? props.destinys[49] : {name:"", img:""}
 let albania= props.destinys.length > 0 ? props.destinys[44] : {name:"", img:""} */
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
                <img className="card-img" src={'http://localhost:3001/img/' + portugal.img} />
                <div class="card-img-overlay">
                  <div className="card-body">{portugal.name}</div>
                </div>
              </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={'http://localhost:3001/img/' + tailandia.img} />
              <div class="card-img-overlay">
                <div className="card-body">{tailandia.name}</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={'http://localhost:3001/img/' + indonesia.img}  />
              <div class="card-img-overlay">
                <div className="card-body">{indonesia.name}</div>
              </div>
            </div>
            </div>
            <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={'http://localhost:3001/img/' + argentina.img}/>
              <div class="card-img-overlay">
                <div className="card-body">{argentina.name}</div>
              </div>
            </div>
            </div>
              {/*<div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={'http://localhost:3001/img/' + china.img} />
              <div class="card-img-overlay">
                <div className="card-body">{china.name}</div>
              </div>
            </div>
            </div>
           <div className="col-lg-6 mb-4">
              <div className="card bg-dark text-white shadow">
              <img className="card-img"  src={'http://localhost:3001/img/' + albania.img} />
              <div class="card-img-overlay">
                <div className="card-body">{albania.name}</div>
              </div>
            </div>
            </div> */}
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



            <div className="col-lg-6 mb-4 categorias" >
              <div className="card bg-info text-white shadow">
                <div className="card-body">{nacional.nombre}
                  {<p>Cantidad : {nacional.cantidad}</p>}</div>

              </div>
            </div>

            <div className="col-lg-6 mb-4">
              <div className="card bg-info text-white shadow">
                <div className="card-body">{internacional.nombre}
                  <p>Cantidad : {internacional.cantidad}</p></div>
              </div>
            </div>




          </div>

        </div>

      </div>

    </div>
  );
}

export default GenresInDb;
