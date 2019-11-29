const mysrvdemo = function(srv) {
  srv.on("myfoobar", function(req, res) {
    return "Hello" + req.data.msg;
  });
};

module.exports = mysrvdemo;
