import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/currency_card.dart';

void main() {
  /*
  var nico = Player(name: "Potato");  // 여기서 new Player()라고 할 필요는 없다. Dart 특
  nico.name;  // potato;
  */
  runApp(const App());
}

/*
class Player() {
  String name;

  // Player Constructor 만들기
  Player({required this.name});  // -> argument를 받아 name에 넣음, named parameter

}
*/
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //build 메소드는 Widget을 return 해야 한다.
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          // Hey, Selena
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          // Welcome back
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  //Total Balance
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  // $ 5 194 382
                  '\$5 194 382',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  // Button(Transfer, Request)
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  dx: 0,
                  dy: 0,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  dx: 0,
                  dy: -20,
                ),
                const CurrencyCard(
                  name: 'Dollor',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                  dx: 0,
                  dy: -40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
2-3 Hello World  // 23.07.19  (1)

Widget이란? 앱의 UI를 만드는 레고 블럭
앱의 버튼이나, 텍스트 등 모든 것?

Widget 만드는 것? class 만드는 것

단순히 class 지정 한다고 widget이 아님, flutter SDK에 있는 3개의 core Widget 중 하나를 상속(extend) 받아야 함
-> "class App extends StatelessWidget" 여기서 State....은 가장 기초적이고 쉬운 것
-> 이건 build를 필요로 함

MaterialApp는 구글 스타일 (애플 스타일은 다른 거)

-----
Hello World를 출력해보았는데, 이상하다.
모든 앱의 모바일 화면은 scaffold가 필요하다.

class 끝에 ','을 찍는 걸 잊지 말자. 코드가 보기 좋아진다.

 */

/*
2-4 Class Recap // 23.07.19  (2)
<named parameter>
class method에 required ...
넘겨주는 argument에 name: "Potato"

String? 를 사용하면 required가 아님
name을 가질 수도, 가지지 않을 수도 있다.
파라미터 없이도 만들 수 있음.

마우스로 가져다 대면 나타나는 constructor들에 '?'가 있으면 필수가 아님
 */
