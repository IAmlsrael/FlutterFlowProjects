import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'box_checker_model.dart';
export 'box_checker_model.dart';

class BoxCheckerWidget extends StatefulWidget {
  const BoxCheckerWidget({Key? key}) : super(key: key);

  @override
  _BoxCheckerWidgetState createState() => _BoxCheckerWidgetState();
}

class _BoxCheckerWidgetState extends State<BoxCheckerWidget> {
  late BoxCheckerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoxCheckerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Theme(
          data: ThemeData(
            checkboxTheme: CheckboxThemeData(
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            unselectedWidgetColor: Color(0xFF664229),
          ),
          child: Checkbox(
            value: _model.checkboxValue ??= false,
            onChanged: (newValue) async {
              setState(() => _model.checkboxValue = newValue!);
            },
            activeColor: Color(0xFF664229),
            checkColor: Color(0xFF664229),
          ),
        ),
        Text(
          FFLocalizations.of(context).getText(
            'zuvfgq36' /* Visible on profile */,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Quicksand',
                color: Color(0xFF664229),
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
