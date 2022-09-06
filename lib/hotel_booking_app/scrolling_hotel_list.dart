import 'package:flutter/material.dart';

class ScrollingHotelList extends StatelessWidget {
  const ScrollingHotelList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/06/14/21/15/bedroom-3475656_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.indigoAccent[100],
                                  borderRadius:
                                      BorderRadius.circular(4),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        const Text('Carden Inn Times Square'),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.blueGrey,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'New York, NY(LAG)',
                              style: TextStyle(
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}