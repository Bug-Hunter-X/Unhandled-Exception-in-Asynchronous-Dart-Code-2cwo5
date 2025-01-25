# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and its solution.  The `bug.dart` file contains code that makes a network request and handles exceptions within the asynchronous function, but it fails to properly handle exceptions that might be rethrown from that function. The `bugSolution.dart` file shows the corrected version.

**Problem:** The original code doesn't handle exceptions that might propagate from the `fetchData` function to the `main` function, resulting in unhandled exceptions.

**Solution:** The solution demonstrates how to effectively handle exceptions using a `try-catch` block in the `main` function, ensuring that all potential errors are gracefully handled.