// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProjectModelAdapter extends TypeAdapter<ProjectModel> {
  @override
  final int typeId = 0;

  @override
  ProjectModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProjectModel(
      fields[4] as taskModel,
      project_title: fields[0] as String,
      content: fields[1] as String?,
      date: fields[2] as String?,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProjectModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.project_title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.taskmodel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class taskModelAdapter extends TypeAdapter<taskModel> {
  @override
  final int typeId = 1;

  @override
  taskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return taskModel(
      task_title: fields[0] as String,
      task_content: fields[1] as String?,
      date: fields[2] as String?,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, taskModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.task_title)
      ..writeByte(1)
      ..write(obj.task_content)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is taskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
