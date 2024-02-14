import React, { useEffect } from 'react'; 
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import SignInSide from './SignInSide';

const App = () => {

  useEffect(
    () => {
      fetch('/events')
      .then((res) => res.json())
      .then(data=>{debugger}) 
    }, []
  ) 


  return (
    <Router>
        <Routes>
          <Route path="/" element={<SignInSide />} />
        </Routes>
    </Router>
  );
};

export default App;
