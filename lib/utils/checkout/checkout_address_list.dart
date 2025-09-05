import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foodapp/address/hooks/fetch/fetch_address_list.dart';
import 'package:foodapp/utils/checkout/select_address_tile.dart';

class CheckoutAddressList extends HookWidget {
  const CheckoutAddressList({super.key});

  @override
  Widget build(BuildContext context) {
    final result = fetchAddressList();

    final isLoading = result.isLoading;
    final error = result.error;
    if (isLoading) {
      return CircularProgressIndicator();
    }
    final address = result.addressList;
    print(address.length);
    return ListView(
      children: List.generate(address.length, (i) {
        return SelectAddressTile(address: address[i]);
      }),
    );
  }
}
