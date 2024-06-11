import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyBody extends StatelessWidget
{
  final List<MenuRowData> menuRow1 = [
    
    MenuRowData(icon: Icons.person, text: "Account"),
    MenuRowData(icon: Icons.lock_rounded, text: "Privacy"),
    MenuRowData(icon: Icons.shield, text: "Security & permissions"),
    MenuRowData(icon: Icons.wallet_rounded, text: "Balance"),
    MenuRowData(icon: Icons.ios_share_rounded, text: "Share profile")
  ];

  final List<MenuRowData> menuRow2 = 
  [
    MenuRowData(icon: Icons.notifications, text: "Notification"),
    MenuRowData(icon: Icons.live_tv, text: "Live"),
    MenuRowData(icon: Icons.access_time, text: "Activity center"),
    MenuRowData(icon: Icons.video_call_rounded, text: "Content preference"),
    MenuRowData(icon: Icons.campaign, text: "Ads"),
    MenuRowData(icon: Icons.play_arrow, text: "Playback"),
    MenuRowData(icon: Icons.abc, text: "language"),
    MenuRowData(icon: Icons.hourglass_bottom, text: "Screen time"),
    MenuRowData(icon: Icons.home, text: "Family Pairing"),
    MenuRowData(icon: Icons.accessibility, text: "Accessibility"),
  
  ];
  MyBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      // color: Colors.white,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: 
          [
            
            const Padding(
              padding:  EdgeInsets.only(left:12.5),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                
                
              Text("Settings and Privacy", style: TextStyle(fontFamily: "ProximaNova", fontWeight: FontWeight.w900, fontSize: 27)),
              SizedBox(height: 27,),
              Text("Account", style: TextStyle(fontFamily: "ProximaNova", color: Color.fromARGB(255, 136, 136, 136))),
              
              ],),
            ),
        
        
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
              child: _MenuWidget(menuRow: menuRow1),
          ),
            
            const Padding(
              padding:  EdgeInsets.only(left: 12.5, top: 15),
              child: Text("Content & Display", style: TextStyle(fontFamily: "ProximaNova", color: Color.fromARGB(255, 136, 136, 136))),
            ),
          
          
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
              child: _MenuWidget(menuRow: menuRow2),
          ),
          
          
          
          
          ],               
        ),
      )
    );
  }
}


class _MenuWidget extends StatelessWidget
{
  final List<MenuRowData> menuRow;
  const _MenuWidget({super.key, required this.menuRow});

  @override
  Widget build(BuildContext content)
  {
    return Container(
      // color: Colors.grey,
      width: double.infinity,
      child: Container(
      
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
        child: Column(children: menuRow.map( (data) => _MenuWidgetRow(data: data) ).toList(),)),
    );
  }
}

class MenuRowData
{
  final IconData icon;
  final String text;

  MenuRowData({required this.icon, required this.text});

}

class _MenuWidgetRow extends StatelessWidget
{
  final MenuRowData data;
  _MenuWidgetRow({super.key, required this.data});
  
  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 7),
        child: Row(
          children: 
          [
            Icon(data.icon, color: Colors.grey, size: 25,),
            const SizedBox(width: 9,),
            Expanded(child: Text(data.text, style: TextStyle(fontFamily: "ProximaNova", fontWeight: FontWeight.w600, fontSize: 17),)),
            const Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.grey,)
        
          ],),
      ),
    );  
  }

  
}