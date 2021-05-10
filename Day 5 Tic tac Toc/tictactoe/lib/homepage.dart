import 'package:flutter/material.dart';

class HOMEPAGE extends StatefulWidget {
  @override
  _HOMEPAGEState createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  // to add icon image

  var cross = Icon(
    Icons.cancel,
    size: 80,
  );
  var circle = Icon(
    Icons.circle,
    size: 80,
  );
  var edit = Icon(
    Icons.edit,
    size: 80,
  );

  bool iscross = true;
  String message;
  List<String> gameState;

  // intialize box with emty value

  void initState() {
    gameState = List.filled(9, "empty");
    this.message = "";
    super.initState();
  }

  // to play game

  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.iscross) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        iscross = !iscross;
        CheckWin();
      });
    }
  }

  // reset game

  resetGame() {
    setState(() {
      gameState = List.filled(9, "empty");
      this.message = "";
    });
  }
  // to get icon image

  Icon getImage(String title) {
    switch (title) {
      case ('empty'):
        return edit;
        break;

      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  //to check for wining

  CheckWin() {
    if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      setState(() {
        this.message = this.gameState[0] + 'Win';
      });
    } else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = this.gameState[3] + 'Win';
      });
    } else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = this.gameState[6] + 'Win';
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = this.gameState[0] + 'Win';
      });
    } else if ((gameState[1] != 'empty') &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = this.gameState[1] + 'Win';
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = this.gameState[2] + 'Win';
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = this.gameState[0] + 'Win';
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = this.gameState[2] + 'Win';
      });
    } else if (!gameState.contains("empty")) {
      setState(() {
        message = "game draw";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: gameState.length,
                  itemBuilder: (context, i) => SizedBox(
                        width: 100,
                        height: 100,
                        child: MaterialButton(
                            onPressed: () {
                              this.playGame(i);
                            },
                            child: getImage(this.gameState[i])),
                      ))),
          Text(message,style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),),
          MaterialButton(
            onPressed: () {
              resetGame();
            },
            child: Text("Reset Game"),
          )
        ],
      ),
    );
  }
}
