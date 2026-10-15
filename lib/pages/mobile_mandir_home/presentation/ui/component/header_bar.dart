import '../../../../../common/routes/exports.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Text(
            'Mobile Mandir',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(children: [Icon(Icons.notifications_none), SizedBox(width: 12), Icon(Icons.account_circle_outlined)])
        ],
      ),
    );
  }
}