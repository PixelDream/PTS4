// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const loadStories = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'loadStories'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'where')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UserWhere'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'users'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'where'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'where')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'stories'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: _i1.SelectionSetNode(selections: [
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'id'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'music'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'media'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'createdAt'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  _i1.FieldNode(
                      name: _i1.NameNode(value: 'creator'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: _i1.SelectionSetNode(selections: [
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'firstName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'lastName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null),
                        _i1.FieldNode(
                            name: _i1.NameNode(value: 'image'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null)
                      ]))
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [loadStories]);
