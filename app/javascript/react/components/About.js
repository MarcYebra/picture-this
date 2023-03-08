import React from 'react'

const About = () => {
  return (
    <div className='about-grid'>
      <div className='about-info-wrapper'>
        <h1 className='about-header'>About</h1>
          <p className='about-developer-description'>Hi, my name is Marc Yebra and I'm the engineer behind this web application. Before making 
          the decision of becoming a full-stack developer,
            I spent the previous five years running my own photography business. I understand the difficulties photographers face when trying to grow a client list/network.
            Fortunately, I had the pleasure of working with many clients which allowed me to understand how challenging it can be for clients to find the right photographer
            for their projects or events. Combing the struggles from both parties, Picture This was born.
          </p>
          <p className='about-picture-this-description'><span style={{fontWeight: 'bold'}}>Picture This</span> makes finding and booking photographers more convenient for clients and reduces planning time and costs compared to the 
          conventional ways of searching for photographers. 
          </p>
        </div>
      <img className='marc-resize' src='https://picture-this-production.s3.amazonaws.com/Marc/about.png' />
    </div>
  )
}

export default About