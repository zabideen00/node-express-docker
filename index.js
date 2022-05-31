const express = require(`express`);
const app = express();

app.get(`/`, (req, res) => {
    return res.status(200).send(`<h1><center>Welcome to express, Node.js</center></h1>`);
});

app.listen(3000, () => {
    console.log(`listening on port 3000`);
});