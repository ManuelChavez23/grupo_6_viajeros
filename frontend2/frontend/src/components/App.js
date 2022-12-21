import React from 'react';
import SideBar from './SideBar';
/* import ContentWrapper from './ContentWrapper'; */
function App() {
/*   const [destinys, setDesnitys] = useState([]);
  const [categorys, setCategorys] = useState({});

  
  

  useEffect(() => {
      fetch(`http://localhost:3001/api/products`)
          .then(response => response.json())
          .then(data => {
              const destinys = data.data
              setDesnitys(destinys)
              destinys.forEach(destiny => {
                  let categorysState = categorys;

                  if (categorysState[destiny.categorys.categoria]) {
                      categorysState[destiny.categorys.categoria] += 1;
                  } else {
                      categorysState[destiny.categorys.categoria] = 1;
                  }
                  setCategorys(categorysState)
              })
          })
  },[]) */

  return (
    <React.Fragment>
      	<div id="wrapper">
          <SideBar />
        </div>
    </React.Fragment>
  );
}

export default App;
