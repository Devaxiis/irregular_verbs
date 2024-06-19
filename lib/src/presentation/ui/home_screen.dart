import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:irregular_verbs/src/domain/models/main_model.dart';
import 'package:irregular_verbs/src/presentation/provider/get_data.dart';
import 'package:irregular_verbs/src/utils/contants/app_colors.dart';
import 'package:irregular_verbs/src/utils/custom_widget/custom_widget.dart';
import 'package:irregular_verbs/src/utils/data/data_base.dart';
import 'package:irregular_verbs/src/utils/style/app_style.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  TextEditingController controllerText = TextEditingController();
  List<MainModel> value = [];
  MainModel data = MainModel(present: "", past: '', future: '', translate: '');
  int onPop = 0;
  bool onPopBool = false;
  int index = 0;

  @override
  void initState() {
    super.initState();
    value.addAll(DataBase.appDataBase);
  }

  @override
  Widget build(BuildContext context) {
    final item = Provider.of<GetDataProvider>(context, listen: false);
    return PopScope(
      onPopInvoked: (pop){
        if (onPop < 2) {
          Future.delayed(const Duration(seconds: 1)).then((value) {
            onPop = 0;
          });
          onPop += 1;
          onPopBool = true;
          UiToast.uiToastBottom("back", context);
        } else if (onPop == 2) {
          onPopBool = false;
          onPop = 0;
        }
        setState(() {});
      },
      canPop: onPopBool,
      child: Scaffold(
        // Backgroun Color
        backgroundColor: AppColors.colorEFF2F1,

        // AppBar Style
        appBar: AppBar(
          forceMaterialTransparency: false,
          backgroundColor: AppColors.color045646,
          automaticallyImplyLeading: false,
          title: const Text(
            'verb',
            style: AppStyle.mainAppBarStyle,
          ).tr(),
          actions: [
            DropdownButton(
              dropdownColor: AppColors.colorWhite,
              alignment: Alignment.centerRight,
              underline: const SizedBox(),
              iconEnabledColor: AppColors.colorWhite,
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text("Rus tili"),
                ),
                DropdownMenuItem(
                  value: 'uz',
                  child: Text("Uzbek"),
                ),
              ],
              onChanged: (Object? value) {
                if (value == "en") {
                  context.setLocale(const Locale("ru", "RU"));
                } else {
                  context.setLocale(const Locale("uz", "UZ"));
                }
              },
            ),
            const SizedBox(width: 20),
          ],
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.sizeOf(context).width, 50),
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: AppColors.color045646,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: controllerText,
                  style: const TextStyle(
                    color: AppColors.colorWhite,
                  ),
                  onChanged: (c){
                    item.getData(c);
                    setState(() {});
                  },
                  autocorrect: true,
                  cursorColor: AppColors.colorWhite,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(color: AppColors.colorWhite),
                      hintText: "search".tr(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          item.getData(controllerText.text);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.search,
                          color: AppColors.colorWhite,
                        ),
                      )),
                ),
              ),
            ),
          ),
        ),

        // Body
        body: Scrollbar(
          controller: controller,
          child: ListView.builder(
              primary: true,
              physics: const BouncingScrollPhysics(),
              itemCount: item.currentData.present == "" ? value.length : 1,
              itemBuilder: (context, index) {
                if (item.currentData.present == "") {
                  data = value[index];
                } else {
                  data = item.currentData;
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 105,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.color045646,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${data.present} - ${data.past} - ${data.future}",
                          style: AppStyle.mainCardStyle,
                        ),
                        Text(
                          data.translate,
                          style: AppStyle.mainCard2Style,
                        ).tr(),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
