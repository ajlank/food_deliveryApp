import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foodapp/address/controller/address_controller.dart';
import 'package:foodapp/address/model/address_model.dart';
import 'package:get/instance_manager.dart';

class SelectAddressTile extends HookWidget {
  const SelectAddressTile({super.key, required this.address});

  final AddressModel address;

  @override
  Widget build(BuildContext context) {
    print(address.address);
    AddressController controller = Get.put(AddressController());
    return ListTile(
      onTap: () {
        controller.setAddress(address);
        Navigator.of(context).pop();
      },
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Color(0xFFffe5db),
        child: Icon(Icons.location_pin, color: Color(0xFF5b3e2b)),
      ),
      title: Text(
        address.addressType.toUpperCase(),

        style: TextStyle(
          fontSize: 13,
          color: Color(0xFF5b3e2b),
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                address.address,
                style: TextStyle(
                  color: Color(0xFF5b3e2b),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                address.phone,
                style: TextStyle(
                  color: Color(0xFF5b3e2b),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: Text(
        controller.address != null && controller.address!.id == address.id
            ? "Selected"
            : "Select",
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFF5b3e2b),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
