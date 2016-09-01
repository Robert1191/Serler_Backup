# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DevMethod.create(name: 'Test Driven Development',      description: '', is_active: true)
DevMethod.create(name: 'Behaviour Driven Development', description: '', is_active: true)
DevMethod.create(name: 'Pair programming',             description: '', is_active: true)
DevMethod.create(name: 'Planning poker',               description: '', is_active: true)
DevMethod.create(name: 'Daily standup meetings',       description: '', is_active: true)
DevMethod.create(name: 'Story board',                  description: '', is_active: true)
DevMethod.create(name: 'User story mapping',           description: '', is_active: true)
DevMethod.create(name: 'Continuous integration',       description: '', is_active: true)
DevMethod.create(name: 'Retrospective',                description: '', is_active: true)
DevMethod.create(name: 'Burn down charts',             description: '', is_active: true)
DevMethod.create(name: 'Requirements prioritisations', description: '', is_active: true)
DevMethod.create(name: 'Version control',              description: '', is_active: true)
DevMethod.create(name: 'Code sharing',                 description: '', is_active: true)

Methodology.create(name: 'Spiral',                      description: '', is_active: true)
Methodology.create(name: 'XP',                          description: '', is_active: true)
Methodology.create(name: 'Rational Unified Process',    description: '', is_active: true)
Methodology.create(name: 'Crystal',                     description: '', is_active: true)
Methodology.create(name: 'Clean room',                  description: '', is_active: true)
Methodology.create(name: 'Feature Driven Development',  description: '', is_active: true)
Methodology.create(name: 'Model Driven Development',    description: '', is_active: true)
Methodology.create(name: 'Problem Driven Development',  description: '', is_active: true)
Methodology.create(name: 'Formal methods',              description: '', is_active: true)
Methodology.create(name: 'Cloud computing',             description: '', is_active: true)
Methodology.create(name: 'Service Oriented Development',description: '', is_active: true)
Methodology.create(name: 'Aspect Oriented Development', description: '', is_active: true)
Methodology.create(name: 'Value Driven Development',    description: '', is_active: true)
Methodology.create(name: 'Product Driven Development',  description: '', is_active: true)
Methodology.create(name: 'Agile',                       description: '', is_active: true)

ResearchMethod.create(name: 'Case study',        description: '', is_active: true)
ResearchMethod.create(name: 'Field Observation', description: '', is_active: true)
ResearchMethod.create(name: 'Experiment',        description: '', is_active: true)
ResearchMethod.create(name: 'Interview',         description: '', is_active: true)
ResearchMethod.create(name: 'Survey',            description: '', is_active: true)

Status.create(name: 'To be moderated',   description: '', is_active: true)
Status.create(name: 'Accepted',          description: '', is_active: true)
Status.create(name: 'Rejected',          description: '', is_active: true)
Status.create(name: 'Analysis complete', description: '', is_active: true)

Role.create(name: 'Admin',                    description: '', is_active: true)
Role.create(name: 'Moderator',                description: '', is_active: true)
Role.create(name: 'Analyst',                  description: '', is_active: true)
Role.create(name: 'User',                     description: '', is_active: true)
Role.create(name: 'Member of SDM class',      description: '', is_active: true)

ResearchParticipant.create(name: 'Undergraduate students', description: '', is_active: true)
ResearchParticipant.create(name: 'Postgraduate students',  description: '', is_active: true)
ResearchParticipant.create(name: 'Practitioners',          description: '', is_active: true)

@author1 = Author.create(first_name: 'Indira', middle_name: '', last_name: 'Nurdiani', is_active: true)
@author2 = Author.create(first_name: 'Jürgen', middle_name: '', last_name: 'Börstler', is_active: true)
@author3 = Author.create(first_name: 'Samuel', middle_name: 'A.', last_name: 'Fricker', is_active: true)
@article1 = Article.create(title: 'The impacts of agile and lean practices on project constraints: A tertiary study',
               journal: 'Journal of Systems and Software', year: '2016', volume: '119', number: '',
               month: '09', pages: '162-183', isbn: '0164-1212', doi: 'http://dx.doi.org/10.1016/j.jss.2016.06.043',
               url: 'http://www.sciencedirect.com.ezproxy.aut.ac.nz/science/article/pii/S0164121216300863',
               keyword: 'Tertiary study; Agile software development; Lean software development; Project constraints',
               abstract: 'The growing interest in Agile and Lean software development is reflected in the increasing number of secondary studies on the benefits and limitations of Agile and Lean processes and practices',
               research_questions: ' ', research_metrics: ' ',
               type_id: ' ', status_id: ' ', is_active: true)
@author1.articles << @article1
@author2.articles << @article1
@author3.articles << @article1

@author4 = Author.create(first_name: 'Deanne', middle_name: '', last_name: 'Deanne', is_active: true)
@author5 = Author.create(first_name: 'Victor', middle_name: '', last_name: 'Chang', is_active: true)
@article2 = Article.create(title: 'A review and future direction of agile, business intelligence, analytics and data science',
               journal: 'International Journal of Information Management',
               year: '2016', volume: '36', number: '5',
               month: '10', pages: '700-710', isbn: '0268-4012',
               doi: 'http://dx.doi.org/10.1016/j.ijinfomgt.2016.04.013',
               url: 'http://www.sciencedirect.com/science/article/pii/S026840121630233X',
               keyword: 'Agile methodologies; Business intelligence (BI); Analytics and big data; Lifecycle for BI and Big Data',
               abstract: 'Agile methodologies were introduced in 2001. Since this time, practitioners have applied Agile methodologies to many delivery disciplines. This article explores the application of Agile methodologies and principles to business intelligence delivery and how Agile has changed with the evolution of business intelligence. Business intelligence has evolved because the amount of data generated through the internet and smart devices has grown exponentially altering how organizations and individuals use information. The practice of business intelligence delivery with an Agile methodology has matured; however, business intelligence has evolved altering the use of Agile principles and practices. The Big Data phenomenon, the volume, variety, and velocity of data, has impacted business intelligence and the use of information. New trends such as fast analytics and data science have emerged as part of business intelligence. This paper addresses how Agile principles and practices have evolved with business intelligence, as well as its challenges and future directions.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author4.articles << @article2
@author5.articles << @article2

@author6 = Author.create(first_name: 'Peggy', middle_name: '', last_name: 'Gregory', is_active: true)
@author7 = Author.create(first_name: 'Leonor', middle_name: '', last_name: 'Barroca', is_active: true)
@author8 = Author.create(first_name: 'Helen', middle_name: '', last_name: 'Sharp', is_active: true)
@author9 = Author.create(first_name: 'Advait', middle_name: '', last_name: 'Deshpande', is_active: true)
@author10 = Author.create(first_name: 'Katie', middle_name: '', last_name: 'Taylor', is_active: true)
@article3 = Article.create(title: 'The challenges that challenge: Engaging with agile practitioners’ concerns',
               journal: 'Information and Software Technology', year: '2016', volume: '77', number: '',
               month: '09', pages: '92-104', isbn: '0950-5849',
               doi: 'http://dx.doi.org/10.1016/j.infsof.2016.04.006',
               url: 'http://www.sciencedirect.com/science/article/pii/S0950584916300623',
               keyword: 'Agile methods; Agile software development; Challenges; Evidence-based software engineering; DSDM',
               abstract: 'There continues to be concern that research is not addressing the challenges that practice faces. For the benefit of academia and industry, researchers need to be aware of practitioners’ challenges and their context so that relevant and applicable research is undertaken.ObjectiveThis paper investigates two research questions: what challenges do agile practitioners face? and, how do practitioner challenges manifest themselves in an organisational setting? It aims to map the practitioner challenge landscape, explore challenge characteristics, compare findings with previous literature and identify implications for research that is relevant to practice.Method A combination of methods was used: elicitation of practitioner challenges collected using a Challenge Wall at a series of practitioner events; organisational case study using interviews, document analysis and observation; and online survey. Findings were then compared to previous publications.Results Challenges collected from the Challenge Wall were grouped under 27 subthemes and seven themes: claims and limitations, organisation, sustainability, culture, teams, scale, and value. Investigating one challenge in the case study uncovered a set of new challenges, which were inter-related. Over 50% of survey respondents experienced challenges highlighted in the case study.Conclusion The landscape of agile practitioner challenges is complex and intertwined. Some challenges, such as doing agile in a non-agile environment, are multi-dimensional, affect many aspects of practice, and may be experienced simultaneously as business, organisational, social and adaptation problems. Some challenges, such as understanding cultural change or measuring agile value, persist and are hard to address, while others, such as adoption, change focus over time. Some challenges, such as governance and contracts, are under-researched, while others, such as business and IT transformation, have been researched but findings have not had the expected impact. Researchers wishing to address practitioner challenges need to treat them in context rather than in isolation and improve knowledge transfer.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author6.articles << @article3
@author7.articles << @article3
@author8.articles << @article3
@author9.articles << @article3
@author10.articles << @article3

@author11 = Author.create(first_name: 'Indika', middle_name: '', last_name: 'Perera', is_active: true)
@author12 = Author.create(first_name: 'R.K.', middle_name: 'Chandana', last_name: 'Ranasinghe', is_active: true)
@article4 = Article.create(title: 'Effectiveness of scrum for offshore software development in Sri Lanka',
               journal: 'Moratuwa Engineering Research Conference (MERCon)',
               year: '2015', volume: '', number: '',
               month: '', pages: '306-311', isbn: '',
               doi: '10.1109/MERCon.2015.7112364',
               url: '',
               keyword: 'DP industry;Internet;cultural aspects;organisational aspects;OSD;Scrum effectiveness;Sri Lanka;Web based survey;communication factor;comprehensive literature survey;cultural distance;geographical distance;offshore software development;organizational factor;people factor;process factor;requirement volatility management;software development industry;Collaboration;Companies;Context;Contracts;Cultural differences;Scrum (Software development);Software;Agile;Global teams;Off-shoring;Offshore software development;Scrum;XP',
               abstract: 'This paper presents the results of a comprehensive literature survey and a web based survey on the use of Scrum in offshore software development (OSD) in Sri Lankan context. The trend in the recent software development industry is to move towards OSD. Issues and challenges related to OSD have to be solved to gain success. Scrum has gained a significant attention due to its flexible approach to managing requirement volatility and emphasis on extensive collaboration between customer and development team. However, the geographical and cultural distance of offshore teams create challenges for use Scrum with OSD. Hence objectives of the research was to identify issues and challenges related to OSD in Sri Lankan context and how those issues and challenges can be overcome by using Scrum. Results of the study reveal that key factors of Scrum such as communication, people, process, and organizational factors are having positive contribution towards OSD success in Sri Lankan context. This study further reveals the importance of combining engineering practices with Scrum to achieve the success in OSD in Sri Lankan context.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author11.articles << @article4
@author12.articles << @article4

@author13 = Author.create(first_name: 'Ricardo', middle_name: 'Y.', last_name: 'Takahira', is_active: true)
@author14 = Author.create(first_name: 'Lilian', middle_name: 'R.', last_name: 'Laraia', is_active: true)
@author15 = Author.create(first_name: 'Frederico', middle_name: 'A.', last_name: 'Dias', is_active: true)
@author16 = Author.create(first_name: 'Abraham', middle_name: 'S.', last_name: 'Yu', is_active: true)
@author17 = Author.create(first_name: 'Paulo', middle_name: 'T.S.', last_name: 'Nascimento', is_active: true)
@author18 = Author.create(first_name: 'Alceu', middle_name: 'S.', last_name: 'Camargo', is_active: true)
@article5 = Article.create(title: 'Scrum and Embedded Software development for the automotive industry',
               journal: 'Management of Engineering and Technology', year: '2014', volume: '', number: '',
               month: '10', pages: '2664-2672', isbn: '978-1-890843-29-8',
               doi: '',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/document/6921029/',
               keyword: 'software development management;SCRUM methodology;SCRUM project management;V-model;',
               abstract: 'SCRUM methodology is increasing software development speed. So far SCRUM has seen little application in automotive industry where V-model',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author13.articles << @article5
@author14.articles << @article5
@author15.articles << @article5
@author16.articles << @article5
@author17.articles << @article5
@author18.articles << @article5

@author19 = Author.create(first_name: 'S.', middle_name: 'L.R.', last_name: 'Vrhovec', is_active: true)
@article6 = Article.create(title: 'Agile development of a hospital information system',
               journal: 'Electronics and Microelectronics (MIPRO)', year: '2016', volume: ' ', number: ' ',
               month: '', pages: '416-421', isbn: '978-953-233-086-1',
               doi: '10.1109/MIPRO.2016.7522179',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/document/7522179/',
               keyword: 'DP industry;health care;medical information systems;project management;software management;software prototyping;user interfaces;agile development;healthcare information systems;hospital information system;large-scale information systems;software industry;software project;user requirements;Hospitals;Information systems;Prototypes;Software;Stakeholders',
               abstract: 'Agile software development methods have rapidly spread after their formal introduction in the agile manifesto at the dawn of the millennium. They rapidly gained support in the software industry and can be considered a standard today. Agile methods seem to improve software project success rates and offer developers the needed flexibility to adapt to changing user requirements. However, the use of agile methods in large-scale information systems development projects has been rarely studied. There are even fewer insights in the area of agile healthcare information systems development. In this paper, we present insights into an agile hospital information system development in a European hospital. Agile development has been studied from various stakeholder perspectives. Results show that physicians, nurses and administration have diverse opinions on agile practices and different practices may be appropriate for interacting with each stakeholder.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author19.articles << @article6

@author20 = Author.create(first_name: 'Kholid', middle_name: '', last_name: 'Haryono', is_active: true)
@article7 = Article.create(title: 'The extreme programming approach for financial management system on local government',
               journal: 'Science and Technology (TICST)', year: '2015', volume: ' ', number: ' ',
               month: '', pages: '29-34', isbn: '978-1-4673-7670-9', doi: '10.1109/TICST.2015.7369335',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/stamp/stamp.jsp?tp=&arnumber=7369335&isnumber=7369329',
               keyword: 'financial data processing;government data processing;government policies;Indonesian public sector;extreme programming approach;financial information system;financial management system;government regulations;local government;system requirements;Decision support systems;Erbium;Extreme Programming;Financial Management;Local Government;Model SDLC',
               abstract: 'This paper reports lessons from implementation of a financial information system in the Indonesian public sector. Such the system is complex, as it should adhere various rigid government regulations and involves various levels of government units. In developing the system, we adopted an extreme programming approach, with an ultimate goal to meet requirements defined by all levels of government units. The evaluation indicated that there were no significant problems experienced at both the upper and the middle levels. But this was not the case at the lower (sub-organization) level. Although we found that 98% of the involved users agreed that their requirements has been met, and 100% of them were satisfied with the use of the extreme programming approach, we found that the users at the lower level in general had a high level of resistance against changes, which demanded a better strategy to cope with such problem. A recommended solution includes involving them more intensively throughout the development of the system, aimed at eliciting system requirements and cultivating a better awareness among them.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author20.articles << @article7

@author21 = Author.create(first_name: 'Jason', middle_name: 'Jen-Yen', last_name: 'Chen', is_active: true)
@author22 = Author.create(first_name: 'Mike', middle_name: 'Mu-Zhe', last_name: 'Wu', is_active: true)
@article8 = Article.create(title: 'Integrating extreme programming with software engineering education',
               journal: 'Information and Communication Technology, Electronics and Microelectronics (MIPRO)',
               year: '2015', volume: '', number: '',
               month: '5', pages: '577-582', isbn: '978-9-5323-3082-3',
               doi: '10.1109/MIPRO.2015.7160338',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/document/7160338/',
               keyword: 'Java;computer aided instruction;computer science education;educational courses;educational institutions;engineering computing;engineering education;software maintenance;software prototyping;11-step myAgile method;Java;Taiwanese universities;XP;extreme programming integration;job satisfaction;object-oriented grade system project;requirement engineering;reverse engineering;software engineering education;software maintenance project;university courses;Algorithm design and analysis;Data structures;Java;Maintenance engineering;Programming;Software;Software engineering',
               abstract: 'This paper presents an 11-step “myAgile” method that integrates the extreme programming (XP) with existing university courses, attempting to build a modern software engineering education. Compared with XP, “myAgile” covers more phases, such as requirement engineering, detailed design, and reverse engineering. There were 288 students in 4 universities in Taiwan who participated in this effort. The students rigorously applied the method to develop, and to maintain, an object-oriented Grade System project in Java. The results showed that, objectively, the students produced maintainable software, which was clearly shown in another maintenance project by a different team at a distant time after the development. And, subjectively, students reported high job satisfaction that is so desperately needed in this profession.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author21.articles << @article8
@author22.articles << @article8

@author23 = Author.create(first_name: 'Takaaki', middle_name: '', last_name: 'Goto', is_active: true)
@author24 = Author.create(first_name: 'Kensei', middle_name: '', last_name: 'Tsuchida', is_active: true)
@author25 = Author.create(first_name: 'Tetsuro', middle_name: '', last_name: 'Nishino', is_active: true)
@article9 = Article.create(title: 'EPISODE: An Extreme Programming Method for Innovative Software Based on Systems Design',
               journal: 'Advanced Applied Informatics (IIAIAAI)', year: '2014', volume: '', number: '',
               month: '', pages: '780-784', isbn: '978-1-4799-4173-5',
               doi: '10.1109/IIAI-AAI.2014.157',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/document/6913401/',
               keyword: 'artificial intelligence;innovation management;public domain software;software prototyping;systems analysis;value engineering;EPISODE;agile software development;articial intelligence;customer-centric development;extreme programming method for innovative software based on system design;idea creation;large-scale software systems;open source software;scrum;smaller-scale software development;value engineering;Educational institutions;Encoding;Planning;Programming profession;Software;Extreme Programming;Open Source Software;Value engineering',
               abstract: 'In software development, the waterfall model is commonly used, especially for large-scale software systems. For smaller-scale software development, agile software development approaches such as extreme programming or scrum are used. Traditional software development methodologies are mainly targeted toward customer-centric development, and therefore, new software methodologies are often not well received in the industry. In this study, we propose a new software development methodology that is aimed at developing innovative software using artificial intelligence (AI), idea creation, value engineering, and systems design. The name of our method is named as EPISODE (Extreme Programming method for Innovative Software based on systems DEsign). EPISODE supports the efficient and creative development of open source software (OSS) by small groups.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author23.articles << @article9
@author24.articles << @article9
@author25.articles << @article9

@author26 = Author.create(first_name: 'Bill', middle_name: '', last_name: 'Pyritz', is_active: true)
@article10 = Article.create(title: 'Extreme programming in the telecommunications domain',
               journal: 'Bell Labs Technical Journal', year: '2003', volume: '8', number: '3',
               month: '', pages: '97-100', isbn: '1538-7305',
               doi: '10.1002/bltj.10078',
               url: 'http://ieeexplore.ieee.org.ezproxy.aut.ac.nz/document/6913401/',
               keyword: '',
               abstract: 'Extreme Programming (XP) is a lightweight methodology that is gaining industry acceptance and momentum. XP promises to reduce project risk, improve responsiveness to changing/vague requirements, and allow a system to grow naturally while at the same time facilitating an enjoyable development environment. XP consists of four values and twelve practices. This letter explores how well these values and practices can be applied in the telecommunications domain.',
               research_questions: '', research_metrics: '',
               type_id: '', status_id: '', is_active: true)
@author26.articles << @article9
