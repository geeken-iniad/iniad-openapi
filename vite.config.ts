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
        // parallel (check:tsp)
        command: '',
        dependsOn: ['check:tsp'],
      },
      fix: {
        // parallel (fix:tsp)
        command: '',
        dependsOn: ['fix:tsp'],
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
      'fix:tsp': {
        command: 'tsp format ./src/',
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
