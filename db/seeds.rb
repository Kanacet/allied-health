# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SurgeryGroup.destroy_all
Surgery.destroy_all

type_one = SurgeryGroup.create!(group: "ortho", image: "skeletal_pic")
type_two = SurgeryGroup.create!(group: "vascular", image: "vascular_pic")
type_three = SurgeryGroup.create!(group: "organ", image: "organ_pic")

a = Surgery.create!(name: "total hip", description: "hip replacement", surgery_group_id: type_one.id)
b = Surgery.create!(name: "BKA", description: "below the knee amputation", surgery_group_id: type_two.id)
c = Surgery.create!(name: "Laparoscopic Cholecystectomy", description: "removal of gall bladder", surgery_group_id: type_three.id)
d = Surgery.create!(name: "ORIF Wrist", description: "Open reduction internal fixation of wrist", surgery_group_id: type_one.id)
e = Surgery.create!(name: "Pacemaker", description: "Pacemaker insertion", surgery_group_id: type_two.id)
f = Surgery.create!(name: "Laparoscopic Appendectomy", description: "removal of appendix", surgery_group_id: type_three.id)
