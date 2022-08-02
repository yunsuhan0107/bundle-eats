import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  State<UserSettings> createState() => _UserSettings();
}

class _UserSettings extends State<UserSettings> {
  final List<bool> _switchValues = List.generate(8, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Text(
              '알림',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 20),
            ListTileSwitch(
              value: _switchValues[0],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[0] = value;
                });
              },
              subtitle: const Text('쿠폰 및 마케팅 정보 알림'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '이벤트 혜택',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[1],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[1] = value;
                });
              },
              subtitle: const Text('리뷰 쓰기 알림 (22시~08시 미발송)'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '리뷰 쓰기',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[2],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[2] = value;
                });
              },
              subtitle: const Text('내 리뷰에 달린 댓글 알림 (22시~08시 미발송)'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '리뷰 댓글',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[3],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[3] = value;
                });
              },
              subtitle: const Text('배달 상태 실시간 알림'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '배달 현황',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '기능',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 20),
            ListTileSwitch(
              value: _switchValues[4],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[4] = value;
                });
              },
              subtitle: const Text('전화주문 시 가게번호 주소록에 저장'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '가게번호 자동 저장',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[5],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[5] = value;
                });
              },
              subtitle: const Text('최대 5대의 휴대폰에서 동시에 로그인 할 수 있도록 허용'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '여러 기기에서 로그인 허용',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[6],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[6] = value;
                });
              },
              subtitle: const Text('개인정보보호를 위해 실제 전화번호 대신 가상의 번호를 사용'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '안심번호 항상 사용',
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: _switchValues[7],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                setState(() {
                  _switchValues[7] = value;
                });
              },
              subtitle: const Text('서비스 및 마케팅 프로모션에 활용할 수 있도록 허용'),
              switchActiveColor: Colors.blueGrey,
              title: const Text(
                '개인정보 수집 이용 동의',
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
