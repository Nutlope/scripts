#!/bin/bash

# Delete all unncesseary files
cd public
rm logo192.png logo512.png manifest.json robots.txt
cd ../src
rm App.css App.js App.test.js index.css logo.svg reportWebVitals.js setupTests.js

# Populate App.js with general boilerplate
touch App.js
echo "function App() {
  return <div className='App'>Hello World</div>;
}
export default App;" >> App.js

# Delete unessesary lines in index.js
sed -i "" '3d' ./index.js
sed -i "" '4d' ./index.js
sed -i "" '12,15d' ./index.js
