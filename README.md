# Using Docker to run K6 tests and Integrating with GitLab
# Introduction
This template will help you to execute K6 tests with Docker.K6 is a popular open-source load testing tool, allows you to create and execute performance tests with ease. Docker, on the other hand, provides a lightweight containerization platform that simplifies application deployment and management. Additionally, GitLab is a web-based DevOps platform, enables seamless CI with your source code repository. So the template will basically help you to have an framework using Docker to run your K6 tests and integrate it with GitLab for continuous testing.


# Technologies Used
Performance testing tool - K6

Containerisation - Docker

IDE - IntelliJ Idea

CI/CD - GitLab


# Prerequisites
Docker : https://docs.docker.com/get-docker/

K6 : https://k6.io/docs/get-started/installation/

GitLab : Have a GitLab account or access to an existing GitLab instance. If you don’t have one, you can sign up for a free account at https://gitlab.com/users/sign_in


# Steps for execution
1. Clone the repository on your local system by using command : `git clone https://github.com/knoldus/k6-monitoring-using-netdata.git`

2. Open the cloned project in IDE

3. Modify **`test.js`** k6 script according to your requirnment

4. Go to the terminal and execute the command to build dockerfile : `docker build -t my-k6-test .`

5. Go to the terminal and execute the command to run dockerfile : `docker run my-k6-test`

6. Modify **`.gitlab-ci.yml`** according to the requirnments that you want to keep in your pipeline execution, This YAML configuration specifies two jobs called building docker image and running test_job. It uses the k6-tests Docker image to execute the tests

7. Commit the **`.gitlab-ci.yml`** file to your project’s repository to trigger the CI/CD pipeline**

As far as you commit, GitLab will automatically run the K6 tests using the Docker image specified in the pipeline configuration.



For a better understanding and changing this project according to you please refer to this blog based on same:-
https://blog.nashtechglobal.com/wp-admin/post.php?post=10265&action=edit
