import 'package:equatable/equatable.dart';
import 'package:test1/features/home/data/book_model/list_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final String? buyLink;
  final ListPrice? listPrice;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.buyLink,
    this.listPrice,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json['country'] as String?,
    saleability: json['saleability'] as String?,
    isEbook: json['isEbook'] as bool?,
    buyLink: json['buyLink'] as String?,
    listPrice: json['listPrice'] == null
        ? null
        : (ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)),
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'buyLink': buyLink,
  };

  @override
  List<Object?> get props => [country, saleability, isEbook, buyLink];
}
