import React, { useState } from 'react'
import { Redirect } from 'react-router-dom'

const NewPhotographer = (props) => {
  const [redirect, setRedirect] = useState(false)
  const [newPhotographer, setNewPhotographer] = useState({
    first_name: "",
    last_name: "", 
    email: "",
    description: "",
    location: "",
  })

  const locations = ['', 'Allston', 'Beacon Hill', 'Back Bay', 'Bay Village', 'Beacon Hill', 'Brighton', 'Cambridge', 'Charlestown', 'Chinatown-Leather District', 'Dorchester', 'Downtown', 'East Boston', 'Fenway-Kenmore', 'Hyde Park', 'Jamaica Plain', 'Mid-Dorchester', 'North End', 'Roslindale', 'Roxbury', 'South Boston', 'South End', 'West End', 'West Roxbury', 'Wharf District' ]

  const locationOptions = locations.map(location => {
      return (
        <option key={location} value={location}>
          {location}
        </option>
      )
    })

  const categories = ['', 'Fashion', 'Portraits', 'Graduation', 'Family', 'Pets', 'Sports', 'Engagement', 'Food', 'Event', 'Wedding', 'Fitness', 'Influencer/Celebrity']

  const categoryOptions = categories.map(category => {
    return (
      <option key={category} value={category}>
      {category}
      </option>
    )
  })

  const handleInputChange = (event) => {
    setNewPhotographer({
      ...newPhotographer,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

const onNewPhotographerSubmitted = (photographer) => {
  fetch(`/api/v1/photographers` , {
    method: 'POST',
    credentials: 'same-origin',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(photographer)
  })
  .then(response => {
    if(response.ok) {
      return response
    } else {
      let errorMessage = `${response.status} (${response.statusText})` ,
      error = new Error(errorMessage)
      throw(error)
    }
  })
  .then(response => response.json())
  .then(photographerBody => {
    if (photographerBody.photographer) {
      setRedirect(photographerBody.photographer.id)
    } else if (photographerBody.error) {
      setErrorList(photographerBody.error)
    }
  })
  .catch(error => console.error(`Error in fetch: ${error.message}`))
}

  if (redirect !== null) {
    return <Redirect to={`/photographers/${redirect}`} />
  }

  return (
      <div className='new-photographer-background'>
        <div className='new-photographer-page'>
          <h2 className='new-photographer-title'>New Photographer</h2>
            <p className='new-photographer-description'>Are you a photographer? Create an account so people can book you!</p>
            <form onSubmit={onNewPhotographerSubmitted}>
              <label>
                <div className='new-photographer-text'>First Name</div>
                  <input type="text" name="first_name" onChange={handleInputChange} value={newPhotographer.first_name}/>
              </label>
              <label>
                <div className='new-photographer-text'>Last Name</div>
                  <input type="text" name="last_name" onChange={handleInputChange} value={newPhotographer.last_name}/>
              </label>
              <label>
                <div className='new-photographer-text'>Email</div>
                  <input  type="text" name="email" onChange={handleInputChange} value={newPhotographer.email}/>
              </label>
              <label>
                <div className='new-photographer-text'>Bio</div>
                  <input type="text" name="description" onChange={handleInputChange} value={newPhotographer.description}/>
              </label>
              <label>
                <div className='new-photographer-text'>Category</div>
                  <select type="text" name="category" onChange={handleInputChange} value={newPhotographer.category}>
                    {categoryOptions}
                  </select>
              </label>
              <label>
                <div className='new-photographer-text'>Location</div>
                  <select type="text" name="location" onChange={handleInputChange} value={newPhotographer.location}>
                    {locationOptions}
                  </select> 
              </label>
            <input className=' button photographer' type="submit" value="Create Account" />
          </form>
        </div>
      </div>
  )
}

export default NewPhotographer