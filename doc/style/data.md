# Data Layer Style Guide

## Table of Contents

- [Overview](#overview)
- [Data Sources](#data-sources)
  - [Naming Conventions](#naming-conventions)
  - [Method Requirements](#method-requirements)
- [Repositories](#repositories)
  - [Naming Conventions](#naming-conventions-1)
  - [Method Requirements](#method-requirements-1)
- [Models](#models)
  - [Structure and Style](#structure-and-style)
- [Examples](#examples)

## Overview

The data layer is responsible for managing data operations and communications with external data sources like APIs, databases, and local storage. It should be abstracted from the business logic and only focus on data handling.

For the convenience of writing models without unnecessary boilerplate code, I suggest using:

- freezed_annotation: x.x.x
- freezed: x.x.x

For working with collections:

- collection: x.x.x

And for supporting dependency injection:

- injectable: x.x.x
- injectable_generator: x.x.x

## Data Sources

### Method Requirements

- Methods should be named clearly to describe the action they perform.
- Use verbs for method names to indicate actions, such as `fetch`, `store`, `update`, `remove`.
  - Example: `fetchUserById`, `storeProduct`, `updateOrderStatus`, `removeCustomer`

## Repositories

### Naming Conventions

- Repositories should be named with the entity they manage followed by the `Repository` suffix.
  - Example: `UserRepository`, `ProductRepository`

### Method Requirements

- Methods should be named clearly to describe the action they perform.
- Use verbs for method names to indicate actions, such as `get`, `create`, `update`, `delete`, `find`.
  - Example: `getUserById`, `createProduct`, `updateOrderStatus`, `deleteCustomer`, `findCustomer`

## Models

### Naming Conventions

- Models should be named with singular nouns.
  - Example: `User`, `Order`, `Product`

### Structure and Style

- Models should be immutable and use `freezed` for immutability and union types.
- All fields should be final.
- Use proper data types for fields, and avoid using `dynamic`.

```dart
@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _User;
}
```

## Examples

### Repository Example

```dart
abstract class UserRepository {
  Future<User> getUserById(String id);
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(String id);
}
```