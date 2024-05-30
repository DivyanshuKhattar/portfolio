import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Untitled UI",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    // backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            const Center(
                child: Text(
              "name",
              // style: kTitleText,
            )),
            const Center(
                child: Text(
              "@untitledui",
              // style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      //Code to launch resume
                      // final Uri url = Uri.parse(resumeLink);
                      // await launchUrl(url);
                    },
                    child: const Text(
                      "View Resume",
                      // style: kSubTitleText,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        // path: contactEmail,
                      );
                      // await launchUrl(emailLaunchUri);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          // style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: context.screenConstraint().width > 1200
                    ? const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  // style: kSectionTitleText,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("aboutWorkExperience"),
                                Divider(),
                                Text(
                                  "About Me",
                                  // style: kSectionTitleText,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("aboutMeSummary"),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                      Text(
                                        "Location",
                                        // style: kSubTitleText,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "location",
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Website",
                                        // style: kSubTitleText,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text("website"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.launch,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Portfolio",
                                        // style: kSubTitleText,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text("portfolio"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.launch,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Email",
                                        // style: kSubTitleText,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text("email"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.launch,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : const Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                // style: kSectionTitleText,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("aboutWorkExperience"),
                              Divider(),
                              Text(
                                "About Me",
                                // style: kSectionTitleText,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("aboutMeSummary"),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    Text(
                                      "Location",
                                      // style: kSubTitleText,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "location",
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Website",
                                      // style: kSubTitleText,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text("website"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Portfolio",
                                      // style: kSubTitleText,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text("portfolio"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Email",
                                      // style: kSubTitleText,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text("email"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.launch,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            // Center(
            //   child: SizedBox(
            //       width: context.screenConstraint().width * 0.8,
            //       child: GridView.builder(
            //           shrinkWrap: true,
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: context.screenConstraint().width > 1000 ? 3 : 2),
            //           itemCount: projectList.length,
            //           itemBuilder: (BuildContext context, int index) {
            //             return ProjectWidget(
            //               projectData: projectList[index],
            //             );
            //           })),
            // ),
          ],
        ),
      ),
    );
  }
}
