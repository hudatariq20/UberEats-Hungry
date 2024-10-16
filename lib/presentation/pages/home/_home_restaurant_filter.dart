part of 'home_screen.dart';

class HomeRestaurantFilter extends StatelessWidget {
  const HomeRestaurantFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomActionChip(
              labelText: 'Rating', onPressed: () => openRatingModal(context)),
          const SizedBox(
            width: 4.0,
          ),
          CustomActionChip(
              labelText: 'Price', onPressed: () => openPriceModal(context)),
          const SizedBox(
            width: 4.0,
          ),
          CustomActionChip(
              labelText: 'Dietery', onPressed: () => openDieteryModal(context)),
          const SizedBox(
            width: 4.0,
          ),
          CustomActionChip(
              labelText: 'Delivery Fee',
              onPressed: () => openDeliveryFeeModal(context)),
          const SizedBox(
            width: 4.0,
          )
        ],
      ),
    );
  }

  Future<void> openRatingModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        builder: (context) => RatingModal());
  }

  Future<void> openPriceModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        builder: (context) => Container());
  }

  Future<void> openDieteryModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        builder: (context) => Container());
  }

  Future<void> openDeliveryFeeModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0))),
        builder: (context) => Container());
  }
}
