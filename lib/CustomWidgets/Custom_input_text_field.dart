import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;
  final IconData? prefixIcon;
  final double? height;
  final int? maxLines;
  final bool readOnly; // Added readOnly parameter
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixTap,
    this.prefixIcon,
    this.height,
    this.maxLines = 1,
    this.onChanged,
    this.readOnly = false, // Default value is false (editable)
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.maxLines! > 1 ? 100 : widget.height,
      child: TextFormField(
        controller: _controller,
        obscureText: widget.obscureText,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly, // Apply readOnly property
        style: GoogleFonts.poppins(
          color: Colors.grey.shade700,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(color: Colors.grey),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Get.theme.primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: Get.theme.primaryColor)
              : null,
          suffixIcon: widget.suffixIcon != null
              ? GestureDetector(
            onTap: widget.onSuffixTap,
            child: Icon(widget.suffixIcon, color: Colors.grey),
          )
              : null,
        ),
      ),
    );
  }
}
