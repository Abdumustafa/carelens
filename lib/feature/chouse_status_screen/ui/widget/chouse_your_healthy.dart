import 'package:flutter/material.dart';

class ChouseYourHealthy extends StatelessWidget {
  const ChouseYourHealthy({
    super.key,
    required this.healthCondition,
    required this.isSelected,
    required this.onSelected,
  });

  final String healthCondition;
  final bool isSelected;
  final Function() onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: onSelected,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isSelected ? Colors.green : const Color(0xfff5f5f5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  healthCondition,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              Checkbox(
                value: isSelected,
                onChanged: (_) {
                  onSelected();
                },
                activeColor: Colors.white,
                checkColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(color: Colors.grey, width: 2),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
