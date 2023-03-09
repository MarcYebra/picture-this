import React from 'react'
import {Link} from 'react-router-dom'
import CategoryBar from '../Photographer-Index/CategoryBar'

const Portrait = (props) => {

  return (
    <div>
        <img src='https://picture-this-production.s3.amazonaws.com/Photographer-Index-Banner-Images/Photographer-Index-Portrait.jpg' alt='portrait photographers' />

        <CategoryBar />
    </div>
  )
}

export default Portrait 