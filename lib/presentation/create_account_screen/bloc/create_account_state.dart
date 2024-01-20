// ignore_for_file: must_be_immutable

part of 'create_account_bloc.dart';

/// Represents the state of CreateAccount in the application.
class CreateAccountState extends Equatable {
  CreateAccountState({
    this.firstNameController,
    this.nameController,
    this.dOBvalueController,
    this.educationalvalueController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.termsSection = false,
    this.createAccountModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? nameController;

  TextEditingController? dOBvalueController;

  TextEditingController? educationalvalueController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  CreateAccountModel? createAccountModelObj;

  bool isShowPassword;

  bool termsSection;

  @override
  List<Object?> get props => [
        firstNameController,
        nameController,
        dOBvalueController,
        educationalvalueController,
        emailController,
        passwordController,
        isShowPassword,
        termsSection,
        createAccountModelObj,
      ];
  CreateAccountState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? nameController,
    TextEditingController? dOBvalueController,
    TextEditingController? educationalvalueController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? termsSection,
    CreateAccountModel? createAccountModelObj,
  }) {
    return CreateAccountState(
      firstNameController: firstNameController ?? this.firstNameController,
      nameController: nameController ?? this.nameController,
      dOBvalueController: dOBvalueController ?? this.dOBvalueController,
      educationalvalueController:
          educationalvalueController ?? this.educationalvalueController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      termsSection: termsSection ?? this.termsSection,
      createAccountModelObj:
          createAccountModelObj ?? this.createAccountModelObj,
    );
  }
}
