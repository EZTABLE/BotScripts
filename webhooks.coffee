module.exports = (robot) ->
  robot.router.post "/slack/hooks", (req, res) ->
    console.log(req.body)
    msg = req.body.message
    robot.send {room: name}, msg for name in req.body.cc
    res.end "OK"
