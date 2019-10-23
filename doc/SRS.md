# TheFriendsLook

## Software Requirements Specification
For<Mobile Application >


Version <1.0>

Version <1.1>

### Revision History

| Date | Version | Description | Author 
| --- | --- | --- | ---
| 22.10.2019 | 1.0 | First version | Marvin Böck 
| 23.10.2019 | 1.1 | Second version | Mo Mehjazi 
 
# Software Requirements Specification 
## 1.	Introduction
## 1.1	Purpose
This SRS describes all specifications for the “TheFriendsLook” Application. " TheFriendsLook " Is an application  which should help to make planning with friends and family easier. The app will be a calendar in which you can plan events and send them to everyone invited. The people you invited are then able to accept or decline the appointment that you can always get a good overview of who is coming and who is not.
## 1.2	Scope
This software specification applies to the whole "TheFriendsLook" application. The app allows users to share their meeting plans, get feedback from other users and plan their free time with friends and family easier.
## 1.3	Definitions, Acronyms, and Abbreviations
In this section definitions and explanations of acronyms and abbreviations are listed to help the reader to understand these.
Abbreviation	Explanation
Android	Is a mobile operating system developed by Google.
iOS	Is a mobile operating system developed by Apple.
UC	Use Case
DB	Database which stores the data

## 1.4	References
### Blog: https://thefriendslook.wordpress.com
### GIT-Hub: https://github.com/TheFriendsLook/TheFriendsLook
UCD:
## 1.5	Overview
The following chapters are about our vision and perspective, the software requirements, the demands we have, licensing and the technical realization of this project.
## 2.	Overall Description
The App should help people to use their free time better. It should help to plan free time activities of you and your friends. Users should be able to
-	Watch the calendar of your friends
-	Compare Calendar of you and your friends
-	Send your friends appointment requests
 
## 3.	Specific Requirements 
![Alt-Text](./images/UCD.jpg)
## 3.1	Functionality
### 3.1.1	<Mobile Application>
Admin:
-	Delete Users
-	Create Users
-	Manage Users
Users:
-	Create Account
-	See calendar of Friends
-	Add/Delete Friends
-	Set appointments to own calendar
-	Set appointments to friends calendar
-	Accept or refuse appointment requests form friends
-	Set/Change password
-	Set/Change email
-	Set/Change username

## 3.2	Usability 
### 3.2.1	<Android Smartphone App>
Use the App with an android smartphone

## 3.3	Reliability 
### 3.3.1	<Server Reliability>
The application should be useable all time. Availability is set to 95%, since the server should only be unreachable if major changes are going to be published. MTTR as soon as possible, depending on the failure reason

## 3.4	Performance
### 3.4.1	<Server Access>
Realtime server access needed for real-time access to the appointment of user and users friends

## 3.5	Supportability
### 3.5.1	<Language Support>
We will use the following languages, which will also be well supported in the future:
•	Python

## 3.6	Design Constraints
### 3.6.1	< MVC Architecture>
The web application interacts through a REST-Interface with the back-end to transfer the data from back-end to the webpage. The entity framework core provides the access from back-end to the database.

## 3.7	On-line User Documentation and Help System Requirements
The whole application will be built with an intuitive design, so there shouldn’t be a need for the user to ask us or the program for help. However, we will write our own blog on which users can find information and ask us questions.

## 3.8	Purchased Components
(Tbd)
## 3.9	Interfaces
### 3.9.1	User Interfaces
Users are only able to use the android application at their smartphone to interact with the program.
Admin access should also be possible from a web-page
### 3.9.2	Hardware Interfaces
(Tbd)
### 3.9.3	Software Interfaces
(Tbd)
### 3.9.4	Communications Interfaces
(Tbd)
### 3.10	Licensing Requirements
(Tbd)
### 3.11	Legal, Copyright, and Other Notices
(Tbd)
### 3.12	Applicable Standards
(Tbd)
## 4.	Supporting Information
# If you would like to know what the current status of this project is please visit 
https://thefriendslook.wordpress.com
