import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
    <div className="tile-page">
      <div className="photographer-tile-box" >
          <Link to={`/photographers/${props.id}`} >  
          <div className="padding-tile"></div>
          <div className="info-photo-tile">
            <p className="firstname-lastname">{props.first_name}</p>
  
            <img src={props.profile_photo} className="profile-photo-index" />
            
            <p className="firstname-lastname">{props.last_name}</p>
            <p>{props.category} </p>
          </div>
          <div className="padding-tile-bottom"></div>
        </Link>
      </div>
    </div>
  )
}

export default PhotographerTile
