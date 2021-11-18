import 'package:flutter/material.dart';

class CentralWithDevices extends StatefulWidget {
  const CentralWithDevices({Key? key}) : super(key: key);

  @override
  State<CentralWithDevices> createState() => _CentralWithDevicesState();
}

class _CentralWithDevicesState extends State<CentralWithDevices> {
  Widget buildSheet() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 31,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Text(
                'Lista de Locais',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close, size: 22, color: Colors.white),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 31,
        ),
        ListView.builder(
          itemExtent: 100,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 34),
                  child: Container(
                    height: 69,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 25),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Casa Birgman',
                            ),
                            Text(
                              'Conectado',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => buildSheet(),
          isScrollControlled: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          backgroundColor: Colors.blue[900],
        );
      },
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Local: ',
            ),
            TextSpan(
              text: 'Casa Birgman',
            ),
          ],
        ),
      ),
    );
  }
}
