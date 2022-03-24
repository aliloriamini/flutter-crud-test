// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetCustomerCollection on Isar {
  IsarCollection<Customer> get customers {
    return getCollection('Customer');
  }
}

final CustomerSchema = CollectionSchema(
  name: 'Customer',
  schema:
      '{"name":"Customer","idName":"id","properties":[{"name":"bankAccountNumber","type":"String"},{"name":"dateOfBirth","type":"Long"},{"name":"email","type":"String"},{"name":"firstName","type":"String"},{"name":"lastName","type":"String"},{"name":"phoneNumber","type":"String"}],"indexes":[{"name":"email","unique":true,"properties":[{"name":"email","type":"Hash","caseSensitive":true}]},{"name":"firstName_lastName_dateOfBirth","unique":true,"properties":[{"name":"firstName","type":"Hash","caseSensitive":true},{"name":"lastName","type":"Hash","caseSensitive":true},{"name":"dateOfBirth","type":"Value","caseSensitive":false}]}],"links":[]}',
  nativeAdapter: const _CustomerNativeAdapter(),
  webAdapter: const _CustomerWebAdapter(),
  idName: 'id',
  propertyIds: {
    'bankAccountNumber': 0,
    'dateOfBirth': 1,
    'email': 2,
    'firstName': 3,
    'lastName': 4,
    'phoneNumber': 5
  },
  listProperties: {},
  indexIds: {'email': 0, 'firstName_lastName_dateOfBirth': 1},
  indexTypes: {
    'email': [
      NativeIndexType.stringHash,
    ],
    'firstName_lastName_dateOfBirth': [
      NativeIndexType.stringHash,
      NativeIndexType.stringHash,
      NativeIndexType.long,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _CustomerWebAdapter extends IsarWebTypeAdapter<Customer> {
  const _CustomerWebAdapter();

  @override
  Object serialize(IsarCollection<Customer> collection, Customer object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(
        jsObj, 'bankAccountNumber', object.bankAccountNumber);
    IsarNative.jsObjectSet(jsObj, 'dateOfBirth',
        object.dateOfBirth.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'email', object.email);
    IsarNative.jsObjectSet(jsObj, 'firstName', object.firstName);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'lastName', object.lastName);
    IsarNative.jsObjectSet(jsObj, 'phoneNumber', object.phoneNumber);
    return jsObj;
  }

  @override
  Customer deserialize(IsarCollection<Customer> collection, dynamic jsObj) {
    final object = Customer();
    object.bankAccountNumber =
        IsarNative.jsObjectGet(jsObj, 'bankAccountNumber') ?? '';
    object.dateOfBirth = IsarNative.jsObjectGet(jsObj, 'dateOfBirth') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'dateOfBirth'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0);
    object.email = IsarNative.jsObjectGet(jsObj, 'email') ?? '';
    object.firstName = IsarNative.jsObjectGet(jsObj, 'firstName') ?? '';
    object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
    object.lastName = IsarNative.jsObjectGet(jsObj, 'lastName') ?? '';
    object.phoneNumber = IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '';
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'bankAccountNumber':
        return (IsarNative.jsObjectGet(jsObj, 'bankAccountNumber') ?? '') as P;
      case 'dateOfBirth':
        return (IsarNative.jsObjectGet(jsObj, 'dateOfBirth') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'dateOfBirth'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'email':
        return (IsarNative.jsObjectGet(jsObj, 'email') ?? '') as P;
      case 'firstName':
        return (IsarNative.jsObjectGet(jsObj, 'firstName') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'lastName':
        return (IsarNative.jsObjectGet(jsObj, 'lastName') ?? '') as P;
      case 'phoneNumber':
        return (IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Customer object) {}
}

class _CustomerNativeAdapter extends IsarNativeTypeAdapter<Customer> {
  const _CustomerNativeAdapter();

  @override
  void serialize(IsarCollection<Customer> collection, IsarRawObject rawObj,
      Customer object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.bankAccountNumber;
    final _bankAccountNumber = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_bankAccountNumber.length) as int;
    final value1 = object.dateOfBirth;
    final _dateOfBirth = value1;
    final value2 = object.email;
    final _email = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_email.length) as int;
    final value3 = object.firstName;
    final _firstName = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_firstName.length) as int;
    final value4 = object.lastName;
    final _lastName = IsarBinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += (_lastName.length) as int;
    final value5 = object.phoneNumber;
    final _phoneNumber = IsarBinaryWriter.utf8Encoder.convert(value5);
    dynamicSize += (_phoneNumber.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _bankAccountNumber);
    writer.writeDateTime(offsets[1], _dateOfBirth);
    writer.writeBytes(offsets[2], _email);
    writer.writeBytes(offsets[3], _firstName);
    writer.writeBytes(offsets[4], _lastName);
    writer.writeBytes(offsets[5], _phoneNumber);
  }

  @override
  Customer deserialize(IsarCollection<Customer> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Customer();
    object.bankAccountNumber = reader.readString(offsets[0]);
    object.dateOfBirth = reader.readDateTime(offsets[1]);
    object.email = reader.readString(offsets[2]);
    object.firstName = reader.readString(offsets[3]);
    object.id = id;
    object.lastName = reader.readString(offsets[4]);
    object.phoneNumber = reader.readString(offsets[5]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readDateTime(offset)) as P;
      case 2:
        return (reader.readString(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      case 5:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Customer object) {}
}

extension CustomerByIndex on IsarCollection<Customer> {
  Future<Customer?> getByEmail(String email) {
    return getByIndex('email', [email]);
  }

  Customer? getByEmailSync(String email) {
    return getByIndexSync('email', [email]);
  }

  Future<bool> deleteByEmail(String email) {
    return deleteByIndex('email', [email]);
  }

  bool deleteByEmailSync(String email) {
    return deleteByIndexSync('email', [email]);
  }

  Future<List<Customer?>> getAllByEmail(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndex('email', values);
  }

  List<Customer?> getAllByEmailSync(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndexSync('email', values);
  }

  Future<int> deleteAllByEmail(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndex('email', values);
  }

  int deleteAllByEmailSync(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('email', values);
  }

  Future<Customer?> getByFirstNameLastNameDateOfBirth(
      String firstName, String lastName, DateTime dateOfBirth) {
    return getByIndex(
        'firstName_lastName_dateOfBirth', [firstName, lastName, dateOfBirth]);
  }

  Customer? getByFirstNameLastNameDateOfBirthSync(
      String firstName, String lastName, DateTime dateOfBirth) {
    return getByIndexSync(
        'firstName_lastName_dateOfBirth', [firstName, lastName, dateOfBirth]);
  }

  Future<bool> deleteByFirstNameLastNameDateOfBirth(
      String firstName, String lastName, DateTime dateOfBirth) {
    return deleteByIndex(
        'firstName_lastName_dateOfBirth', [firstName, lastName, dateOfBirth]);
  }

  bool deleteByFirstNameLastNameDateOfBirthSync(
      String firstName, String lastName, DateTime dateOfBirth) {
    return deleteByIndexSync(
        'firstName_lastName_dateOfBirth', [firstName, lastName, dateOfBirth]);
  }

  Future<List<Customer?>> getAllByFirstNameLastNameDateOfBirth(
      List<String> firstNameValues,
      List<String> lastNameValues,
      List<DateTime> dateOfBirthValues) {
    final len = firstNameValues.length;
    assert(lastNameValues.length == len && dateOfBirthValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([firstNameValues[i], lastNameValues[i], dateOfBirthValues[i]]);
    }

    return getAllByIndex('firstName_lastName_dateOfBirth', values);
  }

  List<Customer?> getAllByFirstNameLastNameDateOfBirthSync(
      List<String> firstNameValues,
      List<String> lastNameValues,
      List<DateTime> dateOfBirthValues) {
    final len = firstNameValues.length;
    assert(lastNameValues.length == len && dateOfBirthValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([firstNameValues[i], lastNameValues[i], dateOfBirthValues[i]]);
    }

    return getAllByIndexSync('firstName_lastName_dateOfBirth', values);
  }

  Future<int> deleteAllByFirstNameLastNameDateOfBirth(
      List<String> firstNameValues,
      List<String> lastNameValues,
      List<DateTime> dateOfBirthValues) {
    final len = firstNameValues.length;
    assert(lastNameValues.length == len && dateOfBirthValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([firstNameValues[i], lastNameValues[i], dateOfBirthValues[i]]);
    }

    return deleteAllByIndex('firstName_lastName_dateOfBirth', values);
  }

  int deleteAllByFirstNameLastNameDateOfBirthSync(List<String> firstNameValues,
      List<String> lastNameValues, List<DateTime> dateOfBirthValues) {
    final len = firstNameValues.length;
    assert(lastNameValues.length == len && dateOfBirthValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([firstNameValues[i], lastNameValues[i], dateOfBirthValues[i]]);
    }

    return deleteAllByIndexSync('firstName_lastName_dateOfBirth', values);
  }
}

extension CustomerQueryWhereSort on QueryBuilder<Customer, Customer, QWhere> {
  QueryBuilder<Customer, Customer, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Customer, Customer, QAfterWhere> anyEmail() {
    return addWhereClauseInternal(const WhereClause(indexName: 'email'));
  }

  QueryBuilder<Customer, Customer, QAfterWhere>
      anyFirstNameLastNameDateOfBirth() {
    return addWhereClauseInternal(
        const WhereClause(indexName: 'firstName_lastName_dateOfBirth'));
  }
}

extension CustomerQueryWhere on QueryBuilder<Customer, Customer, QWhereClause> {
  QueryBuilder<Customer, Customer, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailEqualTo(
      String email) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'email',
      lower: [email],
      includeLower: true,
      upper: [email],
      includeUpper: true,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> emailNotEqualTo(
      String email) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'email',
        upper: [email],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'email',
        lower: [email],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'email',
        lower: [email],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'email',
        upper: [email],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstNameEqualTo(
      String firstName) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      lower: [firstName],
      includeLower: true,
      upper: [firstName],
      includeUpper: true,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstNameNotEqualTo(
      String firstName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause> firstNameLastNameEqualTo(
      String firstName, String lastName) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      lower: [firstName, lastName],
      includeLower: true,
      upper: [firstName, lastName],
      includeUpper: true,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameNotEqualTo(String firstName, String lastName) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName, lastName],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName, lastName],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName, lastName],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName, lastName],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameDateOfBirthEqualTo(
          String firstName, String lastName, DateTime dateOfBirth) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      lower: [firstName, lastName, dateOfBirth],
      includeLower: true,
      upper: [firstName, lastName, dateOfBirth],
      includeUpper: true,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameDateOfBirthNotEqualTo(
          String firstName, String lastName, DateTime dateOfBirth) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName, lastName, dateOfBirth],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName, lastName, dateOfBirth],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        lower: [firstName, lastName, dateOfBirth],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'firstName_lastName_dateOfBirth',
        upper: [firstName, lastName, dateOfBirth],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameEqualToDateOfBirthGreaterThan(
    String firstName,
    String lastName,
    DateTime dateOfBirth, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      lower: [firstName, lastName, dateOfBirth],
      includeLower: include,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameEqualToDateOfBirthLessThan(
    String firstName,
    String lastName,
    DateTime dateOfBirth, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      upper: [firstName, lastName, dateOfBirth],
      includeUpper: include,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterWhereClause>
      firstNameLastNameEqualToDateOfBirthBetween(
    String firstName,
    String lastName,
    DateTime lowerDateOfBirth,
    DateTime upperDateOfBirth, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'firstName_lastName_dateOfBirth',
      lower: [firstName, lastName, lowerDateOfBirth],
      includeLower: includeLower,
      upper: [firstName, lastName, upperDateOfBirth],
      includeUpper: includeUpper,
    ));
  }
}

extension CustomerQueryFilter
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bankAccountNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'bankAccountNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      bankAccountNumberMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'bankAccountNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dateOfBirth',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      dateOfBirthGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dateOfBirth',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dateOfBirth',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> dateOfBirthBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dateOfBirth',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'email',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'firstName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> firstNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'firstName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phoneNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'phoneNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'phoneNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension CustomerQueryLinks
    on QueryBuilder<Customer, Customer, QFilterCondition> {}

extension CustomerQueryWhereSortBy
    on QueryBuilder<Customer, Customer, QSortBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> sortByBankAccountNumber() {
    return addSortByInternal('bankAccountNumber', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByBankAccountNumberDesc() {
    return addSortByInternal('bankAccountNumber', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByDateOfBirth() {
    return addSortByInternal('dateOfBirth', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByDateOfBirthDesc() {
    return addSortByInternal('dateOfBirth', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByPhoneNumber() {
    return addSortByInternal('phoneNumber', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> sortByPhoneNumberDesc() {
    return addSortByInternal('phoneNumber', Sort.desc);
  }
}

extension CustomerQueryWhereSortThenBy
    on QueryBuilder<Customer, Customer, QSortThenBy> {
  QueryBuilder<Customer, Customer, QAfterSortBy> thenByBankAccountNumber() {
    return addSortByInternal('bankAccountNumber', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByBankAccountNumberDesc() {
    return addSortByInternal('bankAccountNumber', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByDateOfBirth() {
    return addSortByInternal('dateOfBirth', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByDateOfBirthDesc() {
    return addSortByInternal('dateOfBirth', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByPhoneNumber() {
    return addSortByInternal('phoneNumber', Sort.asc);
  }

  QueryBuilder<Customer, Customer, QAfterSortBy> thenByPhoneNumberDesc() {
    return addSortByInternal('phoneNumber', Sort.desc);
  }
}

extension CustomerQueryWhereDistinct
    on QueryBuilder<Customer, Customer, QDistinct> {
  QueryBuilder<Customer, Customer, QDistinct> distinctByBankAccountNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bankAccountNumber',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByDateOfBirth() {
    return addDistinctByInternal('dateOfBirth');
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('firstName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Customer, Customer, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('phoneNumber', caseSensitive: caseSensitive);
  }
}

extension CustomerQueryProperty
    on QueryBuilder<Customer, Customer, QQueryProperty> {
  QueryBuilder<Customer, String, QQueryOperations> bankAccountNumberProperty() {
    return addPropertyNameInternal('bankAccountNumber');
  }

  QueryBuilder<Customer, DateTime, QQueryOperations> dateOfBirthProperty() {
    return addPropertyNameInternal('dateOfBirth');
  }

  QueryBuilder<Customer, String, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<Customer, String, QQueryOperations> firstNameProperty() {
    return addPropertyNameInternal('firstName');
  }

  QueryBuilder<Customer, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Customer, String, QQueryOperations> lastNameProperty() {
    return addPropertyNameInternal('lastName');
  }

  QueryBuilder<Customer, String, QQueryOperations> phoneNumberProperty() {
    return addPropertyNameInternal('phoneNumber');
  }
}
