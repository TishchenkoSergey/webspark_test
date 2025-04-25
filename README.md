# Webspark Test

## Overview

This Flutter application calculates the shortest path between two points on a grid, based on data 
from a remote API. The goal is to design an interface and logic that fetches tasks from a backend, 
computes shortest paths, and displays the results.

## Features & Requirements

### Input URL Interface

1. Users can input a base API URL with GET parameters.
2. A Start button saves the URL and initiates data retrieval.
3. Shows an error message for invalid URLs.

### Calculation Process Screen

1. After clicking Start, the app fetches a list of pathfinding tasks from the API.
2. Displays the calculation progress using percentage updates.
3. When finished, enables a Send results to server button.
4. While sending, the button is disabled and a loader is shown.
5. On success, navigates to the results screen. On failure, shows an error message.

### Results List Screen

1. Displays each calculated result as a path in the format: (2.1) -> (1.2) -> (0.2)
2. A result navigates to a detailed preview.

### Single Result Preview Screen

1. Shows the full path in the format mentioned above.
2. Renders a grid with visual representation:
   - Start cell: #64FFDA
   - End cell: #009688
   - Blocked cell: #000000
   - Shortest path: #4CAF50
   - Empty cells: #FFFFFF
   - Each cell shows its coordinates.

## Table of Contents

1. [Data Layer](doc/style/data.md)
2. [Domain Layer](doc/style/domain.md)
3. [Presenter Layer](doc/style/presenter.md)

## Data Layer

The Data Layer is responsible for managing the data of the application. It includes models, repositories, and data
sources. For detailed guidelines on how to structure the data layer, refer to the [Data Layer Guide](doc/style/data.md).

## Domain Layer

The Domain Layer contains the business logic of the application. It includes entities, use cases, and repository
interfaces. For detailed guidelines on how to structure the domain layer, refer to the [Domain Layer Guide](doc/style/domain.md).

## Presenter Layer

The Presenter Layer is responsible for presenting data to the user. It includes the presentation logic and state
management. For detailed guidelines on how to structure the presenter layer, refer to
the [Presenter Layer Guide](doc/style/presenter.md).

## Best Practices

- **Consistency**: Follow a consistent directory structure and naming convention across all layers.
- **Modularity**: Keep your code modular by separating concerns and using well-defined interfaces.
- **Documentation**: Include README files in each directory to provide context and documentation for each feature.
- **Testing**: Write unit, widget, and integration tests for each feature to ensure the reliability of your code.