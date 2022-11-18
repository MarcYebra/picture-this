import React, { useState } from 'react';
import { Redirect } from 'react-router-dom'

const NewPhotographer = (props) => {
  const [redirect, setRedirect] = useState(null)
  const [newPhotographer, setNewPhotographer] = useState({
    first_name: "",
    last_name: "",
    email: "",
    description: "",
    location: "",
    profile_photo: ""
  })

  const categories = ['','Family', 'Fashion', 'Influencer', 'Portrait', 'Wedding & Engagement', 'Pets' ]

  const categoriesOptions = categories.map(category => {
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
        body: JSON.stringify({ ride: newPhotographer })
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
      } else if (photographerBody.error[0] === "Only admins can access this page") {
        alert("Only admins can access this page")
      }  
      
    } catch(err) {
      console.error(`Error in fetch: ${err.message}`)
    }
    
  }

  if (redirect !== null) {
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
            {categoriesOptions}
            </select> 
        </label>

        <label>
          Profile Picture:
          <input type="text" name="profile_photo" onChange={handleInputChange} value={newPhotographer.profile_photo}/>
        </label>

        <input type="submit" value="Create" />
      </form>
    </div>    
  )
}

export default NewPhotographer