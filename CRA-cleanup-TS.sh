#!/bin/bash
# Script to perform cleanup after using create-react-app to initialize a new react application

# Delete all unnecessary files
cd public
rm logo192.png logo512.png manifest.json robots.txt

# Delete unnecessary lines in index.html
sed -i "" '12,26d' ./index.html
sed -i "" '17,26d' ./index.html

cd ../src
rm App.css App.tsx App.test.tsx index.css logo.svg reportWebVitals.ts setupTests.ts

# Populate App.tsx with general boilerplate
touch App.tsx
echo "function App() {
  return <div className='App'>Hello World</div>;
}
export default App;" >> App.tsx

# Delete unnecessary lines in index.tsx
sed -i "" '3d' ./index.tsx
sed -i "" '4d' ./index.tsx
sed -i "" '12,15d' ./index.tsx