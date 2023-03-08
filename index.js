const app = require("express")();

app.get("/", (_, res) => {
  return res.send({ version: "v4" });
});

app.listen(process.env.PORT, () => {
  console.log(`server running at http://localhost:${process.env.PORT}`);
});
