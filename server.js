'use strict';

require('dotenv').config();

const PORT = process.env.PORT || 3005;

const express = require('express');
const pg = require('pg');
const morgan = require('morgan');
const { CommandCompleteMessage } = require('pg-protocol/dist/messages');

const app = express();
const client = new pg.Client(process.env.DATABASE_URL);

app.use(morgan('dev'));
app.use(express.urlencoded({ extended: true }));
app.use(express.static('./public'));

app.set('view engine', 'ejs');

app.get('/', home);
app.get('/inventory', inventory);
app.get('/calc', calc);
app.get('/scents', scents);
app.post('/addInventory', addInventory);
app.post('/addCalc', addCalc);
app.post('/addScents', addScents);
app.post('/update', update);
app.post('/final', final);
app.use('*', routeNotFound);
app.use(bigError);

//----------Home
function home(req, res) {
  res.status(200).render('pages/home');
}

//----------Candles in Database
function addInventory(req, res) {
  let input = req.body;
  const SQL =
    'INSERT INTO candles (name, scent, amount, num) VALUES ($1, $2, $3, $4)';
  const param = [input.name, input.scent, input.amount, input.num];

  client.query(SQL, param);
  res.redirect('/inventory');
}

//----------Show Inventory
function inventory(req, res) {
  let SQL = `SELECT * FROM candles`;

  client
    .query(SQL)
    .then((results) => {
      let dataBaseInfo = results.rows;

      res.render('pages/inventory', { output: dataBaseInfo });
    })
    .catch((err) => console.log(err));
}

//----------Change Database With Calculation
function addCalc(req, res) {
  let input = req.body;
  const SQL = 'INSERT INTO scent (name, amount) VALUES ($1, $2)';
  const param = [input.name, input.amount];

  client.query(SQL, param);
  res.redirect('/calc');
}

function final(req, res) {
 let start = parseFloat(req.body.www);
 console.log(start, "start");
 let div = start / 16;
 console.log(div, 'div');
 let final = (start + div);
 console.log(final, 'final');
 res.status(200).render('pages/final', { final: final });
}

function calc(req, res) {
  let SQL = `SELECT * FROM scent`;

  client
    .query(SQL)
    .then((results) => {
      let dataBaseInfo = results.rows;
res.status(200).render('pages/calc', { output: dataBaseInfo });
      // res.render('pages/calc', { output: dataBaseInfo });
    })
    .catch((err) => console.log(err));
}

//----------Scents in Database
function addScents(req, res) {
  let input = req.body;
  const SQL = 'INSERT INTO scent (name, amount) VALUES ($1, $2)';
  const param = [input.name, input.amount];

  client.query(SQL, param);
  res.redirect('/scents');
}
//----------Show Scents
function scents(req, res) {
  let SQL = `SELECT * FROM scent`;

  client
    .query(SQL)
    .then((results) => {
      let dataBaseInfo = results.rows;

      res.render('pages/scents', { output: dataBaseInfo });
    })
    .catch((err) => console.log(err));
}

function update(req, res) {
  let input = req.body;
  // const name = input.name;
  // const column = input.column;
  console.log(input.column);
  if (input.column === 'num') {
    const SQL = 'UPDATE candles SET num = ($1) WHERE name = ($2)';
    const param = [input.value, input.name];
    console.log(param);
    client.query(SQL, param);
  } else if (input.column === 'amount') {
    const SQL = 'UPDATE candles SET amount = ($1) WHERE name = ($2)';
    const param = [input.value, input.name];
    console.log(param);
    client.query(SQL, param);
  }

  res.redirect('/inventory');
}

//----------404 Error
function routeNotFound(req, res) {
  res.status(404).send('Route NOT Be Found!');
}

//----------All Errors minus 404
function bigError(error, res) {
  console.log(error);
  res.status(error).send('BROKEN!');
}

//----------Connect to Server and Database
client.connect(() => {
  app.listen(PORT, () => console.log(`WORKING!: ${PORT}`));
});
