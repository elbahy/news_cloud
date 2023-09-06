import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/tech.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'الكرة الذهبية - صلاح ينافس 30 مرشحا.. وعودة ميسي وغياب رونالدو ونيمار',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Text(
            'تواجد محمد صلاح نجم ليفربول الإنجليزي في صدارة المرشحين للفوز بجائزة الكرة الذهبية (بالون دور) عن موسم 2022-23 والمقدمة من مجلة "فرانس فوتبول" الفرنسية.',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
