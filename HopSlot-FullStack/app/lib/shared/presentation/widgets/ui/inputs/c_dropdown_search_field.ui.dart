import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';

class CDropdownSearchField<T> extends StatelessWidget {
  const CDropdownSearchField({
    super.key,
    required this.formControlName,
    required this.label,
    required this.searchFieldLabel,
    this.showSearchBox = true,
    this.items,
    this.itemAsString,
    this.onChange,
    this.onSaved,
    this.asyncItems,
  });

  final String formControlName, label, searchFieldLabel;
  final bool showSearchBox;
  final List<T>? items;
  final String Function(T)? itemAsString;
  final Function(T)? onChange, onSaved;
  final Future<List<T>> Function(String)? asyncItems;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    return ReactiveDropdownSearch<T, T>(
      formControlName: formControlName,
      items: items != null ? items! : [],
      itemAsString: itemAsString,
      asyncItems: asyncItems,
      dropdownButtonProps: DropdownButtonProps(
        icon: Icon(Icons.arrow_drop_down, size: 32.sp),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputStyles.primaryText(context).copyWith(
          label: Text(label).body1(),
        ),
      ),
      popupProps: PopupProps.menu(
        loadingBuilder: (context, _) {
          return Center(
            child: CircularProgressIndicator(
              color: palette?.secondary,
            ),
          );
        },
        title: Text(searchFieldLabel).body1(isBold: true),
        showSearchBox: showSearchBox,
        searchFieldProps: TextFieldProps(
          decoration: InputStyles.primaryText(context),
        ),
        menuProps: MenuProps(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        containerBuilder: (context, child) {
          return Container(
            height: 400.h,
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            color: palette?.secondary?.withOpacity(0.2),
            child: child,
          );
        },
      ),
      onBeforeChange: (prev, next) async {
        if (onChange != null && next != null && prev != next) {
          onChange!(next);
        }
        return prev != next;
      },
    );
  }
}
