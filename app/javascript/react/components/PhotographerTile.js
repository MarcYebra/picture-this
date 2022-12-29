import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
      <div className='photographer-tile-box' >
        <Link to={`/photographers/${props.id}`} >  
          <img src={props.profile_photo} className='profile-photo-index' />
            <p className='photographer-tile-fullname'>{props.first_name} {props.last_name}</p>  
            <p className='photographer-tile-category'>{props.category} </p>
        </Link>
      </div>
  )
}

export default PhotographerTile
