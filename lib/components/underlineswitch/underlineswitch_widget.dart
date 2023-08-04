import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'underlineswitch_model.dart';
export 'underlineswitch_model.dart';

class UnderlineswitchWidget extends StatefulWidget {
  const UnderlineswitchWidget({
    Key? key,
    required this.optionValue,
  }) : super(key: key);

  final String? optionValue;

  @override
  _UnderlineswitchWidgetState createState() => _UnderlineswitchWidgetState();
}

class _UnderlineswitchWidgetState extends State<UnderlineswitchWidget> {
  late UnderlineswitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnderlineswitchModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.choice = _model.switchListTileValue!.toString();
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue ??= false,
                onChanged: (newValue) async {
                  setState(() => _model.switchListTileValue = newValue!);
                  if (newValue!) {
                    setState(() {
                      _model.choice = _model.switchListTileValue!.toString();
                    });
                  }
                },
                title: Text(
                  widget.optionValue!,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Quicksand',
                        color: Color(0xFF664229),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                activeColor: Color(0xFF664229),
                activeTrackColor: Color(0xFF987554),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: 373.0,
                height: 10.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      thickness: 2.0,
                      color: Color(0xFF664229),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
