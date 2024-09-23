import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/utils/number_constant.dart';
import 'controller/image_controller.dart';

class ImageScreen extends GetView<ImageController> {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Hero(
            tag: 'hero',
            child: Text(
              "PixSnap",
              style: TextStyle(
                  fontSize: doubleTwentyTwo,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        backgroundColor: Colors.blue,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          int columns = (MediaQuery.of(context).size.width / doubleOneHundredFifty).floor();
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: doubleTen,
              mainAxisSpacing: doubleTen,
              childAspectRatio: zeroPEight,
            ),
            itemCount: intTen,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(doubleEight),
                child: Card(
                  elevation: doubleTwo,
                  child: Container(
                    height: doubleTwoHundred,
                    width: doubleFourHundred,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(doubleTen),
                      color: Colors.grey.withOpacity(zeroPTwo),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          int columns = (MediaQuery.of(context).size.width / doubleOneHundredFifty).floor();
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: doubleTen,
              mainAxisSpacing: doubleTen,
              childAspectRatio: zeroPEight,
            ),
            itemCount: controller.images.length,
            itemBuilder: (context, index) {
              final image = controller.images[index];
              return Padding(
                padding: const EdgeInsets.all(doubleEight),
                child: Card(
                  color: Colors.blue,
                  elevation: doubleTwo,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(doubleTen),
                              topRight: Radius.circular(doubleTen)),
                          child: Image.network(
                            image['webformatURL'],
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: doubleTwenty,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(doubleEight),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: doubleEight),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(right: doubleEight),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      '${image['likes']}',
                                      style: const TextStyle(
                                          fontSize: doubleSixteen,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: doubleEight),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: doubleEight),
                                      child: Icon(Icons.tv, color: Colors.black,),
                                    ),
                                    Text(
                                      '${image['views']}',
                                      style: const TextStyle(
                                          fontSize: doubleSixteen,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
