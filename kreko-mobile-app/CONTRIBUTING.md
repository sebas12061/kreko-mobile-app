# Guía de Contribución

## Ramas
- `main`: producción estable, con tags semánticos (ej. `v3.0.0`).
- `develop`: base del Sprint actual; todo entra por Pull Request.
- `feature/HU-XX-descripcion`: una rama por Historia de Usuario.
- `hotfix/vX.Y.Z-descripcion`: correcciones críticas sobre producción.

## Commits (Conventional Commits)
`<tipo>(<alcance>): <descripción corta en imperativo> [ID_HU]`

Tipos: `feat`, `fix`, `docs`, `style`, `refactor`, `test`.

Ejemplo: `feat(inventario): agregar alerta de punto de reorden HU-03`

## Flujo de trabajo
1. `git checkout develop && git pull`
2. `git checkout -b feature/HU-XX-descripcion`
3. Commits pequeños siguiendo la convención.
4. `git rebase develop` antes de abrir el PR.
5. Abrir Pull Request hacia `develop` usando la plantilla.
