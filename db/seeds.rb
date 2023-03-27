technologies = [
  { name: "Ruby" },
  { name: "Python" },
  { name: "JavaScript" },
  { name: "Java" },
  { name: "PHP" },
  { name: "C++" },
  { name: "Swift" },
  { name: "Go" },
  { name: "TypeScript" },
  { name: "Rust" },
  { name: "C#" },
  { name: "Scala" },
  { name: "Kotlin" },
  { name: "React" },
  { name: "Angular" },
  { name: "Vue.js" },
  { name: "Express" },
  { name: "Django" },
  { name: "Flask" },
  { name: "Ruby on Rails" }
]

Technology.create!(technologies)

10.times do
  Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    job_title: Faker::Job.title
  )
end
