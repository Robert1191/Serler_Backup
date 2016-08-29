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