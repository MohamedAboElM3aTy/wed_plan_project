import 'package:flutter/material.dart';

import 'package:wed_plan_project/data/dummy_data.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/utilities/routes.dart';
import 'package:wed_plan_project/views/widgets/rounded_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Vendor> search(String query) {
    List<Vendor> results = [];
    results.addAll(
      availableVendors.where(
        (vendor) => vendor.name.toLowerCase().contains(query.toLowerCase()),
      ),
    );
    return results;
  }

  final _searchController = TextEditingController();
  List<Vendor> _results = [];

  void _onSearch() {
    setState(() {
      _results = search(_searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter Vendor Name',
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          RoundedButton(
            color: Colors.deepPurpleAccent,
            textColor: Colors.white,
            press: _onSearch,
            text: 'Search',
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemCount: _results.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                Vendor vendor = _results[index];
                return ListTile(
                  title: Text(
                    vendor.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  leading: Container(
                    width: 80,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      vendor.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () =>
                      Navigator.of(context, rootNavigator: true).pushNamed(
                    AppRoutes.vendorDetails,
                    arguments: {
                      'vendor': vendor,
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
