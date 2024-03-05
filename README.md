# Robot Framework Mobile Automation

This project serves as a boilerplate for automating both Android and iOS mobile applications using a single codebase with Robot Framework and the Appium library.

## Installation
1. Download and Install [Android Studio](https://developer.android.com/codelabs/basic-android-kotlin-compose-install-android-studio "Android Studio")

2. Download and Install [Python](https://www.python.org/downloads/ "Python")

3. Check Python installation

    `python3 -V`

4. Install [pip](https://pip.pypa.io/ "pip")

    `pip3 -V`

5. Install Appium 2.0
    `npm i -g appium@next`

6. Install Robot Framework

    `pip3 install robotframework`
    
7. Install Appium Library

    `pip3 install robotframework-appiumlibrary`
    
8. Download and install VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode")

9. Install [Robot Code](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode "Robot Code") extension from VSCode's Marketplace

10. Install Appium Drivers 

    `appium driver install uiautomator2`
    
    `appium driver install xcuitest`

## Usage
The basic usage is giving a path to a test (or task) file or directory as an
argument with possible command line options before the path

    robot -v PLATFORM_NAME:android -i Smoke -d results tests/*.robot

"***-v***" refers to the variables. To replace a declared value within the code, you can specify a variable name and value.

"***-i***" refers to the tags. To run only a selected group of tests, you may specify a tag name.

"***-d***" refers to the test results. The location to save the test results can be specified here.

## License
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/License_icon-mit-2.svg/2000px-License_icon-mit-2.svg.png" alt="MIT License" width="100" height="100"/> [MIT License](https://opensource.org/licenses/MIT)
