import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
    <div className="photographer-tile-component">
        <div className="media-element">
          <Link to={`/photographers/${props.id}`} >  
            <p>Name: {props.first_name} {props.last_name}</p>
            <p>{props.email}</p>
            <p>Bio: {props.description}</p>
            <p>Location: {props.location}</p>
        </Link>
      </div>
    </div>
  )
}

export default PhotographerTile
