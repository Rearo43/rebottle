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
app.post('/add', saveToDataBase);
app.get('/inventory', inventory);
app.use('*', routeNotFound);
app.use(bigError);

function home(req, res) {
  res.status(200).render('pages/home');
}

function saveToDataBase(req, res) {
  console.log(req);
  const SQL = 'INSERT INTO name VALUES $1';

  database
    .query('Reagan')
    .then((data) => {
      res.status(200).redirect('/');
    })
    .catch((error) => bigError(error, res));
}

function inventory(req, res) {
  let SQL = `SELECT * FROM candles`;
//   let sql = `SELECT * FROM scent`;

  client
    .query(SQL)
    .then((results) => {
      let dataBaseInfo = results.rows;
      res.render('pages/inventory', { output: dataBaseInfo });
      console.log(dataBaseInfo);
    })
    .catch((err) => console.log(err));
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
