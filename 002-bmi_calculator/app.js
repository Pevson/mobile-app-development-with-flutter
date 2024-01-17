app.post('/calculate_bmi', (req, res) => {
const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

app.post('/calculate_bmi', (req, res) => {
  const { height, weight } = req.body;

  if (!height || !weight) {
    return res.status(400).json({ error: 'Please provide height and weight' });
  }

  const heightInMeters = height / 100.0;
  const bmi = weight / (heightInMeters * heightInMeters);

  res.json({ bmi: bmi });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
});
