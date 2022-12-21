import React, { useState, useEffect } from "react"
import PhotographerShow from "./PhotographerShow"

const PhotographerShowContainer = (props) => {
  const [photographer, setPhotographer] = useState({})
  const [reviews, setReviews] = useState([])
  const [signedIn, setSignedIn] = useState(false)

  let reviewButton = "hide"

  const photographerId = props.match.params.id
  
  const fetchPhotographer = async () => {
    try {
      const response = await fetch(`/api/v1/photographers/${photographerId}`)
        if (!response.ok) {
          const errorMessage = `${response.status} (${response.statusText})`
          const error = new Error(errorMessage)
          throw error 
        }
        const responseBody = await response.json()
        setPhotographer(responseBody)
        setReviews(responseBody.reviews)
        if (responseBody.current_user !== null) {
        setSignedIn(true)
        }
      } catch (err) {
    console.error(`Error in Fetch: ${err.message}`)
  }
}
  if (signedIn !== false) {
    reviewButton = 'show'
  }

  useEffect(() =>{ fetchPhotographer() } , [] )

  const addNewReview = async (payLoad) => {
    let body = new FormData()
    body.append("title", payLoad.title)
    body.append("body", payLoad.body)
    body.append("rating", payLoad.rating)
    body.append("photographer_id", photographerId)

    try {
      const response = await fetch(`/api/v1/photographers/${photographerId}/reviews`,  {
        method: "POST",
        credentials: "same-origin",
        body: body,
      })
      if (!response.ok) {
        const newError = new Error(`${response.status} ${response.statusText}`)
        throw newError;
      }
      const responseBody = await response.json()
      setReviews([...reviews, responseBody])
    } catch (err) {
      console.error(`Error in Fetch: ${err.message}`)
    }
  }
  
  return (
    <div>
    <PhotographerShow
      key={photographer.id}
      id={photographer.id}
      first_name={photographer.first_name}
      last_name = {photographer.last_name}
      email = {photographer.email}
      description = {photographer.description}
      category = {photographer.category}
      location = {photographer.location}
      profile_photo = {photographer.profile_photo}
      reviews={reviews}
      setReviews={setReviews}
      addNewReview={addNewReview}
      reviewButton = {reviewButton}
      params = {props.match.params}
    />
    </div>
  )
}


export default PhotographerShowContainer