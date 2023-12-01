import 'package:flutter/material.dart';
import 'package:flutter_playground/product.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(const MyApp());
}

/** MyApp */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Product(name: 'A', number: 10, size: "big");
      },
      child: MaterialApp(
        title: "master",
        home: ProductOrder(),
      ),
    );
  }
}

/** ProductOrder */
class ProductOrder extends StatelessWidget {
  const ProductOrder({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
            "provider",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
      ),
      body: Center(
        child: Column(
          children: [
            Text("Product Name: ${Provider.of<Product>(context).name}"),
            SizedBox(height: 20),
            First(),
          ],
        ),
      ),
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("StoreA located at 1st"),
        SizedBox(
          height: 20,
        ),
        StoreA()
      ],
    );
  }
}

class StoreA extends StatelessWidget {
  const StoreA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("1 Product Number: ${Provider.of<Product>(context).number}"),
        Text("1 Product Size: ${Provider.of<Product>(context).size}"),
        SizedBox(height: 20,),
        Second(),
      ],
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("StoreB located at 2nd"),
        SizedBox(
          height: 20,
        ),
        StoreB()
      ],
    );
  }
}

class StoreB extends StatelessWidget {
  const StoreB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("2 Product Number: ${Provider.of<Product>(context).number}"),
        Text("2 Product Size: ${Provider.of<Product>(context).size}"),
        SizedBox(height: 20,),
        Third()
      ],
    );
  }
}

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("StoreC located at 3rd"),
        SizedBox(
          height: 20,
        ),
        StoreC()
      ],
    );
  }
}

class StoreC extends StatelessWidget {
  const StoreC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("3 Product Number: ${Provider.of<Product>(context).number}"),
        Text("3 Product Size: ${Provider.of<Product>(context).size}"),
        SizedBox(height: 20,),
        ElevatedButton(
            onPressed: () {
              Provider.of<Product>(context, listen: false).changeProductNumber();
            },
            child: Text("+ product number"))
      ],
    );
  }
}

