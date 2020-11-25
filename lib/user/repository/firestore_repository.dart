import 'package:coworking_app/user/model/service_enroll.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class FirestoreRepository {


  Future<bool> createServiceEnroll(ServiceEnroll serviceEnroll)async{
    try{
      CollectionReference enroll = Firestore.instance.collection('enroll');
      await enroll.add({
        "service":serviceEnroll.service,
        "name":serviceEnroll.name,
        "lastName":serviceEnroll.lastName,
        "profession":serviceEnroll.profession,
        "skill":serviceEnroll.skill,
      });
      return true;
    }catch(e){
      return false;
    }


  }



}