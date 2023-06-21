import 'package:dart_verse/settings/storage_settings/impl/default_bucket_controller.dart';
import 'package:dart_verse/settings/storage_settings/repo/bucket_controller_repo.dart';

String get defaultBucketsContainer => 'Buckets';

class StorageBucket {
  /// this name is it's id
  /// must only contain numbers and letters and not exceed 50 letters
  final String name;

  /// this is the maximum allowed bucket size in bytes
  /// if null this means that the bucket size can be infinity
  final int? maxSize;

  /// if empty this will create an empty folder in the root path of the project with the name of the storage bucket name
  /// just try not to keep it null
  late String _folderPath;

  /// this is the controller for bucket operations like creating validating and much more
  /// if null, this bucket controller will be assigned to a default bucket controller
  late BucketControllerRepo _controller;

  StorageBucket(
    this.name, {
    String? folderPath,
    this.maxSize,
    BucketControllerRepo? controller,
  }) {
    _controller = controller ?? DefaultBucketController(this);
    _folderPath = folderPath ?? './$defaultBucketsContainer/$name';
    _controller.createBucket();
  }

  String get folderPath => _folderPath;
  BucketControllerRepo get controller => _controller;
}