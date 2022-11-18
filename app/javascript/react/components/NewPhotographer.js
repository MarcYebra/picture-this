import React, { useState } from 'react';
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

  const locations = ['','Allston', 'Beacon Hill', 'Back Bay', 'Bay Village', 'Beacon Hill', 'Brighton', 'Cambridge', 'Charlestown', 'Chinatown-Leather District', 'Dorchester', 'Downtown', 'East Boston', 'Fenway-Kenmore', 'Hyde Park', 'Jamaica Plain', 'Mattapan', 'Mid-Dorchester', 'Mission Hill', 'North End', 'Roslindale', 'Roxbury', 'South Boston', 'South End', 'West End', 'West Roxbury', 'Wharf District' ]

  const locationOptions = locations.map(location => {
    return (
      <option key={location} value={location}>
        {location}
      </option>
    )
  })

  const handleInputChange = (event) => {
    setNewPhotographer({
      ...newPhotographer,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const handleSubmitNewPhotographer = async (event) => {
    event.preventDefault()
    try {
      const response = await fetch('/api/v1/photographers', {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json" 
        },
        body: JSON.stringify({ photographer: newPhotographer })
      })
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }

      const photographerBody = await response.json()
  
      if (photographerBody.photographer) {
        console.log("Added Successfully!")
        setRedirect(photographerBody.photographer.id)
      } else if (photographerBody.error[0] === "You must be a photographer") {
        alert("You must be a photographer")
      }  
      
    } catch(err) {
      console.error(`Error in fetch: ${err.message}`)
    }
    
  }

  if (redirect) {
    return <Redirect to={`/photographers/${redirect}`} />
  }

  return (
    <div>
      <h1>Add New Photographer</h1>
      <form onSubmit={handleSubmitNewPhotographer}>
        <label>
          First Name:
          <input type="text" name="first_name" onChange={handleInputChange} value={newPhotographer.first_name}/>
        </label>

        <label>
          Last Name:
          <input type="text" name="last_name" onChange={handleInputChange} value={newPhotographer.last_name}/>
        </label>

        <label>
          Email:
          <input type="text" name="email" onChange={handleInputChange} value={newPhotographer.email}/>
        </label>

        <label>
          Bio:
          <input type="text" name="description" onChange={handleInputChange} value={newPhotographer.description}/>
        </label>

        <label>
          Location:
          <select type="text" name="location" onChange={handleInputChange} value={newPhotographer.location}>
            {locationOptions}
            </select> 
        </label>

        <input type="submit" value="Create Account" />
      </form>
    </div>    
  )
}

export default NewPhotographer