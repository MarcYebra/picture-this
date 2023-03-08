import React, { useState } from 'react'
import ErrorLists from '../../ErrorLists'
import _ from 'lodash'

const ReviewForm = (props) => {
  const [newReview, setNewReview] = useState({
    title: "",
    body: "",
    rating: ""
  })
  const [displayForm, setDisplayForm] = useState("hide")
  const [errors, setErrors] = useState({})

  const handleFormChange = (event) => {
    setNewReview({
      ...newReview,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const displayReviewForm = () => {
    if (displayForm === 'hide') {
      setDisplayForm('show')
    } else {
      setDisplayForm('hide') 
    }
  }

  const errorForBlankReview = () => {
    let submitErrors = {}
    const requiredFields = ["title", "body", "rating"]
    requiredFields.forEach ( field => {
      if (newReview[field].trim() === "") {
        submitErrors = {
        ...submitErrors,
        [field]: "can not be blank."
        }
      }
      })
      setErrors(submitErrors)
      return _.isEmpty(submitErrors)
    }
  
    const handleSubmitAddNewReview = (event) => {
      event.preventDefault()
      if (errorForBlankReview()){
        props.addNewReview(newReview)
        setNewReview({
          title: "",
          body: "",
          rating: "",
        }
        )
        setDisplayForm("hide")      
      }
    }

  return (
    <div>  
      <button className='review-form-button' type="button" onClick={displayReviewForm}>Write A Review</button>
        <form onSubmit={handleSubmitAddNewReview} className={`new-review ${displayForm}`} >
        <ErrorLists errors={errors} />
          <label htmlFor="title">Title*
            <input placeholder='Enter review title here' id="title" type="text" name="title" value={newReview.title} onChange={handleFormChange}/>
          </label> 
          <label htmlFor="body">Description*
            <textarea placeholder='Describe how your photo shoot went.' id="body" rows="4" type="text" name="body" value={newReview.body} onChange={handleFormChange}/>
          </label>  
          <label htmlFor="rating">Rating*
            <input placeholder='Out of 5' className='form-box' id="rating" type="number" max="5" min="1" name="rating" value={newReview.rating} onChange={handleFormChange}/>
          </label>
        <button className='review-form-submit-button'>Submit</button>
      </form>
    </div>
  )
}

export default ReviewForm