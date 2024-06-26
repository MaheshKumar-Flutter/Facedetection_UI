import 'package:flutter/cupertino.dart';
import 'package:face_detection/sublocator.dart';
import 'package:provider/provider.dart';

import 'baseModel.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Function(T model)? onDispose;
  final Function(T model) onModelReady;
  final Widget Function(BuildContext context, T model, Widget? child) builder;

  const BaseView(
      {super.key,
      required this.builder,
      this.onDispose,
      required this.onModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose!(model);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
