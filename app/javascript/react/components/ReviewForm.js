import React, { useState } from 'react'
import ErrorLists from './ErrorLists'
import _ from 'lodash'

const ReviewForm = (props) => {
  const [newReview, setNewReview] = useState({
    title: "",
    body: "",
    rating: ""
  })

  const [errors, setErrors] = useState({})
  const [displayForm, setDisplayForm] = useState("hide")
  const [files, setFiles] = useState({})

  const displayReviewForm = () => {
    if (displayForm === 'hide') {
      setDisplayForm('show')
    } else {
      setDisplayForm('hide') 
    }
  }

  const handleFormChange = (event) => {
    setNewReview({
      ...newReview,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

    const validForSubmission = () => {
      let submitErrors = {}
      const requiredFields = ["title", "body", "rating"]
      requiredFields.forEach ( field => {
        if (newReview[field].trim() === "") {
          submitErrors = {
            ...submitErrors,
            [field]: "is blank"
          }
        }
      })
      setErrors(submitErrors)
      return _.isEmpty(submitErrors)
    }
  
    const handleSubmitAddNewReview = (event) => {
      event.preventDefault()
      if (validForSubmission()){
        props.addNewReview(newReview)
        setNewReview({
          title: "",
          body: "",
          rating: "",
        }
        )
        setDisplayForm("hide")
        setFiles([])
      }
    }

  return (
    <div>
      <button type="button" onClick={displayReviewForm}>Review</button>
      <form onSubmit={handleSubmitAddNewReview} className={`new-review ${displayForm}`}>
      <ErrorLists errors={errors} />

        <label htmlFor="title">Title:
          <input id="title" type="text" name="title" value={newReview.title} onChange={handleFormChange}/>
        </label>

        <label htmlFor="body">Description:
          <textarea id="body" rows="4" type="text" name="body" value={newReview.body} onChange={handleFormChange}/>
        </label>

        <label htmlFor="rating">Rating:
          <input id="rating" type="number" name="rating" value={newReview.rating} onChange={handleFormChange}/>
        </label>
      
        <button>Submit Review</button>
      </form>
    </div>
  )
}

export default ReviewForm