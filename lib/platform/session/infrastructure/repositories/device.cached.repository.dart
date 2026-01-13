import 'package:fpdart/fpdart.dart' show Either, Left, Right;
import 'package:uuid/uuid.dart' show Uuid;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../../shared/infrastructure/exceptions/local/cache.exception.dart'
    show CacheException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import '../../application/repositories/device.repository.port.dart' show IDeviceRepository;

/// Cached device repository implementation.
///
/// Manages device ID generation and secure storage. Uses secure storage
/// datasource instead of Hive for hardware-backed encryption.
/// Handles cache exceptions and converts them to domain failures.
class DeviceCachedRepository implements IDeviceRepository {
  final IDeviceSecureDataSource _deviceSecureDataSource;

  const DeviceCachedRepository(this._deviceSecureDataSource);

  @override
  Future<Either<Failure, String>> initializeDevice() async {
    try {
      final existingDeviceId = await _deviceSecureDataSource.getDeviceId();
      if (existingDeviceId != null && existingDeviceId.isNotEmpty) {
        return Right(existingDeviceId);
      }

      final newDeviceId = Uuid().v4();
      await _deviceSecureDataSource.setDeviceId(newDeviceId);
      return Right(newDeviceId);
    } on CacheException catch (exception) {
      return Left(ProblemMapper.toFailure(exception));
    }
  }
}
