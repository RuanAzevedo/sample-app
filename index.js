const app = require("express")();

const PORT = 4567;

app.get("/", (_, res) => {
  return res.send({ version: "v4" });
});

app.listen(PORT, () => {
  console.log(`server running at http://localhost:${PORT}`);
});
