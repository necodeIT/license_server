import 'package:license_server/license_server.dart';
import 'package:license_server/modules/admin/presentation/handlers/create_license_handler.dart';
import 'package:shelf_modular/shelf_modular.dart';

/// A resource for managing licenses.
class LicensesResource extends Resource {
  @override
  void routes(RouteManager r) {
    r
      ..get('/:id', getLicensesHandler)
      ..put('/', createLicenseHandler)
      ..post('/revoke/:id', revokeLicenseHandler)
      ..patch('/:id', updateLicenseHandler)
      ..get('/history/:id', getLicensePaymentsHandler);
  }
}
