import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for BusNumber widget.
  TextEditingController? busNumberController;
  String? Function(BuildContext, String?)? busNumberControllerValidator;
  // State field(s) for RollNumber widget.
  TextEditingController? rollNumberController;
  String? Function(BuildContext, String?)? rollNumberControllerValidator;
  // State field(s) for Password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    nameController?.dispose();
    emailController?.dispose();
    busNumberController?.dispose();
    rollNumberController?.dispose();
    passwordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
