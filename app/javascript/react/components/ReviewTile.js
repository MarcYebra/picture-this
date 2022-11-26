import React from 'react'


const ReviewTile = (props) => {
  
  return (
    <div className='tile-page'>
      <div className='review-display-tile'>
        <p className='username-tile'>{props.username} | Rating:  {props.rating} / 5 </p>
        <p className='title-tile'>{props.title}</p>
        <div className='review-show-space' >
        </div>
        <p className='review-tile'>"{props.body}"</p>
        <p className='timestamp-tile'>{props.created_at} </p>
      </div>
    </div>
  )
}

export default ReviewTile