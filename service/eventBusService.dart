import 'package:event_bus/event_bus.dart';

class EventBusService{
  EventBus eventBus = EventBus();
}

class BaseEventBusModel {}

class CartUpdateModel extends BaseEventBusModel{}
class CartLengthUpdate extends BaseEventBusModel{}
class OpenSelectCategory extends BaseEventBusModel{}
class UpdateWallet extends BaseEventBusModel{}
class UpdateOrderMode extends BaseEventBusModel{}