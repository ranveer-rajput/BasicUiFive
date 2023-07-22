import 'package:flutter/material.dart';

/// Widget that represents a container with an icon and text.
class FirstContainers extends StatelessWidget {
  final IconData icon;
  final String text;

  /// Constructor for the [FirstContainers] widget.
  /// [icon]: The icon data to be displayed in the container.
  /// [text]: The text to be displayed below the icon.
  const FirstContainers({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.135,
      width: MediaQuery.of(context).size.width * 0.29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 238, 75, 75),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

// Second container
/// Widget that represents a delivery container with two icons and texts.
class DeliveryContainer extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final IconData icon1;
  final IconData icon2;

  /// Constructor for the [DeliveryContainer] widget.
  /// [text1]: The first text to be displayed beside the first icon.
  /// [text2]: The second text to be displayed beside the second icon.
  /// [icon1]: The first icon data to be displayed.
  /// [icon2]: The second icon data to be displayed.
  const DeliveryContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.icon1,
    required this.icon2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 226, 238, 227),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 247, 117, 117),
                  ),
                  child: Icon(
                    icon1,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text1,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  height: 50,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 247, 117, 117),
                  ),
                  child: Icon(
                    icon2,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Widget that represents a sign-up container with an icon and two texts.
class SignUpWiget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String text2;

  /// Constructor for the [SignUpWiget] widget.
  /// [icon]: The icon data to be displayed in the container.
  /// [text]: The main text to be displayed in the container.
  /// [text2]: The secondary text to be displayed in the container.
  const SignUpWiget({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.82,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.grey.shade500,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, bottom: 6),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 247, 117, 117),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
