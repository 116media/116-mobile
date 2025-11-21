import 'package:hive_ce/hive.dart';

import '../modules/auth/infrastructure/models/hive/file/file.model.dart' show FileModel;
import '../modules/auth/infrastructure/models/hive/permission/permission.model.dart'
    show PermissionModel;
import '../modules/auth/infrastructure/models/hive/role/role.model.dart' show RoleModel;
import '../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../platform/preferences/infrastructure/models/hive/user.preferences.model.dart'
    show UserPreferencesModel;
import '../platform/session/infrastructure/models/hive/session.state.model.dart'
    show SessionStateModel;

@GenerateAdapters([
  AdapterSpec<RoleModel>(),
  AdapterSpec<FileModel>(),
  AdapterSpec<PermissionModel>(),
  AdapterSpec<UserModel>(),
  AdapterSpec<UserPreferencesModel>(),
  AdapterSpec<SessionStateModel>(),
])
part 'hive_adapters.g.dart';
