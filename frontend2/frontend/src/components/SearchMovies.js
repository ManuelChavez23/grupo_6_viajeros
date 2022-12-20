import React, { useState, useRef } from 'react';

/* import noPoster from '../assets/images/404.jpg';
 */
function SearchMovies(props){

	const [keyword, setKeyword] = useState('');
	const busqueda = useRef(null)



	// Credenciales de API
	/* const apiKey = 'c53f759'; ?s=${keyword}&apikey=${apikey} {
				/method: 'GET',
				headers: new Headers({ 'Content-type': 'application/json' }),
				mode: 'no-cors'
			}http://www.omdbapi.com/ http://localhost:3001/api/products/?i=tt3896198&=${apikey}// Intenta poner cualquier cosa antes para probar*/
	/*const apikey ='ec314a36'``*/

	

	const handleSubmit = (e) => {
		e.preventDefault()

		const inputValue = busqueda.current.value;

		setKeyword(inputValue);
	}



	return (
		<div className="container-fluid">
			{
				/*apiKey !== '' ? */
				<>
					<div className="row my-4">
						<div className="col-12 col-md-6">
							{/* Buscador */}
							<form method="GET" onSubmit={handleSubmit}>
								<div className="form-group">
									<label htmlFor="">Buscar por título:</label>
									<input ref={busqueda} type="text" className="form-control" />
								</div>
								<button className="btn btn-info" type="submit">Search</button>
							</form>
						</div>
					</div>
					<div className="row">
						<div className="col-12">
							<h2>Destinos para la palabra: {keyword}</h2>
						</div>
						{/* Listado de películas */}
						{
							props.destinys.length > 0 && props.destinys.map((destiny, i) => {
								return (
									<div className="col-sm-6 col-md-3 my-4" key={i}>
										<div className="card shadow mb-4">
											<div className="card-header py-3">
												<h5 className="m-0 font-weight-bold text-gray-800">{destiny.name}</h5>
											</div>
											<div className="card-body">
												<div className="text-center">
													<img 
														className="img-fluid px-3 px-sm-4 mt-3 mb-4" 
														src={'http://localhost:3001/img/' + destiny.img}
														
														alt="" 
														style={{ width: '90%', height: '400px', objectFit: 'cover' }} 
													/>
												</div>
												<p>{destiny.price}</p>
											</div>
										</div>
									</div>
								)
							})
						}
					</div>
					{ props.destinys.length === 0 && <div className="alert alert-warning text-center">No se encontraron películas</div>}
				</>
				/* :
				<div className="alert alert-danger text-center my-4 fs-2">Eyyyy... ¿PUSISTE TU APIKEY?</div> */
			}
		</div>
	)
}

export default SearchMovies;
