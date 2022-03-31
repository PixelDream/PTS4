// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const DislikePost = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'DislikePost'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'disconnect')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UserDisconnectInput'),
              isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'user')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UserWhere'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'updateUsers'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'disconnect'),
                value:
                    _i1.VariableNode(name: _i1.NameNode(value: 'disconnect'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'where'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'user')))
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
                      name: _i1.NameNode(value: 'relationshipsDeleted'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ]))
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [DislikePost]);
