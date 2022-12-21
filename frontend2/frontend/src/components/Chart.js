import React from 'react';
import ChartRow from './ChartRow';

let tableRowsData = [
    {
        Title: 'Mirabel Lindwasser',
        Length: 'Brasil, Albania',
        Rating: '2',
        Categories: ['Excursiones','Todo Incluido'],
        Awards: 2
    },
    {
        Title: 'Jennie Brownbill',
        Length: 'Alemania, Italia, Japon',
        Rating: '3',
        Categories: ['Excursiones','Todo Incluido'],
        Awards: 1
    },
    
]




function Chart (){
   /* let lastUsers1= props.users[props.users.length - 1]
    let lastUsers2= props.users[props.users.length - 2]*/
   

  
    return (
        /* <!-- DataTales Example --> */
        <div className="card shadow mb-4">
            <div className="card-body">
                <div className="table-responsive">
                    <table className="table table-bordered" id="dataTable" width="100%" cellSpacing="0">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Destinos elegidos</th>
                                <th>Cantidad</th>
                                <th>Extras incluidos</th>
                                <th>Promos</th>
                            </tr>
                        </thead>
                        {/* <tfoot>
                            <tr>
                                <th>Usuario</th>
                                <th>Destinos elegidos</th>
                                <th>Cantidad</th>
                                <th>Extras incluidos</th>
                                <th>Promos</th>
                            </tr>
                        </tfoot> */}
                        <tbody>
                            {
                            tableRowsData.map( ( row , i) => {
                                
                                return <ChartRow { ...row} key={i}/>
                            })
                            }

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    )
}

export default Chart;