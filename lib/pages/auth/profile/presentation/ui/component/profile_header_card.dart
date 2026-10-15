import 'package:flutter/material.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../common/image/camera_file_utility.dart';
import '../../../../../../common/image/camera_gallery_dialog.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';
import '../../bloc/profile_state.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';
import '../../bloc/profile_state.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/profile_bloc.dart';
import '../../bloc/profile_event.dart';
import '../../bloc/profile_state.dart';

class ProfileHeaderCard extends StatelessWidget {
  final LoginResponse profile;
  final bool isEditing;

  const ProfileHeaderCard({
    super.key,
    required this.profile,
    required this.isEditing,
  });

  @override
  Widget build(BuildContext context) {
    final user = profile.user;
    final String userName =
    user.username.isNotEmpty ? user.username : 'User Name';
    final isSocailLogin=  BlocProvider.of<AppBloc>(context).state.userdata.user.isSocialLogin;

    // Backend se aaya profile image (agar ho)
    final String backendImageUrl = user.profile_image;

    return BlocBuilder<ProfileBloc, ProfileState>(
      // 🔹 ab sirf avatarLocalFile / isEditing pe rebuild karenge
      buildWhen: (prev, curr) =>
      prev.avatarLocalFile != curr.avatarLocalFile ||
          prev.isEditing != curr.isEditing,
      builder: (context, state) {
        final File? localFile = state.avatarLocalFile;

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(18),
          //   gradient: const LinearGradient(
          //     colors: [Color(0xFFFF7A00), Color(0xFFFF4D4D)],
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //   ),
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      child: _buildProfileImage(
                        localFile: localFile,
                        imageUrl:
                        isSocailLogin?"${state.profile.user.profile_image.isEmpty?AppConstant.fileBaseUrl+"3da39-no-user-image-icon-27.webp":state.profile.user.profile_image}":
                        AppConstant.fileBaseUrl1+"/"+"${state.profile.user.profile_image.isEmpty?"3da39-no-user-image-icon-27.webp":state.profile.user.profile_image}",
                      ),
                    ),
                  ),

                    Positioned(
                      bottom: 6,
                      right: 4,
                      child: GestureDetector(
                        onTap: () => chooseImageFromGalleryOrCameraMobile(context),
                        child: Container(
                         // padding: const EdgeInsets.all(4),
                          // decoration: const BoxDecoration(
                          //   color: Colors.white,
                          //   shape: BoxShape.circle,
                          // ),
                          child: Image.asset("assets/new_design/icon/edit_profile.png",width: 32,height: 32,),
                        ),
                      ),
                    ),
                ],
              ),

            ],
          ),
        );
      },
    );
  }

  /// Avatar display logic
  Widget _buildProfileImage({
    required File? localFile,
    required String imageUrl,
  }) {
    if (localFile != null) {
      // 🔥 User ne abhi-abhi choose/capture kiya
      return ClipOval(
        child: Image.file(
          localFile,
          width: 116,
          height: 116,
          fit: BoxFit.cover,
        ),
      );
    }

    if (imageUrl.isNotEmpty) {
      // 🔥 Backend wali image
      return ClipOval(
        child: Image.network(
         "${imageUrl}",
          width: 116,
          height: 116,
          fit: BoxFit.cover,
        ),
      );
    }

    // 🔥 Fallback — default avatar icon
    return const Icon(
      Icons.person_outline,
      size: 40,
      color: Colors.white,
    );
  }



  void chooseImageFromGalleryOrCameraMobile(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CameraGalleryDialogMobile(
              () async {
            var bloc = BlocProvider.of<ProfileBloc>(context);
            var image = await CameraFileUtility().openCame(context);
            if (image != null) {
              bloc.add(ProfileEvent.updateAvatar(image));
            }
          },
              () async {
            var bloc = BlocProvider.of<ProfileBloc>(context);
            var image = await CameraFileUtility().openGallery(context);
            if (image != null) {
              bloc.add(ProfileEvent.updateAvatar(image));
            }
          },
          context.l10n.addPicture,
        );
      },
    );
  }

  /// Image pick / capture + BLoC update
  Future<void> _onChangeAvatar(BuildContext context) async {
    final picker = CameraFileUtility();

    // Abhi sirf gallery se pick kar raha hun, chaaho to camera bhi add kar sakte ho
    final file = await picker.openGallery(context);
    if (file == null) return;

    context.read<ProfileBloc>().add(ProfileEvent.updateAvatar(file));
  }
}

