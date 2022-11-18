import React from "react"
import { Link } from 'react-router-dom'

const PhotographerTile = (props) => {
  return (
    <div className="grid-x grid-margin-x">
      <Link to={`/photographers/${props.id}`} >
      <div className='small-12 medium-8 large-8 callout'>
        <div className='grid-x'>
          <div className='small-8 medium-8 large-8'>
            <div className="grid-x">
              <div>
                  <p className="cell small-4 text-left">First Name: {props.first_name}</p>
                  <p className="cell small-4 text-left">Last Name: {props.last_name}</p>
                  <p className="cell small-4 text-left">Email: {props.email}</p>
                  <p className="cell small-4 text-left">Description: {props.description}</p>
                  <p className="cell small-4 text-left">Location: {props.location}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      </Link>
    </div>
  )
}

export default PhotographerTile