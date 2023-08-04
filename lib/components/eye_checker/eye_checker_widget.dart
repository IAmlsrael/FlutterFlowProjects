import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eye_checker_model.dart';
export 'eye_checker_model.dart';

class EyeCheckerWidget extends StatefulWidget {
  const EyeCheckerWidget({Key? key}) : super(key: key);

  @override
  _EyeCheckerWidgetState createState() => _EyeCheckerWidgetState();
}

class _EyeCheckerWidgetState extends State<EyeCheckerWidget> {
  late EyeCheckerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EyeCheckerModel());
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
          child: Icon(
            Icons.remove_red_eye_outlined,
            color: Color(0xFF664229),
            size: 36.0,
          ),
        ),
        Text(
          FFLocalizations.of(context).getText(
            'c5h1ftbx' /* Always visible on profile */,
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
