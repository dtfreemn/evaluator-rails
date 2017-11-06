# eVALUEate

#### YouTube Click-Through Demo
<a href="http://www.youtube.com/watch?feature=player_embedded&v=XcEE10kJ6X4
" target="_blank"><img src="http://img.youtube.com/vi/XcEE10kJ6X4/0.jpg" 
alt="eVALUEate demo video" width="240" height="180" border="10" /></a>

#### [eVALUEate Frontend Repository - React/Redux](https://github.com/dtfreemn/evaluator-react-redux)

### Overview
  eVALUEate is an employee review management system for companies to create, execute, and track the data of their internal reviews of their employees. All information is created by the company, which makes the environment flexible for any industry or type of company. Companies add their own teams and their own employees, create their own rubrics, and create their own values on which their employees are assessed. Then, after assessing employees and assigning them action steps, supervisors can see past data on each employee's historical reviews, including individual timeline graphs for any topic on which an employee has ever been rated. Supervisors can also mark action steps as complete or incomplete in order to keep track of their employees' progress on those goals.

### Instructions to run on your machine
  eVALUEate is not currently deployed to the web. To run the backend on your machine you should:
  - clone this repository and run 'bundle install'
  - create a .env file in the top level folder and create a variable called JWT_SECRET that is equal to anything you'd like
  - turn on your Postgres database
  - run 'rails s' </br>
  *NOTE: You will need to seed your database with at least one Administrator so that you can log in and begin creating*

### Backend Dependencies for eVALUEate
  - Ruby 2.3.1
  - Postgres</br>
  *All others can be handled by running bundle install*

## License
  The MIT License (MIT)

  Copyright (c) 2017 Tim Freeman

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.