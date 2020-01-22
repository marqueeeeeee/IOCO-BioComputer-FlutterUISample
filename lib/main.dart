import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color parseColor(String color) {
    String hex = color.replaceAll("#", "");
    if (hex.isEmpty) hex = "ffffff";
    if (hex.length == 3) {
      hex =
          '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
    }
    Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
    return col;
  }

  Widget getView1() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          ShowUp(
            child: RotateAnimation(),
            duration: 1500,
            delay: 100,
            isBig: false,
            clipView: false,
          ),
          Spacer(),
          ShowUp(
            child: Text(
              'BETTER THAN\n\n\nQUANTUM',
              textAlign: TextAlign.center,
              textScaleFactor: 0.5,
              style: TextStyle(
                  // fontSize: 5,
                  color: Colors.white,
                  letterSpacing: 20,
                  fontWeight: FontWeight.bold),
            ),
            duration: 800,
            delay: 500,
          ),
          SizedBox(
            height: 20,
          ),
          ShowUp(
            child: Text(
              'IOCO',
              softWrap: true,
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  letterSpacing: -4,
                  fontWeight: FontWeight.bold),
            ),
            isBig: true,
            delay: 600,
            duration: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          ShowUp(
            child: Text(
              'BIOCOMPUTER',
              style: TextStyle(
                  fontSize: 10,
                  color: parseColor("AA2769"),
                  letterSpacing: 10,
                  fontWeight: FontWeight.bold),
            ),
            delay: 900,
            duration: 500,
          ),
          SizedBox(
            height: 50,
          ),
          ShowUp(
            child: FlatButton(
              focusColor: parseColor("AA2769"),
              splashColor: parseColor("AA2769"),
              hoverColor: parseColor("AA2769"),
              onPressed: () {},
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "PRE-ORDER NOW",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      height: 80,
                      width: 80,
                      color: parseColor("AA2769").withOpacity(0.2),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
                side: BorderSide(
                  color: parseColor("AA2769"),
                  width: 3,
                ),
              ),
            ),
            isBig: true,
            clipView: false,
            delay: 900,
            duration: 800,
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget getView2() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          ShowUp(
            child: RotateAnimation(),
            duration: 1500,
            delay: 100,
            isBig: false,
            clipView: false,
          ),
          Spacer(),
          ShowUp(
            child: Text(
              'HACKING\n\nTHE\n\nCELL',
              textAlign: TextAlign.center,
              textScaleFactor: 0.6,
              style: TextStyle(
                  // fontSize: 5,
                  color: Colors.white,
                  letterSpacing: 20,
                  fontWeight: FontWeight.bold),
            ),
            duration: 800,
            delay: 500,
          ),
          SizedBox(
            height: 20,
          ),
          ShowUp(
            child: Text(
              'Creating a Biocomputer',
              softWrap: true,
              textScaleFactor: 0.5,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold),
            ),
            isBig: true,
            delay: 600,
            duration: 800,
          ),
          SizedBox(
            height: 50,
          ),
          ShowUp(
            child: FlatButton(
              focusColor: parseColor("AA2769"),
              splashColor: parseColor("AA2769"),
              hoverColor: parseColor("AA2769"),
              onPressed: () {},
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "LEARN MORE",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      height: 80,
                      width: 80,
                      color: parseColor("AA2769").withOpacity(0.2),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
                side: BorderSide(
                  color: parseColor("AA2769"),
                  width: 3,
                ),
              ),
            ),
            isBig: true,
            clipView: false,
            delay: 1200,
            duration: 800,
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: parseColor("FFCB43E0"),
          scaffoldBackgroundColor: parseColor("28153D")),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("IOCO"),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          shape: Border.all(color: Colors.transparent),
          elevation: 0,
        ),
        endDrawer: Drawer(),
        body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.topCenter,
                    colors: [
                      parseColor("A122EE").withOpacity(0.5),
                      Colors.transparent
                    ],
                    radius: 1.2,
                    focal: Alignment.topCenter,
                    focalRadius: 0.0005,
                  ),
                ),
                child: getView2()),
          ],
        ),
      ),
    );
  }
}

class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;
  final int duration;
  final bool isBig;
  final bool clipView;

  ShowUp(
      {@required this.child,
      this.delay,
      this.duration,
      this.isBig = false,
      this.clipView = true});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  AnimationController _animController;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration ?? 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);

    _animOffset = Tween<Offset>(
            begin: Offset(0.0, widget.isBig ? 0.5 : 0.35), end: Offset.zero)
        .animate(curve);

    if (widget.delay == null) {
      _animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.clipView
        ? Column(
            children: <Widget>[
              ClipRect(
                child: FadeTransition(
                  child: SlideTransition(
                    position: _animOffset,
                    child: widget.child,
                  ),
                  opacity: _animController,
                ),
              ),
            ],
          )
        : FadeTransition(
            child: SlideTransition(
              position: _animOffset,
              child: widget.child,
            ),
            opacity: _animController,
          );
  }
}

class RotateAnimation extends StatefulWidget {
  @override
  _RotateAnimationState createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> anim;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 1000), vsync: this);

    anim = Tween<double>(begin: 0, end: 80).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    )..addListener(
        () {
          setState(() {});
        },
      );

    controller.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.dismissed:
          controller.forward();
          break;
        case AnimationStatus.forward:
          // TODO: Handle this case.
          break;
        case AnimationStatus.reverse:
          // TODO: Handle this case.
          break;
        case AnimationStatus.completed:
          controller.reverse();
          break;
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Transform.rotate(
        angle: anim.value,
        child: Image.asset("assets/3.png",
            scale: 2,
            alignment: Alignment.center,
            fit: BoxFit.fitHeight,
            colorBlendMode: BlendMode.color),
      ),
    );
    // return Object3D(
    //   angleY: anim.value,
    //   size: const Size(400.0, 400.0),
    //   path: "assets/1.obj",
    //   asset: true,
    // );
  }
}

class AnimatedLogo extends AnimatedWidget {
  // Make the Tweens static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
