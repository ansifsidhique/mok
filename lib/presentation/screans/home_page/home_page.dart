import 'package:blocpersondetails/presentation/screans/details_page/detailse.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   //    context.read<WallpaperBloc>().add(WallPaperFetchedEvent());
  //   context.read<PersonsBloc>().add(PersonsDataFetchedEvent());
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeBloc>().add(const Initial());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employees",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),

      ),
      drawer: Drawer(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("user").doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
          builder: (context,snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            if(snapshot.hasData){
              var data=snapshot.data!.data();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text(data!["name"]),
                   Text(data!["email"]),
                   Text(data!["phone"]),


                  ]


              );
            }else{
              return SizedBox();
            }


          }
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        print(state);
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.isError) {
          return const Center(child: Text("Error find"));
        }
        if (state.userDataResult.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
            itemCount: state.userDataResult.length,
            itemBuilder: (context, index) {
              return InkWell(
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(state.userDataResult[index].employeeName),
                      trailing: CircleAvatar(
                        child: Text(state.userDataResult[index].id.toString()),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserDetails(id: index),
                    ));
                  });
            });
      }),
    );
  }
}
