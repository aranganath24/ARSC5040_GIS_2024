---
layout: page
title: Syllabus
nav_order: 0.8
---

# Syllabus 
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Introduction

A Geographic Information System (GIS) is a digital platform that facilitates the visualization and analysis of spatial data (i.e. georeferenced data that contains explicit information about where attributes of interest are located on the earth's surface). The specialized software, analytical principles, and empirical techniques that comprise Geographic Information Systems are now used in virtually every applied discipline across the physical and natural sciences, humanities, and social sciences. 

Over the course of our five weeks together, we will explore some of the ways GIS is used in the social sciences. In particular, our goals for the course are to survey existing social scientific scholarship that uses spatial data and GIS methods; encourage you to formulate spatial research questions of your own, or think about how the methods and concepts used in spatial social science might enrich your existing work; and provide you with hands-on experience in working with spatial data and basic GIS methods, with a view towards building a foundational knowledge base that can serve as a starting point for more specialized future exploration.  

Given the short time frame of the course, we must necessarily be selective about which topics to cover. Important topics that would be included in a longer course, such as [critical or speculative approaches](https://onlinelibrary.wiley.com/toc/15410064/2018/62/1) to spatial research are omitted for lack of time, but the material we do cover will hopefully allow you to engage productively with these different traditions of scholarship in the future. In addition, while  geostatistics and spatial econometrics play an important role in GIS analyses in the social sciences, our course will not explicitly cover these topics. That is because they are presented in another ITSS mini-course, [Modeling Temporal and Spatial Processes in the Social Sciences](https://www.colorado.edu/cartss/interdisciplinary-training-social-sciences-itss/mini-course-modeling-temporal-and-spatial-processes), which frees up time for us to explore other material that is not covered elsewhere in the ITSS curriculum. You are encouraged to enroll in that course when it is next offered, as a complement to this one. 

## Course Materials and Software

There are no materials for purchase. All relevant learning materials will be distributed (via this website) to you over the course of our 5-week session. 

We will primarily work in R Studio, which is a development environment for the open-source R programming language. We will work with a variety of GIS and data science packages/libraries, and you will be given guidance about which packages to install and load as we move through the term. 

If you don't already have R and R Studio installed on your computers, please install both applications (which are free of charge) before the start of the first class. You can find instructions on how to install R and R Studio on this [page](https://datacarpentry.org/r-socialsci/setup.html); make sure to follow the instructions that correspond to your operating system. The course does not require any previous experience with R/R Studio, and if you are new to R, rest assured that it is fairly intuitive and you will be able to pick things up as we go. However, if you would like a brief primer on working in R Studio, this [tutorial](https://datacarpentry.org/r-intro-geospatial/), which takes about 4 hours to complete, would be a good place to start. 

In Class 4, we will introduce you to [Google Earth Engine](https://earthengine.google.com/). GEE is free for academic researchers and students, but requires registration, and this process can take up to a week. Please start the registration process well in advance of Class 4 (April 25), so that you have access to the platform by the start of that class. To register, go to the website for the Earth Engine [code editor](https://code.earthengine.google.com/), sign in with a Gmail account, and follow the instructions. The registration process will likely go faster if you register using the Gmail account tied to your CU-Boulder email address, rather than a personal Gmail account (since this will allow Google to quickly verify that you are affiliated with an educational institution).

## Communication and Office Hours

I am available by email, and encourage you to contact me in between classes if you have questions about the course material or problem sets/assignments. I will also hold office hours (on Zoom) on Tuesdays and Fridays from 4:00 to 5:30 pm. If you would like to meet, but these times are not compatible with your schedule, please email me, and we can set up an appointment. Please note that I do not check email during the weekends. 

## Topics/Modules

The following is a brief outline of our five class modules. Please click on the relevant link below (or to the left) to view more details on the relevant module's dedicated page:

* [Class One](class1.md) (April 4): Basic concepts; spatial thinking; mapping data
* [Class Two](class2.md) (April 11): Vector data and geoprocessing
* [Class Three](class3.md) (April 18): Raster data
* [Class Four](class4.md) (April 25): Geospatial data ethics; Remote sensing and Google Earth Engine
* [Class Five](class5.md) (May 2): Research Design and Wrap Up; Presentations

## Readings

For class-specific readings, please see the the dedicated page for the relevant class, which you can access by clicking on the tabs to the left. Please note that in some cases, optional readings are provided. In addition, during some weeks, you have considerable choice in what to read. Please read the instructions carefully, so that you can manage your time effectively. 

All readings are available as PDF files at this [link](https://www.dropbox.com/scl/fo/iufgn8r1hmwnosab5ktl0/h?rlkey=nevfpzz7rlnnpr56ms42smbnb&dl=0). The password will be distributed in class; please do not share it with anyone outside the class. 

## Assignments

There will be 3 small assignments over the course of the semester: 

* Assignment 1: Assigned in Class 1 (4/4), Due by Class 2 (4/11)
* Assignment 2: Assigned in Class 2 (4/11), Due by Class 3 (4/18)
* Assignment 3: Assigned in Class 3 (4/18), Due by Class 4 (4/25)

Assignments will be discussed in class on the day they are assigned, and you can find assignment descriptions on that class's corresponding page by the start of class (for example, Assignment 1 will be introduced and discussed in Class 1, and you can find the Assignment 1 description on the Class 1 page at the beginning of that class). 

You are encouraged to submit your assignment write-ups as rendered R Markdown files (which you can send to me via email, with the assignment provided as an attachment or a link). If you are unfamiliar with R Markdown, this [presentation](https://www.youtube.com/watch?v=MIlzQpXlJNk), by Garrett Grolemund, is an excellent primer. Please also feel free to see me in Office Hours, and I can help you to get your R Markdown files set up. While you're encouraged to use R Markdown, it is not required, and you are welcome to write up your assignments in a manner of your choosing (provided I can clearly see your code and code outputs). 

Assignments are graded Pass/Fail. 

## Final project

In addition to the assignments, you must submit a final project, which is due by **Monday, May 6, at 5:00 PM**. On our final day of class (**May 2nd**), you will give a brief (~7 minute) "lightning talk" on your project-in-progress, which will allow us to all learn from each other (and perhaps help you identify opportunities for future collaboration with your classmates). 

See below for various project options. The goal of the projects is to give you an opportunity to make progress on a project that will yield some tangible benefit to you in the future (i.e. a publication, a lesson plan, a dataset etc.). 

A word of advice: The final project should be a challenging and rewarding experience, but given time constraints, it is important not to overwhelm yourself (and GIS projects have a way of quickly becoming complicated and overwhelming, even if they did not seem so at first). If you find yourself getting overwhelmed, please talk to me, and we can find a way to recast the project to keep your workload manageable. 

*Option 1: Replication Exercise*

Identify a research paper in your field of interest that uses GIS in its empirical analysis, and replicate one aspect of its GIS analysis. In your discussion, provide the code you used to replicate the published analysis, and discuss whether the results did indeed replicate as expected. If not, briefly speculate about why you think that's the case. If you can think of a quick way to extend the paper's analysis, please implement that extension and discuss your results. 

*Option 2: Research Proposal*

Identify a research question in your area of interest that can be addressed using GIS data, and propose a research design that will allow you to answer it. In your discussion, clearly state the question, briefly discuss how other scholars have explored it in the past, and explain how the use of GIS and spatial data will allow you to extend the research frontier. You should discuss data sources and your empirical strategy, but you are **not** required to do the actual research (but you are welcome to do so, or conduct a quick plausibility probe, if you wish!)

*Option 3: Tutorial*

Our course provides a very general overview of GIS and various geospatial tools, but scratches the surface of the many geospatial methods that could be useful to social scientists. Identify a tool or technique that we did not cover, and write a brief tutorial about how to use that tool or technique; the tutorial should be accessible to someone who has completed this mini-course. Think of this project option as an opportunity to teach yourself a method that could be useful for your research, but which we did not cover in the course (or as an opportunity to develop a lesson plan that could could enhance your teaching portfolio). 

*Option 4: Add a GIS component to an existing working paper*

Many of you will have works-in-progress (either papers or thesis/dissertation chapters) that do not currently incorporate GIS, but might benefit from doing so. Take a working project (it is fine for the working project to be co-authored with someone outside the class), and add a GIS component to it. If your idea for how to use GIS in the working paper cannot feasibly be implemented in the time you have available, write up the "methods" section of the paper that describes the data and methods you will use. If the data requires an original data collection effort, please describe your strategy for collecting this data. Please submit the entire paper, with the GIS component embedded within it. 

*Option 5: Create (or propose) a new dataset*

While taking this course, and exploring the various geospatial datasets that are available, you may develop ideas about new datasets that could be useful to your scholarly community, and which might incorporate variables that are created using GIS methods or tools. Create (or, if you do not have sufficient time, propose) a novel dataset along these lines. In your writeup, discuss how you created it (or would go about creating it, if it is a proposal), and explain what sorts of questions such a dataset could help to answer, and how it would extend the research frontier in your field. 

*Option 6: Project of your choice*

You are welcome to define and create a project of your choice, if you have an idea that does not fall within these options. If you decide to do so, please run your idea by me beforehand. 

## Final Grades

Final grades will be determined as follows. 

* Assignments (30%)
* Attendance and Class participation (30%)
* Final Project and Lightning Talk Presentation (40%)

## Classroom Behavior

Students and faculty are responsible for maintaining an appropriate learning environment in all instructional settings, whether in person, remote, or online. Failure to adhere to such behavioral standards may be subject to discipline. Professional courtesy and sensitivity are especially important with respect to individuals and topics dealing with race, color, national origin, sex, pregnancy, age, disability, creed, religion, sexual orientation, gender identity, gender expression, veteran status, political affiliation, or political philosophy.

For more information, see the University's [classroom behavior policy](http://www.colorado.edu/policies/student-classroom-and-course-related-behavior), the [Student Code of Conduct](https://www.colorado.edu/sccr/student-conduct), and the [Office of Institutional Equity and Compliance](https://www.colorado.edu/oiec/).

## Requirements for Infectious Disease

Though we will meet virtually, it is worthwhile to note Campus policy on infectious disease prevention (since some of you will attend class from a campus location, or we may meet in-person for office hours, upon your request). Members of the CU Boulder community and visitors to campus must follow university, department, and building health and safety requirements and all applicable campus policies and public health guidelines to reduce the risk of spreading infectious diseases. If public health conditions require, the university may also invoke related requirements for student conduct and disability accommodation that will apply to this class.

If you feel ill and think you might have COVID-19 or if you have tested positive for COVID-19, please stay home and follow the guidance of the [Centers for Disease Control and Prevention (CDC)](https://www.cdc.gov/coronavirus/2019-ncov/your-health/isolation.html) for isolation and testing. If you have been in close contact with someone who has COVID-19 but do not have any symptoms and have not tested positive for COVID-19, you do not need to stay home but should follow the [guidance of the CDC for masking and testing](https://www.cdc.gov/coronavirus/2019-ncov/your-health/if-you-were-exposed.html).

## Accommodation for Disabilities, Temporary Medical Conditions, and Medical Isolation

If you qualify for accommodations because of a disability, please submit your accommodation letter from Disability Services to your faculty member in a timely manner so that your needs can be addressed.  Disability Services determines accommodations based on documented disabilities in the academic environment.  Information on requesting accommodations is located on the [Disability Services website](https://www.colorado.edu/disabilityservices/). Contact Disability Services at 303-492-8671 or [dsinfo@colorado.edu](mailto: dsinfo@colorado.edu)  for further assistance.  If you have a temporary medical condition, see [Temporary Medical Conditions](https://www.colorado.edu/disabilityservices/students/temporary-medical-conditions) on the Disability Services website. If you have a required medical isolation or illness for which you require adjustment, please email me, and we will work out an appropriate accomodation. A general notice that you require an accommodation for illness is sufficient; in the interest of protecting your own privacy, please do not reveal details of your illness, and please do not provide a doctor's note. 

## Preferred student names and pronouns

CU Boulder recognizes that students' legal information doesn't always align with how they identify. If your names or pronouns on your official CU records (which are provided to me in an official class roster) differ from your preferred name(s) or pronoun(s), please let me know.

## Honor Code

All students enrolled in a University of Colorado Boulder course are responsible for knowing and adhering to the Honor Code. Violations of the [Honor Code](https://www.colorado.edu/sccr/honor-code) may include but are not limited to: plagiarism (including use of paper writing services or technology [such as essay bots]), cheating, fabrication, lying, bribery, threat, unauthorized access to academic materials, clicker fraud, submitting the same or similar work in more than one course without permission from all course instructors involved, and aiding academic dishonesty. 

All incidents of academic misconduct will be reported to Student Conduct & Conflict Resolution: [honor@colorado.edu](mailto: honor@colorado.edu), 303-492-5550. Students found responsible for violating the [Honor Code](https://www.colorado.edu/sccr/honor-code) will be assigned resolution outcomes from the Student Conduct & Conflict Resolution as well as be subject to academic sanctions from the faculty member. Visit [Honor Code](https://www.colorado.edu/sccr/honor-code) for more information on the academic integrity policy. 

## Sexual Misconduct, Discrimination, Harassment and/or Related Retaliation

CU Boulder is committed to fostering an inclusive and welcoming learning, working, and living environment. University policy prohibits [protected-class](https://www.colorado.edu/oiec/policies/discrimination-harassment-policy/protected-class-definitions) discrimination and harassment, sexual misconduct (harassment, exploitation, and assault), intimate partner violence (dating or domestic violence), stalking, and related retaliation by or against members of our community on- and off-campus. These behaviors harm individuals and our community. The Office of Institutional Equity and Compliance (OIEC) addresses these concerns, and individuals who have been subjected to misconduct can contact OIEC at 303-492-2127 or email [cureport@colorado.edu](mailto: cureport@colorado.edu). Information about university policies, [reporting options](https://www.colorado.edu/oiec/reporting-resolutions/making-report), and [support resources](https://www.colorado.edu/oiec/support-resources) can be found on the [OIEC website](http://www.colorado.edu/institutionalequity/).

Please know that faculty and graduate instructors must inform OIEC when they are made aware of incidents related to these policies regardless of when or where something occurred. This is to ensure that individuals impacted receive outreach from OIEC about resolution options and support resources. To learn more about reporting and support for a variety of concerns, visit the [Don’t Ignore It](https://www.colorado.edu/dontignoreit/) page.

## Religious Accommodations

Campus policy requires faculty to provide reasonable accommodations for students who, because of religious obligations, have conflicts with scheduled exams, assignments or required attendance. Please communicate the need for a religious accommodation in a timely manner. In this class, if you require an accommodation for a religious obligation or commitment, please email me in advance and we will discuss options for an accommodation. 

## Mental health and wellness

The University of Colorado Boulder is committed to the well-being of all students. If you are struggling with personal stressors, mental health or substance use concerns that are impacting academic or daily life, please contact [Counseling and Psychiatric Services (CAPS)](https://www.colorado.edu/counseling/) located in C4C or call (303) 492-2277, 24/7. 

Free and unlimited telehealth is also available through [Academic Live Care](https://www.colorado.edu/health/academiclivecare). The Academic Live Care site also provides information about additional wellness services on campus that are available to students.



