require 'CFF'
# citation-file-format
#   https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md


# ---- paper CFF ----
# doc-ref: https://citation-file-format.github.io/ruby-cff/CFF/Reference.html
ref_paper = CFF::Reference.new('', 'article') do |ref|
  ref.add_language('en')
## ---- Paper metadata ----
  ref.title = 'Programming the material point method in Julia' 
  # doc-ref: https://citation-file-format.github.io/ruby-cff/CFF/Person.html
  ref.authors << CFF::Person.new('Sina', 'Sinaie')
  ref.authors << CFF::Person.new('Vinh Phu', 'Nguyen') do |p|
    p.affiliation = 'Department of Civil Engineering, Monash University'
    p.email = 'phu.nguyen@monash.edu'
  end
  ref.authors << CFF::Person.new('Chi Thanh', 'Nguyen')
  ref.authors << CFF::Person.new('Stephane', 'Bordas')
  ref.keywords <<
    'Julia' <<
    'Material point method (MPM)' <<
    'High-performance dynamic programming language' <<
    'Technical computing'
  ref.doi = '10.1016/j.advengsoft.2017.01.008'
  # ref.url = ''
## ---- journal info ----
  ref.journal   = 'Advances in Engineering Software'
  ref.publisher = 'Elsevier B.V.'
  ref.year    = 2017
  ref.volume  = 105
  # ref.issue   = 0
  ## Page start--end
  ref.start   = 17
  ref.end     = 29
end


# Main software repo CFF
# doc-ref: https://citation-file-format.github.io/ruby-cff/CFF/Model.html
model = CFF::Model.new('') do |cff|
## ---- CFF info ----
  cff.cff_version = CFF::VERSION
  cff.message = 'If you use this software, please cite it as below.'
## ---- Software info ----
  cff.title = 'MPM-Julia'  
  # cff.authors << 
  #   CFF::Person.new('Zhiguo', 'He') <<
  #   CFF::Person.new('Bryan', 'Kelly') <<
  #   CFF::Person.new('Asaf', 'Manela')
  # cff.contact = CFF::Person.new('Zhiguo', 'He')
  # cff.abstract = ''
  cff.keywords <<
    'MPM' <<
    'Julia'
  # cff.doi = '10.1016/j.jfineco.2017.08.002'
  cff.preferred_citation = ref_paper
  # cff.references << ref_paper
## ---- Repo info ----
  cff.url = 'https://github.com/JuliaPapers/MPM-Julia'  
  cff.version = '1.1.0'
  cff.date_released = Date.today
  # cff.license = 'MIT'
  # cff.license_url
  # cff.repository = ''
  # cff.repository_artifact = 'https://rubygems.org/gems/cff'
  # cff.repository_code = 'https://github.com/JuliaPapers/He-Kelly-Manela-2017-JFE'
  # cff.commit = ''
end

CFF::File.write('S:/juliaPapers/CITATION.cff', model)
