import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'underline_circle_checker_model.dart';
export 'underline_circle_checker_model.dart';

class UnderlineCircleCheckerWidget extends StatefulWidget {
  const UnderlineCircleCheckerWidget({
    Key? key,
    required this.optionValue,
  }) : super(key: key);

  final String? optionValue;

  @override
  _UnderlineCircleCheckerWidgetState createState() =>
      _UnderlineCircleCheckerWidgetState();
}

class _UnderlineCircleCheckerWidgetState
    extends State<UnderlineCircleCheckerWidget> {
  late UnderlineCircleCheckerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnderlineCircleCheckerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.choice = _model.checkboxListTileValue!.toString();
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
              child: Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  unselectedWidgetColor: Color(0xFF664229),
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.checkboxListTileValue = newValue!);
                    if (newValue!) {
                      setState(() {
                        _model.choice = widget.optionValue!;
                      });
                    } else {
                      setState(() {
                        _model.choice = '';
                      });
                    }
                  },
                  title: Text(
                    widget.optionValue!,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Quicksand',
                          color: Color(0xFF664229),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  activeColor: Color(0xFF664229),
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
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
