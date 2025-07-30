# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- **Start development server**: `pnpm start` or `npx expo start`
- **Run on specific platforms**:
  - iOS: `pnpm run ios`
  - Android: `pnpm run android`
  - Web: `pnpm run web`
- **Lint code**: `pnpm run lint` (Biome)
- **Fix lint issues**: `pnpm run lint:fix`
- **Format code**: `pnpm run format`
- **Lint with Expo**: `pnpm run lint:expo`
- **Reset project to blank state**: `pnpm run reset-project` (moves starter code to app-example/)

## Project Architecture

This is an Expo React Native project using:

- **Expo Router** for file-based routing (expo-router v5.1.4)
- **TypeScript** with strict mode enabled
- **React Navigation** with bottom tabs
- **New Architecture** enabled (`newArchEnabled: true`)
- **Biome** for linting and formatting

### Key Structure

- `app/` - Main application code using file-based routing
- `app-example/` - Contains the original Expo starter template with example components
- `assets/` - Static assets (fonts, images)
- `node_modules/` - Dependencies

### Routing System

Uses Expo Router with file-based routing. The main app currently has:

- `app/_layout.tsx` - Root layout with Stack navigator
- `app/index.tsx` - Home screen

### Package Manager

Uses **pnpm v10.12.1** as specified in packageManager field.

### Development Setup

The project includes example components in `app-example/` that demonstrate:

- Themed components (ThemedText, ThemedView)
- UI components (Collapsible, ParallaxScrollView, etc.)
- Custom hooks for theming and color schemes
- Tab-based navigation structure

### Configuration

- Expo configuration in `app.json` with platform-specific settings
- TypeScript path mapping configured with `@/*` alias
- Biome configuration in `biome.json` for linting and formatting
- ESLint using expo configuration with flat config format (available via `pnpm run lint:expo`)
