const express = require('express')
const router = express.Router()

module.exports = router
//     http://localhost:7000/api/student?class=1
router.get('/list', async (req, res) => {
  try {
  let db = req.db
  let rows
  if (req.query.class) {
    rows = await db('student').where('class', '=', req.query.class).orderBy('first_name')
  } else {
    rows = await db('student').orderBy('first_name')
  }
  // let rows = await db('student').orderBy('fname').where(function() {
  //   if (req.query.class) {
  //     this.where('class', '=', req.query.class)
  //   }
  // })
  res.send({
    ok: true,
    student: rows,
  })
} catch (e) {
  res.send({ ok: false, error: e.message })
}
})
// /api/student/id/555
router.get('/id/:id', async (req, res) => {
  let db = req.db
  let rows = await db('student')
    .where('id', '=', req.params.id)
  res.send({
    ok: true,
    student: rows[0] || {},
  })
})
// save Register
router.post('/regis', async (req, res) => {
  let db = req.db
  await db('tb_teacher').insert({
    t_email: req.body.user,
    t_pass: req.body.pass,
    t_firstname: req.body.first_name,
    t_lastname: req.body.last_name,
  })
  res.send({ok: true})
  })

  router.get('/booking', async (req, res) => {
    try {
    let db = req.db
    let rows
    if (req.query.b_date) {
      rows = await db('tb_booking').where('b_date', '=', req.query.b_date).orderBy('b_timein')
    } else {
      rows = await db('tb_booking').orderBy('b_date')
    }
    // let rows = await db('student').orderBy('fname').where(function() {
    //   if (req.query.class) {
    //     this.where('class', '=', req.query.class)
    //   }
    // })
    res.send({
      ok: true,
      bk: rows,
    })
  } catch (e) {
    res.send({ ok: false, error: e.message })
  }
  })
  // get keyroom
  router.get('/getRoom', async (req, res) => {
    try {
    let db = req.db
    let rows
    if (req.query.user) {
      rows = await db('tb_booking').where('user', '=', req.query.user).orderBy('b_timein')
    }
    // let rows = await db('student').orderBy('fname').where(function() {
    //   if (req.query.class) {
    //     this.where('class', '=', req.query.class)
    //   }
    // })
    res.send({
      ok: true,
      krr: rows,
    })
  } catch (e) {
    res.send({ ok: false, error: e.message })
  }
  })
//   /api/student/save
router.post('/saved', async (req, res) => {
  let db = req.db
  // UPDATE student SET first_name=?, last_name=? WHERE id=7
  await db('student').where({id: req.body.id}).update({
    firstName: req.body.firstName,
    lastName: req.body.lastName,
  })
  // let ids = await db('student').insert({
  //   code: '',
  //   first_name: '',
  //   last_name: '',
  // })
  // let id = ids[0]
  res.send({ok: true})
})
// save Booking
router.post('/save', async (req, res)=>{
  let db = req.db
  // insert into mark (teachid, sbjid, sid, mark) values(1,1,1, 5), (1,1,2, 6)
  // let sql = 'insert into mark (teachid, sbjid, sid, mark) values '
  //     + req.body.marks.map(x => '(' + req.body.teacherId + ', ' + req.body.subid + ', ' + x.sid + ', ' + x.mark + ')').join(', ')

  try {
      let ids = await db('tb_booking').insert(req.body.b_time.map(x => ({
          b_date: req.body.b_date,
          b_timein: x,
          keyroom: req.body.keyRoom,
          user: req.body.user,
      })))
      res.send({ok: true})
  } catch (e) {
      res.send({ok: false, e: e.message})
  }
})

router.delete('/:id', function (req, res) {
  req.db('student').where({id: req.params.id}).delete().then(() =>{
    res.send({status: true})
  }).catch(e => res.send({status: false, error: e.message}))
})
router.post('/save2', (req, res) => {
  let db = req.db  
  db('t1').insert({}).then(ids => {
    let id = ids[0]
    Promise.all([
      db('t2').insert({}).catch(),
      db('t3').insert({}).catch(),
    ]).then(() => {
      res.send({status: true})
    }).catch(err => {
      res.send({status: false})
    })    
  })
  console.log('ok')
})
router.get('/save3', async (req, res) => {
  try {
    let db = req.db  
    let ids = await db('t1').insert({})
    await Promise.all([
      db('t2').insert({}),
      db('t3').insert({})
    ])
    res.send({status: true})
  } catch (e) {
    res.send({status: false})
  }
})
router.get('/about', function (req, res) {
  res.send('About birds')
})

