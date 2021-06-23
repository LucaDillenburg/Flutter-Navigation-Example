import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pages.dart';

class AppFlowData {
  final bool subpage;

  @protected
  AppFlowData(this.subpage);

  AppFlowData copyWith({bool? subpage}) {
    return AppFlowData(subpage ?? this.subpage);
  }
}

class AppFlow extends StatefulWidget {
  static Route<AppFlowData> route() {
    return MaterialPageRoute(builder: (_) => AppFlow());
  }

  @override
  _AppFlowState createState() => _AppFlowState();
}

class _AppFlowState extends State<AppFlow> {
  late final FlowController<AppFlowData> _controller =
      FlowController(AppFlowData(false));

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppFlowData>(
      controller: _controller,
      onGeneratePages: (state, pages) => [
        MaterialPage<void>(
          child: Home(key: ValueKey('home')),
          maintainState: true,
          restorationId: '12345',
          key: ValueKey('material-home'),
        ),
        if (state.subpage)
          MaterialPage<void>(
            child: Subpage(key: ValueKey('subpage')),
            maintainState: true,
            restorationId: '54321',
            key: ValueKey('material-subpage'),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
