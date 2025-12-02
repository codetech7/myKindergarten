import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'guardianmenufocus_model.dart';
export 'guardianmenufocus_model.dart';

class GuardianmenufocusWidget extends StatefulWidget {
  const GuardianmenufocusWidget({super.key});

  @override
  State<GuardianmenufocusWidget> createState() =>
      _GuardianmenufocusWidgetState();
}

class _GuardianmenufocusWidgetState extends State<GuardianmenufocusWidget> {
  late GuardianmenufocusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuardianmenufocusModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Edit',
            icon: Icon(
              Icons.edit_outlined,
              size: 15.0,
            ),
            options: FFButtonOptions(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF272733),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'NeueMontreal',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Delete',
            icon: Icon(
              Icons.delete,
              size: 15.0,
            ),
            options: FFButtonOptions(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconAlignment: IconAlignment.start,
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFFFFCED3),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'NeueMontreal',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ],
      ),
    );
  }
}
