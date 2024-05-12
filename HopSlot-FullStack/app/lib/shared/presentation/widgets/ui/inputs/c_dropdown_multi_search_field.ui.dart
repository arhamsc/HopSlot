import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';

class CDropdownMultiSearchField<T> extends StatelessWidget {
  const CDropdownMultiSearchField({
    super.key,
    required this.formControlName,
    required this.label,
    required this.searchFieldLabel,
    this.showSearchBox = false,
    this.items,
    this.itemAsString,
    this.onChange,
    this.onSaved,
    this.asyncItems,
    this.onItemRemoved,
    this.onItemAdded,
    this.fieldText,
  });

  final String formControlName, label, searchFieldLabel;
  final bool showSearchBox;
  final List<T>? items;
  final String Function(T)? itemAsString;
  final Function(List<T?>)? onChange, onSaved;
  final Future<List<T>> Function(String)? asyncItems;
  final void Function(List<T>, T)? onItemRemoved, onItemAdded;
  final String Function(int length)? fieldText;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    return ReactiveDropdownSearchMultiSelection<T, T>(
      formControlName: formControlName,
      items: items != null ? items! : [],
      asyncItems: asyncItems,
      itemAsString: itemAsString,
      dropdownButtonProps: DropdownButtonProps(
        icon: Icon(Icons.arrow_drop_down, size: 32.sp),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputStyles.primaryText(context).copyWith(
          label: Text(label).body1(),
        ),
      ),
      dropdownBuilder: (context, value) {
        if (value.isEmpty) {
          return Text(label).body1();
        }
        return Text(fieldText != null
                ? fieldText!(value.length)
                : "Selected ${value.length} value(s)")
            .body1();
      },
      popupProps: PopupPropsMultiSelection.menu(
        onItemAdded: onItemAdded,
        onItemRemoved: onItemRemoved,
        loadingBuilder: (context, _) {
          return Center(
            child: CircularProgressIndicator(
              color: palette?.secondary,
            ),
          );
        },
        title: Text(searchFieldLabel).body1(isBold: true),
        showSearchBox: true,
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
        if (onChange != null && prev != next) {
          onChange!(next);
        }
        return prev != next;
      },
    );
  }
}
