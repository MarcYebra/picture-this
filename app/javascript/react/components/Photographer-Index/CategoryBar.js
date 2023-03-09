import React from 'react'
import {Link} from 'react-router-dom'

const CategoryBar = (props) => {

  return (
    <div>
      <div className='categories-container'>
        <Link to='/photographers'><div className='category-button'>View All</div></Link>  
        <Link to='/celebrity'><div className='category-button'>Celebrity</div></Link>  
        <Link to='/engagement'><div className='category-button'>Engagement</div></Link>  
        <Link to='/event'><div className='category-button'>Event</div></Link>  
        <Link to='/family'><div className='category-button'>Family</div></Link>  
        <Link to='/fashion'><div className='category-button'>Fashion</div></Link>  
        <Link to='/fitness'><div className='category-button'>Fitness</div></Link>  
        <Link to='/food'><div className='category-button'>Food</div></Link>  
        <Link to='/graduation'><div className='category-button'>Graduation</div></Link>  
        <Link to='/pet'><div className='category-button'>Pet</div></Link>  
        <Link to='/portrait'><div className='category-button'>Portrait</div></Link>  
        <Link to='/sport'><div className='category-button'>Sport</div></Link>  
        <Link to='/wedding'><div className='category-button'>Wedding</div></Link>  
      </div>
    </div>
  )
}

export default CategoryBar

