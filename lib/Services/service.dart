import 'package:e_commerceapp/Repository/repository.dart';
import 'package:flutter/material.dart';



class SliderService{
  Repository _repository;

  SliderService(){
    _repository=Repository();
  }
  getSlider()async{
    return await _repository.httpGet("sliders");
  }
}