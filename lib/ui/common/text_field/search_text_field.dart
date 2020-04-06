import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  final Function(String) onChange;
  final Function(String) onSubmit;
  final bool enable;

  const SearchTextField(
      {Key key, this.hintText, this.onChange, this.onSubmit, this.enable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Theme.of(context).cardColor, width: 2)),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          fillColor: Theme.of(context).canvasColor,
          hintText: hintText ?? 'Cari di sini!',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).cardColor, width: 2),
          ),
        ),
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        enabled: enable ?? true,
      ),
    );
  }
}
