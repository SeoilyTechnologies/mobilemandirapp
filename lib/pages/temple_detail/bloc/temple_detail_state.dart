import 'package:equatable/equatable.dart';
import '../../templelist/data/entity/temple_model.dart';

class TempleDetailState extends Equatable {
  final TempleModel? temple;
  final bool isLoading;

  const TempleDetailState({
    this.temple,
    this.isLoading = true,
  });

  TempleDetailState copyWith({
    TempleModel? temple,
    bool? isLoading,
  }) {
    return TempleDetailState(
      temple: temple ?? this.temple,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [temple, isLoading];
}
