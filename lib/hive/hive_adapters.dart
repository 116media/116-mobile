import 'package:hive_ce/hive.dart';
import 'package:cent16/modules/auth/infrastructure/models/hive/file/file.model.dart';
import 'package:cent16/modules/auth/infrastructure/models/hive/permission/permission.model.dart';
import 'package:cent16/modules/auth/infrastructure/models/hive/role/role.model.dart';
import 'package:cent16/modules/auth/infrastructure/models/hive/user/user.model.dart';
import 'package:cent16/platform/preferences/infrastructure/models/hive/user.preferences.model.dart';
import 'package:cent16/platform/session/infrastructure/models/hive/session.state.model.dart';

@GenerateAdapters([
  AdapterSpec<RoleModel>(),
  AdapterSpec<FileModel>(),
  AdapterSpec<PermissionModel>(),
  AdapterSpec<UserModel>(),
  AdapterSpec<UserPreferencesModel>(),
  AdapterSpec<SessionStateModel>(),
])
part 'hive_adapters.g.dart';
