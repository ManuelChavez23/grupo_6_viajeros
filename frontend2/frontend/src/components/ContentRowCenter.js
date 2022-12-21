import React from 'react';
import LastMovieInDb from './LastMovieInDb';
import GenresInDb from './GenresInDb';

function ContentRowCenter(props){

    console.log(props.destinys);
    return (
        <div className="row">
            
            {/*<!-- Last Movie in DB -->*/}
            <LastMovieInDb 
                destinys={props.destinys}
            />
            {/*<!-- End content row last movie in Data Base -->*/}

            {/*<!-- Genres in DB -->*/}
            <GenresInDb />
            {/* props.destinys > 0 && props.destinys.map() */}

        </div>
    )
}

export default ContentRowCenter;