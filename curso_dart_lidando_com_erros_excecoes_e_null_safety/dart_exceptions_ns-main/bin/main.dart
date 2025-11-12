import 'package:main/screens/account_screen.dart';
import 'package:main/services/transaction_service.dart';

void main() {
  TransactionService()
      .makeTransaction(idSender: 'ID001', idReceiver: 'ID002', amount: 5001);
  // AccountScreen accountScreen = AccountScreen();
  // accountScreen.initializeStream();
  // accountScreen.runChatBot();
}
