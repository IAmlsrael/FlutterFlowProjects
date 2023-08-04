import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 's_i_unit_switch_model.dart';
export 's_i_unit_switch_model.dart';

class SIUnitSwitchWidget extends StatefulWidget {
  const SIUnitSwitchWidget({Key? key}) : super(key: key);

  @override
  _SIUnitSwitchWidgetState createState() => _SIUnitSwitchWidgetState();
}

class _SIUnitSwitchWidgetState extends State<SIUnitSwitchWidget> {
  late SIUnitSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SIUnitSwitchModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 141.0,
      height: 36.0,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFF664229),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              'ozgbgp0g' /* FT */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Quicksand',
                  color: Color(0xFF664229),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Switch.adaptive(
            value: _model.switchValue ??= false,
            onChanged: (newValue) async {
              setState(() => _model.switchValue = newValue!);
            },
            activeColor: Color(0xFF664229),
            activeTrackColor: Color(0xFF987554),
            inactiveTrackColor: Color(0xFF987554),
            inactiveThumbColor: Color(0xFF664229),
          ),
          Text(
            FFLocalizations.of(context).getText(
              '2jtrdwrm' /* CM */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Quicksand',
                  color: Color(0xFF664229),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
