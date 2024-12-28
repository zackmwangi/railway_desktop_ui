import '../../../util/service_locator.dart';

class IntroFooter extends StatelessWidget {
  IntroFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        //color: Colors.white,
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith(
                (states) {
                  return appColorsBgLightColor;
                },
              ),
              side: WidgetStateProperty.resolveWith(
                (states) {
                  return const BorderSide(
                    width: 1.5,
                    color: appColorsBgLightColor,
                  );
                },
              ),
              minimumSize: WidgetStateProperty.resolveWith((states) {
                return const Size(200, 48);
              }),
            ),
            child: const Text(
              'Get started >',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              appRouter.navigate(const AuthSignUpRoute());
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
