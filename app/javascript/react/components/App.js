import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Photographers from './Photographer-Index/Photographers'
import PhotographerShowContainer from './Photographer-Show/PhotographerShowContainer'
import NewPhotographer from './NewPhotographer'
import About from './About'
import QuestionsIndex from './QuestionsIndex.js'
import Celebrity from './Category-Components/Celebrity'
import Engagement from './Category-Components/Engagement'
import Family from './Category-Components/Family'
import Fashion from './Category-Components/Fashion'
import Fitness from './Category-Components/Fitness'
import Food from './Category-Components/Food'
import Graduation from './Category-Components/Graduation'
import Pet from './Category-Components/Pet'
import Portrait from './Category-Components/Portrait'
import Sport from './Category-Components/Sport'
import Weddings from './Category-Components/Wedding'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/photographers" component={Photographers} />
        <Route exact path="/photographers/new" component={NewPhotographer} />
        <Route exact path="/photographers/:id" component={PhotographerShowContainer} />
        <Route exact path="/about" component={About} />
        <Route exact path="/questions" component={QuestionsIndex} />
        <Route exact path="/celebrity" component={Celebrity} />
        <Route exact path="/engagement" component={Engagement} />
        <Route exact path="/event" component={Event} />
        <Route exact path="/family" component={Family} />
        <Route exact path="/fashion" component={Fashion} />
        <Route exact path="/fitness" component={Fitness} />
        <Route exact path="/food" component={Food} />
        <Route exact path="/graduation" component={Graduation} />
        <Route exact path="/pet" component={Pet} />
        <Route exact path="/portrait" component={Portrait} />
        <Route exact path="/sport" component={Sport} />
        <Route exact path="/wedding" component={Weddings} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
