import React, { useState } from "react"
import ReviewTile from "./ReviewTile"
import ReviewForm from "./ReviewForm"

const PhotographerShow = (props) => {

  const reviewTiles = props.reviews.map((review) => {
    return (
      <ReviewTile
        key={review.id}
        title={review.title}
        body={review.body}
        rating={review.rating}
        created_at={review.created_at}
        username={review.user.username}
      />
    )
  })

  return (
    <div class="photographer-show">
    <div>
      <img>{props.profile_photo}</img>
      <p>{props.first_name} {props.last_name}</p>
      <p>Location: {props.location}</p>
      <p>Email: {props.email}</p>
      <p>Bio: {props.description}</p>
      </div>

    <div class="button">
      <ReviewForm 
        addNewReview = {props.addNewReview}
        reviewButton = {props.reviewButton}
      />
    </div>
      <div>
        {reviewTiles}
      </div>
    </div>
  )
}

export default PhotographerShow