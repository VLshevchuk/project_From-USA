import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_usa/help_widgets/dropdown_button.dart';
import 'package:from_usa/help_widgets/text_field_widget.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;

class InputFieldsWidgets extends StatelessWidget {
  const InputFieldsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          labelText: 'Укажите ссылку на товар*',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assetsBag/assetsSvg/questionIcon.svg",
            ),
          ),
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWidget(
          labelText: 'Количество (шт.)',
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWidget(
          labelText: 'Цена (\$)',
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWidget(
          labelText: 'Примерный вес (кг)',
        ),
        globals.sizedBoxHeight10px,
        const DropdownButtonWidget(
          firstChoiceValue: '1',
          twoChoiceValue: '2',
          threeChoiceValue: '3',
        ),
        globals.sizedBoxHeight10px,
        const TextFieldWideWidget(
          labelText: 'Размер, цвет, кол-во, другие детали или Ваш вопрос',
        ),
      ],
    );
  }
}
