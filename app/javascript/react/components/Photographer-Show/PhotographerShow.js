import React, { useState } from "react"
import ReviewTile from "./Reviews/ReviewTile"
import ReviewForm from "./Reviews/ReviewForm"

const PhotographerShow = (props) => {
  const reviewTiles = props.reviews.map((review) => {
    return (
      <ReviewTile
        key={review.id}
        id = {review.id}
        title={review.title}
        body={review.body}
        rating={review.rating}
        created_at={review.created_at}
        username={review.user.username}
        params = {props.params}
        setReviews={props.setReviews}
      />
    )
  })

  return (
    <div className='photographer-show-body'>
      <div className='photographer-show-wrapper'>
        <div className='photographer-show-profile-pic'>
          <img src={props.profile_photo} />
        </div>
          <div className='photographer-show-info'>
            <h2 className='photographer-show-full-name'>{props.first_name} {props.last_name}</h2>
          <div className='photographer-show-category'>{props.category}</div>
          <div className='photographer-show-location'>
            <div className='photographer-show-location-icon'>
              <img src='https://picture-this-production.s3.amazonaws.com/Icons/location-icon.png' alt='location icon' />
            </div>
            {props.location}
          </div>
        <div className='photographer-show-mail'>
        <div className='photographer-show-mail-icon'>
          <img src='https://picture-this-production.s3.amazonaws.com/Icons/mail-show.png' alt='email icon' />
        </div>
        {props.email} 
        </div>
        <div className='photographer-show-description'>{props.description}</div>  
        </div>    
      </div>

      <div className='review-show-button-container'>
        <h3 className='review-show-title'>Ratings & Reviews</h3>
          <ReviewForm addNewReview = {props.addNewReview} reviewButton = {props.reviewButton} />
      </div>
      <div className='review-show-container'>
      {reviewTiles}
      </div>
    </div>
  )
}

export default PhotographerShow