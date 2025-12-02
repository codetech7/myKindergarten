import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'legal_model.dart';
export 'legal_model.dart';

class LegalWidget extends StatefulWidget {
  const LegalWidget({super.key});

  static String routeName = 'Legal';
  static String routePath = '/legal';

  @override
  State<LegalWidget> createState() => _LegalWidgetState();
}

class _LegalWidgetState extends State<LegalWidget> {
  late LegalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LegalModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Legal',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'NeueMontreal',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis sapien vel nisl tempus, in feugiat nibh suscipit. Sed luctus nulla id purus imperdiet, ac congue libero eleifend. Aenean rhoncus, augue sed aliquet dictum, nibh mi varius metus, non hendrerit lacus justo nec.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis sapien vel nisl tempus, in feugiat nibh suscipit. Sed luctus nulla id purus imperdiet, ac congue libero eleifend. Aenean rhoncus, augue sed aliquet dictum, nibh mi varius metus, non hendrerit lacus justo nec.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis sapien vel nisl tempus, in feugiat nibh suscipit. Sed luctus nulla id purus imperdiet, ac congue libero eleifend. Aenean rhoncus, augue sed aliquet dictum, nibh mi varius metus, non hendrerit lacus justo nec.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis sapien vel nisl tempus, in feugiat nibh suscipit. Sed luctus nulla id purus imperdiet, ac congue libero eleifend. Aenean rhoncus, augue sed aliquet dictum, nibh mi varius metus, non hendrerit lacus justo nec.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis sapien vel nisl tempus, in feugiat nibh suscipit. Sed luctus nulla id purus imperdiet, ac congue libero eleifend. Aenean rhoncus, augue sed aliquet dictum, nibh mi varius metus, non hendrerit lacus justo nec.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'NeueMontreal',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Accept',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'NeueMontreal',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
