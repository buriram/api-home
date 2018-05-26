const express = require('express')
const router = express.Router()

module.exports = router
//list-student
router.get('/list', async (req, res) => {
  try {
  let db = req.db
  let rows
  if (req.query.class) {
    rows = await db('student').where('class', '=', req.query.class).orderBy('s_code')
  } else {
    rows = await db('student').orderBy('s_code')
  }

  res.send({
    ok: true,
    student: rows,
  })
} catch (e) {
  res.send({ ok: false, error: e.message })
}
})

//list-recodings
router.get('/rds', async (req, res) => {
  try {
  let db = req.db
  let rows
  if (req.query.user) {
    rows = await db('memo').where('s_code', '=', req.query.user).orderBy('m_id')
  } else {
    rows = await db('memo').orderBy('m_id')
  }

  res.send({
    ok: true,
    memo: rows,
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
  await db('teacher').insert({
    t_username: req.body.user,
    t_password: req.body.pass,
    t_name: req.body.first_name,
  })
  res.send({ok: true})
  })

// save record
router.post('/save', async (req, res)=>{
  let db = req.db
  try {
      let ids = await db('memo').insert({
        m_detail: req.body.m_detail,
        m_date: req.body.m_date,
        s_code: req.body.user,
      })
      res.send({ok: true})
  } catch (e) {
      res.send({ok: false, e: e.message})
  }
})
router.get('/about', function (req, res) {
  res.send('About birds')
})

