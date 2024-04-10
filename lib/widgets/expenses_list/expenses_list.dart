import 'package:first_app/models/expense.dart';
import 'package:first_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense expense) onRemove;
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
          onDismissed: (direction) {
            onRemove(expenses[index]);
          },
          key: ValueKey(expenses[index]),
          child: ExpenseItem(
            expense: expenses[index],
          )),
    );
  }
}
