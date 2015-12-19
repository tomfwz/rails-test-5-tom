Student.destroy_all
School.destroy_all
SchoolMate.destroy_all


us = School.create({ name: 'University of Science', address: '227 Nguyen Van Cu', category: :university })
lhp = School.create({ name: 'La Hong Phat', address: '225 Nguyen Van Cu', category: :high_school })

tom   = Student.create({ name: 'Tom Fwz', dob: '12 Feb 1993' })
james = Student.create({ name: 'James Fwz', dob: '31 Dec 1990' })
robin = Student.create({ name: 'Robin Fwz', dob: '31 Jan 1990' })

SchoolMate.create({ school: us, student: tom })
SchoolMate.create({ school: us, student: james })
SchoolMate.create({ school: us, student: robin })
SchoolMate.create({ school: lhp, student: tom })