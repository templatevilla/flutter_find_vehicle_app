import 'package:find_vehile_app/util/images.dart';

import '../model/car_option_model.dart';

class CarData{

  static List<CarOption> getCarOption(){
    return [
      CarOption("GoCab Medium","Toyota HR-V","White",GetImages.toyotaImage,"23.0","4"),
      CarOption("GoCab Small","Honda Civic","White",GetImages.hondaImage,"18.5","2"),
    ];
  }
}