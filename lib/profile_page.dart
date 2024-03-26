import 'package:flutter/material.dart';

class ProfilePg extends StatefulWidget {
  const ProfilePg({super.key});

  @override
  State<ProfilePg> createState() => _ProfilePgState();
}

class _ProfilePgState extends State<ProfilePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            ClipPath(
                clipBehavior: Clip.antiAlias,
                clipper: AuthClipPath(),
                child: Image.asset("Asset/DP.jpg")),
            Container(
                width: double.infinity,
                height: 260,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(101, 223, 64, 251),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(150, 100),
                        bottomLeft: Radius.elliptical(290, 150)))),
            Container(
                width: double.infinity,
                height: 260,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(101, 223, 64, 251),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(290, 150),
                        bottomLeft: Radius.elliptical(150, 100)))),
            const Padding(
              padding: EdgeInsets.only(top: 210, left: 30),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 55,
                child: CircleAvatar(
                  backgroundImage: AssetImage("Asset/DP.jpg"),
                  radius: 50,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "3057",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(209, 146, 30, 167),
                  ),
                ),
                Text(
                  "Followers",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45),
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  "274",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(209, 146, 30, 167),
                  ),
                ),
                Text(
                  "Following",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45),
                ),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  "52",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(209, 146, 30, 167),
                  ),
                ),
                Text(
                  "Collection",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45),
                ),
              ],
            )
          ],
        ),
        const Divider(
          indent: 65,
          endIndent: 65,
          color: Color.fromARGB(209, 146, 30, 167),
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          children: [
            SizedBox(width: 80),
            Icon(
              Icons.mail_outlined,
              color: Color.fromARGB(209, 146, 30, 167),
            ),
            SizedBox(width: 10),
            Text(
              "laukeith94@gmail.com",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(209, 146, 30, 167),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          children: [
            SizedBox(width: 80),
            Icon(
              Icons.phone_enabled_outlined,
              color: Color.fromARGB(209, 146, 30, 167),
            ),
            SizedBox(width: 10),
            Text(
              "+82 95 5808 2654",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(209, 146, 30, 167),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          children: [
            SizedBox(width: 80),
            Icon(
              Icons.language_outlined,
              color: Color.fromARGB(209, 146, 30, 167),
            ),
            SizedBox(width: 10),
            Text(
              "www.laukeith.com",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(209, 146, 30, 167),
              ),
            )
          ],
        )
      ],
    ));
  }
}

class AuthClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 40);
    // Offset firstControlPoint = Offset(size.width / 4, size.height);
    // Offset firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    // firstControlPoint.dx, firstControlPoint.dy,
    //   firstPoint.dx, firstPoint.dy);
    // Offset secondConrolPoint = Offset(size.width / (4 * 3), size.height);
    // Offset secondPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(
        size.width - (size.width / 4), size.height, size.width, size.height - 40
        // secondConrolPoint.dx,
        // secondConrolPoint.dy,
        // secondPoint.dx,
        // secondPoint.dy,
        );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
