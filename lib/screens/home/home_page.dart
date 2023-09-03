// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710343';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Center(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(60.0),
                border: Border.all(color: Colors.black)),
            width: 600,
            height: 440,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Question 1 of 3'),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: 500,
                    height: 80,
                    child: Center(
                      child: Text('1 + 1 = ?'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: 500,
                    height: 45,
                    alignment: FractionalOffset.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Text('A'),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('2')),
                        Padding(
                          padding: const EdgeInsets.only(left: 400.0),
                          child: Icon(Icons.check),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: 500,
                    height: 45,
                    alignment: FractionalOffset.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Text('B'),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('3'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: 500,
                    height: 45,
                    alignment: FractionalOffset.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Text('C'),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('4'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: 500,
                    height: 45,
                    alignment: FractionalOffset.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(color: Colors.black),
                            ),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Text('D'),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('5'))
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        floatingActionButton: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Text('<'),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text('>'),
              )
            ],
          ),
        ));
  }
}
