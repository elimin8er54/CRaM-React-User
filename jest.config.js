module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  transform: {
    "^.+\\.jsx?$": "babel-jest", // Adding this line solved the issue
    "^.+\\.tsx?$": "ts-jest",
  },
  globals: {
    "ts-jest": {
      tsconfig: "./src/tsconfig.json",
    },
  },
  moduleNameMapper: {
    "^.+\\.(css|less|scss)$": "babel-jest",
  },
};
