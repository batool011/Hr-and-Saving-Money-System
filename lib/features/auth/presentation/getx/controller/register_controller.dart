import 'dart:convert';
import 'package:career/core/constant/class/app_string.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../data/model/country_model.dart';

class RegisterController extends GetxController {
  var currentStep = 0.obs;
  final int totalSteps = 5;
  final selectedGender = RxnString();
  RxList<CountryModel> countries = <CountryModel>[].obs;
  var allCountries = <CountryModel>[].obs;
  var filteredCountries = <CountryModel>[].obs;
  RxString selectedCountryName = ''.obs;

  void selectCountry(CountryModel country) {
    selectedCountryName.value =  country.en;
  }

  void nextStep() {
    if (currentStep.value < totalSteps - 1) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }


  final genderItems = <String>[
  AppString.female.tr,
    AppString.male.tr
  ].obs;




  void setSelected(String? value) {
  selectedGender.value = value;
  }

  Future<void> loadCountries({String? initialCode}) async {
    final String data = await rootBundle.loadString(
      'assets/data/countries.json',
    );
    final List<dynamic> jsonList = json.decode(data);
    countries.value = jsonList.map((e) => CountryModel.fromJson(e)).toList();
    allCountries.value = jsonList.map((e) => CountryModel.fromJson(e)).toList();
    filteredCountries.value = jsonList
        .map((e) => CountryModel.fromJson(e))
        .toList();

    if (initialCode != null && initialCode.isNotEmpty) {
      final found = countries.firstWhere(
            (c) => c.code.toUpperCase() == initialCode.toUpperCase(),
        orElse: () =>
            CountryModel(code: initialCode, en: initialCode, ar: initialCode),
      );
      selectedCountryName.value = found.en; // always English
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadCountries();
  }
}
