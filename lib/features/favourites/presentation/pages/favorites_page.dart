import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/features/favourites/presentation/cubit/favourite_bloc.dart';
import 'package:wed_plan_project/features/favourites/presentation/widgets/favorites_container.dart';
import 'package:wed_plan_project/models/vendor.dart';
import 'package:wed_plan_project/utilities/routes.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late final FavouriteBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<FavouriteBloc>(context);
    super.initState();
  }

  void _selectVendor(BuildContext context, Vendor vendor) {
    Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.vendorDetails,
      arguments: {
        'vendor': vendor,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (_, state) {
          if (state is FavouriteLoaded) {
            if (state.vendors.isEmpty) {
              return Center(
                child: Text(
                  'No favorites yet. Try adding some!',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              );
            }
            return ListView.builder(
              itemCount: state.vendors.length,
              itemBuilder: (context, index) {
                final vendor = state.vendors[index];
                return InkWell(
                  onTap: () => _selectVendor(context, vendor),
                  child: Dismissible(
                    key: Key(vendor.name),
                    direction: DismissDirection.endToStart,
                    onDismissed: (_) {
                      // Remove the item from favorites using the bloc
                      _bloc.add(RemoveFavoriteEvent(vendor));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('${vendor.name} Removed from favorites.'),
                        ),
                      );
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 16),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                    child: FavoriteContainer(vendor: vendor),
                  ),
                );
              },
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
