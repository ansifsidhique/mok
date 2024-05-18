import 'package:blocpersondetails/application/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetails extends StatelessWidget {
  final int id;

  const UserDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details"),),
      body: Center(
        child:
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
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
            return Container(
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.black12)
               ),

              height: 200,
              width: 400,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    persondet(id: state.userDataResult[id].employeeName, name: 'User Name',),
                    persondet(id: state.userDataResult[id].employeeSalary.toString(), name: 'User Salary',),
                    persondet(id: state.userDataResult[id].age.toString(), name: 'User age',),
                    persondet(id: state.userDataResult[id].id.toString(), name: 'User id',),

                  ],
                ),
              ),

            );
          },
        )
        ,
      ),
    );
  }
}

class persondet extends StatelessWidget {
  const persondet({
    super.key,
    required this.id, required this.name,
  });
   final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(id,style:const  TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold,),),
        ],
      ),
    );
  }
}
