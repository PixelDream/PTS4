// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const CreateStories = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CreateStories'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'story')),
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'StoryCreateInput'),
                  isNonNull: true),
              isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'createStories'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'input'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'story')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'info'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'nodesCreated'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [CreateStories]);
