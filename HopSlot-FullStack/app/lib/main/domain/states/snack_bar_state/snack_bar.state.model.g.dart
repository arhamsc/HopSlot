// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'snack_bar.state.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackBarStateInitialImpl _$$SnackBarStateInitialImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnackBarStateInitialImpl',
      json,
      ($checkedConvert) {
        final val = _$SnackBarStateInitialImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$SnackBarStateInitialImplToJson(
        _$SnackBarStateInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SnackBarStateActiveImpl _$$SnackBarStateActiveImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnackBarStateActiveImpl',
      json,
      ($checkedConvert) {
        final val = _$SnackBarStateActiveImpl(
          message: $checkedConvert('message', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SnackbarTypeEnumMap, v)),
          blockScreen:
              $checkedConvert('blockScreen', (v) => v as bool? ?? false),
          autoClose: $checkedConvert('autoClose', (v) => v as bool? ?? true),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$SnackBarStateActiveImplToJson(
        _$SnackBarStateActiveImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'title': instance.title,
      'type': _$SnackbarTypeEnumMap[instance.type]!,
      'blockScreen': instance.blockScreen,
      'autoClose': instance.autoClose,
      'runtimeType': instance.$type,
    };

const _$SnackbarTypeEnumMap = {
  SnackbarType.loading: 'loading',
  SnackbarType.success: 'success',
  SnackbarType.error: 'error',
  SnackbarType.warning: 'warning',
  SnackbarType.info: 'info',
};

_$SnackBarStateHiddenImpl _$$SnackBarStateHiddenImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnackBarStateHiddenImpl',
      json,
      ($checkedConvert) {
        final val = _$SnackBarStateHiddenImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$SnackBarStateHiddenImplToJson(
        _$SnackBarStateHiddenImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
