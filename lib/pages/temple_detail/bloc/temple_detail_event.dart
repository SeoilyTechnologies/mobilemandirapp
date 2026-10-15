import 'package:equatable/equatable.dart';

import '../../templelist/data/entity/temple_model.dart';

abstract class TempleDetailEvent extends Equatable {
  const TempleDetailEvent();

  @override
  List<Object?> get props => [];
}

class LoadTempleDetail extends TempleDetailEvent {
  final TempleModel temple;

  const LoadTempleDetail(this.temple);

  @override
  List<Object?> get props => [temple];
}
