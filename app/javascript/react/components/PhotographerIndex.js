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
        category = {photographer.category}
        location = {photographer.location}
        profile_photo = {photographer.profile_photo}
      />
    )
  })

return (
  <div>
    <div className='join-button'>
      <div className='ph-index-top-image'>
          <img src='https://picture-this-production.s3.amazonaws.com/Home/Photographer-Index.png' alt='create account banner image' />
      </div>
        <div className='join-container'>
          <div className='join-ph-roster'>Join our <div class='find-home'>talented</div><div>group of<div><div class='find-home'>photographers</div></div></div> </div>
        </div>
        <div className='cphb-container'>
          <a href='/photographers/new'  className='create-ph-button'>Create Account</a>
        </div>
        <div className='view-all-index'>
          <div className='a-v'>
            <h3 className='view-all-text-index' >View All</h3>
            <div className= 'arrow-img'>
              <img  src='https://picture-this-production.s3.amazonaws.com/Icons/arrow.png' alt='arrow' />
            </div>
          </div>
        </div>
    </div>
    <div className='photographer-tile'>
      {photographerTiles}
    </div> 
  </div>
  ) 
}

export default PhotographerIndex