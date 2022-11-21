import React, { useState, useEffect } from 'react'
import PhotographerTile from './PhotographerTile'


const PhotographerIndex = (props) => {
  
  const [ photographers, setPhotographers ] = useState([])

  const getPhotographers = async () => {
    try {
      const response = await fetch("/api/v1/photographers")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setPhotographers(responseBody)
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  useEffect( () => { getPhotographers() }, [] )
  
  const photographerTiles = photographers.map(photographer => {
    return (
      <PhotographerTile
        key = {photographer.id}
        id = {photographer.id}
        first_name = {photographer.first_name}
        last_name = {photographer.last_name}
        email = {photographer.email}
        description = {photographer.description}
        location = {photographer.location}
        profile_photo = {photographer.profile_photo}
      />
    )
  })

return (
  <div className='photographer-index-background-color'>
    <h5>Photographers</h5>
      <div className='photographer-index-box' >
    <div className='grid-x grid-padding-x photographer-index'>
    {photographerTiles}
      </div>
    </div>
  </div>
  ) 
}

export default PhotographerIndex