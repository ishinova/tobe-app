import 'dart:io';

import 'package:core_designsystem/component.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

typedef SubmitCallback =
    void Function({
      required String title,
      required String description,
      required String note,
      required DateTime? begunAt,
      required DateTime? endedAt,
      required String? categoryId,
      required File? coverImage,
    });

final class QuestForm extends HookConsumerWidget {
  const QuestForm({
    required SubmitCallback onSubmit,
    String? title,
    String? description,
    String? note,
    DateTime? begunAt,
    DateTime? endedAt,
    String? categoryId,
    super.key,
  }) : _title = title,
       _description = description,
       _note = note,
       _begunAt = begunAt,
       _endedAt = endedAt,
       _categoryId = categoryId,
       _onSubmit = onSubmit;

  final String? _title;
  final String? _description;
  final String? _note;
  final DateTime? _begunAt;
  final DateTime? _endedAt;
  final String? _categoryId;
  final SubmitCallback _onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final titleController = useTextEditingController(text: _title);
    final titleValue = useValueListenable(titleController);

    final descriptionController = useTextEditingController(text: _description);
    final descriptionValue = useValueListenable(descriptionController);

    final noteController = useTextEditingController(text: _note);
    final noteValue = useValueListenable(noteController);

    final begunAt = useState<DateTime?>(_begunAt);
    final endedAt = useState<DateTime?>(_endedAt);
    final selectedCategory = useState<String?>(_categoryId);
    final coverImage = useState<File?>(null);

    final formKey = useMemoized(GlobalKey<FormState>.new);
    final imagePicker = useMemoized(() => ImagePicker());

    return Form(
      key: formKey,
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: AutofillGroup(
            child: Column(
              children: [
                ...[
                  TextFormField(
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Enter quest title',
                      labelText: l10n.questAddFormTitleLabel,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return l10n.questAddFormTitleEmptyErrorMessage;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: descriptionController,
                    maxLines: 3,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Enter quest description',
                      labelText: l10n.questAddFormDescriptionLabel,
                    ),
                  ),
                  // Category Selection
                  DropdownButtonFormField<String>(
                    value: selectedCategory.value,
                    decoration: InputDecoration(
                      labelText: 'Category',
                      hintText: 'Select category',
                    ),
                    items: [
                      DropdownMenuItem(value: null, child: Text('None')),
                      DropdownMenuItem(value: 'health', child: Text('Health')),
                      DropdownMenuItem(value: 'study', child: Text('Study')),
                      DropdownMenuItem(value: 'work', child: Text('Work')),
                      DropdownMenuItem(value: 'hobby', child: Text('Hobby')),
                    ],
                    onChanged: (value) => selectedCategory.value = value,
                  ),
                  // Begin Date
                  ListTile(
                    title: Text('Begin Date'),
                    subtitle: Text(
                      begunAt.value != null
                          ? '${begunAt.value!.year}/${begunAt.value!.month}/${begunAt.value!.day}'
                          : 'Not set',
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        begunAt.value != null
                            ? Icons.clear
                            : Icons.calendar_today,
                      ),
                      onPressed: begunAt.value != null
                          ? () => begunAt.value = null
                          : () async {
                              final date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 365 * 2),
                                ),
                              );
                              if (date != null) {
                                begunAt.value = date;
                              }
                            },
                    ),
                  ),
                  // End Date
                  ListTile(
                    title: Text('End Date'),
                    subtitle: Text(
                      endedAt.value != null
                          ? '${endedAt.value!.year}/${endedAt.value!.month}/${endedAt.value!.day}'
                          : 'Not set',
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        endedAt.value != null
                            ? Icons.clear
                            : Icons.calendar_today,
                      ),
                      onPressed: endedAt.value != null
                          ? () => endedAt.value = null
                          : () async {
                              final date = await showDatePicker(
                                context: context,
                                initialDate: begunAt.value ?? DateTime.now(),
                                firstDate: begunAt.value ?? DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 365 * 2),
                                ),
                              );
                              if (date != null) {
                                endedAt.value = date;
                              }
                            },
                    ),
                  ),
                  // Cover Image
                  if (coverImage.value != null)
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            coverImage.value!,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close, color: Colors.white),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.black54,
                          ),
                          onPressed: () => coverImage.value = null,
                        ),
                      ],
                    )
                  else
                    OutlinedButton.icon(
                      icon: Icon(Icons.add_photo_alternate),
                      label: Text('Add Cover Image'),
                      onPressed: () async {
                        final source = await showModalBottomSheet<ImageSource>(
                          context: context,
                          builder: (context) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.camera_alt),
                                title: Text('Take Photo'),
                                onTap: () =>
                                    Navigator.pop(context, ImageSource.camera),
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_library),
                                title: Text('Choose from Gallery'),
                                onTap: () =>
                                    Navigator.pop(context, ImageSource.gallery),
                              ),
                            ],
                          ),
                        );
                        if (source != null) {
                          final pickedFile = await imagePicker.pickImage(
                            source: source,
                          );
                          if (pickedFile != null) {
                            coverImage.value = File(pickedFile.path);
                          }
                        }
                      },
                    ),
                  TextFormField(
                    controller: noteController,
                    maxLines: 3,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Enter quest note',
                      labelText: l10n.questAddFormNoteLabel,
                    ),
                  ),

                  const Gap(0),
                  // クエスト追加
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        if (endedAt.value != null &&
                            begunAt.value != null &&
                            endedAt.value!.isBefore(begunAt.value!)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'End date must be after begin date',
                              ),
                            ),
                          );
                          return;
                        }

                        _onSubmit(
                          title: titleValue.text,
                          description: descriptionValue.text,
                          note: noteValue.text,
                          begunAt: begunAt.value,
                          endedAt: endedAt.value,
                          categoryId: selectedCategory.value,
                          coverImage: coverImage.value,
                        );
                      },
                      child: Text(l10n.questAddFormSubmit),
                    ),
                  ),
                ].expand((widget) => [widget, const Gap(24)]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
