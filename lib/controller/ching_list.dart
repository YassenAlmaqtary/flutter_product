import 'package:get/get.dart';


class ChingListCountroller extends GetxController{

   late RxInt currentIndex;


   @override
   void onInit() {
     currentIndex=0.obs;
   }

   void chingCurent(int current){
     currentIndex.value=current;
   }


}










