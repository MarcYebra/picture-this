import React from 'react'
import {Link} from 'react-router-dom'

const BannerImage = (props) => {
  return (
    <>
    <div className='photographer-index-sign-up-button'>
      <div className='photographer-index-image-banner'>
        <img src='https://picture-this-production.s3.amazonaws.com/Photographer-Index-Banner-Images/Photographer-Index-Photographers.png' alt='create account' />
      </div>
        <div className='photographer-index-join-container'>
          <div className='photographer-index-image-banner-title'>Join our <i>talented</i><br/>group of <i><br/>photographers</i></div>
        </div> 
        <div className='photographer-index-create-account-container'>
          <Link to='/photographers/new' className='photographer-index-create-account-button'>Create Account</Link>
        </div>
    </div>
    <div className='banner-image-portrait-photographers'>
    <Link to='/photographers' >
      <img src='https://picture-this-production.s3.amazonaws.com/Photographer-Index-Banner-Images/Photographer-Index-Portrait.jpg' alt='portrait photographers' />
    </Link>
    </div>
    </>
  )
}

export default BannerImage 