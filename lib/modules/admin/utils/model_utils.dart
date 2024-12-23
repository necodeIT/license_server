import 'dart:convert';

import 'package:echidna_dto/echidna_dto.dart' as dto;
import 'package:echidna_server/echidna_server.dart';
import 'package:shelf/shelf.dart';

/// Extension on `License` to provide a method for converting to a `Response`.
extension LicenseX on License {
  /// Converts the `License` instance to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded `rest.License` object.
  Response toResponse() {
    final restLicense = dto.License.fromJson(toJson());
    return Response.ok(jsonEncode(restLicense));
  }
}

/// Extension on `Iterable<License>` to provide a method for converting to a `Response`.
extension LicenseListX on Iterable<License> {
  /// Converts the list of `License` instances to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded list of `rest.License` objects.
  Response toResponse() {
    final restLicenses = map((license) => dto.License.fromJson(license.toJson())).toList();
    return Response.ok(jsonEncode(restLicenses));
  }
}

/// Extension on `Customer` to provide a method for converting to a `Response`.
extension CustomerX on Customer {
  /// Converts the `Customer` instance to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded `rest.Customer` object.
  Response toResponse() {
    final restCustomer = dto.Customer.fromJson(toJson());
    return Response.ok(jsonEncode(restCustomer));
  }
}

/// Extension on `Iterable<Customer>` to provide a method for converting to a `Response`.
extension CustomerListX on Iterable<Customer> {
  /// Converts the list of `Customer` instances to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded list of `rest.Customer` objects.
  Response toResponse() {
    final restCustomers = map((customer) => dto.Customer.fromJson(customer.toJson())).toList();
    return Response.ok(jsonEncode(restCustomers));
  }
}

/// Extension on `Product` to provide a method for converting to a `Response`.
extension ProductX on Product {
  /// Converts the `Product` instance to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded `rest.Product` object.
  Response toResponse() {
    final restProduct = dto.Product.fromJson(toJson());
    return Response.ok(jsonEncode(restProduct));
  }
}

/// Extension on `Iterable<Product>` to provide a method for converting to a `Response`.
extension ProductListX on Iterable<Product> {
  /// Converts the list of `Product` instances to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded list of `rest.Product` objects.
  Response toResponse() {
    final restProducts = map((product) => dto.Product.fromJson(product.toJson())).toList();
    return Response.ok(jsonEncode(restProducts));
  }
}

/// Extension on `Payment` to provide a method for converting to a `Response`.
extension PaymentX on Payment {
  /// Converts the `Payment` instance to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded `rest.Payment` object.
  Response toResponse() {
    final json = toJson();
    final features = this.features?.map((feature) => dto.Feature.fromJson(feature.toJson()).toJson()).toList() ?? [];

    json['features'] = features;

    return Response.ok(jsonEncode(dto.Payment.fromJson(json)));
  }
}

/// Extension on `List<Payment>` to provide a method for converting to a `Response`.
extension PaymentListX on Iterable<Payment> {
  /// Converts the list of `Payment` instances to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded list of `rest.Payment` objects.
  Response toResponse() {
    final restPayments = map((payment) {
      final json = payment.toJson();
      final features = payment.features?.map((feature) => dto.Feature.fromJson(feature.toJson()).toJson()).toList() ?? [];

      json['features'] = features;

      return dto.Payment.fromJson(json);
    }).toList();

    return Response.ok(jsonEncode(restPayments));
  }
}

/// Extension on `Feature` to provide a method for converting to a `Response`.
extension FeatureX on Feature {
  /// Converts the `Feature` instance to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded `rest.Feature` object.
  Response toResponse() {
    final restFeature = dto.Feature.fromJson(toJson());
    return Response.ok(jsonEncode(restFeature));
  }
}

/// Extension on `List<Feature>` to provide a method for converting to a `Response`.
extension FeatureListX on Iterable<Feature> {
  /// Converts the list of `Feature` instances to a `Response` object.
  ///
  /// Returns:
  /// - `Response.ok` with the JSON-encoded list of `rest.Feature` objects.
  Response toResponse() {
    final restFeatures = map((feature) => dto.Feature.fromJson(feature.toJson())).toList();
    return Response.ok(jsonEncode(restFeatures));
  }
}

/// Extension on [ClientKey] to create a [Response] from it.
extension ClientKeyX on ClientKey {
  /// Converts the `ClientKey` instance to a `Response` object.
  Response toResponse() {
    final restClientKey = dto.ClientKey.fromJson(toJson());
    return Response.ok(jsonEncode(restClientKey));
  }
}

/// Extension on [Iterable<ClientKey>] to create a [Response] from it.
extension ClientKeyListX on Iterable<ClientKey> {
  /// Converts the list of `ClientKey` instances to a `Response` object.
  Response toResponse() {
    final restClientKeys = map((clientKey) => dto.ClientKey.fromJson(clientKey.toJson())).toList();
    return Response.ok(jsonEncode(restClientKeys));
  }
}
