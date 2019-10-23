<!----- Conversion time: 1.219 seconds.


Using this Markdown file:

1. Cut and paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β17
* Wed Oct 23 2019 02:24:25 GMT-0700 (PDT)
* Source doc: https://docs.google.com/open?id=1Qq_Zld4-SLOcm0fDqs6-ueyEzRgF8UXUmP600ZmGVkg
* This document has images: check for >>>>>  gd2md-html alert:  inline image link in generated source and store images to your server.
----->


<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 0; ALERTS: 1.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p><a href="#gdcalert1">alert1</a>

<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>



# <p style="text-align: right">
< TheFriendsLook ></p>



# <p style="text-align: right">
Software Requirements Specification</p>



# <p style="text-align: right">
For <Mobile Application ></p>



# <p style="text-align: right">
Version <1.0></p>



# Revision History


<table>
  <tr>
   <td><strong>Date</strong>
   </td>
   <td><strong>Version</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Author</strong>
   </td>
  </tr>
  <tr>
   <td><22.10.2019 >
   </td>
   <td><1.0>
   </td>
   <td><First version>
   </td>
   <td><Marvin Böck>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
</table>



# Table of Contents


[TOC]



# Software Requirements Specification 



1. 
Introduction


    1. 
Purpose

    This SRS describes all specifications for the “TheFriendsLook” Application. " TheFriendsLook " Is an application  which should help to make planning with friends and family easier. The app will be a calendar in which you can plan events and send them to everyone invited. The people you invited are then able to accept or decline the appointment that you can always get a good overview of who is coming and who is not.



    2. 
Scope

    This software specification applies to the whole "TheFriendsLook" application. The app allows users to share their meeting plans, get feedback from other users and plan their free time with friends and family easier.



    3. 
Definitions, Acronyms, and Abbreviations

    In this section definitions and explanations of acronyms and abbreviations are listed to help the reader to understand these.


<table>
  <tr>
   <td><strong>Abbreviation</strong>
   </td>
   <td><strong>Explanation</strong>
   </td>
  </tr>
  <tr>
   <td>Android
   </td>
   <td>Is a mobile operating system developed by Google.
   </td>
  </tr>
  <tr>
   <td>iOS
   </td>
   <td>Is a mobile operating system developed by Apple.
   </td>
  </tr>
  <tr>
   <td>UC
   </td>
   <td>Use Case
   </td>
  </tr>
  <tr>
   <td>DB
   </td>
   <td>Database which stores the data
   </td>
  </tr>
</table>




    4. 
References

    Blog: https://thefriendslook.wordpress.com


    GIT-Hub: https://github.com/TheFriendsLook/TheFriendsLook


    UCD:



    5. 
Overview

    The following chapters are about our vision and perspective, the software requirements, the demands we have, licensing and the technical realization of this project.



2. 
Overall Description

    The App should help people to use their free time better. It should help to plan free time activities of you and your friends. Users should be able to



*   Watch the calendar of your friends
*   Compare Calendar of you and your friends
*   Send your friends appointment requests

     




3. 
Specific Requirements 


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/Software-Requirements0.jpg). Store image on your image server and adjust path/filename if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/Software-Requirements0.jpg "image_tooltip")




    6. 
Functionality


        1. 
<Mobile Application>

    Admin:



*   Delete Users
*   Create Users
*   Manage Users

    Users:

*   Create Account
*   See calendar of Friends
*   Add/Delete Friends
*   Set appointments to own calendar
*   Set appointments to friends calendar
*   Accept or refuse appointment requests form friends
*   Set/Change password
*   Set/Change email
*   Set/Change username
    7. Usability 
        2. <Android Smartphone App>

    Use the App with an android smartphone




    8. 
Reliability 


        3. <Server Reliability>

    The application should be useable all time. Availability is set to 95%, since the server should only be unreachable if major changes are going to be published. MTTR as soon as possible, depending on the failure reason




    9. 
Performance


        4. <Server Access>

    Realtime server access needed for real-time access to the appointment of user and users friends




    10. 
Supportability


        5. <Language Support>

We will use the following languages, which will also be well supported in the future:



*   Python



    11. 
Design Constraints


        6. < MVC Architecture>

    The web application interacts through a REST-Interface with the back-end to transfer the data from back-end to the webpage. The entity framework core provides the access from back-end to the database.




    12. 
On-line User Documentation and Help System Requirements

    The whole application will be built with an intuitive design, so there shouldn’t be a need for the user to ask us or the program for help. However, we will write our own blog on which users can find information and ask us questions.



    13. 
Purchased Components

    (Tbd)



    14. 
Interfaces


        7. User Interfaces

    Users are only able to use the android application at their smartphone to interact with the program.


    Admin access should also be possible from a web-page

        8. Hardware Interfaces

    (Tbd)

        9. Software Interfaces

    (Tbd)

        10. Communications Interfaces

    (Tbd)




    15. 
Licensing Requirements

    (Tbd)



    16. 
Legal, Copyright, and Other Notices

    (Tbd)



    17. 
Applicable Standards

    (Tbd)



4. 
Supporting Information

    If you would like to know what the current status of this project is please visit 


    [https://thefriendslook.wordpress.com](https://thefriendslook.wordpress.com)


<!-- Docs to Markdown version 1.0β17 -->
