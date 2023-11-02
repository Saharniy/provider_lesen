import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesen/provider/user_provide.dart';

class SetingsPage extends StatelessWidget {
  SetingsPage({super.key});
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'UserName:',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUsrName(newUserName: userNameController.text);
                FocusManager.instance.primaryFocus!.unfocus();
                userNameController.clear();
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
