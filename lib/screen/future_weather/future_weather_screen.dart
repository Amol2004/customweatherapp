import 'package:carousel_slider/carousel_slider.dart';
import 'package:customwheterapp/constant/app_color.dart';
import 'package:customwheterapp/constant/app_image.dart';
import 'package:customwheterapp/constant/app_string.dart';
import 'package:customwheterapp/widget/text_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 215, 231, 245),
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 10),
                    TextWidget(
                      context: context,
                      data: AppString.Pas,
                    ),
                    TextWidget(
                      context: context,
                      data: AppString.am,
                      fontSize: 10,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 83,
            left: 90,
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: CarouselSlider(
                  items: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Column(
                        children: [
                          Image.asset(AppImages.weather12),
                          Image.asset(AppImages.weather3),
                          const SizedBox(height: 5),
                          TextWidget(
                            context: context,
                            data: AppString.moon,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )
                        ],
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Column(
                        children: [
                          Image.asset(AppImages.weather9),
                          Image.asset(AppImages.weather2),
                          const SizedBox(height: 5),
                          TextWidget(
                            context: context,
                            data: AppString.moon,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )
                    
                        ],
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Column(
                        children: [
                          Image.asset(AppImages.weather9),
                          Image.asset(AppImages.weather4),
                          TextWidget(
                            context: context,
                            data: AppString.moon,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    height: 230,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: const Duration(milliseconds: 10),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, reason) {},
                    scrollDirection: Axis.horizontal,
                  ),
                )),
          ),
          Positioned(
            top: 310,
            child: Container(
              height: 310,
              width: 400,
              color: const Color.fromARGB(255, 235, 234, 237),
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 290,
                  width: 400,
                  // ignore: prefer_const_constructors
                  color: Color.fromARGB(255, 235, 234, 237),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 50,
                                height: 100,
                              ),
                              TextWidget(
                                context: context,
                                data: AppString.today,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(width: 100),
                              TextWidget(
                                context: context,
                                data: AppString.next,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const Second_screen(),
                                    //     ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  )),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          // mainAxisAlignment:
                          // MainAxisAlignment.start, // Uncomment this line
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Container(
                                height: 135,
                                width: 90,
                                color: const Color.fromARGB(255, 48, 114, 227),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 5),
                                    TextWidget(
                                      context: context,
                                      data: AppString.am,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Image.asset(
                                      AppImages.weather8,
                                      height: 70,
                                    ),
                                    Image.asset(
                                      AppImages.weather3,
                                      height: 24,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white,
                              ),
                              height: 135,
                              width: 90,
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  TextWidget(
                                    context: context,
                                    data: AppString.clock,
                                  ),
                                  Image.asset(
                                    AppImages.weather7,
                                    height: 70,
                                  ),
                                  const SizedBox(height: 5),
                                  Image.asset(
                                    AppImages.weather2,
                                    height: 30,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white,
                              ),
                              height: 135,
                              width: 90,
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  TextWidget(
                                    context: context,
                                    data: AppString.clock1,
                                  ),
                                  Image.asset(
                                    AppImages.weather11,
                                    height: 60,
                                  ),
                                  const SizedBox(height: 2),
                                  Image.asset(
                                    AppImages.weather4,
                                    color: AppColors.black,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 295,
            left: 60,
            right: 80,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              height: 50,
              child: Column(
                children: [
                  Row(children: [
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        const Icon(
                          Icons.water_drop,
                          size: 15,
                        ),
                        TextWidget(
                          context: context,
                          data: AppString.per,
                          fontSize: 10,
                        ),
                        TextWidget(
                          context: context,
                          data: AppString.hum,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(width: 18),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.air,
                              size: 15,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.km,
                              fontSize: 10,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.wind,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 18),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.military_tech,
                              size: 15,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.miter,
                              fontSize: 10,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.ait,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                     Row(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.wifi_tethering_error,
                              size: 15,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.km2,
                              fontSize: 10,
                            ),
                            TextWidget(
                              context: context,
                              data: AppString.visibility,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ),

          Positioned(
            top: 68,
            child: Padding(
              padding: const EdgeInsets.only(left: 130  ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.whiteColor,
              
                ),
                
                child: SizedBox(
                  height: 20,
                  width: 110,
                  
                  child: Padding(
                    padding: const EdgeInsets.only(left:5),
                    child: TextWidget(
                      
                      context: context,
                    data: AppString.Sunday,
                    color: AppColors.black,
                    fontSize: 9,
                    ),
                  ),
                ),
              ),
            ))
        ],
      ),
    );
  }
}
