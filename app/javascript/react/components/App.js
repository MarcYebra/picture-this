import React from 'react'
import PhotographerIndex from './PhotographerIndex'
import { BrowserRouter, Route, Switch } from 'react-router-dom'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/photographers" component={PhotographerIndex} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
