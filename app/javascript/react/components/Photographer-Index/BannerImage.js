import React from 'react'

const BannerImage = (props) => {
  return (
    <div className='photographer-index-sign-up-button'>
      <div className='photographer-index-image-banner'>
        <img src='https://picture-this-production.s3.amazonaws.com/Home/Photographer-Index.png' alt='create account' />
      </div>
        <div className='photographer-index-join-container'>
          <div className='photographer-index-image-banner-title'>Join our <i>talented</i><br/>group of <i><br/>photographers</i></div>
        </div> 
        <div className='photographer-index-create-account-container'>
          <a href='/photographers/new'  className='photographer-index-create-account-button'>Create Account</a>
        </div>
    </div>
  )
}

export default BannerImage 