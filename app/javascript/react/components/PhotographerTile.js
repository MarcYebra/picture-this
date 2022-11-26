import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
    <div>
      <div className="photographer-tile-box" >
          <Link to={`/photographers/${props.id}`} >  
          <div className="padding-tile"></div>
          <div className="info-photo-tile">
            <p className="firstname-lastname">{props.first_name} {props.last_name}</p>
            <p className="profileimagegoeshere">(profile image goes here)</p>
          </div>
          <div className="padding-tile-bottom"></div>
        </Link>
      </div>
    </div>
  )
}

export default PhotographerTile
