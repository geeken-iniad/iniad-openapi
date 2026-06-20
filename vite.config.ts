import { defineConfig } from 'vite-plus'

export default defineConfig({
  staged: {
    '*': 'vp check --fix',
  },
  run: {
    tasks: {
      dev: {
        // parallel (watch:tsp, watch:docs)
        command: '',
        dependsOn: ['watch:tsp', 'watch:docs'],
        cache: false,
      },
      build: {
        // build:tsp -> build:docs
        command: '',
        dependsOn: ['build:docs'],
      },
      check: {
        // parallel (check:tsp, check:oxc)
        command: '',
        dependsOn: ['check:tsp', 'check:oxc'],
      },
      fix: {
        // parallel (fix:tsp, fix:oxc)
        command: '',
        dependsOn: ['fix:tsp', 'fix:oxc'],
        cache: false,
      },

      // dependency tasks
      'build:tsp': {
        command: 'tsp compile ./src/',
        output: ['dist/openapi/**'],
      },
      'build:docs': {
        command: 'vp build',
        output: ['dist/docs/**'],
        dependsOn: ['build:tsp'],
      },
      'watch:tsp': {
        command: 'tsp compile ./src/ --watch',
        cache: false,
      },
      'watch:docs': {
        command: 'vp dev',
        cache: false,
      },
      'check:tsp': {
        command: 'tsp format -c ./src/',
      },
      'check:oxc': {
        command: 'vp check',
      },
      'fix:tsp': {
        command: 'tsp format ./src/',
        cache: false,
      },
      'fix:oxc': {
        command: 'vp check --fix',
        cache: false,
      },
    },
  },
  fmt: {
    ignorePatterns: ['dist/**'],
    semi: false,
    singleQuote: true,
    sortImports: {},
    sortPackageJson: {
      sortScripts: false,
    },
  },

  // OpenAPI documentation configuration
  root: 'docs',
  publicDir: '../dist/openapi',
  build: {
    outDir: '../dist/docs',
    emptyOutDir: true,
  },
})
