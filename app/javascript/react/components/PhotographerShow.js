import React, { useState } from "react"
import ReviewTile from "./ReviewTile"
import ReviewForm from "./ReviewForm"

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
    <div className='show-body'>
    <div className='show-wrapper'>
      <div className='profilepic-show'>
        <img src={props.profile_photo} />
      </div>
      <div className='photographer-info-show'>
        <h2 className='fullname-show'>{props.first_name} {props.last_name}</h2>
        <div className='category-show'>{props.category}</div>
        <div className='location-show'>
        <div className='location-icon'><img src='https://picture-this-production.s3.amazonaws.com/Icons/location-icon.png' alt='location icon' /></div>
          {props.location}
        </div>
        <div className='mail-show'>
        <div className='mail-icon'><img src='https://picture-this-production.s3.amazonaws.com/Icons/mail-show.png' alt='email icon' /></div>
          {props.email} 
        </div>
        <div className='photographer-description-show'>{props.description}</div>  
        </div>    
      </div>

    {/* <div className='portfolio-show'>
      *PORTFOLIO IMAGES*
    </div> */}

      <div className='review-button-container'>
        <h3 className='rare-photographer-show'>Ratings & Reviews</h3>
        <div className='review-button'>
          <ReviewForm addNewReview = {props.addNewReview} reviewButton = {props.reviewButton} />
        </div>
      </div>
      <div className='review-show-container'>
      {reviewTiles}
      </div>
    </div>
  )
}

export default PhotographerShow