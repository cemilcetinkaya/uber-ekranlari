import 'package:app/screens/Login_Register/CreateYourAccount.dart';
import 'package:app/screens/Login_Register/LogintoYourAccount.dart';
import 'package:app/screens/Login_Register/RegisterScreen.dart';
import 'package:flutter/material.dart';

class OnBordingSlider extends StatefulWidget {
  const OnBordingSlider({super.key});

  @override
  State<OnBordingSlider> createState() => _OnBordingSliderState();
}

class _OnBordingSliderState extends State<OnBordingSlider> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextButtonPressed() {
    if (_pageIndex < demo_data.length - 1) {
      _pageController.nextPage(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 300),
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: '',
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      demo_data.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: DotIndicator(isActive: index == _pageIndex),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    child: _pageIndex < demo_data.length - 1
                        ? ElevatedButton(
                            onPressed: _onNextButtonPressed,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(254, 187, 27, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              // "Sign in" butonuna tıklandığında yapılacak işlem
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LogintoYourAccount(), // Gitmek istediğiniz sayfanın adını buraya ekleyin
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(254, 187, 27, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 12, // Yükseklik sabit
      width: isActive ? 48 : 12, // Geniş ve geçiş efekti
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isActive
            ? Color.fromRGBO(254, 187, 27, 1)
            : const Color.fromARGB(255, 207, 195, 195).withOpacity(1),
        borderRadius:
            BorderRadius.circular(isActive ? 8 : 12), // Geniş ve geçiş efekti
      ),
    );
  }
}

class Onboard {
  final String image, title;

  Onboard({
    required this.image,
    required this.title,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/ptaxi2.png",
    title: "We provide professional taxi services for you",
  ),
  Onboard(
    image: "assets/images/ptaxi3.png",
    title: "Your satisfaction is our number one priority ",
  ),
  Onboard(
    image: "assets/images/ptaxi5.png",
    title: "Let's make your day great with Taxio right now!",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 300,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 45.0),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
