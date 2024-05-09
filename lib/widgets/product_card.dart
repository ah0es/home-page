import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter/widgets/icon_app.dart';
import 'package:test_flutter/widgets/text_data.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: 370,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.3),
        //color: Colors.amber,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 370,
                height: 153,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ddde 2708.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 15,
                      width: 15,
                      // padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset('assets/icons/location.svg'),
                    ),
                    const Text(
                      "الرياض",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "ALMAJDIAH 125",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 7),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "مصممة لتوفير مستوى معيشي جديد.",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3),
              const Divider(thickness: 0.5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextData(t1: 'خيارات البيع', t2: 'نقدا, بنك'),
                  TextData(t1: 'موعد التسليم', t2: 'ابريل 2024'),
                  TextData(t1: 'سعر يبدأ من', t2: '1,200,000 ريال'),
                ],
              ),
              const Divider(thickness: 0.5),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(9),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset('assets/icons/whatsapp.svg'),
                    ),
                    Container(
                      height: 45,
                      width: 295,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.1,
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        "تفاصيل اكثر",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                const IconApp(
                  icon: 'assets/icons/heart.svg',
                  paddingValue: 9,
                ),
                const SizedBox(width: 10),
                const IconApp(
                  icon: 'assets/icons/export.svg',
                  paddingValue: 9,
                ),
                const SizedBox(width: 160),
                Container(
                  height: 33,
                  width: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff00713B),
                  ),
                  child: const Center(
                    child: Text(
                      "متاح للبيع",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}