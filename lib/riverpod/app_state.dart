import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'budget.dart';

// StateNotifier untuk mengelola list budgets
class BudgetNotifier extends StateNotifier<List<Budget>> {
  BudgetNotifier() : super([]); // Inisialisasi dengan list kosong

  // Menambahkan budget ke dalam list
  void addBudget(Budget budget) {
    state = [...state, budget]; // Memperbarui state dengan budget baru
  }

  // Menghapus budget dari list
  void removeBudget(Budget budget) {
    state = state
        .where((b) => b != budget)
        .toList(); // Memperbarui state dengan menghapus budget
  }

  // Mengosongkan daftar budget
  void resetBudgets() {
    state = []; // Mengatur ulang state menjadi list kosong
  }
}

// Provider untuk BudgetNotifier
final budgetsProvider =
    StateNotifierProvider<BudgetNotifier, List<Budget>>((ref) {
  return BudgetNotifier(); // Mengembalikan instance BudgetNotifier
});
