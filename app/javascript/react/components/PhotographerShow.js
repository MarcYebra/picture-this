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
    <div className="section-show">
      <div className="show-color-block">
        <div className="container-show">
          <div className="content-section-show">
            <div className="title-show">
              <div className="content-show">
                <div className="show-box">
                  <div className="profile-photo"><img src={props.profile_photo} /></div>
                  <h1 className="name-show">{props.first_name} {props.last_name}</h1>
                    <div className="show-space">
                      <p className="for-inquiries">For inquiries</p>
                        <div className="email-show">{props.email}</div>
                    </div>
                      <div className="show-space">
                        <p className="location-show">Location </p>
                          <div className="location-show-props">{props.location} </div>
                      </div>
                        <div className="show-space">
                          <p className="bio-show">Bio</p>
                        <div className="bio-show-props">{props.description}</div>
                        </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="remove-color">
        <ReviewForm addNewReview = {props.addNewReview} reviewButton = {props.reviewButton} />
        {reviewTiles}
      </div>
    </div>
  )
}

export default PhotographerShow