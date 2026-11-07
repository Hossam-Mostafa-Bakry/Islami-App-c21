import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';
import 'package:islami_app_c21/core/theme/app_colors.dart';
import 'package:islami_app_c21/model/sura_data_model.dart';
import 'package:islami_app_c21/modules/quran/widgets/sura_item.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  final List<SuraDataModel> _surasList = [
    SuraDataModel(
      id: "1",
      nameAR: "الفاتحة",
      nameEN: "Al-Fatiha",
      ayaNumbers: "7",
    ),
    SuraDataModel(
      id: "2",
      nameAR: "البقرة",
      nameEN: "Al-Baqarah",
      ayaNumbers: "286",
    ),
    SuraDataModel(
      id: "3",
      nameAR: "آل عمران",
      nameEN: "Aal-E-Imran",
      ayaNumbers: "200",
    ),
    SuraDataModel(
      id: "4",
      nameAR: "النساء",
      nameEN: "An-Nisa",
      ayaNumbers: "176",
    ),
    SuraDataModel(
      id: "5",
      nameAR: "المائدة",
      nameEN: "Al-Maidah",
      ayaNumbers: "120",
    ),
    SuraDataModel(
      id: "6",
      nameAR: "الأنعام",
      nameEN: "Al-Anam",
      ayaNumbers: "165",
    ),
    SuraDataModel(
      id: "7",
      nameAR: "الأعراف",
      nameEN: "Al-Araf",
      ayaNumbers: "206",
    ),
    SuraDataModel(
      id: "8",
      nameAR: "الأنفال",
      nameEN: "Al-Anfal",
      ayaNumbers: "75",
    ),
    SuraDataModel(
      id: "9",
      nameAR: "التوبة",
      nameEN: "At-Tawbah",
      ayaNumbers: "129",
    ),
    SuraDataModel(id: "10", nameAR: "يونس", nameEN: "Yunus", ayaNumbers: "109"),
    SuraDataModel(id: "11", nameAR: "هود", nameEN: "Hud", ayaNumbers: "123"),
    SuraDataModel(id: "12", nameAR: "يوسف", nameEN: "Yusuf", ayaNumbers: "111"),
    SuraDataModel(
      id: "13",
      nameAR: "الرعد",
      nameEN: "Ar-Rad",
      ayaNumbers: "43",
    ),
    SuraDataModel(
      id: "14",
      nameAR: "إبراهيم",
      nameEN: "Ibrahim",
      ayaNumbers: "52",
    ),
    SuraDataModel(
      id: "15",
      nameAR: "الحجر",
      nameEN: "Al-Hijr",
      ayaNumbers: "99",
    ),
    SuraDataModel(
      id: "16",
      nameAR: "النحل",
      nameEN: "An-Nahl",
      ayaNumbers: "128",
    ),
    SuraDataModel(
      id: "17",
      nameAR: "الإسراء",
      nameEN: "Al-Isra",
      ayaNumbers: "111",
    ),
    SuraDataModel(
      id: "18",
      nameAR: "الكهف",
      nameEN: "Al-Kahf",
      ayaNumbers: "110",
    ),
    SuraDataModel(id: "19", nameAR: "مريم", nameEN: "Maryam", ayaNumbers: "98"),
    SuraDataModel(id: "20", nameAR: "طه", nameEN: "Ta-Ha", ayaNumbers: "135"),
    SuraDataModel(
      id: "21",
      nameAR: "الأنبياء",
      nameEN: "Al-Anbiya",
      ayaNumbers: "112",
    ),
    SuraDataModel(
      id: "22",
      nameAR: "الحج",
      nameEN: "Al-Hajj",
      ayaNumbers: "78",
    ),
    SuraDataModel(
      id: "23",
      nameAR: "المؤمنون",
      nameEN: "Al-Muminun",
      ayaNumbers: "118",
    ),
    SuraDataModel(
      id: "24",
      nameAR: "النور",
      nameEN: "An-Nur",
      ayaNumbers: "64",
    ),
    SuraDataModel(
      id: "25",
      nameAR: "الفرقان",
      nameEN: "Al-Furqan",
      ayaNumbers: "77",
    ),
    SuraDataModel(
      id: "26",
      nameAR: "الشعراء",
      nameEN: "Ash-Shuara",
      ayaNumbers: "227",
    ),
    SuraDataModel(
      id: "27",
      nameAR: "النمل",
      nameEN: "An-Naml",
      ayaNumbers: "93",
    ),
    SuraDataModel(
      id: "28",
      nameAR: "القصص",
      nameEN: "Al-Qasas",
      ayaNumbers: "88",
    ),
    SuraDataModel(
      id: "29",
      nameAR: "العنكبوت",
      nameEN: "Al-Ankabut",
      ayaNumbers: "69",
    ),
    SuraDataModel(
      id: "30",
      nameAR: "الروم",
      nameEN: "Ar-Rum",
      ayaNumbers: "60",
    ),
    SuraDataModel(
      id: "31",
      nameAR: "لقمان",
      nameEN: "Luqman",
      ayaNumbers: "34",
    ),
    SuraDataModel(
      id: "32",
      nameAR: "السجدة",
      nameEN: "As-Sajdah",
      ayaNumbers: "30",
    ),
    SuraDataModel(
      id: "33",
      nameAR: "الأحزاب",
      nameEN: "Al-Ahzab",
      ayaNumbers: "73",
    ),
    SuraDataModel(id: "34", nameAR: "سبأ", nameEN: "Saba", ayaNumbers: "54"),
    SuraDataModel(id: "35", nameAR: "فاطر", nameEN: "Fatir", ayaNumbers: "45"),
    SuraDataModel(id: "36", nameAR: "يس", nameEN: "Ya-Sin", ayaNumbers: "83"),
    SuraDataModel(
      id: "37",
      nameAR: "الصافات",
      nameEN: "As-Saffat",
      ayaNumbers: "182",
    ),
    SuraDataModel(id: "38", nameAR: "ص", nameEN: "Sad", ayaNumbers: "88"),
    SuraDataModel(
      id: "39",
      nameAR: "الزمر",
      nameEN: "Az-Zumar",
      ayaNumbers: "75",
    ),
    SuraDataModel(id: "40", nameAR: "غافر", nameEN: "Ghafir", ayaNumbers: "85"),
    SuraDataModel(
      id: "41",
      nameAR: "فصلت",
      nameEN: "Fussilat",
      ayaNumbers: "54",
    ),
    SuraDataModel(
      id: "42",
      nameAR: "الشورى",
      nameEN: "Ash-Shura",
      ayaNumbers: "53",
    ),
    SuraDataModel(
      id: "43",
      nameAR: "الزخرف",
      nameEN: "Az-Zukhruf",
      ayaNumbers: "89",
    ),
    SuraDataModel(
      id: "44",
      nameAR: "الدخان",
      nameEN: "Ad-Dukhan",
      ayaNumbers: "59",
    ),
    SuraDataModel(
      id: "45",
      nameAR: "الجاثية",
      nameEN: "Al-Jathiyah",
      ayaNumbers: "37",
    ),
    SuraDataModel(
      id: "46",
      nameAR: "الأحقاف",
      nameEN: "Al-Ahqaf",
      ayaNumbers: "35",
    ),
    SuraDataModel(
      id: "47",
      nameAR: "محمد",
      nameEN: "Muhammad",
      ayaNumbers: "38",
    ),
    SuraDataModel(
      id: "48",
      nameAR: "الفتح",
      nameEN: "Al-Fath",
      ayaNumbers: "29",
    ),
    SuraDataModel(
      id: "49",
      nameAR: "الحجرات",
      nameEN: "Al-Hujurat",
      ayaNumbers: "18",
    ),
    SuraDataModel(id: "50", nameAR: "ق", nameEN: "Qaf", ayaNumbers: "45"),
    SuraDataModel(
      id: "51",
      nameAR: "الذاريات",
      nameEN: "Adh-Dhariyat",
      ayaNumbers: "60",
    ),
    SuraDataModel(
      id: "52",
      nameAR: "الطور",
      nameEN: "At-Tur",
      ayaNumbers: "49",
    ),
    SuraDataModel(
      id: "53",
      nameAR: "النجم",
      nameEN: "An-Najm",
      ayaNumbers: "62",
    ),
    SuraDataModel(
      id: "54",
      nameAR: "القمر",
      nameEN: "Al-Qamar",
      ayaNumbers: "55",
    ),
    SuraDataModel(
      id: "55",
      nameAR: "الرحمن",
      nameEN: "Ar-Rahman",
      ayaNumbers: "78",
    ),
    SuraDataModel(
      id: "56",
      nameAR: "الواقعة",
      nameEN: "Al-Waqiah",
      ayaNumbers: "96",
    ),
    SuraDataModel(
      id: "57",
      nameAR: "الحديد",
      nameEN: "Al-Hadid",
      ayaNumbers: "29",
    ),
    SuraDataModel(
      id: "58",
      nameAR: "المجادلة",
      nameEN: "Al-Mujadila",
      ayaNumbers: "22",
    ),
    SuraDataModel(
      id: "59",
      nameAR: "الحشر",
      nameEN: "Al-Hashr",
      ayaNumbers: "24",
    ),
    SuraDataModel(
      id: "60",
      nameAR: "الممتحنة",
      nameEN: "Al-Mumtahanah",
      ayaNumbers: "13",
    ),
    SuraDataModel(
      id: "61",
      nameAR: "الصف",
      nameEN: "As-Saff",
      ayaNumbers: "14",
    ),
    SuraDataModel(
      id: "62",
      nameAR: "الجمعة",
      nameEN: "Al-Jumuah",
      ayaNumbers: "11",
    ),
    SuraDataModel(
      id: "63",
      nameAR: "المنافقون",
      nameEN: "Al-Munafiqun",
      ayaNumbers: "11",
    ),
    SuraDataModel(
      id: "64",
      nameAR: "التغابن",
      nameEN: "At-Taghabun",
      ayaNumbers: "18",
    ),
    SuraDataModel(
      id: "65",
      nameAR: "الطلاق",
      nameEN: "At-Talaq",
      ayaNumbers: "12",
    ),
    SuraDataModel(
      id: "66",
      nameAR: "التحريم",
      nameEN: "At-Tahrim",
      ayaNumbers: "12",
    ),
    SuraDataModel(
      id: "67",
      nameAR: "الملك",
      nameEN: "Al-Mulk",
      ayaNumbers: "30",
    ),
    SuraDataModel(
      id: "68",
      nameAR: "القلم",
      nameEN: "Al-Qalam",
      ayaNumbers: "52",
    ),
    SuraDataModel(
      id: "69",
      nameAR: "الحاقة",
      nameEN: "Al-Haqqah",
      ayaNumbers: "52",
    ),
    SuraDataModel(
      id: "70",
      nameAR: "المعارج",
      nameEN: "Al-Maarij",
      ayaNumbers: "44",
    ),
    SuraDataModel(id: "71", nameAR: "نوح", nameEN: "Nuh", ayaNumbers: "28"),
    SuraDataModel(
      id: "72",
      nameAR: "الجن",
      nameEN: "Al-Jinn",
      ayaNumbers: "28",
    ),
    SuraDataModel(
      id: "73",
      nameAR: "المزمل",
      nameEN: "Al-Muzzammil",
      ayaNumbers: "20",
    ),
    SuraDataModel(
      id: "74",
      nameAR: "المدثر",
      nameEN: "Al-Muddaththir",
      ayaNumbers: "56",
    ),
    SuraDataModel(
      id: "75",
      nameAR: "القيامة",
      nameEN: "Al-Qiyamah",
      ayaNumbers: "40",
    ),
    SuraDataModel(
      id: "76",
      nameAR: "الإنسان",
      nameEN: "Al-Insan",
      ayaNumbers: "31",
    ),
    SuraDataModel(
      id: "77",
      nameAR: "المرسلات",
      nameEN: "Al-Mursalat",
      ayaNumbers: "50",
    ),
    SuraDataModel(
      id: "78",
      nameAR: "النبأ",
      nameEN: "An-Naba",
      ayaNumbers: "40",
    ),
    SuraDataModel(
      id: "79",
      nameAR: "النازعات",
      nameEN: "An-Naziat",
      ayaNumbers: "46",
    ),
    SuraDataModel(id: "80", nameAR: "عبس", nameEN: "Abasa", ayaNumbers: "42"),
    SuraDataModel(
      id: "81",
      nameAR: "التكوير",
      nameEN: "At-Takwir",
      ayaNumbers: "29",
    ),
    SuraDataModel(
      id: "82",
      nameAR: "الانفطار",
      nameEN: "Al-Infitar",
      ayaNumbers: "19",
    ),
    SuraDataModel(
      id: "83",
      nameAR: "المطففين",
      nameEN: "Al-Mutaffifin",
      ayaNumbers: "36",
    ),
    SuraDataModel(
      id: "84",
      nameAR: "الانشقاق",
      nameEN: "Al-Inshiqaq",
      ayaNumbers: "25",
    ),
    SuraDataModel(
      id: "85",
      nameAR: "البروج",
      nameEN: "Al-Buruj",
      ayaNumbers: "22",
    ),
    SuraDataModel(
      id: "86",
      nameAR: "الطارق",
      nameEN: "At-Tariq",
      ayaNumbers: "17",
    ),
    SuraDataModel(
      id: "87",
      nameAR: "الأعلى",
      nameEN: "Al-Ala",
      ayaNumbers: "19",
    ),
    SuraDataModel(
      id: "88",
      nameAR: "الغاشية",
      nameEN: "Al-Ghashiyah",
      ayaNumbers: "26",
    ),
    SuraDataModel(
      id: "89",
      nameAR: "الفجر",
      nameEN: "Al-Fajr",
      ayaNumbers: "30",
    ),
    SuraDataModel(
      id: "90",
      nameAR: "البلد",
      nameEN: "Al-Balad",
      ayaNumbers: "20",
    ),
    SuraDataModel(
      id: "91",
      nameAR: "الشمس",
      nameEN: "Ash-Shams",
      ayaNumbers: "15",
    ),
    SuraDataModel(
      id: "92",
      nameAR: "الليل",
      nameEN: "Al-Layl",
      ayaNumbers: "21",
    ),
    SuraDataModel(
      id: "93",
      nameAR: "الضحى",
      nameEN: "Ad-Duha",
      ayaNumbers: "11",
    ),
    SuraDataModel(
      id: "94",
      nameAR: "الشرح",
      nameEN: "Ash-Sharh",
      ayaNumbers: "8",
    ),
    SuraDataModel(id: "95", nameAR: "التين", nameEN: "At-Tin", ayaNumbers: "8"),
    SuraDataModel(
      id: "96",
      nameAR: "العلق",
      nameEN: "Al-Alaq",
      ayaNumbers: "19",
    ),
    SuraDataModel(
      id: "97",
      nameAR: "القدر",
      nameEN: "Al-Qadr",
      ayaNumbers: "5",
    ),
    SuraDataModel(
      id: "98",
      nameAR: "البينة",
      nameEN: "Al-Bayyinah",
      ayaNumbers: "8",
    ),
    SuraDataModel(
      id: "99",
      nameAR: "الزلزلة",
      nameEN: "Az-Zalzalah",
      ayaNumbers: "8",
    ),
    SuraDataModel(
      id: "100",
      nameAR: "العاديات",
      nameEN: "Al-Adiyat",
      ayaNumbers: "11",
    ),
    SuraDataModel(
      id: "101",
      nameAR: "القارعة",
      nameEN: "Al-Qariah",
      ayaNumbers: "11",
    ),
    SuraDataModel(
      id: "102",
      nameAR: "التكاثر",
      nameEN: "At-Takathur",
      ayaNumbers: "8",
    ),
    SuraDataModel(
      id: "103",
      nameAR: "العصر",
      nameEN: "Al-Asr",
      ayaNumbers: "3",
    ),
    SuraDataModel(
      id: "104",
      nameAR: "الهمزة",
      nameEN: "Al-Humazah",
      ayaNumbers: "9",
    ),
    SuraDataModel(
      id: "105",
      nameAR: "الفيل",
      nameEN: "Al-Fil",
      ayaNumbers: "5",
    ),
    SuraDataModel(
      id: "106",
      nameAR: "قريش",
      nameEN: "Quraysh",
      ayaNumbers: "4",
    ),
    SuraDataModel(
      id: "107",
      nameAR: "الماعون",
      nameEN: "Al-Maun",
      ayaNumbers: "7",
    ),
    SuraDataModel(
      id: "108",
      nameAR: "الكوثر",
      nameEN: "Al-Kawthar",
      ayaNumbers: "3",
    ),
    SuraDataModel(
      id: "109",
      nameAR: "الكافرون",
      nameEN: "Al-Kafirun",
      ayaNumbers: "6",
    ),
    SuraDataModel(
      id: "110",
      nameAR: "النصر",
      nameEN: "An-Nasr",
      ayaNumbers: "3",
    ),
    SuraDataModel(
      id: "111",
      nameAR: "المسد",
      nameEN: "Al-Masad",
      ayaNumbers: "5",
    ),
    SuraDataModel(
      id: "112",
      nameAR: "الإخلاص",
      nameEN: "Al-Ikhlas",
      ayaNumbers: "4",
    ),
    SuraDataModel(
      id: "113",
      nameAR: "الفلق",
      nameEN: "Al-Falaq",
      ayaNumbers: "5",
    ),
    SuraDataModel(
      id: "114",
      nameAR: "الناس",
      nameEN: "An-Nas",
      ayaNumbers: "6",
    ),
  ];

  List<SuraDataModel> _filteredSuraList = [];

  @override
  void initState() {
    super.initState();
    _filteredSuraList = _surasList;
  }

  void _onSearch(String value) {
    final query = value.trim();
    setState(() {
      if (query.isEmpty) {
        _filteredSuraList = _surasList;
      } else {
        _filteredSuraList = _surasList.where((sura) {
          return sura.nameEN.toLowerCase().contains(query.toLowerCase()) ||
              sura.nameAR.contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 10,
              ),
              child: Assets.images.headerImg.image(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                cursorColor: AppColors.primary,
                style: textTheme.titleMedium,
                onChanged: _onSearch,
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: textTheme.titleMedium,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Assets.icons.quranIcn.svg(
                      colorFilter: ColorFilter.mode(
                        AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Most Recently", style: textTheme.titleMedium),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Al-Anbiya",
                                  style: textTheme.headlineSmall,
                                ),
                                Text(
                                  "الأنبياء",
                                  style: textTheme.headlineSmall,
                                ),
                                Text(
                                  "112 Verses  ",
                                  style: textTheme.titleSmall,
                                ),
                              ],
                            ),
                            Assets.images.mostRecentImg.image(),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Suras List", style: textTheme.titleMedium),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return SuraItem(suraDataModel: _filteredSuraList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(endIndent: 25, indent: 25);
                  },
                  itemCount: _filteredSuraList.length,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
