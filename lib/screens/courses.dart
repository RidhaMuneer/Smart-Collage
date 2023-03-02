import 'package:flutter/material.dart';

import '../data/courses_json.dart';

// ignore: camel_case_types
class courses extends StatefulWidget {
  const courses({super.key});

  @override
  State<courses> createState() => _coursesState();
}

// ignore: camel_case_types
class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          mycourses.length,
          (index) {
            var data = mycourses[index];
            var size = MediaQuery.of(context).size;

            for (int i = 0; i < mycourses.length; i++) {
              if (data['percentage'] == 100) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 10,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 66, 92),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: size.width * .17,
                              width: size.width * .17,
                              child: ClipRect(
                                child: Image.network(
                                  data['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    data['title'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Instructor : ${data['instructor_name']}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    width: size.width,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    width: data['percentage'] * 2.8,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.amber.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amber.withOpacity(0.5),
                                          blurRadius: 6.0,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 50,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${data['percentage']}%',
                                style: const TextStyle(
                                  color: Colors.amber,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
            }
            return const Text('');
          },
        ),
      ),
    );
  }
}

// Widget checking() {
//   var data = mycourses[index];
//   var size = MediaQuery.of(context).size;
//   return Padding(
//     padding: const EdgeInsets.only(
//       top: 5,
//       bottom: 10,
//     ),
//     child: Container(
//       margin: const EdgeInsets.only(left: 10, right: 10),
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 19, 66, 92),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               SizedBox(
//                 height: size.width * .17,
//                 width: size.width * .17,
//                 child: ClipRect(
//                   child: Image.network(
//                     data['image'],
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       data['title'],
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                           fontWeight: FontWeight.w700),
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       'Instructor : ${data['instructor_name']}',
//                       style: const TextStyle(
//                         color: Colors.grey,
//                         fontSize: 11,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Stack(
//                   alignment: Alignment.centerLeft,
//                   children: [
//                     Container(
//                       width: size.width,
//                       height: 5,
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                     ),
//                     Container(
//                       width: data['percentage'] * 2.8,
//                       height: 7,
//                       decoration: BoxDecoration(
//                         color: Colors.amber.withOpacity(0.5),
//                         borderRadius: BorderRadius.circular(100),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.amber.withOpacity(0.5),
//                             blurRadius: 6.0,
//                             offset: const Offset(0, 3),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 width: 50,
//                 alignment: Alignment.centerRight,
//                 child: Text(
//                   '${data['percentage']}%',
//                   style: const TextStyle(
//                     color: Colors.amber,
//                     fontSize: 13,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }
