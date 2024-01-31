import 'package:blunalom/views/exercise_view.dart';
import 'package:blunalom/views/history_view.dart';
import 'package:blunalom/views/measure_view.dart';
import 'package:blunalom/views/profile_view.dart';
import 'package:blunalom/views/workout_view.dart';
import 'package:get/get.dart';

class HistoryViewController extends GetxController{
    void navToProfileView(){
    Get.to(ProfileView());
  }
  void navToHistoryView(){
    Get.to(HistoryView());
  }
  void navToWorkoutView(){
    Get.to(WorkoutView());
  }
  void navToExercisesView(){
    Get.to(ExercisesView());
  }
  void navToMeasureView(){
    Get.to(MeasureView());
  }
}