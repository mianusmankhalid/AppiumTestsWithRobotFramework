
[![Build Status](https://travis-ci.org/mianusmankhalid/AppiumTestsWithRobotFramework.svg?branch=master)](https://travis-ci.org/mianusmankhalid/AppiumTestsWithRobotFramework)

# Appium tests with Robot Framework

This project is mainly focused to test android application with appium via robotframework and to create CI/CD pipeline using travis

## Prerequisites

For testing on local machine

```
Run Appium Server
Start Android Virtual Device
```

in case of travis pipeline you don't need to run Appium Server and start AVD on your machine

## Requirement

you just need an apk file to run your tests

## Running the tests

you can write down your tests in .robot file and can run tests locally via

```
pybot MovieAppTest.robot
```

for travis you can change testing file name under script tag in .travis.yml file

### Things involve in this project :

1. appium
2. appium-doctor
3. robotframework
4. robotframework-appiumlibrary
5. travis
6. Appium Server
7. android SDK

