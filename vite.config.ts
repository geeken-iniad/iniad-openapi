import { defineConfig } from 'vite-plus'

export default defineConfig({
  staged: {
    '*': 'vp check --fix',
  },
  run: {
    tasks: {
      build: {
        command: 'tsp compile ./src/',
        output: ['dist/**'],
      },
      watch: {
        command: 'tsp compile ./src/ --watch',
        cache: false,
      },
      check: {
        command: 'tsp format -c ./src/',
      },
      fix: {
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
})
