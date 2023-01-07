import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
      <div className='photographer-tile-container' >
        <Link to={`/photographers/${props.id}`} >  
          <img src={props.profile_photo} className='photographer-tile-profile-pic' />
          <p className='photographer-tile-full-name'>{props.first_name} {props.last_name}</p>  
          <p className='photographer-tile-category'>{props.category} </p>
        </Link>
      </div>
  )
}

export default PhotographerTile
