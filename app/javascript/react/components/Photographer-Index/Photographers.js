import React, { useState, useEffect } from 'react'
import PhotographerTile from './PhotographerTile'
import BannerImage from './BannerImage'

const Photographers = (props) => {
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
        category = {photographer.category}
        location = {photographer.location}
        profile_photo = {photographer.profile_photo}
      />
    )
  })

return (
  <div>
    <BannerImage />
    <div className='photographer-index-view-all'>
      <div className='photographer-index-view-all-display'>
        <h3 className='photographer-index-view-all-text' >View All</h3>
          <div className= 'photographer-index-arrow-img'>
            <img  src='https://picture-this-production.s3.amazonaws.com/Icons/arrow.png' alt='arrow right' />
          </div>
        </div>
      </div>
    <div className='photographer-index-tiles'>
      {photographerTiles}
    </div> 
  </div>
  ) 
}

export default Photographers