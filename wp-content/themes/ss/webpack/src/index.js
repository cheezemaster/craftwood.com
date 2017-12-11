//import './style.css';
//import './bootstrap.css';
//import Icon from './icon.png';
import _ from 'lodash';
import Data from './data.xml';
import React from 'react';
import ReactDOM from 'react-dom';
//imports------------------------



class Hello extends React.Component {
  render() {
    return <h1>Hello</h1>
  }
}

ReactDOM.render(
  <h1>Hello, world!</h1>,
  document.getElementById('root')
);

function component() {
  var element = document.createElement('div');
  element.innerHTML = _.join(['Hello', 'webpack'], ' ');
  element.classList.add('hello');
//  var myIcon = new Image();
//  myIcon.src = Icon;
//  element.appendChild(myIcon);
  console.log(Data);
  return element;
}

document.getElementById('wep').appendChild(component());

