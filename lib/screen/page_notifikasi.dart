import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageNotifikasi extends StatelessWidget {
  const PageNotifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Page notifikasi'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text('Normal toast'),
              onTap: () {
                showToast('This is toast',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text('Permanent toast'),
              onTap: () {
                showToast(
                  'This is a permanent toast',
                  context: context,
                  duration: Duration.zero,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text('Normal toast full width'),
              onTap: () {
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  borderRadius: BorderRadius.zero,
                  toastHorizontalMargin: 0,
                  fullWidth: true,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text('Normal toast full width with horizontal margin'),
              onTap: () {
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  toastHorizontalMargin: 20,
                  fullWidth: true,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(custom borderRadius textStyle etc)',
              ),
              onTap: () {
                showToast('This is normal toast',
                    context: context,
                    textStyle: TextStyle(fontSize: 20.0, color: Colors.red),
                    backgroundColor: Colors.yellow,
                    textPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(10.0, 20.0),
                        bottom: Radius.elliptical(10.0, 20.0)),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(position)',
              ),
              onTap: () {
                showToast('This is normal toast',
                    context: context,
                    alignment: Alignment.center,
                    position: StyledToastPosition(
                        align: Alignment.bottomCenter, offset: 20.0));
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(custom position)',
              ),
              onTap: () {
                showToast('This is toast',
                    context: context,
                    toastHorizontalMargin: 10.0,
                    position: StyledToastPosition(
                        align: Alignment.topLeft, offset: 20.0));
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(fade anim)',
              ),
              onTap: () {
                showToast('This is normal toast with fade animation',
                    context: context,
                    animation: StyledToastAnimation.fade,
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(slideFromTop anim)',
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTop,
                    reverseAnimation: StyledToastAnimation.slideToTop,
                    position: StyledToastPosition.top,
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(slideFromTopFade anim)',
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTopFade,
                    reverseAnimation: StyledToastAnimation.slideToTopFade,
                    position: StyledToastPosition(
                        align: Alignment.topCenter, offset: 0.0),
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(slideFromBottom anim)',
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromBottom,
                    reverseAnimation: StyledToastAnimation.slideToBottom,
                    startOffset: Offset(0.0, 3.0),
                    reverseEndOffset: Offset(0.0, 3.0),
                    position: StyledToastPosition.bottom,
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            
            
            
          ]
        )
      ),
    );
  }
}