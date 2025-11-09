// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class RoleModelAdapter extends TypeAdapter<RoleModel> {
  @override
  final typeId = 0;

  @override
  RoleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoleModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RoleModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FileModelAdapter extends TypeAdapter<FileModel> {
  @override
  final typeId = 1;

  @override
  FileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileModel(
      id: fields[0] as String,
      fileName: fields[1] as String,
      originalFileName: fields[2] as String,
      mimeType: fields[3] as String,
      storageUrl: fields[4] as String,
      sizeInBytes: (fields[5] as num).toInt(),
      isDeleted: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, FileModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fileName)
      ..writeByte(2)
      ..write(obj.originalFileName)
      ..writeByte(3)
      ..write(obj.mimeType)
      ..writeByte(4)
      ..write(obj.storageUrl)
      ..writeByte(5)
      ..write(obj.sizeInBytes)
      ..writeByte(6)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PermissionModelAdapter extends TypeAdapter<PermissionModel> {
  @override
  final typeId = 2;

  @override
  PermissionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PermissionModel(
      id: fields[0] as String,
      resource: fields[1] as String,
      action: fields[2] as String,
      description: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PermissionModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.resource)
      ..writeByte(2)
      ..write(obj.action)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PermissionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final typeId = 3;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      id: fields[0] as String,
      email: fields[1] as String?,
      userName: fields[2] as String,
      roles: (fields[3] as List).cast<RoleModel>(),
      permissions: (fields[4] as List).cast<PermissionModel>(),
      authProvider: fields[5] as String,
      isVerified: fields[6] as bool,
      isActive: fields[7] as bool,
      isLoggedIn: fields[8] as bool,
      lastLoginAt: fields[9] as String?,
      avatar: fields[10] as FileModel?,
      countryName: fields[11] as String?,
      countryFlagUrl: fields[12] as String?,
      countryIsoCode: fields[13] as String?,
      countryDialCode: fields[14] as String?,
      partialPhoneNumber: fields[15] as String?,
      fullPhoneNumber: fields[16] as String?,
      createdAt: fields[17] as String?,
      updatedAt: fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.roles)
      ..writeByte(4)
      ..write(obj.permissions)
      ..writeByte(5)
      ..write(obj.authProvider)
      ..writeByte(6)
      ..write(obj.isVerified)
      ..writeByte(7)
      ..write(obj.isActive)
      ..writeByte(8)
      ..write(obj.isLoggedIn)
      ..writeByte(9)
      ..write(obj.lastLoginAt)
      ..writeByte(10)
      ..write(obj.avatar)
      ..writeByte(11)
      ..write(obj.countryName)
      ..writeByte(12)
      ..write(obj.countryFlagUrl)
      ..writeByte(13)
      ..write(obj.countryIsoCode)
      ..writeByte(14)
      ..write(obj.countryDialCode)
      ..writeByte(15)
      ..write(obj.partialPhoneNumber)
      ..writeByte(16)
      ..write(obj.fullPhoneNumber)
      ..writeByte(17)
      ..write(obj.createdAt)
      ..writeByte(18)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserPreferencesModelAdapter extends TypeAdapter<UserPreferencesModel> {
  @override
  final typeId = 4;

  @override
  UserPreferencesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserPreferencesModel(
      languageCode: fields[0] as String,
      themeMode: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserPreferencesModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.themeMode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPreferencesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SessionStateModelAdapter extends TypeAdapter<SessionStateModel> {
  @override
  final typeId = 5;

  @override
  SessionStateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SessionStateModel(
      hasCompletedOnboarding: fields[0] as bool,
      hasSetPreferences: fields[1] as bool,
      authStatus: fields[2] as String,
      userId: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SessionStateModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.hasCompletedOnboarding)
      ..writeByte(1)
      ..write(obj.hasSetPreferences)
      ..writeByte(2)
      ..write(obj.authStatus)
      ..writeByte(3)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionStateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
