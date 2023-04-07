import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GettingUserPermissions extends StatefulWidget {
  const GettingUserPermissions({Key? key}) : super(key: key);

  @override
  State<GettingUserPermissions> createState() => _GettingUserPermissionsState();
}

class _GettingUserPermissionsState extends State<GettingUserPermissions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getting user permission"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  var status = await Permission.camera.status;
                  print("CAMERA PERMISSION STATUS 1 :$status");

                  if (status == PermissionStatus.denied) {
                    await Permission.camera.request();
                    status = await Permission.camera.status;
                  }
                  print("CAMERA PERMISSION STATUS 2 :$status");
                },
                child: const Text("Camera Permission")),
            ElevatedButton(
                onPressed: () async {
                  var status = await Permission.location.status;
                  print("LOCATION PERMISSION STATUS 1 :$status");

                  if (status == PermissionStatus.denied) {
                    await Permission.location.request();
                    status = await Permission.location.status;
                  }
                  print("LOCATION PERMISSION STATUS 2 :$status");
                },
                child: const Text("Location Permission")),
            ElevatedButton(
                onPressed: () async {
                  var storageStatus = await Permission.storage.status;
                  var phoneStatus = await Permission.phone.status;
                  if (storageStatus == PermissionStatus.denied ||
                      phoneStatus == PermissionStatus.denied) {
                    Map<Permission, PermissionStatus> statuses =
                    await [Permission.storage, Permission.phone].request();
                    print("PHONE PERMISSION STATUS:$statuses");
                  }
                },
                child: const Text("Storage and Phone Permissions")),
          ],
        ),
      ),
    );
  }
}
